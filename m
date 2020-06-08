Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A871F1BFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fL/rjNlc5k39InuyUWmDL2qyuPxvn/F9spw9NBdq5es=; b=keujk6xMpSahz6uUeaBxdcvlm
	rbalUs7JpMCISVmL2l/6rEtrPEQDxC2xqCVqHeyXcBybBOy1aysNFaQcZQAA38ym7/CArA3rMNtlD
	Ug8COY7ZvY3fkdIumEIg1FE/LU8cHxzNYmOLJCx7u1KYZaqKs5PaGDJavHIi9HhJpnDohCoBWpL+f
	ackDgXhEujv1+djhm/j5MoaHx+j6/AOr72eJXw3bDn+RmLFwAfweVLf3a9VKhS8TdzPDj+s6gc2iO
	hY+AfW34yOpdwLdSuayIhiUQgRuirWl4H4zm8Isu3K2Med7WNsFVBgZgjLDHNpcWgGB2U78Z8zSQV
	Ix94eCAbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJat-0001yi-Dd; Mon, 08 Jun 2020 15:21:47 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJal-0001wd-KK
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:21:41 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id D311822EDB;
 Mon,  8 Jun 2020 17:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591629687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w5/wFYr0WrHR2BGw4sUPuRmTmyyZEDrBDXp7xE6Rcqs=;
 b=Wg5tn5H1faOtr0XnIGPDSGd5kyucCSnasem9z0pro05j+LKp9YmcltmJYSntceVYHtAZHW
 CWFWp/mjoJ2xvRoKRmfTvpANiM8L6SG62R4HTUanniYR0aE0wa6xqFpGLIlU1qOlaKndyr
 yx9pmn5kqLEjpxuBMngTNYuCFJX99fM=
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 17:21:20 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
In-Reply-To: <20200608142413.GA4106@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc> <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc> <20200608142413.GA4106@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <7566ef30fea9740f427f392aabde0eac@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_082139_829708_5D374A41 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-watchdog@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-08 16:24, schrieb Lee Jones:
> On Mon, 25 May 2020, Michael Walle wrote:
>> Am 2020-05-15 12:28, schrieb Lee Jones:
>> > On Thu, 30 Apr 2020, Michael Walle wrote:
>> >
>> > > Hi Lee,
>> > >
>> > > Am 2020-04-23 19:45, schrieb Michael Walle:
>> > > > There might be multiple children with the device tree compatible, for
>> > > > example if a MFD has multiple instances of the same function. In this
>> > > > case only the first is matched and the other children get a wrong
>> > > > of_node reference.
>> > > > Add a new option to match also against the unit address of the child
>> > > > node. Additonally, a new helper OF_MFD_CELL_REG is added.
> 
> [...]
> 
>> > > > diff --git a/include/linux/mfd/core.h b/include/linux/mfd/core.h
>> > > > index d01d1299e49d..c2c0ad6b14f3 100644
>> > > > --- a/include/linux/mfd/core.h
>> > > > +++ b/include/linux/mfd/core.h
>> > > > @@ -13,8 +13,11 @@
>> > > >  #include <linux/platform_device.h>
>> > > >
>> > > >  #define MFD_RES_SIZE(arr) (sizeof(arr) / sizeof(struct resource))
>> > > > +#define MFD_OF_REG_VALID	BIT(31)
>> >
>> > What about 64bit platforms?
>> 
>> The idea was to have this as a logical number. I.e. for now you may 
>> only
>> have one subdevice per unique compatible string. In fact, if you have 
>> a
>> look at the ab8500.c, there are multiple "stericsson,ab8500-pwm"
>> subdevices. But there is only one DT node for all three of it. I guess
>> this works as long as you don't use phandles to reference the pwm node
>> in the device tree. Or you don't want to use device tree properties
>> per subdevice (for example the "timeout-sec" of a watchdog device).
> 
> This is not a good example, as the "stericsson,ab8500-pwm" is
> legitimate.  Here we are registering 3 potential devices, but only
> instantiating 1 of them.

Mh?

static const struct mfd_cell ab8500_devs[] = {
..
        OF_MFD_CELL("ab8500-pwm",
                     NULL, NULL, 0, 1, "stericsson,ab8500-pwm"),
         OF_MFD_CELL("ab8500-pwm",
                     NULL, NULL, 0, 2, "stericsson,ab8500-pwm"),
         OF_MFD_CELL("ab8500-pwm",
                     NULL, NULL, 0, 3, "stericsson,ab8500-pwm"),
..
}

And in pwm-ab8500.c there are three offsets based on the pdev->id.

Am I missing something here?

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
