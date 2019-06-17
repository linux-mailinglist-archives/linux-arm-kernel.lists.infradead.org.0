Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4205A48554
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0REWX9AsIUqC8zT2t5k9aA7eniUsxa1lCONcMasPx9g=; b=UV95jPt9FpBUZ4s7t1gE1WJrW
	tRx6AoYiZNgZnZ0VUYCPp+BKTB/RmdQvF9CCCSyTqmJ+o0kehTZjBKMXNVT8dW5r3bi/DwkBPzHwR
	QiVKbOxRQEtofhI4xjsC3wRr6oYADses1+cnGDPZfJC/jh8w2HmcTutGUi1lH5bpJXNIpKbULhgdl
	cu1zuxaaUxWSLek79DUq68Qb+cBLN/q7odpQWYZpT0G7m3oRH0VI1qEWD5s3DBsDNz7kLTNnIu18R
	Z0kWUGp8lu3sIseFBnP6/P0TU1H7n+wnSQJDHqD8lsKo6AlHvTTit+WGMmcyXWKQGrDJD50S2Ngnf
	cYlsZFAMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsbl-0000lV-PP; Mon, 17 Jun 2019 14:27:41 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsbS-0000l3-N9
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:27:24 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HERIiI023072;
 Mon, 17 Jun 2019 09:27:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560781638;
 bh=LXNTgUL3IzEu+dPtfl7knxkpN2HWl5SErV8d1BUZZ8M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=o2YQ1GEU8312fs9YElfwa62d6flBK5/igTpKD96CPwbvVZaWkLuoYFK5BYONOnFxb
 XMFzSeeT13z6wry0oHDfOpJqU/3Q1/seAnqVu3JSp+qjcZyVywoqP+UiJfkX1PKZKA
 8tHWHRkR46BYzJdYzxbe1kBwP9icC2aqjwtzrPDA=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HERI5N021513
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 09:27:18 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 09:27:16 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 09:27:16 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HEREYL061294;
 Mon, 17 Jun 2019 09:27:14 -0500
Subject: Re: [RFC RESEND PATCH v2 3/4] arm64: dts: ti: am6-main: Add gpio nodes
To: Keerthy <j-keerthy@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
References: <20190606095620.6211-1-j-keerthy@ti.com>
 <20190606095620.6211-4-j-keerthy@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <39705d27-155d-373e-1c83-25757665821e@ti.com>
Date: Mon, 17 Jun 2019 17:27:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606095620.6211-4-j-keerthy@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_072722_840548_7B35B796 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, lokeshvutla@ti.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/06/2019 12:56, Keerthy wrote:
> Add gpio0/1 nodes under main domain. They have 96 and 90 gpios
> respectively and all are capable of generating banked interrupts.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 32 ++++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 22154f401930..182efe70402b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -350,4 +350,36 @@
>   			ti,sci-rm-range-global-event = <0x1>;
>   		};
>   	};
> +
> +	main_gpio0:  main_gpio0@600000 {
> +		compatible = "ti,am654-gpio", "ti,keystone-gpio";
> +		reg = <0x0 0x600000 0x0 0x100>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&intr_main_gpio>;
> +		interrupts = <57 256>, <57 257>, <57 258>, <57 259>, <57 260>,
> +				<57 261>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		ti,ngpio = <96>;
> +		ti,davinci-gpio-unbanked = <0>;
> +		clocks = <&k3_clks 57 0>;
> +		clock-names = "gpio";
> +	};
> +
> +	main_gpio1:  main_gpio1@601000 {
> +		compatible = "ti,am654-gpio", "ti,keystone-gpio";
> +		reg = <0x0 0x601000 0x0 0x100>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&intr_main_gpio>;
> +		interrupts = <58 256>, <58 257>, <58 258>, <58 259>, <58 260>,
> +				<58 261>;
> +		interrupt-controller;
> +			#interrupt-cells = <2>;

The above line has an extra tab. Fixed locally and pushed to am654-next.

-Tero

> +		ti,ngpio = <90>;
> +		ti,davinci-gpio-unbanked = <0>;
> +		clocks = <&k3_clks 58 0>;
> +		clock-names = "gpio";
> +	};
>   };
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
