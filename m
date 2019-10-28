Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDA6E7015
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFe0ubV4LWiYTSD5bVJqnKowS9gvYP9tajerKCW1vzw=; b=Yx4nNJIJe6CD6C
	6n0o9/WPcs1XMj0zJ6Cpvnov9OpDFfxBtv+RPw2YTsJibilcAnQeLVC73ebHVZnZoAEI5/gByACrD
	/CziyxSfT1H8dc+GHRFOiGOED8frUDimHdPIuDynFL/dG7ARdZWyqejpUdt5voT66W8fl0CQgh6SM
	tLObLhzPBBRFqnFfCwO9kwXbIe1WZ/yVENdoPAbLhzO4NfcabTbi1YrIo5Fq3Jx+e0WX2LXHNXzqu
	XN0dC4+V06qw824J6aqESSxbmWxIQqxO+SZx0qjsHZnOzZwEF6yr5YPGatHwepfdUH7JzKGxevelR
	AXRpW8oLd29Cg4BSUNng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2ki-0001us-3S; Mon, 28 Oct 2019 11:00:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2kX-0001uP-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 10:59:51 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE75C20873;
 Mon, 28 Oct 2019 10:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572260389;
 bh=vnID9+Oo8Ba/7JkP4NlkjT8aLuIOGGl8S6SiOMEIGLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZOynHkfmFX06vNr8sfpvCZQtP+oE9c+n01F6NmlPDm8xnwdvq8mtNOSlkhGKdWkJV
 5SNqE4Kw+KgkfR4LHBMn9kxVbXVJ0JAgzHWvt6ug5g6HreFNmQX5REz2u8FRKNnYtL
 l8HASqabKNYlo51wBS0ALEHgahupJhoOVPcDmWvw=
Date: Mon, 28 Oct 2019 10:59:44 +0000
From: Will Deacon <will@kernel.org>
To: Candle Sun <candlesea@gmail.com>
Subject: Re: [PATCH v2] ARM/hw_breakpoint: add more ARMv8 debug architecture
 versions support
Message-ID: <20191028105943.GA4122@willie-the-truck>
References: <20191024080539.9187-1-candlesea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024080539.9187-1-candlesea@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_035949_973104_0956D66D 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, linux@armlinux.org.uk,
 Candle Sun <candle.sun@unisoc.com>, linux-kernel@vger.kernel.org,
 orson.zhai@unisoc.com, Nianfu Bai <nianfu.bai@unisoc.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 04:05:39PM +0800, Candle Sun wrote:
> From: Candle Sun <candle.sun@unisoc.com>
> 
> When ARMv8 cores are used in AArch32 mode, arch_hw_breakpoint_init()
> in arch/arm/kernel/hw_breakpoint.c will be used.
> 
> From ARMv8 specification, v8 debug architecture versions defined:
> * 0110 ARMv8, v8 Debug architecture.
> * 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host
>   Extensions.
> * 1000 ARMv8.2, v8.2 Debug architecture.
> * 1001 ARMv8.4, v8.4 Debug architecture.
> 
> So missing ARMv8.1/ARMv8.2/ARMv8.4 cases will cause
> enable_monitor_mode() returns -ENODEV,and eventually
> arch_hw_breakpoint_init() will fail.
> 
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
> ---
> Changes in v2:
> - Add ARMv8.4 debug architecture case
> - Update patch description
> ---
>  arch/arm/include/asm/hw_breakpoint.h | 3 +++
>  arch/arm/kernel/hw_breakpoint.c      | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm/include/asm/hw_breakpoint.h b/arch/arm/include/asm/hw_breakpoint.h
> index ac54c06764e6..62358d3ca0a8 100644
> --- a/arch/arm/include/asm/hw_breakpoint.h
> +++ b/arch/arm/include/asm/hw_breakpoint.h
> @@ -53,6 +53,9 @@ static inline void decode_ctrl_reg(u32 reg,
>  #define ARM_DEBUG_ARCH_V7_MM	4
>  #define ARM_DEBUG_ARCH_V7_1	5
>  #define ARM_DEBUG_ARCH_V8	6
> +#define ARM_DEBUG_ARCH_V8_1	7
> +#define ARM_DEBUG_ARCH_V8_2	8
> +#define ARM_DEBUG_ARCH_V8_4	9
>  
>  /* Breakpoint */
>  #define ARM_BREAKPOINT_EXECUTE	0
> diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
> index b0c195e3a06d..02ca7adf5375 100644
> --- a/arch/arm/kernel/hw_breakpoint.c
> +++ b/arch/arm/kernel/hw_breakpoint.c
> @@ -246,6 +246,9 @@ static int enable_monitor_mode(void)
>  	case ARM_DEBUG_ARCH_V7_ECP14:
>  	case ARM_DEBUG_ARCH_V7_1:
>  	case ARM_DEBUG_ARCH_V8:
> +	case ARM_DEBUG_ARCH_V8_1:
> +	case ARM_DEBUG_ARCH_V8_2:
> +	case ARM_DEBUG_ARCH_V8_4:
>  		ARM_DBG_WRITE(c0, c2, 2, (dscr | ARM_DSCR_MDBGEN));
>  		isb();
>  		break;

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
