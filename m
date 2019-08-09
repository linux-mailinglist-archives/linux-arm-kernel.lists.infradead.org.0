Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C1587D5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0itPw8hThxxL0ls7EI8CGVzr5Tyh3x4kBY6G++d78yQ=; b=Njcc1PktR2swXnJV2+W3QMohD
	lG54faqxH6X6WFV5QMIMqEVRw9ir5ZPtwmTncMmXiDfxWXo0blIe3Q7YhbL10SBDQsL9hoLUpBP8h
	pqmEQY3M/HBv0pWaZN++7Nn3ZARAZ7LwbznxY/t6JzZlczAc0Llc7cc8uYOb3Mc2MWtrH6e3NiGWE
	YTxYNVOG6ZflALBcPBX4Iu66YziUb/20qnLk9iupbSS7jy54pfVb6u7ljqO5UP0E/KnguwlU/wnmW
	vMc3ROlHZnMX1XE1xFgRPdXIdt7H64fqVioHSvx6UPBxhY99BrtpN7eq8UwJUk/iTzfuio+KO6VM+
	tBYY+zxRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6Jw-0005Bu-NY; Fri, 09 Aug 2019 14:56:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6Jf-00055a-1V
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:56:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79EuOvr045452;
 Fri, 9 Aug 2019 09:56:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565362584;
 bh=WOf8yBns8ce81Y1JTQ+OLGciZ5jeJWvtnFFxHufBK7E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hZq+ljhv0SoklT5IiJrY8jjA4D9m5h6NEEPMZt/4O9gvNePEJXwuKtqS1s33TILt5
 HdSxWFX8LU56HodDmkNrmsetmgzo60zurygWpptJpZK9CEjvzl6LZk1JP+eKJAv6Fr
 ASr6W2NrARuWL4PueHiXODIu1Jqb6oYQZpAxffD0=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79EuOKj034694
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 09:56:24 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 09:56:24 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 09:56:24 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79EuLmV102066;
 Fri, 9 Aug 2019 09:56:21 -0500
Subject: Re: [PATCH 6/6] arm64: dts: k3-j721e: Add gpio-keys on common
 processor board
To: Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth
 Menon <nm@ti.com>, <linus.walleij@linaro.org>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-7-lokeshvutla@ti.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <4d923b5f-16ba-2bc1-b195-d6ec7ae496b0@ti.com>
Date: Fri, 9 Aug 2019 20:26:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809082947.30590-7-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_075627_181480_94E33999 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/08/19 1:59 PM, Lokesh Vutla wrote:
> From: Nikhil Devshatwar <nikhil.nd@ti.com>
> 
> Common processor board for K3 J721E platform has two push buttons
> namely SW10 and SW11.
> Add a gpio-keys device node to model them as input keys in Linux.
> Add required pinmux nodes to set GPIO pins as input.

Reviewed-by: Keerthy <j-keerthy@ti.com>

> 
> Signed-off-by: Nikhil Devshatwar <nikhil.nd@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>   .../dts/ti/k3-j721e-common-proc-board.dts     | 37 +++++++++++++++++++
>   1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> index 509579ca3db2..d2894d55fbbe 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> @@ -6,12 +6,49 @@
>   /dts-v1/;
>   
>   #include "k3-j721e-som-p0.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>   
>   / {
>   	chosen {
>   		stdout-path = "serial2:115200n8";
>   		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
>   	};
> +
> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sw10_button_pins_default &sw11_button_pins_default>;
> +
> +		sw10: sw10 {
> +			label = "GPIO Key USER1";
> +			linux,code = <BTN_0>;
> +			gpios = <&main_gpio0 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		sw11: sw11 {
> +			label = "GPIO Key USER2";
> +			linux,code = <BTN_1>;
> +			gpios = <&wkup_gpio0 7 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&main_pmx0 {
> +	sw10_button_pins_default: sw10_button_pins_default {
> +		pinctrl-single,pins = <
> +			J721E_IOPAD(0x0, PIN_INPUT, 7) /* (AC18) EXTINTn.GPIO0_0 */
> +		>;
> +	};
> +};
> +
> +&wkup_pmx0 {
> +	sw11_button_pins_default: sw11_button_pins_default {
> +		pinctrl-single,pins = <
> +			J721E_WKUP_IOPAD(0xcc, PIN_INPUT, 7) /* (G28) WKUP_GPIO0_7 */
> +		>;
> +	};
>   };
>   
>   &wkup_uart0 {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
