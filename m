Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C63C1C5CA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFUEpUIAIfXqvCWwS/SqzUW5ytGDXgNy5aYVp58PWxA=; b=mfKnJHD//z5WDP
	wMGO38zIKuF3EKxIY9khPHbau7FovA+VlAvFxN137BJx/7gZv8OED5b7UbP7Hh0wYIqdbKYOQkdPb
	ipN1O2Cq2JcPDr6emi1AGaqp0Et8vefQEH0Yuuy6E9fi4v0zWLI27WwFLt7v1AbZ8RH7JJTDxf/Jl
	XPAc1BLxN7jXQZ8lfAk3dnqaW+jSbPPPYZl3M6hqD/Coek/ShWBSBESqByyPbyFtUPMbvChiJ3uGJ
	velvhEkNiA19OZPH/uEfZyxKLS+E2IUYMiORTmqCG1lAToFgI71kjrsvHt1Ziwq+ln5asqhAuNSLS
	5d4rcIQC44rRwxvhJHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzug-0005tU-08; Tue, 05 May 2020 15:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzuQ-0005JY-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:55:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7A7B207DD;
 Tue,  5 May 2020 15:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588694102;
 bh=8be2lsxcesOAgyrKd3tvzwvIRN1AjWgE5EIS7dYaLUA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eazZOOK9HnpQz7eVHE2lFvTkM0ELl0pD+Y/+mHz2tp6LSu2nkvVBNxFFsNsGlL8N9
 aOpudv4mR8BeHfO32aybIFOakrFK5mdiEbIfcxcsg/0oE4n89/xj0PBXnXOqqXoTV9
 aH0wwGhlUKmaq8f7fyrTC8fTVQBRaDzzXbbIQQ2U=
Date: Tue, 5 May 2020 16:54:57 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 2/2] syscall.2: arm64: Fix syscall number register size
Message-ID: <20200505155457.GE24239@willie-the-truck>
References: <1588692280-15878-1-git-send-email-Dave.Martin@arm.com>
 <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588692280-15878-3-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_085502_844703_85648A77 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:24:40PM +0100, Dave Martin wrote:
> arm64 is currently documented as receiving the syscall number in
> x8.
> 
> While this is the correct register, the syscall number is a 32-bit
> integer.  Bits [63:32] are ignored by the kernel.
> 
> So it is more correct to say "w8".
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> ---
>  man2/syscall.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/syscall.2 b/man2/syscall.2
> index 53ab40e..d724651 100644
> --- a/man2/syscall.2
> +++ b/man2/syscall.2
> @@ -203,7 +203,7 @@ alpha	callsys	v0	v0	a4	a3	1, 6
>  arc	trap0	r8	r0	-	-
>  arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
> -arm64	svc #0	x8	x0	x1	-
> +arm64	svc #0	w8	x0	x1	-

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
