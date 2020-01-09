Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ADD1362C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 22:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2J/ZNu9h6QcAWaRKW8EYkHy2IUoHwp4ruaUIA0xB9g=; b=OkjOosMMxhe3bU
	INfyqVEC94zIHCoGVt+T4y7WMNtAzJICJehYY4p3tjdc9EiQZ1RNKyI40cTWBVYGLMJG4AoPJzL0M
	SqihH+TQ8xv5e3DYNMfFyZckZTfltG46VtoxIPppHqgeMhsQQnl9UslKvKB5mh9UzPAOv+OruwOiC
	oSY5DfaGTG/qS2sIDwtGkWKZ87X4AL2X1h7RzadGLn55K1cG1tndyBejqj6VZjkxxOQh1pLi5ZWRX
	kqdVM9nrLtTHxTwSNi5UsnLD5YvTeM0LGk1FSnxNqfLB5mXlccEbDzuI/xACm8QqXSR/EMETXHP9a
	Dm242kN5k6kBbK9zBgPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfYt-0006lo-0Q; Thu, 09 Jan 2020 21:41:51 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfYi-0006lP-87
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 21:41:42 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B26101C0003;
 Thu,  9 Jan 2020 21:41:29 +0000 (UTC)
Date: Thu, 9 Jan 2020 22:41:28 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: add sama5d3 pmc driver
Message-ID: <20200109214128.GB1027187@piout.net>
References: <20191229202907.335931-1-alexandre.belloni@bootlin.com>
 <20200106030905.8643221582@mail.kernel.org>
 <20200108110218.GT3040@piout.net>
 <20200109181910.59B2B206ED@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109181910.59B2B206ED@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_134140_430738_9F1D4452 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/01/2020 10:19:09-0800, Stephen Boyd wrote:
> Quoting Alexandre Belloni (2020-01-08 03:02:18)
> > On 05/01/2020 19:09:04-0800, Stephen Boyd wrote:
> > > > +       return;
> > > > +
> > > > +err_free:
> > > > +       pmc_data_free(sama5d3_pmc);
> > > > +}
> > > > +CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
> > > 
> > > Any reason this can't be a platform driver?
> > > 
> > 
> > As for the other PMC driver, we need a few of the peripheral clocks very
> > early which means that we would have to register most of the clock tree
> > registered early leaving only a few clocks to be registered by a
> > platform driver.
> > 
> 
> What peripheral clks? Can you add a comment to the code?
> 

The TCB is used as the clocksource so its clock is needed. Its parent is
the master clock which has UTMI, PLLA, the mainclock and the slow clock
as parents so by that point, most of the tree is registered.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
