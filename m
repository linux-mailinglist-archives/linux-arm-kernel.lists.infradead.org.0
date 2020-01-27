Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98C414A00B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ob+ptdCHFkW9vodNsNy9Mhd0K+2KMgtPlhGQrz5oheE=; b=fBo3Y3xPcdc28f
	iL4ofDfx4Kh5467on9lA+noYN1zburKMt/M91QLEyhs409SlKhN7gVSC6DbpV1BnunlnEb7HoI4ru
	Q/xMVg/1MsMHUsPGavO7u3PGBo38BCwv9QAxCc3Nnp8Xz3EL1z4yHpEcNXOthBMMMPv/FwV56OXu2
	CXU8uRkatgFYcsxMWcoIwIlpGTDtdMixplycR5jHuCVnYbj8bb3iTH8WLqTSa3sh1pwLZWhHwjqBJ
	u+0rg2ZWng4Yc40JbyiZ1LQWU5j/La1OCX1GaeCYApYk4fDQKkELvUt6jXKM0PRsXgNGUS3ZIVaL1
	V6Ktks0P0aP4awrNDAKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw061-0001hJ-1m; Mon, 27 Jan 2020 08:50:13 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw05q-0000ri-5H
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:50:04 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: uesIW1g/Tw059LkN/ruT3oGD8YleBi8q6SOft7Ck3N2KcXaGMfTLCHpQFOVoIbVX6HqiIgu20n
 08pGRTnsYhUrKvSlsj0lmV2sonYaTBMXAtWnJEvIcgJ/pYptd8RNapDax+N3NanHNj89tEPbZ0
 QPx9Hn1GXCAeKpa/Gt29YjKAoq5CUEi5X2dZEzu+jBE3ndrzquaOmQtNH/MyxQKvC1pz1NTk52
 2P5MgijB+3/Rl9vgx43PT9OP9tjyP7s2UFFyhLDJ28tDNcsUm3sqONTVooPv8fUUyIK/R0A333
 F0U=
X-IronPort-AV: E=Sophos;i="5.70,369,1574146800"; d="scan'208";a="63828837"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2020 01:49:51 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 01:49:50 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Jan 2020 01:49:50 -0700
Date: Mon, 27 Jan 2020 09:49:24 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: i2c: at91: document optional bus
 recovery properties
Message-ID: <20200127084924.4iflicf64pzzhouq@M43218.corp.atmel.com>
Mail-Followup-To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, peda@axentia.se, linux@armlinux.org.uk
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-2-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115115422.17097-2-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005002_245562_26502D49 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, peda@axentia.se, linux@armlinux.org.uk,
 robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 01:54:17PM +0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> The at91 I2C controller can support bus recovery by re-assigning SCL
> and SDA to gpios. Add the optional pinctrl and gpio properties to do
> so.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: rebased]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
> 
> Changes in v3:
>  - rebased;
>  - added Reviewed-by tag from Rob;
> 
> Changes in v2:
>  - none;
> 
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-at91.txt b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> index d4bad86107b8..96c914e048f5 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-at91.txt
> @@ -28,8 +28,13 @@ Optional properties:
>  	"atmel,sama5d4-i2c",
>  	"atmel,sama5d2-i2c",
>  	"microchip,sam9x60-i2c".
> +- scl-gpios: specify the gpio related to SCL pin
> +- sda-gpios: specify the gpio related to SDA pin
> +- pinctrl: add extra pinctrl to configure i2c pins to gpio function for i2c
> +  bus recovery, call it "gpio" state
>  - Child nodes conforming to i2c bus binding
>  
> +
>  Examples :
>  
>  i2c0: i2c@fff84000 {
> @@ -64,6 +69,11 @@ i2c0: i2c@f8034600 {
>  	clocks = <&flx0>;
>  	atmel,fifo-size = <16>;
>  	i2c-sda-hold-time-ns = <336>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c0>;
> +	pinctrl-1 = <&pinctrl_i2c0_gpio>;
> +	sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
> +	scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
>  
>  	wm8731: wm8731@1a {
>  		compatible = "wm8731";
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
