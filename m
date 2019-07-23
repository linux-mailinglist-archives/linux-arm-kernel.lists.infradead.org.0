Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA7B713EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywruuywcUqeV2nks0e01nlbh4ZAvL5zYlgLNzrcoMLQ=; b=G/IKhrC3s5rtGt
	EsJ8E3P9gAl71Ozb9+DHZuTXlZoBFUFLspgvU5UYKQMlrab5HANrjn4QimSfB+MO0aOOq5IMQyS5y
	jtOpLhXKzQ7WSo2lBV43uL6TxaF4gfa8MiEv8Rg5/9BVHrTaLPlC343u45EbPV9vDOn96A2bIf1/2
	JFdVosqQ0yIG8fhSluVmgehCAtktjy6n01vO553lk1qEJ+K02YujrqqxcPa1NhAvOTvHsVg/LSui4
	xKubKaZn7koIyUzZaBaSkjPjdzGkY3/APEThXqzR7JhGV9DUWE4z1d9s46IteG8vO7ZfpFciO2Dcd
	R6yp3V8dc8v+0s8WMAYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpq7X-0007y4-59; Tue, 23 Jul 2019 08:26:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpq7G-0007xW-7o
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:25:47 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE6A421BF6;
 Tue, 23 Jul 2019 08:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563870345;
 bh=w3B1ItU9af+2ThyYfj4Etfner4HloKJVaabGxBGnsmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p2s4gp6NpnNdE5rAbKTw9d+dy87bdiUMkX4lNqd+x30p3dZSTe0Vl8l1V1OuNVgPM
 3U0rO05l9Bwc5XZSH9mlo/4JVtine1tevzdsA1d5mH+EbIaLVFGGO7AC07K1eZTX1S
 RC35YUpUs76VokNk1DobN/Lx2Z/61BDjwftw8bJ0=
Date: Tue, 23 Jul 2019 16:25:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: andradanciu1997 <andradanciu1997@gmail.com>
Subject: Re: [PATCH v6 0/2] Add basic support for pico-pi-imx8m
Message-ID: <20190723082509.GS15632@dragon>
References: <20190722102730.15763-1-andradanciu1997@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722102730.15763-1-andradanciu1997@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_012546_301484_200BD3B4 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, bhaskar.upadhaya@nxp.com,
 angus@akkea.ca, manivannan.sadhasivam@linaro.org, festevam@gmail.com,
 richard.hu@technexion.com, andrew.smirnov@gmail.com, pankaj.bansal@nxp.com,
 linux-imx@nxp.com, u.kleine-koenig@pengutronix.de, devicetree@vger.kernel.org,
 Michal.Vokac@ysoft.com, pramod.kumar_1@nxp.com, s.hauer@pengutronix.de,
 robh+dt@kernel.org, vabhav.sharma@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, kernel@pengutronix.de,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 01:27:28PM +0300, andradanciu1997 wrote:
> Add support for TechNexion PICO-PI-IMX8M based on patches from Richard Hu
> Datasheet is at: https://s3.us-east-2.amazonaws.com/technexion/datasheets/picopiimx8m.pdf
> 
> Changes since v5:
>  - removed comment /* PMIC BD71837 PMIC_nINT GPIO1_IO12 */
>  - added "Reviewed-by" tags
> 
> Changes since v4:
>  - removed #address-cells and  #size-cells from regulators node
> 
> Changes since v3:
>  - renamed pico-pi-8m.dts to imx8mq-pico-pi.dts
>  - moved iomuxc node as the last one
>  - removed pinctrl-assert-gpios property from fec1 node
>  - removed at803x,led-act-blind-workaround, at803x,eee-disabled
>    properties from mdio node
>  - added pinctrl-names = "default" to i2c1 node
>  - changed bd71837 pmic support properties according to
>    Documentation/devicetree/bindings/regulator/rohm,bd71837-regulator.txt
>  - removed A53_0 node
> 
> Changes since v2:
>  - changed PICO-PI-8M bord compatible from wand,imx8mq-pico-pi to
>    technexion,pico-pi-imx8m
>  - removed bootargs property
>  - removed regulators node and put fixed regulator directly under root node
>  - changed node name from usb_otg_vbus to regulator-usb-otg-vbus
>  - removed pinctrl-names property from iomuxc node
>  - removed wand-pi-8m container node
>  - sorted pinctrl nodes alphabetically
>  - removed tusb320_irqgrp, tusb320_irqgrp nodes because there is no upstream
>    driver
>  - changed properties' order in usb_dwc3_1 node
> 
> Changes since v1:
>  - renamed wandboard-pi-8m.dts to pico-pi-8m.dts
>  - removed pinctrl_csi1, pinctrl_wifi_ctrl
>  - used generic name for pmic
>  - removed gpo node
>  - delete regulator-virtuals node
>  - remove always-on property from buck1-8 and ldo3-7
>  - remove pmic-buck-uses-i2c-dvs property for buck1-4
> 
> Andra Danciu (1):
>   dt-bindings: arm: fsl: Add the pico-pi-imx8m board
> 
> Richard Hu (1):
>   arm64: dts: fsl: pico-pi: Add a device tree for the PICO-PI-IMX8M

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
