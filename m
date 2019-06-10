Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5BD3B556
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyIQefSKxHzYy3Df+pgHNmn+WLh21/9F4znREy2aY1U=; b=U1MwwpvEnDruC+
	/uchoVHocnMgylAgEEY8vmVGTfWJvLxdD3gP6NxngOgqK+Sw24e2RNrvMA7egsvgkIIq832kraMMt
	aDiQ/PFnRs9+dMfBt37LN3j07T/KeK0rWP8zOEqWwvCFaotM58hoEw3AvzV3ATjZCZwy8h+rdnSv1
	yie/wf0AYhnW4MN+cHDa6UeMNn5QYm9s0bV1k2OKxzYxCRBz32o4ZgUiHMN05rMa0AnLPdirM7fax
	XECPEK/UHM7Lri9uO6l6/ubaTbXIBE0JN/Jr4IIe6RlbGzmsaMaQIb2Ynji+/HB79XEXHBPCnGjTi
	+zZfKrbF5CGkAE8l4YMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJqS-0002y2-1i; Mon, 10 Jun 2019 12:56:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJpy-0002nW-Ik
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:55:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4F5F337;
 Mon, 10 Jun 2019 05:55:45 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5A16B3F557; Mon, 10 Jun 2019 05:55:45 -0700 (PDT)
Date: Mon, 10 Jun 2019 13:55:43 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: mm: avoid redundant READ_ONCE(*ptep)
Message-ID: <20190610125542.GA25803@arrakis.emea.arm.com>
References: <20190610124107.16497-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610124107.16497-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055546_720446_DA0897B2 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 01:41:07PM +0100, Mark Rutland wrote:
> In set_pte_at(), we read the old pte value so that it can be passed into
> checks for racy hw updates. These checks are only performed for
> CONFIG_DEBUG_VM, and the value is not used otherwise.
> 
> Since we read the pte value with READ_ONCE(), the compiler cannot elide
> the redundant read for !CONFIG_DEBUG_VM kernels.
> 
> Let's ameliorate matters by moving the read and the checks into a
> helper, __check_racy_pte_update(), which only performs the read when the
> value will be used. This also allows us to reformat the conditions for
> clarity.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
