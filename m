Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901EA1959DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:28:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5GFtYd+/CQQxNIg/EodhDNbdGb/3xOlmlaPdGXgxW1I=; b=b3PkUrCGEtP7JJBRe4WAPCjZr
	S1SwOyoH0Mic0UcSJLZoVcOgrjZw08wdU1SwH2u+Meaa1BEKcOpK0ZlGleVCYS8vnfC9R6+9jecvI
	YMKkEfasYZvRkAESyspjO0k2kDeiRetBgCBtxsT1ZhLuQqE9N/5hjBaTmfnqxT3QJohkd6G+GpYHk
	560DQwFGQf9prMvUbsU1+GcRaQF9BHdSQb0BAezfwTJoyKNOC+GXm+qH7OgF1bnh7URRAIVobQ7TW
	afAarMfWdBeDQ1pGJLf59nYlDnzutTFM0SagKCLMNH/ohEEZlbb3FaSHhFPerVYcLqH22DQQ300jU
	5BWV5mH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHquM-0002fS-9M; Fri, 27 Mar 2020 15:28:30 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHqu6-0002d9-Iq
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 15:28:15 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id EB34922FEC;
 Fri, 27 Mar 2020 16:28:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585322892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eqUqITWsj9KDFGHrWeFv9QwKV40MUcbbCm0POjhjwys=;
 b=NH9IOM80ezOu/xwgBZKQz57gkLeRbVpBO6uhULy0WRIQwRM6uLeXsXUIgRsya4g0GiBhLJ
 V7nQFEI7obV92eVs8K0Ug7pHGzqpMHjtBP9MH2YUCHq5FqwNCeHAAxhU3Opxy1oqePUh8G
 x9v49TPkEiJCurb1daDWtLGhW/jpfno=
MIME-Version: 1.0
Date: Fri, 27 Mar 2020 16:28:11 +0100
From: Michael Walle <michael@walle.cc>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
In-Reply-To: <CACRpkdbJ3DBO+W4P0n-CfZ1T3L8d_L0Nizra8frkv92XPXR4WA@mail.gmail.com>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-13-michael@walle.cc>
 <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
 <9c310f2a11913d4d089ef1b07671be00@walle.cc>
 <CAMpxmJXmD-M+Wbj6=wgFgP2aDxbqDN=ceHi1XDun4iwdLm55Zg@mail.gmail.com>
 <22944c9b62aa69da418de7766b7741bd@walle.cc>
 <CACRpkdbJ3DBO+W4P0n-CfZ1T3L8d_L0Nizra8frkv92XPXR4WA@mail.gmail.com>
Message-ID: <4d8d3bc26bdf73eb5c0e5851589fe085@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: EB34922FEC
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[21]; NEURAL_HAM(-0.00)[-0.548];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,suse.com,roeck-us.net,linaro.org,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_082814_771247_C71EE329 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, linux-devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-03-27 11:20, schrieb Linus Walleij:
> On Thu, Mar 26, 2020 at 9:06 PM Michael Walle <michael@walle.cc> wrote:
>> Am 2020-03-25 12:50, schrieb Bartosz Golaszewski:
> 
>> > In that case maybe you should use the disable_locking option in
>> > regmap_config and provide your own callbacks that you can use in the
>> > irqchip code too?
>> 
>> But how would that solve problem (1). And keep in mind, that the
>> reqmap_irqchip is actually used for the interrupt controller, which
>> is not this gpio controller.
>> 
>> Ie. the interrupt controller of the sl28cpld uses the regmap_irqchip
>> and all interrupt phandles pointing to the interrupt controller will
>> reference the toplevel node. Any phandles pointing to the gpio
>> controller will reference the GPIO subnode.
> 
> Ideally we would create something generic that has been on my
> mind for some time, like a generic GPIO regmap irqchip now that
> there are a few controllers like that.
> 
> I don't know how feasible it is or how much work it would be. But
> as with GPIO_GENERIC (for MMIO) it would be helpful since we
> can then implement things like .set_multiple() and .get_multiple()
> for everyone.

For starters, would that be a drivers/gpio/gpio-regmap.c or a
drivers/base/regmap/regmap-gpio.c? I would assume the first,
because the stuff in drivers/base/regmap operates on a given
regmap and we'd just be using one, correct? On the other hand
there is also the reqmap-irq.c. But as pointed out before, it
will add an interrupt controller to the regmap, not a device
so to speak.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
