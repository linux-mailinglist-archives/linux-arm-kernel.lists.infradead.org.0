Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F024105DA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 01:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qrVlQ47XbiEwtdA5xznCEVbvjFK/MwrnEeJ3L172ww=; b=T7mkjYof/Rf/03
	8BJy2EeVi5EiZ/SHrYU8bY+x4aVr/Q/cFMVK4jUdg6rgR/a+VXNVNYc6s943yIO/wWwov6u1V1oJV
	WFnichow1L329Q8f6Yln9pImpUgMHu92a9ONXdnYks5a3b/XY5XgD+ZpDvKl4AKab7y1zh4mX5Icl
	20lBsCpTqFXdiNxgenMElrvdA1wJEz2Pj0f7PeI4jxgqDo9BRvjMYbUAPWkJVCYI/cs23BAZvzgIm
	5WlNFnNalufbOiyNA32RztEzaj1w2zePH7Bj6PdtS16Wo0g+9QGFkvIgPiCCNR7UBw9QruPudmusI
	XIIFP01jwnX39ZtO1GGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXwjj-0000eX-45; Fri, 22 Nov 2019 00:23:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXwjb-0000cz-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 00:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o7hbwuPirwuuz0Y/+39p2Uj5Rp0ENQjemwmV/bfiS70=; b=lDIFDmcB6YuQuSGSZlFob0XEu
 OhD474Hwuwm4BhvW39/sq97d2A4scUWTlIgruSePYHHLwXTuvZd9/Q20du1X8udEiazjEEIqAUIWF
 Ir3W3OqWGvDVGQuJGVzMMS9QvGdJeCJBEURWMFWoIRXJr89V0FnZOv5Fa4HiHRPT1MZPxq470Pz9W
 z5ULDYDLKDSWnIOfRhi5FYvorVItrtOwGT8cxcze5eJnY61upZfjtjtUWo4mHYCgXKtaL3NLOx1Sn
 Ytk+lSYp6UglSzuJ8T0FIybi3aks+UMtn/vFO/bX4FlWtUHHxWicL/seNL8s7AagS6b9LXVAjpFlG
 iRmWpUnlQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42882)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iXwj5-0001as-MI; Fri, 22 Nov 2019 00:23:07 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iXwiw-0003Br-8q; Fri, 22 Nov 2019 00:22:58 +0000
Date: Fri, 22 Nov 2019 00:22:58 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
Message-ID: <20191122002258.GD25745@shell.armlinux.org.uk>
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-2-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121184805.414758-2-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_162339_703885_171FE907 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, stefan@agner.ch,
 yamada.masahiro@socionext.com, will@kernel.org, boris.ostrovsky@oracle.com,
 sashal@kernel.org, sstabellini@kernel.org, jmorris@namei.org,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org,
 vladimir.murzin@arm.com, marc.zyngier@arm.com, alexios.zavras@intel.com,
 tglx@linutronix.de, allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, james.morse@arm.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 01:48:03PM -0500, Pavel Tatashin wrote:
> privcmd_call requires to enable access to userspace for the
> duration of the hypercall.
> 
> Currently, this is done via assembly macros. Change it to C
> inlines instead.
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm/include/asm/assembler.h |  2 +-
>  arch/arm/include/asm/uaccess.h   | 32 ++++++++++++++++++++++++++------
>  arch/arm/xen/enlighten.c         |  2 +-
>  arch/arm/xen/hypercall.S         | 15 ++-------------
>  arch/arm64/xen/hypercall.S       | 19 ++-----------------
>  include/xen/arm/hypercall.h      | 23 ++++++++++++++++++++---
>  6 files changed, 52 insertions(+), 41 deletions(-)
> 
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 99929122dad7..8e9262a0f016 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -480,7 +480,7 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
>  	.macro	uaccess_disable, tmp, isb=1
>  #ifdef CONFIG_CPU_SW_DOMAIN_PAN
>  	/*
> -	 * Whenever we re-enter userspace, the domains should always be
> +	 * Whenever we re-enter kernel, the domains should always be
>  	 * set appropriately.
>  	 */
>  	mov	\tmp, #DACR_UACCESS_DISABLE
> diff --git a/arch/arm/include/asm/uaccess.h b/arch/arm/include/asm/uaccess.h
> index 98c6b91be4a8..79d4efa3eb62 100644
> --- a/arch/arm/include/asm/uaccess.h
> +++ b/arch/arm/include/asm/uaccess.h
> @@ -16,6 +16,23 @@
>  
>  #include <asm/extable.h>
>  
> +#ifdef CONFIG_CPU_SW_DOMAIN_PAN
> +static __always_inline void uaccess_enable(void)
> +{
> +	unsigned long val = DACR_UACCESS_ENABLE;
> +
> +	asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
> +	isb();
> +}
> +
> +static __always_inline void uaccess_disable(void)
> +{
> +	unsigned long val = DACR_UACCESS_ENABLE;
> +
> +	asm volatile("mcr p15, 0, %0, c3, c0, 0" : : "r" (val));
> +	isb();
> +}

Rather than inventing these, why not use uaccess_save_and_enable()..
uaccess_restore() around the Xen call?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
