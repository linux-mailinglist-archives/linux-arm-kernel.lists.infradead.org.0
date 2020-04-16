Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5921A1ABBCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z0ks7iysYDXButAHboNjhQdpZhA3YNgluZ2m8GKLQ0A=; b=ItnRqFJnuPLsoNJyNk+lXFKdJ
	i74mjfhspizwam56uZ3vZ/zHz8Yh4UFknENPtlLpSkqv1HmfJVIZRn5KpRzdSX3x4w/QKSr2K117v
	j3Yp3v9dj21lLnB9TcQpIK5lTnTs2ORseE5tp0i+/jAm8wSPFjgmoGz82WA2ZWKAbirtQ0ZXTvY7L
	yFwj8g/s4EQdPMsrdld8LUmjUB/Qoi2SgdDA/OAofq6d+4psFY+QH3HD/rYNeO5bMk69tAPFIO8Nt
	BLhtIn/x1GdzQJsV4ef2m0eRsCR9Lq4xrOkIf0F4AjfKWURBl8sSPJ5eujuPFpOUilPtqKV4zQapn
	UKHn1kN1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0Jl-0007aU-Sj; Thu, 16 Apr 2020 08:56:17 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0JV-0007ZY-Om
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:56:03 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id E19F222F53;
 Thu, 16 Apr 2020 10:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1587027354;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6knnTYd0SD0a2gjJU3xQbFJUgo1WzPpSFmhjfIQyUcY=;
 b=M9q2RMUFDQVW4SbouNkFNdJPzvQSvOQC+FhQtrDgr+5/mkydRI7TAhGXO0tbJzmPNNyyHX
 L7gLiTb5PDKWNrrSnrCdEZyt6jYVPk3HsLMtzmSAX0AXDADeVgSzEhGLRf7b5MFNZM8a6g
 TAZ0ODC6jxTAJEZd8Mh17RprqqBe0Lw=
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 10:55:46 +0200
From: Michael Walle <michael@walle.cc>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 11/16] gpio: add support for the sl28cpld GPIO
 controller
In-Reply-To: <CACRpkdbANL_W3gcTwue5VUCWT95boMXjFSqTeFDZvJ6iSeNpJg@mail.gmail.com>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-12-michael@walle.cc>
 <CACRpkdbANL_W3gcTwue5VUCWT95boMXjFSqTeFDZvJ6iSeNpJg@mail.gmail.com>
Message-ID: <46eb76699a76b3feedccc70f1d1da1de@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: E19F222F53
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-0.402];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,baylibre.com,kernel.org,suse.com,roeck-us.net,linaro.org,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_015602_001014_3A288C21 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Linus,

Am 2020-04-16 10:34, schrieb Linus Walleij:
> Hi Michael,
> 
> this is looking good provided we can get the generic GPIO regmap
> helper reviewed and merged. Thanks!
> 
> On Thu, Apr 2, 2020 at 10:37 PM Michael Walle <michael@walle.cc> wrote:
> 
>> This adds support for the GPIO controller of the sl28 board management
>> controller. This driver is part of a multi-function device.
>> 
>> Signed-off-by: Michael Walle <michael@walle.cc>
> 
>> +       depends on MFD_SL28CPLD
> 
> Apart from this depends it seems the patch is compile-time
> independent of the other patches

correct. There are no common mfd headers or something like that.

> so I'd suggest we just merge
> the generic regmap driver and this driver to the GPIO tree once
> we feel finished with them, optimistically assuming that the MFD
> driver will land and that we will not need any fundamental
> changes in the GPIO driver.
> 
> Worst case we have to revert the driver and that is no disaster.

Sure. One major thing I'm waiting for is the decision/new ideas on
how to handle the "register is not set or zero" problem, see the
other thread on the generic regmap gpio. Then I'd respin an update
of this whole series.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
