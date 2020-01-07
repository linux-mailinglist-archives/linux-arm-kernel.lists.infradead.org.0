Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF761327DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0wb6xsv8WoUI1Y8M5JJ5urE66DDJyO3u2iNcrJ+XLo=; b=pkdgNL0CGoff7O
	TJV3e7Si4Evp6YELqqRsNxmAH2t4eZGe3jWDOx0DYUCDYgBUuX5+SGFjsxBax0srzs9ZG8q4r0Dlg
	hZfyirN1btsEecAnAaU6zVSR5EUu9vwKEpKTokP7mwD3tFbuiklXsyQZZVaJsYbia7Shbpvh88xYd
	BCl6IHoI17NwbhCWoBeDAqI47vz8KtmmotPT6ej5hO4baM6wbgIehOSHqPbkV9d/YjbVTvC/kRtWl
	fhhXXuiWH5CgbR9O7qLiNtf+0rq/wP80+ISr43vS75+8TfG2UjBj4m5c/rvwQQPuXQeDROpwsbiI0
	tWgBRpGVdVR+190VnaHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iop4I-0005hN-RS; Tue, 07 Jan 2020 13:38:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iop49-0005h2-U5
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 13:38:39 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iop3l-0007Jd-RU; Tue, 07 Jan 2020 14:38:13 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iop3j-0005N2-6B; Tue, 07 Jan 2020 14:38:11 +0100
Date: Tue, 7 Jan 2020 14:38:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20200107133811.rua5i6lflzyzlh24@pengutronix.de>
References: <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
 <20191216114454.GB4161@sirena.org.uk>
 <20191217073533.GC31182@pengutronix.de>
 <20191217125832.GF4755@sirena.org.uk>
 <20200107083654.atgbjhrnhyax2gqq@pengutronix.de>
 <20200107130911.GD4877@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107130911.GD4877@sirena.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:32:28 up 53 days,  4:51, 47 users,  load average: 0.02, 0.03, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_053837_968005_A0D6516C 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 20-01-07 13:09, Mark Brown wrote:
> On Tue, Jan 07, 2020 at 09:36:54AM +0100, Marco Felsch wrote:
> > On 19-12-17 12:58, Mark Brown wrote:
> 
> > > This doesn't say anything about how the GPIO input is expected to be
> > > controlled, for voltage setting any runtime control would need to be
> > > done by the driver and it sounds like that's all that can be controlled.
> > > The way this reads I'd expect one use of this to be for fast voltage
> > > setting for example (you could even combine that with suspend sequencing
> > > using the internal sequencer if you mux back to the sequencer during
> > > suspend).
> 
> > The input signal is routed trough the da9062 gpio block to the
> > regualtors. You can't set any voltage value using a gpio instead you
> > decide which voltage setting is applied. The voltage values for
> > runtime/suspend comes from the dt-data. No it's not just a fast
> > switching option imagine the system suspend case where the cpu and soc
> > voltage can be reduced to a very low value. Older soc's like the imx6
> > signaling this state by a hard wired gpio line because the soc and
> > cpu cores don't work properly on such low voltage values. This is
> > my use case and I can't use the sequencer.
> 
> My point is that I can't tell any of this from the description.

Therefore I want to discuss the dt-binding documentation with you and
the others to get this done. Is the above description better to
understand the dt-binding?

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
