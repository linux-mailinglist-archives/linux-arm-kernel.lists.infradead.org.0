Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1990132184
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 09:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I20JeLwzqP9rKfSUkyV9qRT1kBTZiWVLtAhYY0E0gEA=; b=gwuHSDUJaWuRch
	D8ehc3JHosciq42qupgKxYSsdVoYoOmJ6LBzGTsH9qO5joxtUDZ0x0SZM/CQvhIsXqgHwwQmhcuJy
	F5S//H8I10acmBDbxuWEYf1THRozSAt4tGqCyWLjTLGxyJkoUNLMe8+m0N8ce5iGmy0nvDQ1W30cA
	5rouncAiTJiL3C2dV0+v5EdDoxybTeiBVZ1B5m9gCXrqB3ZsVn8k7kyhn67IzXY/qcOfZkcOcxIsK
	kC5RTOgBopKcIE5Kwhbjyy6iRD/HNURB6wDvV5r3JCCw2SuLgvG2bbxejwypoSL3pzqVi+fI5VgoN
	C74IHQyfajay5skSHOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokMa-0005Gd-PI; Tue, 07 Jan 2020 08:37:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokMS-0005G7-Fu
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 08:37:13 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iokMC-0007de-GN; Tue, 07 Jan 2020 09:36:56 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iokMA-0004B9-C9; Tue, 07 Jan 2020 09:36:54 +0100
Date: Tue, 7 Jan 2020 09:36:54 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20200107083654.atgbjhrnhyax2gqq@pengutronix.de>
References: <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <20191216114454.GB4161@sirena.org.uk>
 <20191217073533.GC31182@pengutronix.de>
 <20191217125832.GF4755@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217125832.GF4755@sirena.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:14:30 up 52 days, 23:33, 43 users,  load average: 0.00, 0.04, 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_003712_535782_A5C05EB5 
X-CRM114-Status: GOOD (  23.78  )
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

Hi Mark,

On 19-12-17 12:58, Mark Brown wrote:
> On Tue, Dec 17, 2019 at 08:35:33AM +0100, Marco Felsch wrote:
> > On 19-12-16 11:44, Mark Brown wrote:
> 
> > > What I'm saying is that I think the binding needs to explicitly talk
> > > about that since at the minute it's really confusing reading it as it
> > > is, it sounds very much like it's trying to override that in a chip
> > > specific fashion as using gpiolib and the GPIO bindings for pinmuxing is
> > > really quite unusual.
> 
> > Hm.. I still think that we don't mux the pin to some special function.
> > It is still a gpio input pin and if we don't request the pin we could
> > read the input from user-space too and get a 'valid' value. Muxing would
> > happen if we change the pad to so called _alternate_ function. Anyway,
> > lets find a binding description:
> 
> I don't think any of this makes much difference from a user point of
> view.
> 
> > IMHO this is very descriptive and needs no update.
> 
> > description:
> >  - A GPIO reference to a local general purpose input, [1] calls it GPI.
> >    The DA9062 regulators can select between voltage-a/-b settings.
> >    Each regulator has a VBUCK*_GPI or VLDO*_GPI input to determine the
> >    active setting. In front of the VBUCK*_GPI/VLDO*_GPI input is a mux
> >    to select between different signal sources, valid sources are: the
> >    internal sequencer, GPI1, GPI2 and GPI3. See [1] table 63 for more
> >    information. Most the time the internal sequencer is fine but
> >    sometimes it is necessary to use the signal from the DA9062 GPI
> >    pads. This binding covers the second use case.
> >    Attention: Sharing the same GPI for other purposes or across multiple
> >    regulators is possible but the polarity setting must equal.
> 
> This doesn't say anything about how the GPIO input is expected to be
> controlled, for voltage setting any runtime control would need to be
> done by the driver and it sounds like that's all that can be controlled.
> The way this reads I'd expect one use of this to be for fast voltage
> setting for example (you could even combine that with suspend sequencing
> using the internal sequencer if you mux back to the sequencer during
> suspend).

The input signal is routed trough the da9062 gpio block to the
regualtors. You can't set any voltage value using a gpio instead you
decide which voltage setting is applied. The voltage values for
runtime/suspend comes from the dt-data. No it's not just a fast
switching option imagine the system suspend case where the cpu and soc
voltage can be reduced to a very low value. Older soc's like the imx6
signaling this state by a hard wired gpio line because the soc and
cpu cores don't work properly on such low voltage values. This is
my use case and I can't use the sequencer.

Regards,
  Marco


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
