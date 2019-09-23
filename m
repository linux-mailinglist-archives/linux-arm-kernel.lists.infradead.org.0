Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37456BB13D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aru32Ixc+/Z3n8p+dzPd00UYAyawTQwxyF7rX1Pd6uU=; b=GcDRTtAHBWkjph
	O4Hkp5obm1BLTbz8r/jQdUDw5nkS8jcetZAFx1ohPZtK8gMfEGjtSyCz96DWPRIudBLVK1dYHpdsO
	oI2wLZ3CbLbjNWyu3+nR7mUy5Q8KhaCmHGjWBkyVs5vXwby2f1rrdivTORJVJaV86oI2N4GmiwhXh
	jh86YYbVK2E5TPQPanT1pHKGR+srO9GjW3XNssW64mgXQ6TOQ8RU4O5sGz2ohAgxEZXNrlZRin1Cv
	mR4UVllbGseCpCsMPcQZB7DKrg5XMJFEgbqYNZBilxf/WCrNIlE/n31a0hUwPonBfoblgTXqKgiXN
	NhmVrDoy1p8+nZO3eKag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKUK-0002vR-IP; Mon, 23 Sep 2019 09:18:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKTp-0002ht-4x
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:18:03 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCKTc-0005wP-Px; Mon, 23 Sep 2019 11:17:48 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCKTZ-0001wK-TP; Mon, 23 Sep 2019 11:17:45 +0200
Date: Mon, 23 Sep 2019 11:17:45 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/4] pwm: mxs: implement ->apply
Message-ID: <20190923091745.ehvz4zi2riyanmug@pengutronix.de>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
 <20190923081348.6843-2-linux@rasmusvillemoes.dk>
 <20190923082459.huqpbz5eseonkscv@pengutronix.de>
 <a6407644-0b5b-ba46-9435-0d14be9066a5@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6407644-0b5b-ba46-9435-0d14be9066a5@rasmusvillemoes.dk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_021801_204432_8692EBA0 
X-CRM114-Status: GOOD (  13.13  )
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

[expanded the recipents to include RMK and the clk list]

On Mon, Sep 23, 2019 at 11:04:39AM +0200, Rasmus Villemoes wrote:
> On 23/09/2019 10.24, Uwe Kleine-K=F6nig wrote:
> > Also there is a bug already in .config: You are not supposed to call
> > clk_get_rate if the clk might be off.
> =

> Interesting, I didn't know that. So the prepare_enable logic needs to be
> moved before we start computing the period/duty cycles. Do you know why
> it has apparently worked so far? I would have thought such a rule would
> be enforced by the clock framework, or at least produced a warning.

FTR: This is documented in the kerneldoc code comment to clk_get_rate in
include/linux/clk.h.

Assuming this is relevant, it might indeed make sense to add a
WARN_ONCE for this.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
