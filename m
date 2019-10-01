Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCC0C39C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxrwWOfvD7RD1w0PfRTN3/qEDYlLKlN9NdEHSF6ZU60=; b=q58vnVui/6A3dB
	egSL6n/ztmTUhcHGdUFxa3RwO9H+pUAyyvbokWc7hV2MTNHkO1ymKqMY4CsYnm0hj1OTL9HEhNlQu
	pSXArxRPOczN7GdxGtapWirxfpQgTmHbH9U4dcL/ZVmbWl29eNZ+lP7pWGr3KaAiu24/UjTiwfrwP
	RAcbpjt7IMk9l1md67hcUyf96MTQDmiQMmkquYS2QYnULiA7Gil0EtwnM/eoHQUWrT2w53kYPlgXk
	Heqribx5y+fLnWUjtA4xcy4DuI79pSTTthNsiJhpDFTgWUrykwwfYRHi2PMMMK6vVOorkWAn4qFHn
	zR0Gzyflm8WWyqrJZICw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKbx-0006KO-H6; Tue, 01 Oct 2019 16:02:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKbq-0006K3-Q6
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:02:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 020D61000;
 Tue,  1 Oct 2019 09:02:42 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6AE5E3F71A; Tue,  1 Oct 2019 09:02:41 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:02:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: simplify syscall wrapper ifdeffery
Message-ID: <20191001160239.GP41399@arrakis.emea.arm.com>
References: <20190913125550.7053-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913125550.7053-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_090242_890115_4666EC9B 
X-CRM114-Status: GOOD (  12.24  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 01:55:50PM +0100, Mark Rutland wrote:
> Back in commit:
> 
>   4378a7d4be30ec69 ("arm64: implement syscall wrappers")
> 
> ... I implemented the arm64 syscall wrapper glue following the approach
> taken on x86. While doing so, I also copied across some ifdeffery that
> isn't necessary on arm64.
> 
> On arm64 we don't share any of the native wrappers with compat tasks,
> and unlike x86 we don't have alternative implementations of
> SYSCALL_DEFINE0(), COND_SYSCALL(), or SYS_NI() defined when AArch32
> compat support is enabled.
> 
> Thus we don't need to prevent multiple definitions of these macros, and
> can remove the #ifndef ... #endif guards protecting them. If any of
> these had been previously defined elsewhere, syscalls are unlikely to
> work correctly, and we'd want the compiler to warn about the multiple
> definitions.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
