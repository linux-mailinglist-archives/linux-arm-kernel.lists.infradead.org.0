Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A5E41DE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgHAsME+bBGojbzeCYOCeggDIXFTep+FEAW5FRmsgFA=; b=LxDh7dzplDT9Vg
	U3NIvRNAAvr9ffCpM86JyqPNQQOUou8nS/gU7gkndr6I2/X/mD6evP4WSFpVO7OG/Lhr5lKKBzSCQ
	YUJ+qGv9zolGkFH4j4Q4QyMYuPMdb2S3OIwAOuyKGAeLIf/AS2xqlgb9TuBQjIoQz1SG5O4/N8gyO
	GnJTRn/ojuy0uKgLy52QF5WhP7XEnke5ahxB5hmkMl7sahfGiJ3mEw5hNSJEvCUXATjl95Pj87I1y
	nWKU5ygmtSk4CtouFTbY02OATl1qCQpnwEBvXRYuvSBI2u1NmY5YDGWliN3fMoaso/jSzZfWMN40m
	/3AG7YxUCVhbPRTeUXpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxpt-0005jK-6A; Wed, 12 Jun 2019 07:38:21 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxpd-0005iX-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:38:06 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1haxpX-0006a0-OZ; Wed, 12 Jun 2019 09:37:59 +0200
Date: Wed, 12 Jun 2019 09:37:58 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
In-Reply-To: <86ftofgss2.wl-marc.zyngier@arm.com>
Message-ID: <alpine.DEB.2.21.1906120937430.2214@nanos.tec.linutronix.de>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610131921.GB14647@lakrids.cambridge.arm.com>
 <20190610132910.srd4j2gtidjeppdx@fsr-ub1664-175>
 <6f1052ea-623a-b2e8-9aa8-22aef5fab4ca@arm.com>
 <20190610135514.xd5myavjsloos2y3@fsr-ub1664-175>
 <7b86aa90-6d64-589c-f11e-d2ee6ab3fd54@arm.com>
 <VI1PR04MB5055A808A08A1C47784E4332EE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
 <alpine.DEB.2.21.1906120913090.2214@nanos.tec.linutronix.de>
 <86ftofgss2.wl-marc.zyngier@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_003805_224827_E0838B5B 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Abel Vesa <abel.vesa@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Abel Vesa <abelvesa@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019, Marc Zyngier wrote:
> On Wed, 12 Jun 2019 08:14:16 +0100,
> Thomas Gleixner <tglx@linutronix.de> wrote:
> > On Mon, 10 Jun 2019, Leonard Crestez wrote:
> > > On 6/10/2019 5:08 PM, Marc Zyngier wrote:
> > > > Nobody is talking about performance here. It is strictly about
> > > > correctness, and what I read about this system is that it cannot
> > > > reliably use cpuidle.
> > > My argument was that it's fine if PPIs and LPIs are broken as long as 
> > > they're not used:
> > > 
> > >   * PPIs are only used for local timer which is not used for wakeup.
> > 
> > Huch? The timer has to bring the CPU out of idle as any other
> > interrupt.
> 
> They use a separate hack for that, pretending that the timer is
> stopped during idle (it isn't), and setup a broadcast timer when
> entering idle. That timer uses an interrupt that can wake-up the
> target CPU, and all is well in the world. Sort of.
> 
> Of course, this breaks as PPIs are not only used by the timer, but
> also by a number of other HW bits (PMU, GIC, guest and hypervisor
> timers), and they don't have corresponding hacks to back them up.

Eew.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
