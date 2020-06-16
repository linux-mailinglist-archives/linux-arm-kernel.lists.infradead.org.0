Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32ACA1FB149
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN4y07EY5S/S0j0P+6ONU/NN2olAumCxi9Sme+mvFqQ=; b=X9ObS/lIApucR1
	lFAhNg0BYWbCkISGc+u3LsiTJBYtMUF7AHq+vQ+/hmZcLjfBMlXsU5hCxsycXQxZw7fudnxO5/EIL
	1jAyi2DA6WbHY63iBwqCTmMjWqPpCHihqIwWq02dV5vOH0mxpQw2OQ6khvVlom+eYal5Gv7+dDYs4
	tLBD2a7WrFN6fZqMZGrrweDRwg9LiBIuQCBQXI0OekIWFPyKk9+mmquNktISyG0sS9CCLuGK0lhPn
	hr919zZSoxoP0rRFBY5uWvtSdfI8EZG4FHJZd0afGv6rb7PMuAVAGGsGdxsSkTMtrzFCtPmiu8ECd
	5YpTne4qztfHAacveeCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlB9N-0004zw-IB; Tue, 16 Jun 2020 12:57:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlB9D-0004yI-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:57:05 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlB96-0007Oj-Of; Tue, 16 Jun 2020 14:56:56 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlB95-0004yK-DX; Tue, 16 Jun 2020 14:56:55 +0200
Message-ID: <706f56a20d318b841792ca19a6fe7135cb6c61e3.camel@pengutronix.de>
Subject: Re: [PATCH v4 3/3] ARM: dts: bcm2711: Add HDMI DVP
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Maxime Ripard <maxime@cerno.tech>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>
Date: Tue, 16 Jun 2020 14:56:55 +0200
In-Reply-To: <20200616121641.jpoz237p43sbndg2@gilmour.lan>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
 <810816166d8ef554e1bb1f4a2b39ea0b8a1a3d5b.camel@suse.de>
 <20200616121641.jpoz237p43sbndg2@gilmour.lan>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_055703_937507_5AEBAB25 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, 2020-06-16 at 14:16 +0200, Maxime Ripard wrote:
> Hi Nicolas,
> 
> On Mon, Jun 15, 2020 at 06:26:19PM +0200, Nicolas Saenz Julienne wrote:
> > On Thu, 2020-06-11 at 11:23 +0200, Maxime Ripard wrote:
> > > Now that we have a driver for the DVP, let's add its DT node.
> > > 
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > 
> > I can take this patch, but I guess the rest should go trough the clock tree.
> > Is it OK with you?
> 
> We have a build dependency on the reset framework for that driver, so it
> should rather go through the reset tree (or Philipp should make an
> immutable branch that the clk maintainers can merge).

I've prepared an immutable branch that these patches could be based on
and that could be merged into the clk tree:

The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:

  Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)

are available in the Git repository at:

  git://git.pengutronix.de/git/pza/linux reset/simple

for you to fetch changes up to a9701376ed0fb61a5be4bb438daf26bd9cfa24b5:

  reset: simple: Add reset callback (2020-06-16 14:19:57 +0200)

----------------------------------------------------------------
Maxime Ripard (2):
      reset: Move reset-simple header out of drivers/reset
      reset: simple: Add reset callback

 drivers/reset/reset-simple.c                    | 23 +++++++++++++++++++++--
 drivers/reset/reset-socfpga.c                   |  3 +--
 drivers/reset/reset-sunxi.c                     |  3 +--
 drivers/reset/reset-uniphier-glue.c             |  3 +--
 {drivers => include/linux}/reset/reset-simple.h |  7 +++++++
 5 files changed, 31 insertions(+), 8 deletions(-)
 rename {drivers => include/linux}/reset/reset-simple.h (74%)

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
