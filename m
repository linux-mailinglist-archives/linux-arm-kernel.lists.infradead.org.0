Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95403B53C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6Aif3CDpB05d5xjGWdHRmXLi1w8oSNc/MQ8k5j2mqQ=; b=GZBPwGLT/PdZvV
	fL2lI4yBmrt1J5G6XeY8PXGKzPN5YS7tVjdAjP4vYYhqf79WdyCcmeN+U8RGPIbQaopjitLQX5W7B
	85vtU3+yDu3mQhZZQhPpAHUmkuKOs8lthoyhHaH2+jntdEti1d189nh8eM5ZzXw1/YaedT6zABnjm
	q+/NDKkP264p2cVgYxKLM0lhU2Z4EgB9EtmGtWP7sdomKfRqhQZm7VDXnmffqt5r1oFbo+NoSYay1
	DXf+6x8l3vG135YJrxlobVfakNf44PTOSBql5MNyz0nIMjNMUKVzJ58RUce7Ts/q/Hb6qjNS8+tot
	3wxfLFcgBr2IiNoFfzqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJmT-0000Pe-C8; Mon, 10 Jun 2019 12:52:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJmG-0000PD-S8
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:51:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83DF7346;
 Mon, 10 Jun 2019 05:51:55 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EBA133F557;
 Mon, 10 Jun 2019 05:51:54 -0700 (PDT)
Date: Mon, 10 Jun 2019 13:51:50 +0100
From: Will Deacon <will.deacon@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: mm: avoid redundant READ_ONCE(*ptep)
Message-ID: <20190610125150.GA14325@fuggles.cambridge.arm.com>
References: <20190610124107.16497-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610124107.16497-1-mark.rutland@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055156_952661_17E07F0B 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
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
> ---
>  arch/arm64/include/asm/pgtable.h | 47 +++++++++++++++++++++++++---------------
>  1 file changed, 30 insertions(+), 17 deletions(-)

Acked-by: Will Deacon <will.deacon@arm.com>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
