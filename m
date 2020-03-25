Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8F3191EEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEDm6mVxwtsGRXACDWvqb+Fd3WDsaCCerVAV951l5V0=; b=a9OktkKhAsMof5
	3bUYxt6X+wLZFqS+6PFJQyjG7xDUxVlvjk3r6UX6HFLteIgNZv2VCWcqFOPd85JOOmCWjoEx5nsaM
	Uvecjk/pmjJeSBrLJTeBIGshTCKYJqPQn3lTh5MkaTq1SkJLLFS+ZI6ggBYpQVFRH1dJLACd1eDL2
	obg9+vUan3kzy+Trww43JE+aGD3KpUIKZLapmftFhXZzUhzHMltICfyocBgglIVKs8eYzHxV6O+PY
	hL9McSW8OkTgGZKs7UbYNtpIXe1/Oyml37JIuxWSrYBmE2FBJXOSnSBeFxnQgmfX8zmprCmw3/i+C
	CH/LZMyvMY+muQMlA8bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGveu-0007sj-TA; Wed, 25 Mar 2020 02:20:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvel-0007rs-UM; Wed, 25 Mar 2020 02:20:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 040492072E;
 Wed, 25 Mar 2020 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585102834;
 bh=+57wLOzdrvfVY9oRgwlinhOdDYxWS98Ii68KfvWZAeE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=HRLni0JDRk8bdJjwHaSbs4cTHqNClt8LAi7FFXx302v+o3W/j6lDNZbtadQwzVKhe
 +1Nx7xlZ5T6dMRFDuTY5OXv5qoC3XAIvnKBrV61LtGEX4YrRuFvAnwnO4VPjSK9cAw
 6p4BBy3OkERRlTAanuh1/I0EtpqXul9kXHfexaNg=
MIME-Version: 1.0
In-Reply-To: <20200323105616.kiwcyxxcb7eqqfsc@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <6dd6bd48e894c1e8ee85c29a30ba1b18041d83c4.1582533919.git-series.maxime@cerno.tech>
 <158406125965.149997.13919203635322854760@swboyd.mtv.corp.google.com>
 <20200323105616.kiwcyxxcb7eqqfsc@gilmour.lan>
Subject: Re: [PATCH 27/89] clk: bcm: Add BCM2711 DVP driver
From: Stephen Boyd <sboyd@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Date: Tue, 24 Mar 2020 19:20:33 -0700
Message-ID: <158510283320.125146.11874786046657431725@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_192036_000791_A34E1E47 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-03-23 03:56:16)
> Hi Stephen,
> 
> On Thu, Mar 12, 2020 at 06:00:59PM -0700, Stephen Boyd wrote:
> > > +       dvp->clks[1] = clk_register_gate(&pdev->dev, "hdmi1-108MHz",
> > > +                                        parent, CLK_IS_CRITICAL,
> > > +                                        base + DVP_HT_RPI_MISC_CONFIG, 4,
> > > +                                        CLK_GATE_SET_TO_DISABLE, &dvp->reset.lock);
> >
> > Can we use clk_hw APIs, document why CLK_IS_CRITICAL, and use something
> > like clk_hw_register_gate_parent_data() so that we don't have to use
> > of_clk_get_parent_name() above?
> 
> That function is new to me, and I'm not sure how I'm supposed to use it?
> 
> It looks like clk_hw_register_gate, clk_hw_register_gate_parent_hw and
> clk_hw_register_gate_parent_data all call __clk_hw_register_gate with
> the same arguments, each expecting the parent_name, so they look
> equivalent?
> 
> It looks like the original intent was to have the parent name, clk_hw
> or clk_parent_data as argument, but the macro itself was copy pasted
> without changing the arguments it's calling __clk_hw_register_gate
> with?
> 

Yeah! It looks like nobody has tried to use it yet so you've come across
that problem where nobody reviews things and I just merge it anyway.
I'll send a fix shortly.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
