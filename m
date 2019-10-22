Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA07E03D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgY9XeBY1BKMUIIZH34InmGtsrhqP0vszMXgD9amSx4=; b=g0qvo+SRbBVfCN
	WwEt87abFU3Guo9M0Mjkx4Ig+K0DE16WEbUOeLTPYr5vOjqbabfZGGiYaO06X1+J6Ryc0ozQ6La8J
	ppELVEUt9ZiWkzjfZ3qewOxNMq2skmF141BEqpoTSG/4Eg6ucQsC2nAPTZ9MnmAmadmV3EdFu/bLH
	LJ10oWj64015lGs7OUbNw6tr/lK/n4dyMmeg5rf8h0k9ap/dUKn4IpNx/BZfOUUkbidCMLb2nzaGl
	DI/WjUzfEfoEatso+Egnm/sxXZ6DAyq94hvbGZEFBsI6M96CKDrF1KXj2mnVIJr9LeG7ZxYZVFZOw
	4N0Lbd3faV4RV9mOIMfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtEr-0002nY-Tc; Tue, 22 Oct 2019 12:26:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtEa-0002mm-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:25:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C91502184C;
 Tue, 22 Oct 2019 12:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571747156;
 bh=oXX6Ruh04x8qHjPZHb6cjHnTqz33Xt0fFodUI+uKHKg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=duVArzChHrutOcwxJlN96kTY7+qq2YILVx276cvY9b18m4OL8KF9BueLggsB8kb06
 Rz3EMvp3f5M9uTprMOgWvWee/MI/Xwa5r35mm0pCDildOFgnDalN1OTvyTtg8RyRjN
 HubV3AweoLeSmsFWva17wmGRYjpUVGSS0xkToypQ=
Date: Tue, 22 Oct 2019 13:25:50 +0100
From: Will Deacon <will@kernel.org>
To: Candle Sun <candlesea@gmail.com>
Subject: Re: [RESEND PATCH] ARM/hw_breakpoint: add ARMv8.1/ARMv8.2 debug
 architecutre versions support in enable_monitor_mode()
Message-ID: <20191022122550.GA17232@willie-the-truck>
References: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569483508-18768-1-git-send-email-candlesea@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_052556_698002_2DEDBC6C 
X-CRM114-Status: GOOD (  12.53  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Nianfu Bai <nianfu.bai@unisoc.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 03:38:28PM +0800, Candle Sun wrote:
> From: Candle Sun <candle.sun@unisoc.com>
> 
> When ARMv8.1/ARMv8.2 cores are used in AArch32 mode,
> arch_hw_breakpoint_init() in arch/arm/kernel/hw_breakpoint.c will be used.
> 
> From ARMv8 specification, different debug architecture versions defined:
> * 0110 ARMv8, v8 Debug architecture.
> * 0111 ARMv8.1, v8 Debug architecture, with Virtualization Host Extensions.
> * 1000 ARMv8.2, v8.2 Debug architecture.
> 
> So missing ARMv8.1/ARMv8.2 cases will cause enable_monitor_mode() function
> returns -ENODEV, and arch_hw_breakpoint_init() will fail.
> 
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> Signed-off-by: Nianfu Bai <nianfu.bai@unisoc.com>
> ---
>  arch/arm/include/asm/hw_breakpoint.h | 2 ++
>  arch/arm/kernel/hw_breakpoint.c      | 2 ++
>  2 files changed, 4 insertions(+)

[...]

> diff --git a/arch/arm/include/asm/hw_breakpoint.h b/arch/arm/include/asm/hw_breakpoint.h
> index ac54c06..9137ef6 100644
> --- a/arch/arm/include/asm/hw_breakpoint.h
> +++ b/arch/arm/include/asm/hw_breakpoint.h
> @@ -53,6 +53,8 @@ static inline void decode_ctrl_reg(u32 reg,
>  #define ARM_DEBUG_ARCH_V7_MM	4
>  #define ARM_DEBUG_ARCH_V7_1	5
>  #define ARM_DEBUG_ARCH_V8	6
> +#define ARM_DEBUG_ARCH_V8_1	7
> +#define ARM_DEBUG_ARCH_V8_2	8

Looks like you can also add:

#define ARM_DEBUG_ARCH_V8_4	9

and treat that the same way. With that, and a fix to $SUBJECT:

Acked-by: Will Deacon <will@kernel.org>

Please put this into the patch system [1].

Will

[1] https://www.arm.linux.org.uk/developer/patches/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
