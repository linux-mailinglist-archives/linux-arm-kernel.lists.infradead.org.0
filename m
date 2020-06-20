Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51AB201EF9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLuNUxIgVSqNof4LHWJ3Xn1/+xctsn2Bh6AXp3bPqiw=; b=pZz+T3dtCGODhj
	n2UHYCPiDQgeEkQPomWVY2FLrrzgm4vE+Gc3r9IvZSsbiGpfO+w1YIROmFtthNODKUffOen7m/mZa
	Bf1ayc1X57DshsedxPUB/utlrJZYpDXW9HjB6tAHjIE5ojCu43RCDF2ImqoXBh/C+JQ50+owfCFKp
	NtLXFbV9qKApHLUTdR0qyB4diB+j5wHtTrh9XWwpIPxj5bmB7RJ4vDVL09J43Ey2tmWKMefImwKUK
	K/3Gw+ifT8AuIRQ9ePAkM/h08xU2HWvmF/sjBGu6ri3S1vXtTwXQgIndx7a+5mboI2H1gaRvDSUnG
	iBEtz/GvWwyiPE39T6TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmR5X-0006lL-Ii; Sat, 20 Jun 2020 00:10:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmR5O-0006kx-7U; Sat, 20 Jun 2020 00:10:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8A39206D7;
 Sat, 20 Jun 2020 00:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611817;
 bh=MF0hLepUxwBvinfeJBBZlK/ffPc/P/vgm80eyJnR3Mc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=iG7e6an+YvnjNJmyHNIli0/AmGc5US2MgFC90/8ERuXkVKM6WUw4hu2LlbsDbn5YU
 MMvEVykmCPAEMwJ+IB5w+XRMokffYIq8tAzOFJ+LuK0Uj9dscWOzY6vJBtSSfpl7IV
 ScfMtsNpm2ChReedBjA03Bl2NPxHGI7qcpD9KUfM=
MIME-Version: 1.0
In-Reply-To: <706f56a20d318b841792ca19a6fe7135cb6c61e3.camel@pengutronix.de>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <e22222ca7f41b960e9bb1a31e0dd2de95b8c0cd1.1591867332.git-series.maxime@cerno.tech>
 <810816166d8ef554e1bb1f4a2b39ea0b8a1a3d5b.camel@suse.de>
 <20200616121641.jpoz237p43sbndg2@gilmour.lan>
 <706f56a20d318b841792ca19a6fe7135cb6c61e3.camel@pengutronix.de>
Subject: Re: [PATCH v4 3/3] ARM: dts: bcm2711: Add HDMI DVP
From: Stephen Boyd <sboyd@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 19 Jun 2020 17:10:17 -0700
Message-ID: <159261181702.62212.6185371789718045244@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_171018_290043_2C53028A 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Mike Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Philipp Zabel (2020-06-16 05:56:55)
> Hi Maxime,
> 
> On Tue, 2020-06-16 at 14:16 +0200, Maxime Ripard wrote:
> > Hi Nicolas,
> > 
> > On Mon, Jun 15, 2020 at 06:26:19PM +0200, Nicolas Saenz Julienne wrote:
> > > On Thu, 2020-06-11 at 11:23 +0200, Maxime Ripard wrote:
> > > > Now that we have a driver for the DVP, let's add its DT node.
> > > > 
> > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > ---
> > > 
> > > I can take this patch, but I guess the rest should go trough the clock tree.
> > > Is it OK with you?
> > 
> > We have a build dependency on the reset framework for that driver, so it
> > should rather go through the reset tree (or Philipp should make an
> > immutable branch that the clk maintainers can merge).
> 
> I've prepared an immutable branch that these patches could be based on
> and that could be merged into the clk tree:
> 
> The following changes since commit b3a9e3b9622ae10064826dccb4f7a52bd88c7407:
> 
>   Linux 5.8-rc1 (2020-06-14 12:45:04 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.pengutronix.de/git/pza/linux reset/simple
> 
> for you to fetch changes up to a9701376ed0fb61a5be4bb438daf26bd9cfa24b5:
> 
>   reset: simple: Add reset callback (2020-06-16 14:19:57 +0200)
> 

Thanks. I've pulled it into clk-next.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
