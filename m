Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE3E183E34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PH9qsQbZXE/VSIEW8E0+dsnmzYZ9PtyDQBx7RtuPyc4=; b=RMub8w84+y89zC
	Rdc73ClC63Mj9VVL6fLp1VVTFxRmZyyWTLgqeLbHL7zCpEiHTliG33lLjxRHdDK0/Oo19JXCO8XBm
	bC7qBf/nrMrkdQhjEdr889U2a43/e4YV+LCNIg2DxdwPWRimRpxfmwdunJr9lcxHUIz5BJ4Z5Dn/M
	9ExDrLPQTt/nnI4X39rbI8mX6Mo+wrekiTpkq378Y871Ef/G0ogtXHQGk8CgOwbPSXGCpXHM849Te
	dkRyWlF4p163gzZmCF1YPdDhIQSYCK5FdYYpQbLmmL33KN39qO4RXE9wgHBExpSoxS5JOpf6Rjt1H
	WnVy2gy8FKw8smVEFJ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYjL-00013R-9g; Fri, 13 Mar 2020 01:03:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYhz-00009S-66; Fri, 13 Mar 2020 01:01:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54B3220637;
 Fri, 13 Mar 2020 01:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584061310;
 bh=x5AeLJyWyoIGFX+5Aa87kt9hQBBmnyGXbQ3/T3AqMkQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=W9pRQZvOYY6JUPfum0Gaehu89VEbg3YArAi7o1G9YMddG1IH8VX4dSmBjuQz0WpDi
 MFHtvxjrx/LmGY9yOgvy2Nc+JfNT48HMz2UEZ725Ql2oWw2oOeGqGCekvIqILo+O/J
 07nTyLQzg7Tx/jiayemVhFKQGpPmXxGjUYbdH6aA=
MIME-Version: 1.0
In-Reply-To: <6a1fc860262ecec585cbe8ff268318a0783f3296.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <6a1fc860262ecec585cbe8ff268318a0783f3296.1582533919.git-series.maxime@cerno.tech>
Subject: Re: [PATCH 20/89] clk: bcm: rpi: Make the PLLB registration function
 return a clk_hw
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Thu, 12 Mar 2020 18:01:49 -0700
Message-ID: <158406130956.149997.16470857788374770112@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_180151_263160_FB916F77 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-02-24 01:06:22)
> The raspberrypi_register_pllb has been returning an integer so far to
> notify whether the functions has exited successfully or not.
> 
> However, the OF provider functions in the clock framework require access to
> the clk_hw structure so that we can expose those clocks to device tree
> consumers.
> 
> Since we'll want that for the future clocks, let's return a clk_hw pointer
> instead of the return code.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
