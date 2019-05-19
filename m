Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5821822853
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 20:25:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DqImCbUyaLeb7KalqrPu7Iq2OkEA0Z7tsv7U+S7pbIw=; b=DiDRy0AGQTVRpGUcqLj2ZZn31m
	9YPCKY0XAE8w/51fhBc3Xf+5xouneFJGBxFk0Df0RkFWUYOti6ao+CEYrGOesMzmHUdhJxpCP9RHN
	IseLp2IdRIYHKqOAXZ6km+hvmje1Z4Ii1ZKO/6B7g0KckixnqA5zVFbhylWnkg98ftcLxRLAUPFpF
	z5C4U9r/61MhDcxIMqLnGcbpN/hDwFmO2PQT8BkeWErifS0s8hHJGI56Udgf3s24dAXf+DpHKThf+
	El10MODOYMpaX+kqVgt2xzaqMBqciqOM4oC1f7ET9hBFRdqjh7iuZSiuZGpMIOiCLJb/1RnP104lh
	fR/1QMNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQUn-00069m-7w; Sun, 19 May 2019 18:25:17 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQUf-0005ef-Ro
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 18:25:12 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id BE9AD4403ED;
 Sun, 19 May 2019 21:24:46 +0300 (IDT)
References: <202cfd4a4c01edef9cbb04fae96d588e115dfeeb.1558257666.git.baruch@tkos.co.il>
 <a79d8f55eab7ed551ea4e052478b04a107e771c1.1558257666.git.baruch@tkos.co.il>
 <20190519182053.anqoet5peeda7xtn@shell.armlinux.org.uk>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 2/2] arm64: dts: marvell: clearfog-gt-8k: set SFP power
 limit
In-reply-to: <20190519182053.anqoet5peeda7xtn@shell.armlinux.org.uk>
Date: Sun, 19 May 2019 21:25:03 +0300
Message-ID: <87pnoe2tfk.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_112510_124452_CE90DC62 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Sun, May 19 2019, Russell King wrote:
> On Sun, May 19, 2019 at 12:21:06PM +0300, Baruch Siach wrote:
>> The Clearfog GT-8K board is capable of supplying power up to 2A to SFP
>> modules. Make that explicit in the device-tree. Without this property
>> current kernel does not allow SFP modules that require more than 1A.
>
> I do hope you're aware that current is not the same thing as power!
> You say above "2A" which is a current, but the maximum power figure
> below is "2W".  Given that modules are supplied with 3.3V, and
> Power = Voltage x Current, this really doesn't work out!
>
> Please can you correct both of your patches for accuracy in this
> regard, thanks.

My bad. I'll fix and resend.

Thanks for reviewing.

baruch

>> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
>> ---
>>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
>> index 9143aa13ceb1..f275d9420d5b 100644
>> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
>> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
>> @@ -63,6 +63,7 @@
>>  		tx-disable-gpio = <&cp1_gpio1 29 GPIO_ACTIVE_HIGH>;
>>  		pinctrl-names = "default";
>>  		pinctrl-0 = <&cp0_sfp_present_pins &cp1_sfp_tx_disable_pins>;
>> +		maximum-power-milliwatt = <2000>;
>>  	};
>>  
>>  	leds {

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
