Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42530B190D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 09:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j3YBHfWVsrN3D7btMe36N8bWc7Okb5qs9PzysQcDIxU=; b=AgOLnYr0NvgCFjq4YqXeP4w/h
	l+SHXrpWBuz1Yz8eJNtCAjvr2/DXlIJsyin8DdF2MtuP59V+ka0o8SGojUx/1QlG/cyWWiYCumvbi
	8/T86e6su+BTS0vSwv13ikqeKsMavt1qvbXFefXEV3Hm9OQLJj2wJHYT56da0m7Lpb1xjIYF3po1D
	AaIxGSARAUfAawWrIR1mP1JyMdnw3Mvs8V9dKFIPr4mHmOyVmRqqAQZhTHuzY9l6OhNNjDl4nH6d+
	rkJljEMF2PJtld9P9DBp8Bh2uA4Gex+2lZxPTVClDq3QwH++G7+bwNjvEWbRpatN6pvlgBBXlxM1a
	wDc+cMxmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8gBD-000478-FX; Fri, 13 Sep 2019 07:39:43 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8gAx-00046g-3q
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 07:39:28 +0000
Received: from webmail.promanet.nl (edge2.prtnl [192.168.1.170])
 by sparta (Postfix) with ESMTP id DA51D44A00CB;
 Fri, 13 Sep 2019 09:41:27 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 13 Sep 2019 09:39:26 +0200
From: robin <robin@protonic.nl>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
In-Reply-To: <20190904065248.4i7q2vuxxt2xdnrr@pengutronix.de>
References: <20190904062329.97520-1-robin@protonic.nl>
 <20190904065248.4i7q2vuxxt2xdnrr@pengutronix.de>
Message-ID: <f12945994b66c5e605c0a121e7ad0526@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_003927_497755_E6F6C64A 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Adam Ford <aford173@gmail.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 RobinGong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @
 lists . infradead . org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-04 08:52, Marco Felsch wrote:
> Hi Robin,
> 
> thanks for the patch it looks quite good, just two minor nitpicks.
> 
> On 19-09-04 06:23, Robin van der Gracht wrote:
>> The first generation i.MX6 processors does not send an interrupt when 
>> the
>> power key is pressed. It sends a power down request interrupt if the 
>> key is
>> released before a hard shutdown (5 second press). This should allow
>> software to bring down the SoC safely.
>> 
>> For this driver to work as a regular power key with the older SoCs, we 
>> need
>> to send a keypress AND release when we get the power down request irq.
>> 
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>> 
>> Changes v2 -> v3:
>>  - Drop alt compatible string for identifying first revision snvs 
>> hardware,
>>    read minor revision from register instead.
>>  - Drop imx6qdl.dtsi modification and device-tree binding 
>> documentation.
>>  - Add an additional input_sync() to create 2 seperate input reports 
>> for press
>>    and release.
>> 
>>  drivers/input/keyboard/Kconfig       |  2 +-
>>  drivers/input/keyboard/snvs_pwrkey.c | 28 
>> ++++++++++++++++++++++++++--
>>  2 files changed, 27 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/input/keyboard/Kconfig 
>> b/drivers/input/keyboard/Kconfig
>> index 7c4f19dab34f..937e58da5ce1 100644
>> --- a/drivers/input/keyboard/Kconfig
>> +++ b/drivers/input/keyboard/Kconfig
>> @@ -436,7 +436,7 @@ config KEYBOARD_SNVS_PWRKEY
>>  	depends on OF
>>  	help
>>  	  This is the snvs powerkey driver for the Freescale i.MX 
>> application
>> -	  processors that are newer than i.MX6 SX.
>> +	  processors.
>> 
>>  	  To compile this driver as a module, choose M here; the
>>  	  module will be called snvs_pwrkey.
>> diff --git a/drivers/input/keyboard/snvs_pwrkey.c 
>> b/drivers/input/keyboard/snvs_pwrkey.c
>> index 5342d8d45f81..828580eee0d2 100644
>> --- a/drivers/input/keyboard/snvs_pwrkey.c
>> +++ b/drivers/input/keyboard/snvs_pwrkey.c
>> @@ -19,6 +19,7 @@
>>  #include <linux/mfd/syscon.h>
>>  #include <linux/regmap.h>
>> 
>> +#define SNVS_HPVIDR1_REG 0xF8
>>  #define SNVS_LPSR_REG	0x4C	/* LP Status Register */
>>  #define SNVS_LPCR_REG	0x38	/* LP Control Register */
>>  #define SNVS_HPSR_REG	0x14
>> @@ -37,6 +38,7 @@ struct pwrkey_drv_data {
>>  	int wakeup;
>>  	struct timer_list check_timer;
>>  	struct input_dev *input;
>> +	u8 minor_rev;
>>  };
>> 
>>  static void imx_imx_snvs_check_for_events(struct timer_list *t)
>> @@ -45,6 +47,20 @@ static void imx_imx_snvs_check_for_events(struct 
>> timer_list *t)
>>  	struct input_dev *input = pdata->input;
>>  	u32 state;
>> 
>> +	if (pdata->minor_rev == 0) {
> 
> Should we use a define here and ..
> 
>> +		/*
>> +		 * The first generation i.MX6 SoCs only sends an interrupt on
>> +		 * button release. To mimic power-key usage, we'll prepend a
>> +		 * press event.
>> +		 */
>> +		input_report_key(input, pdata->keycode, 1);
>> +		input_sync(input);
>> +		input_report_key(input, pdata->keycode, 0);
>> +		input_sync(input);
>> +		pm_relax(input->dev.parent);
>> +		return;
>> +	}
>> +
>>  	regmap_read(pdata->snvs, SNVS_HPSR_REG, &state);
>>  	state = state & SNVS_HPSR_BTN ? 1 : 0;
>> 
>> @@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int 
>> irq, void *dev_id)
>>  {
>>  	struct platform_device *pdev = dev_id;
>>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
>> +	unsigned long expire = jiffies;
>>  	u32 lp_status;
>> 
>>  	pm_wakeup_event(pdata->input->dev.parent, 0);
>> 
>>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
>> -	if (lp_status & SNVS_LPSR_SPO)
>> -		mod_timer(&pdata->check_timer, jiffies + 
>> msecs_to_jiffies(DEBOUNCE_TIME));
>> +	if (lp_status & SNVS_LPSR_SPO) {
>> +		if (pdata->minor_rev > 0)
> 
> here? Just a nitpick, feel free to add/drop it.

Like a Macro?

#define FIRST_HW_REV(pdata)      (pdata->minor_rev == 0)

if (FIRST_HW_REV(pdata) {
         ...
}


or just a define to identify the minor rev used for the first hw 
revision


#define FIRST_HW_MINOR_REV       0

if (pdata->minor_rev == FIRST_HW_MINOR_REV) {
         ...
}

Regards,
Robin van der Gracht

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
