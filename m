Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3931A89B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e90IjWH0O0E+GXpYfQaXpjC8xM6gtApAzxm0iKp0Qh8=; b=QNeMMoTxQhVBJtZukmnJqWUBy
	xaf66JGZwahKbJObN7O+PiUW+sgQSnf4CgUhUrchCaxFvjxiFA73waw7dfm5sdLOmKgtP4dBe+ztr
	gBGyn7Igo71p5WYIdywt3I2cwnl93hKhduu4dgzRfqJpPNl/oPXXrW7r6q0JwtCaa3KYThmA0+667
	FVZI71hWFGOy0dZFKChzRS/fyPez9CJF3BZVO/GV880stiUeDY0UmSiVEw5+YmSDyFpFb8HytdlhF
	lT5yxgFeKNMjoPTyxF+np8O+hrUravH5hWR4B/EzibpjBWOovJAr9MRjF5YwPEC2zTIufowyL5hX+
	JdBumpccQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQQK-0003VK-Jr; Tue, 14 Apr 2020 18:36:40 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOQQ8-0003U4-Ln
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:36:32 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 53BD023EC2;
 Tue, 14 Apr 2020 20:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1586889384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ETg9DQrxdDCpr8jJWz38aDIweCD3QxDPHNHvzP2jUaI=;
 b=UCGbIx6BP4Q+IaZfvVxIu9QIHpybrXsMYlGwiW2F5q48TGdHlwBz9HWEvKi0jPP6M5pjd9
 Uw30KSd6GweHb9rvhRNdwXbJKNLmCajHFJWJw47XKaaa1+xYZhHnR2oC1BTv5WnO4w6CIb
 AVzpz/8vTxtmpQrjUjxSLzL8hoFsy5E=
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 20:36:23 +0200
From: Michael Walle <michael@walle.cc>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <20200414172129.GJ5412@sirena.org.uk>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
 <20200414172129.GJ5412@sirena.org.uk>
Message-ID: <fa605af3aee48f0bc62133f398ed7c5d@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 53BD023EC2
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-1.083];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[baylibre.com,vger.kernel.org,lists.infradead.org,linaro.org,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_113628_908693_9CBC6E59 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-04-14 19:21, schrieb Mark Brown:
> On Tue, Apr 14, 2020 at 12:07:01PM +0200, Michael Walle wrote:
>> Am 2020-04-14 11:50, schrieb Bartosz Golaszewski:
> 
>> > Maybe setting the pointer to ERR_PTR(-ENOENT) which will result in
>> > IS_ERR() returning true?
> 
>> Unfortunatly, its not a pointer, but only a regular unsigned int (ie
>> the type the regmap API has for its "reg" property). It could be a
>> pointer of course but then the user would have to allocate additional
>> memory.
> 
> You could define REGMAP_INVALID_ADDR to be (unsigned int)(-1) or some
> other suitably implausible address and use that as a value.  It's
> possible that there might be a collision with a real address on some
> device but it should be sufficiently unlikely to be useful, especially
> if it's not something regmap in general goes and evaluates.  For extra
> safety we could have an API for allowing users to query the register
> validity information regmap has (or can be given) and gpiolib could 
> then
> use that to figure out if the value was actually a dummy value but
> that's probably overdoing it.

If possible, I'd like to have the opposite logic. That is, if it is not
set it should be invalid. If we have a magic macro like
REGMAP_INVALID_ADDR, we must assign it to all the unused addresses. Thus
every driver would have to assign all addresses and if in the future
there will be some added, we'd have to touch all the drivers which use
gpio_regmap.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
