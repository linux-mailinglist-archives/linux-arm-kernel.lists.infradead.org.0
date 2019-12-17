Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26085122590
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG3OfmV6rr/BS4ocoSe0HQOhKO+jG0sEufpDW6b30ds=; b=tU728dMAhDhEBs
	d4sytfPqqWEibZBhEq9tdDEd57d8ZoB7+GrDT/Dzm0BP437LvqeKGY7ZywQYQuryi7pJgY9Uuexq0
	zmaWE+h+zg7NTqRiiKAC0NkVkHsaGnZtTg7ltOjP5SziypxcB73QI8xyCkTdJVVa8It8y1ZTc0dr1
	is9PRNO94+dY0+D2VeJlZj+22GJpkLFHnRRkmDdPDJ5rn2C40d7Hi/DBWRX41dh7nPXSG/JEbgmlR
	5qLwL0g79RxqgUBB03yrpYBmNbSxSLy1f2gHnls0Ix4IaC13qn4ohvxc/BX1GIMYPq6FzfinKGMNl
	ml6Dnerf4RIJn1TAxqeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7Ol-0000Mj-2c; Tue, 17 Dec 2019 07:36:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7OZ-0000ML-OT
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:35:53 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ih7OK-00044B-An; Tue, 17 Dec 2019 08:35:36 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ih7OH-0008Gx-Pm; Tue, 17 Dec 2019 08:35:33 +0100
Date: Tue, 17 Dec 2019 08:35:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191217073533.GC31182@pengutronix.de>
References: <20191129172537.31410-4-m.felsch@pengutronix.de>
 <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <20191216114454.GB4161@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216114454.GB4161@sirena.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:51:55 up 109 days, 19:06, 74 users,  load average: 0.31, 0.39,
 0.44
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_233551_794510_B40C3D00 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-16 11:44, Mark Brown wrote:
> On Mon, Dec 16, 2019 at 09:55:25AM +0100, Marco Felsch wrote:
> > On 19-12-12 16:51, Mark Brown wrote:
> 
> > > Something needs to say what that thing is, especially if it's runtime
> > > controllable.  In your case from the point of view of software there is
> > > actually no enable control so we shouldn't be providing an enable
> > > operation to the framework.
> 
> > The enabel control signal is always available, please check [1] table
> > 63. There is a mux in front of the enable pin so:
> 
> What I'm saying is that I think the binding needs to explicitly talk
> about that since at the minute it's really confusing reading it as it
> is, it sounds very much like it's trying to override that in a chip
> specific fashion as using gpiolib and the GPIO bindings for pinmuxing is
> really quite unusual.

Hm.. I still think that we don't mux the pin to some special function.
It is still a gpio input pin and if we don't request the pin we could
read the input from user-space too and get a 'valid' value. Muxing would
happen if we change the pad to so called _alternate_ function. Anyway,
lets find a binding description:

name:
 - dlg,vsel-sense-gpios

IMHO this is very descriptive and needs no update.

description:
 - A GPIO reference to a local general purpose input, [1] calls it GPI.
   The DA9062 regulators can select between voltage-a/-b settings.
   Each regulator has a VBUCK*_GPI or VLDO*_GPI input to determine the
   active setting. In front of the VBUCK*_GPI/VLDO*_GPI input is a mux
   to select between different signal sources, valid sources are: the
   internal sequencer, GPI1, GPI2 and GPI3. See [1] table 63 for more
   information. Most the time the internal sequencer is fine but
   sometimes it is necessary to use the signal from the DA9062 GPI
   pads. This binding covers the second use case.
   Attention: Sharing the same GPI for other purposes or across multiple
   regulators is possible but the polarity setting must equal.

[1] https://www.dialog-semiconductor.com/sites/default/files/da9062_datasheet_3v6.pdf

Regards,
  Marco


> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
