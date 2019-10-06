Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36245CCDFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 04:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFEGeUpn8dIX3b5+U3ROoEF/sTsI62IA4cicEhFXQPc=; b=M0Ad01nA7apD8t
	uodWw5LccCtiva9bkljbGk5GuVJdx7EZnPOGs+HGAavtj/a7qrmZiTweQj8klmE56fY4Z42cwhBKJ
	2snur0CjsSsPUcEOqk/B/NfzY78Bn0LX2IsaW9N/8ozMMyzQ/Yxsihi8tJwYhccrzlh0ByPv/sVwL
	43zXHsGHXejVQsgCZw+dMuOxUcLE0TsIU6wCgH9zdXG+FNAFhznRTPOkVaYwxHKvc6+6xrA6Qc9rZ
	XUix0iqSrAqpuZXi2rBtJQSfCAtQOQRHhBsAtKEWLFfAxnoHHBC/nlgHYmU7iq7F/piayihTHbVFM
	bgdMiETt3LzR3Zb+mTbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGwhf-0004hG-Ms; Sun, 06 Oct 2019 02:55:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGwhY-0004gk-5i
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 02:55:17 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D539218AC;
 Sun,  6 Oct 2019 02:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570330515;
 bh=ieq18tBRGO65LoXREEvWqq2qiGQbPennPGhSD9vJ4AM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CD9w2Sr+yn51n+HDlK6lfj/NCATJMKBOJPO3TOvHsen/CPup5K1msxudmTCDNdxbm
 UcMmcAN3eompehkCvRvn1INLn0czUQwGmi/FrRruD6GrFL8nm0gQ2HQTItwsSiflAt
 odf3cv3YudRWWjZDj6zUJmJOm+NFPVLPzpIgD2QI=
Date: Sun, 6 Oct 2019 10:54:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>, Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v1] usb: dwc3: enable otg mode for dwc3 usb ip on
 layerscape
Message-ID: <20191006025450.GO7150@dragon>
References: <20190909090244.42543-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909090244.42543-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_195516_241610_2F23F49D 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 xiaobo.xie@nxp.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, jiafei.pan@nxp.com,
 Ran Wang <ran.wang_1@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 05:02:44PM +0800, Yinbo Zhu wrote:
> layerscape otg function should be supported HNP SRP and ADP protocol
> accroing to rm doc, but dwc3 code not realize it and use id pin to
> detect who is host or device(0 is host 1 is device) this patch is to
> enable OTG mode on ls1028ardb ls1088ardb and ls1046ardb in dts
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

The patch prefix should be something like: 'arm64: dts: ...'

@Leo, do you agree with the changes?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
>  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 2 +-
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 7975519b4f56..5810d0400dbc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -320,7 +320,7 @@
>  			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
>  			reg = <0x0 0x3110000 0x0 0x10000>;
>  			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
> -			dr_mode = "host";
> +			dr_mode = "otg";
>  			snps,dis_rxdet_inp3_quirk;
>  			snps,quirk-frame-length-adjustment = <0x20>;
>  			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> index b0ef08b090dd..ecce6151b9b0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -582,7 +582,7 @@
>  			compatible = "snps,dwc3";
>  			reg = <0x0 0x3000000 0x0 0x10000>;
>  			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> -			dr_mode = "host";
> +			dr_mode = "otg";
>  			snps,quirk-frame-length-adjustment = <0x20>;
>  			snps,dis_rxdet_inp3_quirk;
>  			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index dacd8cf03a7f..4b5413f7c90c 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -385,7 +385,7 @@
>  			compatible = "snps,dwc3";
>  			reg = <0x0 0x3110000 0x0 0x10000>;
>  			interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
> -			dr_mode = "host";
> +			dr_mode = "otg";
>  			snps,quirk-frame-length-adjustment = <0x20>;
>  			snps,dis_rxdet_inp3_quirk;
>  			status = "disabled";
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
