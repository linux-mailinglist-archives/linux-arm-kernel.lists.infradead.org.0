Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D733BEB6AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 19:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHYlPsnNxu3rYSX4hijZ5l9yDVTpBjKZpnik1FpfIVg=; b=IclN9HFQUODAyB
	AwmhixsET1d0gpfn/It8K+6duEB+bGUMU4gdBHZeTGxsGomRq/pw4tZciQ2j85CNfQn4i5lEB4Ax9
	oNEOwCLymXx+LvQZUqwyJlMf6KH18SjDD62FucUHEc2cHofJrdulor3NCg8vGu5dO6/Cau7ty+OkW
	nEJmNkbFYTBAvag8G/o8MNWmkN1ULiAqiE+oqooma+yrvQtuz7yZlcJKgUhgUxrUmHI4frJP8Ji55
	vyEstxCZsWPkBeHc/i3W9AqdVkyFTTN7eldWs/b1+5Hq6Lg1dkTSSmf9qicmZ4KgrWDxdHBN+ijA0
	68muxcd9HA2NyxHtsU1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEvz-0006HN-K1; Thu, 31 Oct 2019 18:12:35 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEvk-0006Ff-FC; Thu, 31 Oct 2019 18:12:22 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iQEvg-000408-2i; Thu, 31 Oct 2019 19:12:16 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89D59.dip0.t-ipconnect.de
 [217.232.157.89]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 x9VICB4k007592
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Thu, 31 Oct 2019 19:12:11 +0100
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe node on rk3399-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
References: <09300c2d-4298-1b01-ac41-d1b2610589d4@fivetechno.de>
 <1719506.vT9a8mQdzu@phil>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <f66fe5c3-6760-20b0-54cc-8f0c1a754bab@fivetechno.de>
Date: Thu, 31 Oct 2019 19:12:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1719506.vT9a8mQdzu@phil>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1572545540;
 a331687c; 
X-HE-SMSGID: 1iQEvg-000408-2i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_111220_663802_3C015411 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,
Am 31.10.19 um 17:57 schrieb Heiko Stuebner:
> Hi,
> 
> Am Montag, 28. Oktober 2019, 15:47:27 CET schrieb Markus Reichl:
>> rk3399-roc-pc has a PCIe interface. Enable it for use with
>> the M.2 NGFF M_KEY slot on roc-rk3399-mezzanine board.
>> Tested with Samsung 970 evo plus SSD.
>> 
>> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
>> ---
>>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 38 +++++++++++++++++++
>>  1 file changed, 38 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> index 9313251765c7..2d637d54994b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
>> @@ -158,6 +158,21 @@
>>  		regulator-max-microvolt = <1400000>;
>>  		vin-supply = <&vcc_sys>;
>>  	};
>> +
>> +	/* on roc-rk3399-mezzanine board */
> 
> I'm undecided on this. From what I've seen that mezzanine board is some
> sort of addon, like a raspberry pi hat. Therefore it's not always present,
> so probably should not be part of the base board dts.
> 
> I'm thinking a dt-overlay that can then be activated might be the solution
> of choice, but I've reached out to arm-soc poeple on irc to determine the
> correct course.
> 
I have seen some board.dtsi with board_only.dts respective board_extension.dts
in the arch/arm64/boot/dts/rockchip directory. Would that be ok?

Markus 

> 
> Heiko
> 
>> +	vcc3v3_pcie: vcc3v3-pcie {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc3v3_pcie";
>> +		enable-active-high;
>> +		gpio = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&vcc3v3_pcie_en>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&dc_12v>;
>> +	};
>>  };
>>  
>>  &cpu_l0 {
>> @@ -514,6 +529,19 @@
>>  	status = "okay";
>>  };
>>  
>> +&pcie_phy {
>> +	status = "okay";
>> +};
>> +
>> +&pcie0 {
>> +	ep-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_HIGH>;
>> +	num-lanes = <4>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pcie_perst>;
>> +	vpcie3v3-supply = <&vcc3v3_pcie>;
>> +	status = "okay";
>> +};
>> +
>>  &pinctrl {
>>  	lcd-panel {
>>  		lcd_panel_reset: lcd-panel-reset {
>> @@ -535,6 +563,16 @@
>>  		};
>>  	};
>>  
>> +	pcie {
>> +		vcc3v3_pcie_en: vcc3v3-pcie-en {
>> +			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +
>> +		pcie_perst: pcie-perst {
>> +			rockchip,pins = <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		};
>> +	};
>> +
>>  	pmic {
>>  		vsel1_gpio: vsel1-gpio {
>>  			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>> 
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
