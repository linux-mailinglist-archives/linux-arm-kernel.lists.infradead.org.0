Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FED472386
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 02:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htgOK5cRYpYzuKoh+kq6MCyb7f5xVnKZRBq7wvI3d/E=; b=lhCVZToci+IAzg
	leUGXHGuVqdFhi5ihSqV16dzEVyt/PmcTDzBdTRDMlHhC9BKTPuWuN23wwIxw8tZFSL9w7eX2QdOs
	EmAX9OP8jb4QL/UNnSEqO5thn7I9Sgr7cdJOPRU1SIQmtQrmdFKc0HxiPIJVq//0/OAg2r0DaKrZF
	GzE+yquhERuq6Y3WSx9Gjt+Fo2+XLGYV3xwdAyhw1E4Rx5305rdGyaw3EApEQKSIuEpRCd1tGIRi0
	rfLhoQjGGcwt1f3cBH7Q7qm35EKo7Ws7zq/HlNBy0N1GtlA+AY8kf4oIucPHjAy8DAdYRLIrQGFxI
	RuHZ/hw1ftXkYvh1T/tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq5Tl-0002O7-Gf; Wed, 24 Jul 2019 00:50:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq5TD-0002Mp-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 00:49:28 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D6132253D;
 Wed, 24 Jul 2019 00:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563929364;
 bh=f1BgHRD07iLgL/RGh4ch0V6HXKB6ToEvnZ787DM64e0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UX3gv9jRpafjJM3CJy7HbkTSbt/ys7gAa35KrwrO23HsfEBMYrs3uAfjIb4Oo+6yl
 3O8q/Fwca+iHDZkxXpAk9yp7xJCJYGn1Xisup3xheKcnBIvTH8bi6aDN4q+g+ZZWCt
 5Nf+czS/e/GSOTlPGT7NCihNbmoXCQW/bjYkv0nM=
Date: Wed, 24 Jul 2019 08:48:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v5 12/15] ARM: dts: imx6ul: add dma support on ecspi
Message-ID: <20190724004848.GV15632@dragon>
References: <20190610081753.11422-1-yibin.gong@nxp.com>
 <20190610081753.11422-13-yibin.gong@nxp.com>
 <20190717064204.GA3738@dragon>
 <VE1PR04MB663894FA5BC88B130C70AC0789C70@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB663894FA5BC88B130C70AC0789C70@VE1PR04MB6638.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_174927_206621_19B55504 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 09:39:38AM +0000, Robin Gong wrote:
> On 2019-7-17 at 14:42 Shawn Guo <shawnguo@kernel.org> wrote:
> > On Mon, Jun 10, 2019 at 04:17:50PM +0800, yibin.gong@nxp.com wrote:
> > > From: Robin Gong <yibin.gong@nxp.com>
> > >
> > > Add dma support on ecspi.
> > >
> > > Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> > 
> > Applied, thanks.
> Thanks Shawn, but how about other dts patches such as 01/15,02/15?

I need the authors of the commits being reverted agree on the reverting.

  Sean Nyekjaer <sean.nyekjaer@prevas.dk>
  Sascha Hauer <s.hauer@pengutronix.de>

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
