Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848711A8E7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 19:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tlmee8iELJbV0jOLLUzqoBLpI0tdylW2zagp8yhUfmQ=; b=Dk/UufoMh9laalqejtIzvhxG6
	VAT7J3O2ixyy6KBsZS6RQ4sduPP1kb9BvXOVZ/Pp8qippo2k1FXishjOtRc/g8nWvZq6DflNO8J3N
	nhvXbmvGU+1JdvttS/X82zAljJHPFMkkFQxNjMOPVX+07QhFn4VImO7BtaUYZ62f22LvxzX8izOdY
	llhyUGVg7jDTz5ERbOB35mVUb1eCxRWTvPQJNfyCcP/+ahZ+wIA9veWfYhEJ80uwhUUovDfb+24kJ
	BrS1jAAvPWvfBEcYLfSVwRG1iO+67heaRrKJ9ysK0VTOjrEhPT3JUYoC5CkfbR+1CBg7870ki5CoA
	vtoAos4ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPW79-0002zf-8P; Sat, 11 May 2019 17:48:51 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPW72-0002yu-0D
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 17:48:45 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id AC2D44E204D; Sat, 11 May 2019 17:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557596922; bh=lJqKVF9Utmeexu4/9PvbN0VcjTxvy2f//T2aaSg+rQk=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=mqU4v4a7n3qhR1GBajJI64EU2VrEK899V7D8wNt+0UF7FUr+tRSioFeo7WwfF/aev
 zX/TozE2AkN+VikUSexxn9QbObQPov88Rxb4wfHTAhBv6xKpn8gKrN8tmD3gg5aUlU
 FBdw4uNcr7yuXYMBpet3bm+l3CxUrLtao2L3Md8c=
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v8 1/3] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Sat, 11 May 2019 10:48:42 -0700
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <CAOMZO5APMf+iuJuqXCrMNX0Ud73iANXvEs+Y59iH+g6tuMX++Q@mail.gmail.com>
References: <20190501225719.3257-1-angus@akkea.ca>
 <20190501225719.3257-2-angus@akkea.ca>
 <CAOMZO5APMf+iuJuqXCrMNX0Ud73iANXvEs+Y59iH+g6tuMX++Q@mail.gmail.com>
Message-ID: <592c6d80582d0571bc49cfaa114adc83@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_104844_087869_71AB155D 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On 2019-05-11 08:34, Fabio Estevam wrote:
> Hi Angus,
> 
> This looks good. Only minor issues:
> 
> On Wed, May 1, 2019 at 7:57 PM Angus Ainslie (Purism) <angus@akkea.ca> 
> wrote:
>> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
>> @@ -0,0 +1,823 @@
>> +/* SPDX-License-Identifier: GPL-2.0+
> 
> This should be
> // SPDX-License-Identifier: GPL-2.0+
> 
> as pointed out by checkpatch.
> 
>> +       reg_1v8_p: regulator-1V8-P {
> 
> Maybe lowercase instead?
> 

Ok, I'll fix those 2.

>> +       wifi_pwr_en: wifi-en {
>> +               compatible = "regulator-fixed";
>> +               pinctrl-names = "default";
>> +               pinctrl-0 = <&pinctrl_wifi_pwr_en>;
>> +               regulator-name = "WIFI_EN";
>> +               regulator-min-microvolt = <3300000>;
>> +               regulator-max-microvolt = <3300000>;
>> +               gpio = <&gpio3 5 GPIO_ACTIVE_HIGH>;
>> +               enable-active-high;
>> +               regulator-always-on;
> 
> Do you really needs all these regulators to be 'regulator-always-on'?
> 

Unfortunately yes.

>> +&i2c1 {
>> +       clock-frequency = <400000>;
> 
> Maybe you could use 100kHz instead in order to avoid the problem
> described by the following i.MX8M erratum:
> 
> e7805: I2C: When the I2C clock speed is configured for 400 kHz, the
> SCL low period violates the I2C spec of 1.3 uS min
> https://www.nxp.com/docs/en/errata/IMX8MDQLQ_1N14W.pdf
> 

I discovered this a few days ago.

https://source.puri.sm/angus.ainslie/linux-next/commit/10c9d9e55aba0e179166001b9292e37a37bfe0ea

You're right 100kHz is a better choice.

>> +&usdhc2 {
>> +       pinctrl-names = "default", "state_100mhz", "state_200mhz";
>> +       pinctrl-0 = <&pinctrl_usdhc2>;
>> +       pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
>> +       pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
>> +       bus-width = <4>;
>> +       vmmc-supply = <&reg_usdhc2_vmmc>;
>> +       power-supply = <&wifi_pwr_en>;
>> +
> 
> Unneeded blank line.

I'll fix it for the next rev.

Thanks
Angus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
