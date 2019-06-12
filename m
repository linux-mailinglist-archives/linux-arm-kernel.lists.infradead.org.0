Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF8641DDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYqUVpmYCTFJBLq/beuDhNEtyvDNVD/huo39CBFknNQ=; b=qU5uQvcf0U5IPk
	5pQfaGokgA1SAXnkGVaU9IALTxPdLbh+GM2BZQUNFSgB68L9wM5twjOmKhI+3aJGBrvcz0Uq2nl0G
	wyagIImXMFlPn2ZGEjKIyWMu4eoD1b0+Bi1m6ZFQdTZgG2PTfkVl6H7SEASb6XUmbIKFFSPnxNlxY
	R8lCkmmxxCwwWFzs/THLf7tvincNeJu93spowxxqBW9rrocMO//JYM+8pGEUYMRmKzNES9u3ijXhi
	DakmytnCU6glwwIXoOwvOqGdy5cNSZFs+IxpR7H53WEO7VG3Yd3qm1okUp98H4PXP1iCKPcX/nXR5
	ZmQNDHpZ7kFrCpY9ui2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxnf-000585-4P; Wed, 12 Jun 2019 07:36:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haxnR-00057U-Kc
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:35:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 741552B;
 Wed, 12 Jun 2019 00:35:47 -0700 (PDT)
Received: from big-swifty.misterjones.org (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B636F3F246;
 Wed, 12 Jun 2019 00:35:42 -0700 (PDT)
Date: Wed, 12 Jun 2019 08:35:41 +0100
Message-ID: <86ftofgss2.wl-marc.zyngier@arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
In-Reply-To: <alpine.DEB.2.21.1906120913090.2214@nanos.tec.linutronix.de>
References: <20190610121346.15779-1-abel.vesa@nxp.com>
 <20190610131921.GB14647@lakrids.cambridge.arm.com>
 <20190610132910.srd4j2gtidjeppdx@fsr-ub1664-175>
 <6f1052ea-623a-b2e8-9aa8-22aef5fab4ca@arm.com>
 <20190610135514.xd5myavjsloos2y3@fsr-ub1664-175>
 <7b86aa90-6d64-589c-f11e-d2ee6ab3fd54@arm.com>
 <VI1PR04MB5055A808A08A1C47784E4332EE130@VI1PR04MB5055.eurprd04.prod.outlook.com>
 <alpine.DEB.2.21.1906120913090.2214@nanos.tec.linutronix.de>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Organization: ARM Ltd
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_003549_722845_9D675354 
X-CRM114-Status: GOOD (  15.86  )
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

On Wed, 12 Jun 2019 08:14:16 +0100,
Thomas Gleixner <tglx@linutronix.de> wrote:
> On Mon, 10 Jun 2019, Leonard Crestez wrote:
> > On 6/10/2019 5:08 PM, Marc Zyngier wrote:
> > > Nobody is talking about performance here. It is strictly about
> > > correctness, and what I read about this system is that it cannot
> > > reliably use cpuidle.
> > My argument was that it's fine if PPIs and LPIs are broken as long as 
> > they're not used:
> > 
> >   * PPIs are only used for local timer which is not used for wakeup.
> 
> Huch? The timer has to bring the CPU out of idle as any other
> interrupt.

They use a separate hack for that, pretending that the timer is
stopped during idle (it isn't), and setup a broadcast timer when
entering idle. That timer uses an interrupt that can wake-up the
target CPU, and all is well in the world. Sort of.

Of course, this breaks as PPIs are not only used by the timer, but
also by a number of other HW bits (PMU, GIC, guest and hypervisor
timers), and they don't have corresponding hacks to back them up.

Thanks,

	M.

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
