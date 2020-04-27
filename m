Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8ED1BAD75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:01:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6XyU6DDwGrAiyXcGILwxo6mW4ZThvkdwPPhubWksX8=; b=S5xXkl5xg05oy+
	JZVVolfrYHro8vJtC3fb+HOGpaP+XrqxPoxtC5PUkfeSd8ZgS5MEaq0kwABb6cpZW3pZ1dposE3OZ
	UAcKKm7uwq89YtsA3mS4SvU6Q0jr6B2+V3Ym6f/Y9k68yVha5NdqvlRZ6/HNVFeIJRf31dReqzBMJ
	RAnsPvvyf4OaVKOtY58+oynz9emTO23qdnGv/u12qH9qdgZnf3m/48Or+7BQ3M3WZvTS2zZFA3YkA
	HE4qvQPZn3o9ugEXKMBQjcHrWt0TKz+OpqiIUz+fQkE7Z6XkW6RNPkxq7ZM5m8x/8vxWM2yZNoCHM
	WkQOR7E00MGM52M9xdEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT90I-0004an-R9; Mon, 27 Apr 2020 19:01:18 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8zJ-00033l-Nv
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 19:00:19 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jT8z9-0004q5-0k; Mon, 27 Apr 2020 21:00:07 +0200
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id E95AB100606; Mon, 27 Apr 2020 21:00:05 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 06/16] irqchip: add sl28cpld interrupt controller
 support
In-Reply-To: <87f141bce0a4fda04b550647306be296@walle.cc>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-7-michael@walle.cc>
 <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
 <87f141bce0a4fda04b550647306be296@walle.cc>
Date: Mon, 27 Apr 2020 21:00:05 +0200
Message-ID: <87sggopxe2.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_120017_933542_29796E48 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Michael,

Michael Walle <michael@walle.cc> writes:
> Am 2020-04-27 13:40, schrieb Thomas Gleixner:
>>> +
>>> +	ret = devm_regmap_add_irq_chip(&pdev->dev, irqchip->regmap, irq,
>>> +				       IRQF_SHARED | IRQF_ONESHOT, 0,
>> 
>> What's the point of IRQF_SHARED | IRQF_ONESHOT here?
>
> IRQF_SHARED because this interrupt is shared with all the blocks
> which can generate interrupts, i.e. the GPIO contollers.

Why are people still designing hardware with shared interrupts? Shared
interrupts are broken by design and that's well known for decades.

> IRQF_ONESHOT, because its is a threaded interrupt with no primary
> handler. But I just noticed, that regmap-irq will also set the
> IRQF_ONESHOT. But that the commit 09cadf6e088b ("regmap-irq:
> set IRQF_ONESHOT flag to ensure IRQ request") reads like it is
> just there to be sure. So I don't know if it should also be set
> here.

Ok. Wasn't aware of that magic threaded interrupt connection.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
