Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE9D1A072C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7exv0ILJ7ntNIh9jfznfYdbEiRYACHPBjZ2yiZFQWgo=; b=tmj27SZhNUdATT
	+9s5j8oupHyR4KkqtGzhndhi8lZzt1iRTk+pV2iUS95TTsD4GTEfGQzNntQwAZctp65Wt2h7MW6Ck
	1Gt2fnHxNT1rKveH98a7ib4F/jdUgdKMZV1BRRP3x+NWL/6WAvMVh5VALvXbbYxMHEsxCGdRKnvAy
	B+dTfjz3av6I8iujhhd1+RMy+A039K0//twRi8MuocZ2KCEYyGRoh5v0ew2cQnHZdtXlh4nfYQ0kU
	vK9jdKCfkJwVWX9oB5weZhgCTjHidUXpA85Gq67ylaedADi4KDfzyc/TXnuV/zDFF7PW6D7h023ke
	ZvFVT+J2JOoaBKfi2KjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhdU-0003Wb-WF; Tue, 07 Apr 2020 06:23:01 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhdO-0003Vj-RI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:22:56 +0000
IronPort-SDR: O+YlD9NPt55y2ad9krrOTU3j6vIAtS62HYzlNUten3NrP9kT4BXJN4RFkeRnsY5Q2Uq0qebbcb
 xUpi715fH97w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 23:22:52 -0700
IronPort-SDR: qEYf7JlZgWdR2QkscqkIrxsVpn+lpD0+6yCVbuUCA6pZmUdEMlc1wMb91tOE6waPGgHcLc/tPD
 dUU2kteimC7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="248519276"
Received: from klatzer-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.39.161])
 by orsmga008.jf.intel.com with ESMTP; 06 Apr 2020 23:22:46 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id 07E9E21D18; Tue,  7 Apr 2020 09:22:41 +0300 (EEST)
Date: Tue, 7 Apr 2020 09:22:41 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v5 2/5] media: i2c: ov5645: Drop reading clock-frequency
 dt-property
Message-ID: <20200407062241.GA8883@kekkonen.localdomain>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200406165108.GA7646@kekkonen.localdomain>
 <20200406173234.GD16885@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406173234.GD16885@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_232254_901194_C068E788 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

On Mon, Apr 06, 2020 at 08:32:34PM +0300, Laurent Pinchart wrote:
> Hi Sakari,
> 
> (CC'ing Maxime)
> 
> On Mon, Apr 06, 2020 at 07:51:08PM +0300, Sakari Ailus wrote:
> > On Mon, Apr 06, 2020 at 05:42:38PM +0100, Lad Prabhakar wrote:
> > > Modes in the driver are based on xvclk frequency fixed to 24MHz, but where
> > > as the OV5645 sensor can support the xvclk frequency ranging from 6MHz to
> > > 24MHz. So instead making clock-frequency as dt-property just let the
> > > driver enforce the required clock frequency.
> > 
> > Even if some current systems where the driver is used are using 24 MHz
> > clock, that doesn't mean there wouldn't be systems using another frequency
> > that the driver does not support right now.
> > 
> > The driver really should not set the frequency unless it gets it from DT,
> > but I think the preferred means is to use assigned-clock-rates instead, and
> > not to involve the driver with setting the frequency.
> > 
> > Otherwise we'll make it impossible to support other frequencies, at least
> > without more or less random defaults.
> 
> We're running in circles here.
> 
> As the driver only supports 24MHz at the moment, the frequency should be
> set by the driver, as it's a driver limitation. We can then work on
> supporting additional frequencies, which will require DT to provide a
> list of supported frequencies for the system, but that can be done on
> top.

I guess it would be possible to use different external clock frequencies on
a sensor in a given system but that seems to be a bit far fetched, to the
extent I've never seen anyone doing that in practice.

Originally, the driver set the frequency based on the clock-frequency
property. If we're removing that but use a fixed frequency instead, then
how is that going to work going forward when someone adds support for other
frequencies in the driver and has a system requiring that, while there are
some other platforms relying on the driver setting a particular frequency?

Although, if you're saying that this driver only needs to work with DT that
comes with the kernel and you don't care about DT binary compatibility,
this would be fine.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
