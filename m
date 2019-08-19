Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C0C924AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLUkyim8eH2jhLKPsJbZFAMA9/2/F+Op281zDU06HTc=; b=uYtvJVGZBRWDmG
	6bI4BysNiA5RaIxgGRi8WI5cOOzb6j60xE2nyJ7AEdcK2/aYt/FkRg7lgkRuwFpCe5n/L5zUTfyoR
	5eYty6yCpgGmnoHVionolhPMwv8SYi/l2qVpq3Jmnkyl/37ASbkpLbEpuUlilkCWfNXlESKhy6Bij
	B+14swO5mEnVyd04zCflmPkv/8FmtM3RCUxhdzO0iHzBabS8yP5DITLcD53uTdICEbXS6LLnXhF0a
	0WWIkz2RprJ2BxkEA/ud5urfrGyk6sGE75MT7XKXUunFGlowtccRgSGuZybA3ZPAdadn78SQ/qHJ2
	2fJnADI/tr6yXec4Pr2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhaL-0002Cs-4g; Mon, 19 Aug 2019 13:20:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhaB-0002C7-DF
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:20:24 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F98E20843;
 Mon, 19 Aug 2019 13:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566220823;
 bh=dE+SiJQE1Ga//QTRSzldLGnM5m2eIprsqb2ueqc8n1U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rBFMxF2Ck/Pj5wW+m4oFvA7SQKUmPliDghwewPJ6v5mVfIfd57IcjJcjOFI8FIH3b
 djdP4zDExqFoiBtoogN29KbJA6/bRo0XbGW/ZeNdMJsSHwHNoQrtTnF2mrwsE3apI3
 PWIpqyd0NPFHpl7Eqc25ZUo0PF8aCF/EPH2Eh/FQ=
Date: Mon, 19 Aug 2019 15:20:06 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: ls1088a: fix gpio node
Message-ID: <20190819132004.GJ5999@X250>
References: <20190815103016.23125-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815103016.23125-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_062023_804789_A9E219D8 
X-CRM114-Status: GOOD (  16.10  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 06:30:16PM +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> Update the nodes to include little-endian

So the commit log needs an update as well?

Shawn

> property to be consistent with the hardware
> and add ls1088a gpio specify compatible.
> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
> Changes in v3:
> 	- delete the attribute of little-endian.
> Changes in v2:
> 	- update the subject.
> 	
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index dfbead4..ff669c8 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -269,7 +269,7 @@
>  		};
>  
>  		gpio0: gpio@2300000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1088a-gpio", "fsl,qoriq-gpio";
>  			reg = <0x0 0x2300000 0x0 0x10000>;
>  			interrupts = <0 36 IRQ_TYPE_LEVEL_HIGH>;
>  			little-endian;
> @@ -280,7 +280,7 @@
>  		};
>  
>  		gpio1: gpio@2310000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1088a-gpio", "fsl,qoriq-gpio";
>  			reg = <0x0 0x2310000 0x0 0x10000>;
>  			interrupts = <0 36 IRQ_TYPE_LEVEL_HIGH>;
>  			little-endian;
> @@ -291,7 +291,7 @@
>  		};
>  
>  		gpio2: gpio@2320000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1088a-gpio", "fsl,qoriq-gpio";
>  			reg = <0x0 0x2320000 0x0 0x10000>;
>  			interrupts = <0 37 IRQ_TYPE_LEVEL_HIGH>;
>  			little-endian;
> @@ -302,7 +302,7 @@
>  		};
>  
>  		gpio3: gpio@2330000 {
> -			compatible = "fsl,qoriq-gpio";
> +			compatible = "fsl,ls1088a-gpio", "fsl,qoriq-gpio";
>  			reg = <0x0 0x2330000 0x0 0x10000>;
>  			interrupts = <0 37 IRQ_TYPE_LEVEL_HIGH>;
>  			little-endian;
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
