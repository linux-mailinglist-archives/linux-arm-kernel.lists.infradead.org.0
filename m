Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1D61B88A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 20:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmdvTsii9tjMapfnErKyBAASYWHrg013CXivQYi1V9g=; b=WObTvIIOluv5n4
	wiYFRWkAY1GGvjvBvPBC+V4FHFItAdnjgpBA83vKVJGlpSswWzgsw4WuFZOwNs0B+dF/GLaCZjnEJ
	iRKBseJIv/oBz9qWIYwsjiUycu4IBD+mdIgP7l+6gqmYign5qi3+fS0TUe7LO+zH5Hf3XhrJ+S/dk
	8i9qe+MHG0IFo6wlg8Q391vhhMwC6ADoKSuwbFx+BR8yESY7Bp3xLcSjm+2YNzPlJX8qyp5D4msMB
	Y/uAAuxgAALpQrMtc3WZdGkk+L5CstpVIRBSFW2rHX1G7HIoMIKuuf7NnQ4XX9tJsXs2h3XzYWu70
	XiDGsCg4uo3PLz0oKiig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQ0H-0004DE-P2; Sat, 25 Apr 2020 18:58:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQ09-0004CT-Le
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 18:58:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 863462072B;
 Sat, 25 Apr 2020 18:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587841088;
 bh=OrejcTyColI11tpT5gLLI0xOzjpNqJamv2Urc8ISA0Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=s0xW/nPX16nn5BIZqlbKKDKuWODSLlrduyYnk1HEfKjrsw2sGeK9lA2oSUAAkwcAd
 8g8E5NIEp8D7rxmgam6Z3PNhR1TAIql4eGiYfRn01y0ioM8PvZ134LBc6ZK+SHO+4T
 xMOB4jo6VJxqLqXEc/oBWOfrrYpxwJ4ZsitsRxZs=
MIME-Version: 1.0
In-Reply-To: <20200417165519.4979-4-tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
 <20200417165519.4979-4-tony@atomide.com>
Subject: Re: [PATCH 03/14] clk: ti: dm816: enable sysclk6_ck on init
From: Stephen Boyd <sboyd@kernel.org>
To: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org
Date: Sat, 25 Apr 2020 11:58:07 -0700
Message-ID: <158784108777.117437.10492433263175338880@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_115809_728592_22D4131A 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Andreas Kemnade <andreas@kemnade.info>,
 Keerthy <j-keerthy@ti.com>, Thomas Gleixner <tglx@linutronix.de>,
 Adam Ford <aford173@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Tony Lindgren (2020-04-17 09:55:08)
> We need sysclk6_ck enabled early as it is needed by l4_ls and system
> timers early on boot. This removes the dependency of system timers to
> the interconnect related code that can be then probed later on when
> suitable at module_init time.
> 
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Tero Kristo <t-kristo@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
