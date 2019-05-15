Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB171F5EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXEJCtXtpw43W/vd819/Oa0DIw8cETciSyg3HtlZINQ=; b=kFFNOFPkOb9fll
	Fa7ZwZyrsmzReyALwHnKWi/3zOIHwQCj6k99akrP7em12ZVikmOh4W25n7+jFFTlSWEEEdjJC4G/w
	I1U1rneuKGo4hyncu1b43V17cl1L45DlXYcv2JEV79qlmPzhH5TeBhxo9oT2W/b/JKjKDJmHCL1M4
	wFP9oYakrnqIUQkYDQU3tXMlRScvwdzvdxwHdfOQ8UWGcFsWTNwHn/CwEdOfxznuInbzFjoGdi2SY
	vKTPbF4aRLPXdiQwyuoTNys2oA3xzKSeSf0lNhUIHJbCGenLc43QuXSfStxzV6lXDvjsZnl155XYg
	jJCplVZ85P9kVdXHM+RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuHf-000067-B4; Wed, 15 May 2019 13:49:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuHL-0008Km-SS
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:49:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97A5F374;
 Wed, 15 May 2019 06:49:06 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C96903F5AF;
 Wed, 15 May 2019 06:49:04 -0700 (PDT)
Date: Wed, 15 May 2019 14:49:02 +0100
From: Will Deacon <will.deacon@arm.com>
To: Arun KS <arunks@codeaurora.org>
Subject: Re: [PATCH v1] arm64: Fix size of __early_cpu_boot_status
Message-ID: <20190515134902.GI24357@fuggles.cambridge.arm.com>
References: <1557927822-21111-1-git-send-email-arunks@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557927822-21111-1-git-send-email-arunks@codeaurora.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_064907_920335_93D15E71 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Jun Yao <yaojun8558363@gmail.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 07:13:19PM +0530, Arun KS wrote:
> __early_cpu_boot_status is of type int. Fix up the calls to
> update_early_cpu_boot_status, to use a w register.
> 
> Signed-off-by: Arun KS <arunks@codeaurora.org>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/include/asm/smp.h | 2 +-
>  arch/arm64/kernel/head.S     | 6 +++---
>  2 files changed, 4 insertions(+), 4 deletions(-)

Your original patch is now in mainline:

https://git.kernel.org/linus/61cf61d81e32

Is this still needed?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
