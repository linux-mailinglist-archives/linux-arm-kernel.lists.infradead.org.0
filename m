Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C48014A050
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 09:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xk5oV5QFwzCzRncKKn6tZIumB/EK39FS+Z+BxslNOdw=; b=hi27HMd34rv0di
	hKeQiMTHzN/DhckBPEbBLNPamwheSvDuEyNvKVPwh6uk4aE++5tqRiWIpmUkw9jZVkmYelsU4/i/Y
	vu0VhIEF8s19ri2sz8PAHtQu+m1R/wPjeE1ZVTixeWXkOEemLAEzPOzm3N7rWxHmvW1fcN1a1alYK
	WEVJlNxPiozx+fi2/JRTieDdsujhUgAjdri4BCBM4wGqU6b5MkM9Gc8lScWG0yvfAAuduz2Uf42r2
	w/smwsVd1GZ6dBkBPMHBIlI+c61lLJnJGLv6ZE3fVQ1N8inMXat6Cy20coImcJe0zXSiZQWLTyyp3
	9Nc+TZXo+hzjv5rq/d8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0D9-0006ue-DZ; Mon, 27 Jan 2020 08:57:35 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0D0-0006Ox-EO
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 08:57:27 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: knmfp9i9d32Y5m0bMmBtAw7qKRS754dzi65RXDHkWEisriHQq4BHgN15BF2IYk+brVw6dK0lWl
 dwGkGhcZUNASATXnpJc2YBOu3SwSt1cqj02mzSykaqtrus/t856axiw5S1m/l9/yB5nYpAKuSO
 LsmlErU9fzj4r7EyWysWO2Ho2mh8TlyJ/COEDaVPzWMQvAqMJXlxh+EVDgexKmNv04Fj6NtDRw
 Ut09R77N/7H3UGitQd4AqLhWuAnIhW9nka1SJMzhTaX3ub9Us5NUTfffwC4LDiPe6I4VupEwxu
 6sA=
X-IronPort-AV: E=Sophos;i="5.70,369,1574146800"; d="scan'208";a="64593811"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2020 01:57:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 01:57:22 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Jan 2020 01:57:23 -0700
Date: Mon, 27 Jan 2020 09:56:57 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 5/6] ARM: at91/dt: sama5d4: add i2c gpio pinctrl
Message-ID: <20200127085657.wt4isv6f3v76jcr3@M43218.corp.atmel.com>
Mail-Followup-To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kamel.bouhara@bootlin.com, wsa@the-dreams.de,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, peda@axentia.se, linux@armlinux.org.uk
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-6-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115115422.17097-6-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_005726_490410_C48A0FB8 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
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

On Wed, Jan 15, 2020 at 01:54:21PM +0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> 
> Add the i2c gpio pinctrls so the i2c bus recovery option can be enabled
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: removed gpio pull-ups]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

> ---
> 
> Changes in v3:
>  - removed gpio pull-ups;
> 
> Changes in v2:
>  - none;
> 
>  arch/arm/boot/dts/sama5d4.dtsi | 33 ++++++++++++++++++++++++++++++---
>  1 file changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
> index 6ab27a7b388d..26ce868096c2 100644
> --- a/arch/arm/boot/dts/sama5d4.dtsi
> +++ b/arch/arm/boot/dts/sama5d4.dtsi
> @@ -458,8 +458,11 @@
>  					(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1)
>  					| AT91_XDMAC_DT_PERID(3))>;
>  				dma-names = "tx", "rx";
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c0>;
> +				pinctrl-1 = <&pinctrl_i2c0_gpio>;
> +				sda-gpios = <&pioA 30 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioA 31 GPIO_ACTIVE_HIGH>;
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 32>;
> @@ -477,8 +480,11 @@
>  					(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1)
>  					| AT91_XDMAC_DT_PERID(5))>;
>  				dma-names = "tx", "rx";
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c1>;
> +				pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +				sda-gpios = <&pioE 29 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioE 30 GPIO_ACTIVE_HIGH>;
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 33>;
> @@ -519,8 +525,11 @@
>  					(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1)
>  					| AT91_XDMAC_DT_PERID(7))>;
>  				dma-names = "tx", "rx";
> -				pinctrl-names = "default";
> +				pinctrl-names = "default", "gpio";
>  				pinctrl-0 = <&pinctrl_i2c2>;
> +				pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +				sda-gpios = <&pioB 29 GPIO_ACTIVE_HIGH>;
> +				scl-gpios = <&pioB 30 GPIO_ACTIVE_HIGH>;
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				clocks = <&pmc PMC_TYPE_PERIPHERAL 34>;
> @@ -1122,6 +1131,12 @@
>  							<AT91_PIOA 30 AT91_PERIPH_A AT91_PINCTRL_NONE
>  							 AT91_PIOA 31 AT91_PERIPH_A AT91_PINCTRL_NONE>;
>  					};
> +
> +					pinctrl_i2c0_gpio: i2c0-gpio {
> +						atmel,pins =
> +							<AT91_PIOA 30 AT91_PERIPH_GPIO AT91_PINCTRL_NONE
> +							 AT91_PIOA 31 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +					};
>  				};
>  
>  				i2c1 {
> @@ -1130,6 +1145,12 @@
>  							<AT91_PIOE 29 AT91_PERIPH_C AT91_PINCTRL_NONE	/* TWD1, conflicts with UART0 RX and DIBP */
>  							 AT91_PIOE 30 AT91_PERIPH_C AT91_PINCTRL_NONE>;	/* TWCK1, conflicts with UART0 TX and DIBN */
>  					};
> +
> +					pinctrl_i2c1_gpio: i2c1-gpio {
> +						atmel,pins =
> +							<AT91_PIOE 29 AT91_PERIPH_GPIO AT91_PINCTRL_NONE
> +							 AT91_PIOE 30 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +					};
>  				};
>  
>  				i2c2 {
> @@ -1138,6 +1159,12 @@
>  							<AT91_PIOB 29 AT91_PERIPH_A AT91_PINCTRL_NONE	/* TWD2, conflicts with RD0 and PWML1 */
>  							 AT91_PIOB 30 AT91_PERIPH_A AT91_PINCTRL_NONE>; /* TWCK2, conflicts with RF0 */
>  					};
> +
> +					pinctrl_i2c2_gpio: i2c2-gpio {
> +						atmel,pins =
> +							<AT91_PIOB 29 AT91_PERIPH_GPIO AT91_PINCTRL_NONE
> +							 AT91_PIOB 30 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
> +					};
>  				};
>  
>  				isi {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
