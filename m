Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9831F201ED8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 01:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGHF50FyQxkDH/zJF80gcb1BpCvndLToAngZ8n6RpGg=; b=bAn19lPbs5dFCO
	g7Gm5ucbdqS6gDKVd1kbW0pqqujdLgaGHUKO1v/EjJdAhO2ZV/+c4mKskuHxqreC926nfY0LPiyfs
	H8T9HLA8QgmwJ0xGvkwS13Q6qufAS2iYW7ilEf8IV0ILk0b/43uzwPrnHrla/nh7IKOJ3q/lh3+3x
	HZfSpR7B4RMtCB3P8PlN0rqMmAzw4sMAbgHB50y6eEVbXWduBOTW46JVFdVTDFXR06b4L+iBZmzzX
	Rjc/URHQR20fV3i9cyNCG3jQAjruKrRqaq2oHqvUOVp1yGl7erQjTjr3RsodG8sx9iYcQBKjHxvaL
	oeyltBMV9sB0Bs0xazKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQtC-0002sf-QO; Fri, 19 Jun 2020 23:57:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQsu-0002pj-Mv; Fri, 19 Jun 2020 23:57:26 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 419A7224D1;
 Fri, 19 Jun 2020 23:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611044;
 bh=81hRUtcVR11BsydhG8B51A5da+wdAlZkBPJ+MP1X4qw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=RbYwyZVHiVJE4eO4PI9w4EcMOQsiwRP130Altk9bzPm+lzLVhwAxItZq1/KKihsqo
 NYbaKOFUVJIMr1K7/FH6bAAVteNK4m6qZO0uTR362x9JTrSTHSlWvYXXaEQBYvO3fb
 WtDfVAick3Z19m9i4HNnnRXJF3qhkNZfOjfjwbBA=
MIME-Version: 1.0
In-Reply-To: <20200619115255.6pk5xb42b5ol7bk4@gilmour.lan>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
 <159255945796.62212.5838238989498858379@swboyd.mtv.corp.google.com>
 <20200619115255.6pk5xb42b5ol7bk4@gilmour.lan>
Subject: Re: [PATCH v5 00/27] clk: bcm: rpi: Add support for BCM2711 firmware
 clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Date: Fri, 19 Jun 2020 16:57:23 -0700
Message-ID: <159261104359.62212.13637457840164649678@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_165724_772107_F462FD83 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Mike Turquette <mturquette@baylibre.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-06-19 04:52:55)
> Hi Stephen,
> 
> On Fri, Jun 19, 2020 at 02:37:37AM -0700, Stephen Boyd wrote:
> > Quoting Maxime Ripard (2020-06-15 01:40:40)
> > > Hi,
> > > 
> > > Since the whole DRM/HDMI support began to grow fairly big, I've chosen
> > > to split away the two discussions between the firmware clocks and the
> > > HDMI support.
> > > 
> > > Let me know what you think,
> > > Maxime
> > 
> > Do you want this to go through clk tree? Or looking for acks/review
> > tags?
> 
> As far as I understood, you usually apply the bcm patches to the clk
> tree directly, so if you could apply them it would be awesome :)
> 

Ok. Thanks for letting me know.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
