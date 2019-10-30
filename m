Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975F7EA27E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 18:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVsASHyJRxta8J2uVxPmweapVv+PLBdinwIBUPi5Gjc=; b=S4MFZM4Wv9HSNw
	pbWzfj44AnZYzFwkSYe1pMWsLjP1baSlwKZQqaP1xTqQArPuYPOZzFLslTVKtusmlvVeQP7tcpbEE
	Iipl/IQp1Mxy33BO+fQWCGwKJrwbDUUurjA6MCD7Bq41Yh4pWVV3tTDqOP7wurp9IrZSfnHFjZx46
	FnppZrtUKr1gDDJ9wz+YZ5QmT05zWjdJ8A7TwFFp5NakXMyXuXJ7DCevYkpJZSCZPpiIElJCvSBap
	r1EZuzAS0rSzPfSwcfbbzghMU1APv2yqeMAxRuB6+GdkjoVcgGJlX8rx0h1PcenYsNohm/dAfcgJ9
	JYqCSlkznVRZOCjLDFAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPriv-0000zD-Gf; Wed, 30 Oct 2019 17:25:33 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPriQ-00083U-Ex
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 17:25:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572456300;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=OsLmgSiDV+hk5s0I2fH4l/LO42oMc8+hGzlfb+0mtak=;
 b=eI8djhCPVGQgY9zB9x54NVydAu1Rnqij6u1NFV50MJvkw5YKQpQ8hZ9LcGGPr47Tr4
 clsOrHU6iDqFMIM2lIw82EiVU+v9e4m95Thu3oH7rpno2snOnV5h1uVfXLyfQU5nB5sT
 u7WUS9oDeNXVdkgV7ZYuonCe7JsQz+j2l9N15YTE4UA/EO+a5g34+31s/U4WjT+NHMbS
 uPFM8rM6LTiOmXUbHDsVG8c4CmIUT1xzUTosaV78hoDpGU93kZ9dv8HJcNxpC3mODaM2
 T9IJXHJzmL7WlxBejC7eJxKRBF6ubfObx/bmTAAV6hBtcgpOD8zYeC24C+vN5NmIRd8Q
 +7Pg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGHPrpwDvG"
X-RZG-CLASS-ID: mo00
Received: from mbp-13-nikolaus.fritz.box
 by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3v9UHOp5p4
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Wed, 30 Oct 2019 18:24:51 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v2 03/11] DTS: ARM: pandora-common: define wl1251 as child
 node of mmc3
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAPDyKFrMQ3fBaeeAYVJfUdL8m=PDRU9Xt_9oGw6D1XOY68qDuQ@mail.gmail.com>
Date: Wed, 30 Oct 2019 18:24:51 +0100
Message-Id: <D9A82904-35BE-41F2-A308-9A49606428B1@goldelico.com>
References: <cover.1571510481.git.hns@goldelico.com>
 <bec9d76e6da03d734649b9bdf76e9d575c57631a.1571510481.git.hns@goldelico.com>
 <CAPDyKFrMQ3fBaeeAYVJfUdL8m=PDRU9Xt_9oGw6D1XOY68qDuQ@mail.gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_102503_044747_A1449C28 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kefeng Wang <wangkefeng.wang@huawei.com>, DTML <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 30.10.2019 um 17:44 schrieb Ulf Hansson <ulf.hansson@linaro.org>:
> 
> On Sat, 19 Oct 2019 at 20:42, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>> 
>> Since v4.7 the dma initialization requires that there is a
>> device tree property for "rx" and "tx" channels which is
>> not provided by the pdata-quirks initialization.
>> 
>> By conversion of the mmc3 setup to device tree this will
>> finally allows to remove the OpenPandora wlan specific omap3
>> data-quirks.
>> 
>> Fixes: 81eef6ca9201 ("mmc: omap_hsmmc: Use dma_request_chan() for requesting DMA channel")
>> 
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> Cc: <stable@vger.kernel.org> # 4.7.0
>> ---
>> arch/arm/boot/dts/omap3-pandora-common.dtsi | 37 +++++++++++++++++++--
>> 1 file changed, 35 insertions(+), 2 deletions(-)
>> 
>> diff --git a/arch/arm/boot/dts/omap3-pandora-common.dtsi b/arch/arm/boot/dts/omap3-pandora-common.dtsi
>> index ec5891718ae6..c595b3eb314d 100644
>> --- a/arch/arm/boot/dts/omap3-pandora-common.dtsi
>> +++ b/arch/arm/boot/dts/omap3-pandora-common.dtsi
>> @@ -226,6 +226,18 @@
>>                gpio = <&gpio6 4 GPIO_ACTIVE_HIGH>;     /* GPIO_164 */
>>        };
>> 
>> +       /* wl1251 wifi+bt module */
>> +       wlan_en: fixed-regulator-wg7210_en {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "vwlan";
>> +               regulator-min-microvolt = <1800000>;
>> +               regulator-max-microvolt = <1800000>;
> 
> I doubt these are correct.
> 
> I guess this should be in the range of 2.7V-3.6V.

Well, it is a gpio which enables some LDO inside the
wifi chip. We do not really know the voltage it produces
and it does not matter. The gpio voltage is 1.8V.

Basically we use a fixed-regulator to "translate" a
regulator into a control gpio because the mmc interface
wants to see a vmmc-supply.

> 
>> +               startup-delay-us = <50000>;
>> +               regulator-always-on;
> 
> Always on?

Oops. Yes, that is something to check!

> 
>> +               enable-active-high;
>> +               gpio = <&gpio1 23 GPIO_ACTIVE_HIGH>;
>> +       };
>> +
>>        /* wg7210 (wifi+bt module) 32k clock buffer */
>>        wg7210_32k: fixed-regulator-wg7210_32k {
>>                compatible = "regulator-fixed";
>> @@ -522,9 +534,30 @@
>>        /*wp-gpios = <&gpio4 31 GPIO_ACTIVE_HIGH>;*/    /* GPIO_127 */
>> };
>> 
>> -/* mmc3 is probed using pdata-quirks to pass wl1251 card data */
>> &mmc3 {
>> -       status = "disabled";
>> +       vmmc-supply = <&wlan_en>;
>> +
>> +       bus-width = <4>;
>> +       non-removable;
>> +       ti,non-removable;
>> +       cap-power-off-card;
>> +
>> +       pinctrl-names = "default";
>> +       pinctrl-0 = <&mmc3_pins>;
>> +
>> +       #address-cells = <1>;
>> +       #size-cells = <0>;
>> +
>> +       wlan: wl1251@1 {
>> +               compatible = "ti,wl1251";
>> +
>> +               reg = <1>;
>> +
>> +               interrupt-parent = <&gpio1>;
>> +               interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;  /* GPIO_21 */
>> +
>> +               ti,wl1251-has-eeprom;
>> +       };
>> };
>> 
>> /* bluetooth*/
>> --
>> 2.19.1
>> 

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
