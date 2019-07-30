Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ABD7B492
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 22:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdHb5rmpwXVDDoPaYmkRHFZDkmHAT7xFS+pXHtcAxRU=; b=BXK3Luk45x+nqv
	eEHNAkhT4no/R8xTICO+5jOT0jheAJl8RzYOkggcBZAM8XVMEEVmJXnonXk3oSo4wB3bYS8Hu3jAL
	DGSBQiKk99XEPatS33ySnao9KOWl+bYLVGnrgrp+RXrD4wLXLMAzp5Cs8cni6tpRWnQZYXZQhfGOX
	BtJqY1bwRc/I5r8E69XbLl6BOC6s5HwB/8mdzb8zu9UiqwyeV1lAQvrsz4q8rGwk4SDHoXECign8R
	gt1AFFFxM0IqfKDfkJZ+M75ecwTfsoyDGT+iZNHp2trmUoMigj3c5pJFU8uwNwtXuRwH2zjuIMKJK
	/2Xzya6+twmWlbf+D8Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZ7l-00089p-5z; Tue, 30 Jul 2019 20:53:33 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZ7d-00089Q-IN
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 20:53:26 +0000
Received: by mail-lf1-x144.google.com with SMTP id s19so45740608lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 13:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jclYugzhKXhlJk5pUhgZFfSAA+o8PyYYOEPmXaFzQW0=;
 b=qaxgPyuHjV8eQsxdgIXD6wSNKdaV7/pZgBLwWou4xmbqtxd22n3RB6hJz1KSiu5xjE
 8UHPBLHvHKLP7q8bZyn+tmK4I/4UbgvCxL5fxdwaI7Unom7vdlBrqnG4HVHFJse72zYZ
 3/GVsiQCC0s/AjkKO61Yfl4e3sykcWMgze90gIJCDiNDG+q8cWZpXRc6PZMtJzidX0ND
 b4JPeaOPnBxjx9NWxcsIqLEgdEPqeXYhmEM5lnkp+jAs3fq5TNul0KPlGCVgaIm6DLKc
 wA3IM5hNgTn9JQwHv+jGH2Eq7VyN78RUn8myQ3d13Am56YVRvLGcXRMPzzR3eGU+5mjc
 SWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jclYugzhKXhlJk5pUhgZFfSAA+o8PyYYOEPmXaFzQW0=;
 b=JvZV03vqK5TvP3Q2r1PM4qgemu5o8no1iGn5l5O5Gg1ehDF6fsUi9dXNK60hBrF3FL
 K5vWBJXUI7yyObbs3ZW0yNun1VRltuu1SN1QggtzMNzlbLTdYqP9hmCb4+vVCCxDtd97
 PvLCsyLGYhtWf47A4HwUb8E4CBY6pdSPfwmFCZRfpb9biT0Mj/PXV+AikgX97zeySnEZ
 xaWVX2vZ7I01L35CQwJ3Y5CzbSes62G3hCyTE/P+BIVcjga9d6i4uQQ4v9fgMs5AbYF3
 DWeqpfafFwg/fXc8Lp4CaH0QoOJ4+R2kXaOB1wJLicWlHfsAnQ87A96yNvOnPDr566zj
 uVEQ==
X-Gm-Message-State: APjAAAVFjzoTBxdeZO+jmyKM9qBTxrjo2wQgCGO8OxlzLB/WtXEh4EHD
 yGGXsCf6QYTBFRUYBLp7DzPUPTfQruE2bzvtwAcLZFc1
X-Google-Smtp-Source: APXvYqxLZbcQkNGLt2aGD4ZsshnY4scI1t46ayvot4F2God2/3h/JlTnUrnkZHuI2ef6+Z6FMDVVioV953qAvR1vzWQ=
X-Received: by 2002:a05:6512:29a:: with SMTP id
 j26mr24102009lfp.44.1564520003726; 
 Tue, 30 Jul 2019 13:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-15-dev@pschenker.ch>
In-Reply-To: <20190730144649.19022-15-dev@pschenker.ch>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 17:53:28 -0300
Message-ID: <CAOMZO5BtXFR7kDuiHedsDA0AaNZqsO_L2x9d3u9ZuULkovChoQ@mail.gmail.com>
Subject: Re: [PATCH 14/22] ARM: dts: apalis-imx6: Add some example I2C devices
To: Philippe Schenker <dev@pschenker.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_135325_630000_83EBC1D2 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:

>  &backlight {
> @@ -204,6 +228,77 @@
>   */
>  &i2c3 {
>         status = "okay";
> +
> +       adv7280: adv7280@21 {
> +               compatible = "adv7280";
> +               reg = <0x21>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
> +               clocks = <&clks 200>;

Please replace this 200 with a proper clock label.

> +               clock-names = "csi_mclk";
> +               DOVDD-supply = <&reg_3p3v>;
> +               AVDD-supply = <&reg_3p3v>;
> +               DVDD-supply = <&reg_3p3v>;
> +               PVDD-supply = <&reg_3p3v>;
> +               csi_id = <0>;

This is not a valid property upstream.

It seems you just ported it from a downstream vendor kernel. Please
make sure you test with the dt-bindings from mainline.

> +               mclk = <24000000>;
> +               mclk_source = <1>;
> +               status = "okay";
> +       };
> +
> +       /* Video ADC on Analog Camera Module */
> +       adv7180: adv7180@21 {
> +               compatible = "adv,adv7180";
> +               reg = <0x21>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pinctrl_ipu1_csi0 &pinctrl_cam_mclk>;
> +               clocks = <&clks 200>;

clock label, please.

> +               clock-names = "csi_mclk";
> +               DOVDD-supply = <&reg_3p3v>; /* 3.3v */
> +               AVDD-supply = <&reg_3p3v>;  /* 1.8v */
> +               DVDD-supply = <&reg_3p3v>;  /* 1.8v */
> +               PVDD-supply = <&reg_3p3v>;  /* 1.8v */
> +               csi_id = <0>;

Same here

> +               mclk = <24000000>;
> +               mclk_source = <1>;
> +               cvbs = <1>;
> +               status = "disabled";
> +       };
> +
> +       max9526: max9526@20 {
> +               compatible = "maxim,max9526";

This is not documented in mainline.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
