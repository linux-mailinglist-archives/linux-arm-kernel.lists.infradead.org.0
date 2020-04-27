Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A871BABE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 20:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+2NOYyb3ZrxQFBmIDDUU32+T6aiUJuBvb7Xqa/47Y5s=; b=FNKJxhWQaOWQHVuVlx8zxmVIy
	PuUPgvLcsHugjkkukY3qohDwaTOM2DqZavu07JHeO+f8ugk7yCcIvxnl0TJfRz8i8bDJgk6HU+Ixo
	hR3dhjUc3Ycfyu++A6IcJ53g+bT9aMBEGzxhK1CVDrLFs/n8vSzVHbySVr8/Eu3mGJfJR/lSlk87m
	MOsJwQ4aZgFo4zWVqqkjmvcfPFTWFqR6FSHR3J+vnkUT2KeRGtpyes5PsVgnaGk8LxStgD+9pDhay
	Hfn/AUtc0K3PfncC89HFflnl1MEST173QLA+PsrvhPzyMG4wYScNwmoqRF05y9N4FTTlS7moZ9mov
	BEvJGdVnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT84O-0007TG-7A; Mon, 27 Apr 2020 18:01:28 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT84B-0007Sj-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 18:01:17 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 6B45823060;
 Mon, 27 Apr 2020 20:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1588010474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VgZY7A1YcWL+FUikv6WQsHGx/g/bx2ZDb/8Q06Sb0cg=;
 b=IwcZkG2ZaZ6kJ4ww3jxV05EBcMLx7lugU1iUUJK/aNzSzAGEpQYhe16q5/ZkjEBSngqk7C
 yG/267Xo4LJWOBoGv3ePYiXJlgmb42AZAtStyAeQzexqDTq4Bcm4iIhHdG8y+C/DunmQ+f
 L3Htu5r2vUx6nHwuitymbBSeJZzItug=
MIME-Version: 1.0
Date: Mon, 27 Apr 2020 20:01:14 +0200
From: Michael Walle <michael@walle.cc>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 06/16] irqchip: add sl28cpld interrupt controller
 support
In-Reply-To: <20200427174427.GE4383@sirena.org.uk>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-7-michael@walle.cc>
 <87pnbtqhr1.fsf@nanos.tec.linutronix.de>
 <87f141bce0a4fda04b550647306be296@walle.cc>
 <20200427174427.GE4383@sirena.org.uk>
Message-ID: <5d63026fc7c8700c2c7fb15267a9e441@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 6B45823060
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; NEURAL_HAM(-0.00)[-0.827];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[linutronix.de,linux.intel.com,vger.kernel.org,lists.infradead.org,linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_110116_118339_8A734140 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-04-27 19:44, schrieb Mark Brown:
> On Mon, Apr 27, 2020 at 07:40:11PM +0200, Michael Walle wrote:
> 
>> IRQF_ONESHOT, because its is a threaded interrupt with no primary
>> handler. But I just noticed, that regmap-irq will also set the
>> IRQF_ONESHOT. But that the commit 09cadf6e088b ("regmap-irq:
>> set IRQF_ONESHOT flag to ensure IRQ request") reads like it is
>> just there to be sure. So I don't know if it should also be set
>> here.
> 
> Looking at the changelog there the "we can't be sure" bit is that
> coccinelle couldn't follow the flags through from the caller to make
> sure that IRQF_ONESHOT is set so we're just oring it in 
> unconditionally.

So it is correct that IRQF_ONESHOT is also set in the driver which is
using regmap_add_irq_chip(), right?

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
