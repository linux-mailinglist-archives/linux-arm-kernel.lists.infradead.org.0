Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D54FF41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ob3ouP0KdpyPhRP2PCRw1dmtKf3V/HUJf4viAg9RFa4=; b=Ftel2dTL+4jAI6
	M+dhruvWPdnG+Hk3+aa1n7vocBObSWCsZ1aij4+Xik/OsPv+CI6mqtC0nbQLKhrYEmtVGGFQtlTLo
	o8/1WanAJkSUIxgSvYInmJ78cQNVCivgd7dNM2NUN3fZYHc3BVSOwhLu/2JF4e6veALyK50irUHBG
	f34I7FUZIhSsDnj1E4hxkW4nB4JEyF9+259FC51OugRw+X+kkUFuKWZl2A4wC98oxyyK+nOsWKS5R
	1lKLpiucNfNmEB7SNCddc7FMG6fprYAYUoM5TZN2oMWTReaD0ObVZjIPtE9hdQnCCuuaDwatiLnnl
	GcBErac37g0BO5MYh4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEcr-0001LR-Fj; Mon, 24 Jun 2019 02:22:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEcb-0001Kx-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:22:19 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3446B20674;
 Mon, 24 Jun 2019 02:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561342937;
 bh=pKDGJCOm3sPFWQrKUlY7wE/3DQYSqRgICebooU0YJ7c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XjM5N81g/7ve7z57/8jaDqCnZ3Hty3NR8A7l6bunQ9KdlanZ6HOZsDD/ClYP9MPc4
 srCthmgHw/mqYOGJTIEVI5zmm42hKYGJ1cGcRdlP/nlECOqXJjnMbtJMpTF+gJAMXq
 RmLZZkOJC53WswVM7rWJECum2pznydE/45EBiODg=
Date: Mon, 24 Jun 2019 10:22:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/4] arm64: Enable TIMER_IMX_SYS_CTR for ARCH_MXC platforms
Message-ID: <20190624022200.GN3800@dragon>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621070720.12395-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_192217_876229_2A74B0D0 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 festevam@gmail.com, ping.bai@nxp.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, catalin.marinas@arm.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, will@kernel.org, mturquette@baylibre.com,
 linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 03:07:17PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> ARCH_MXC platforms needs system counter as broadcast timer
> to support cpuidle, enable it by default.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/Kconfig.platforms | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 4778c77..f5e623f 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -173,6 +173,7 @@ config ARCH_MXC
>  	select PM
>  	select PM_GENERIC_DOMAINS
>  	select SOC_BUS
> +	select TIMER_IMX_SYS_CTR

Where is that driver?

Shawn

>  	help
>  	  This enables support for the ARMv8 based SoCs in the
>  	  NXP i.MX family.
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
