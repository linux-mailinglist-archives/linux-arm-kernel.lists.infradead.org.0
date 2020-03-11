Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47419180D71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 02:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GugvPqa42j2/JqsNPVHAHMej4lIZDByIrgP6KuaGI4Y=; b=LgStvo3HvK/jP5
	n9SP/ivt4674CY2NzEQeyGJ2Icb32ZaYhV8SWDRkozqylDdefFsPCPNNxAEoqtYIQTDL6qjKU9Wh4
	S3emR9g+K539MVvUbnObdCnmuudeQ0HJd7GuBmy72T9jJWZMxVHBLXbYVRva7Wvw8b3rK6FosknR6
	evlv8OMXGwEvPhj5y4Bam6zjjoEsPJaaZB97xdCv0J1Utuo0/oKEJAXl5o4zOY9vDfS+Yx+Du7vjS
	DnmNAdY41aPpuJGHljcXUcwloXD7h4GYYTDzITvrZEwsWAIA2oMprQCvEeIyaXoU14RpD+nH/qLoJ
	XQCFQ6ebBvoeKEUEGrYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBq6i-0005dt-J8; Wed, 11 Mar 2020 01:24:24 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBq6Y-0005dS-Vf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 01:24:16 +0000
Received: by mail-lf1-x143.google.com with SMTP id j11so264633lfg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 18:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tFsCMPYEvQ090eghtJnuZSfndIYHXofg6kpzbpjDHcg=;
 b=khQEriv/qXhJIlEcRUfHpUFBBNJlME/YbqhLsz8nEtpslFi3hDMOkwANIKEhmCYLIn
 bKaKw0sRKxN+kYaN9gg0bSnEOl8ctNwfUxBPjELrFcsIjdXUN8o3N7sEblgIC11+H0Hb
 kkTLLOwiDrrUPHBva+FhCK9knYGxysZb+I8src6lLjjdpAPbAG5RDBjMZtFx7uBorF1L
 1JAYEomu+xOdLN23slKQQ9BEgsY5Yrxu7J3PQDfRO706FQnB7t8Y/bGeyZq7inIKNY5s
 phKS+ngDHm2ynGfhdehkvlCeasU4TiC09gHJJy2vY0zw4LQhMRcaidUibP2n68b5TJTW
 nkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tFsCMPYEvQ090eghtJnuZSfndIYHXofg6kpzbpjDHcg=;
 b=iPV/3csyY7zWfo9n3A68WTn9ECx0NPWyPa0/BW7IPqvgrTNG2ZkbbFiav2zsg91Qgg
 z/t3Zun1kUkBTIrGAmY2ZC60igEBmLVgOMJwL9gunN+O6RLv+cGTvvGrVCSItHUUNeht
 yn80CQOZpODD2Diy2gFDph8ZRHDeBqqiz4qfcBJ7zlK0EuT44LjxDxfX5iz7uZQuWKou
 Yrs/aqhvFmeqiewkETsMvc45FEU/0BG7Jd0cQP/SzUrIXbrGU9E2t1AaNSSfrHSE8nDo
 idTcanMbEbvQuEJGgpmMMGv8Xy3XRbD97e5xDq98UIaOHXq2wNbCCri57wWRbIFrMxN2
 51tw==
X-Gm-Message-State: ANhLgQ3YA53dl7lt9Ay06xTAsqZ1HTG4AJoR/wSluo6pgYE/uZz/QN8c
 Km62EUzI10trazLGGRs0bVm2LY6qv7aYcr2JRRg=
X-Google-Smtp-Source: ADFU+vtVBcBmmMm93NbesCcxOezx6ue+FNXn7WKGQmB+8VFPVc0CNlHuwX5yQeRTpTjhhcjyixGtamX00YP1kjg7Q6I=
X-Received: by 2002:a05:6512:1116:: with SMTP id
 l22mr491651lfg.70.1583889850626; 
 Tue, 10 Mar 2020 18:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200311010138.10465-1-aford173@gmail.com>
In-Reply-To: <20200311010138.10465-1-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2020 22:24:01 -0300
Message-ID: <CAOMZO5AqjrQxGcHVLPRQXC0nRUM+hOeWtnAK2vJ=O_P28FZ3-g@mail.gmail.com>
Subject: Re: [PATCH V2] arm64: dts: imx: Add Beacon i.mx8mm development kit
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_182415_045349_6755072E 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, aford@beaconembeddedworks.com,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On Tue, Mar 10, 2020 at 10:01 PM Adam Ford <aford173@gmail.com> wrote:

> +&ecspi2 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_espi2>;
> +       cs-gpios = <&gpio5 9 0>;

You could use GPIO_ACTIVE_HIGH instead of hardcoded 0.

> +       status = "okay";
> +
> +       at25@0 {

Node names should be generic:

eeprom@0

> +               compatible = "atmel,at25";

Documentation/devicetree/bindings/eeprom/at25.txt states:

"- compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
  Example "<vendor>,<type>" values:
    "microchip,25lc040"
    "st,m95m02"
    "st,m95256"

> +&i2c4 {
> +

Unneeded blank line.

> diff --git a/arch/arm64/boot/dts/freescale/beacon-imx8mm-kit.dts b/arch/arm64/boot/dts/freescale/beacon-imx8mm-kit.dts
> new file mode 100644
> index 000000000000..417b15d345d5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/beacon-imx8mm-kit.dts
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2020 Compass Electronics Group, LLC
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mm.dtsi"
> +#include "beacon-imx8mm-som.dtsi"
> +#include "beacon-imx8mm-baseboard.dtsi"

The naming convention we use is to start the dts names with the i.MX
SoC name, so:

imx8mm-beacon-som.dtsi
imx8mm-beacon-baseboard.dtsi

> +/ {
> +       model = "Beacon EmbeddedWorks i.MX8M Mini Development Kit";
> +       compatible = "fsl,imx8mm";

You should add an Entry for Beacon in
Documentation/devicetree/bindings/vendor-prefixes.yaml on a separate
patch.

and then:

compatible = "beacon,imx8mm-beacon-kit", "fsl,imx8mm"

Also, please add an entry for this board in
Documentation/devicetree/bindings/arm/fsl.yaml

> +&i2c3 {
> +       clock-frequency = <400000>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_i2c3>;
> +       status = "okay";
> +
> +       eeprom@50 {
> +               compatible = "atmel,24c64";

Same comment about the compatible.

> +&iomuxc {
> +

Unneeded blank line.

> +               pinctrl_fec1: fec1grp {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
