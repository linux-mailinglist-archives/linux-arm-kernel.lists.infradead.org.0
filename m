Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408E3184BF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnkD50mzRNP1KpREigq0ESFw720GIT1ViHq4imELlHc=; b=L4nrYKFIyvw0Im
	mo7e1Lbmb4VLJpkW9pGD757RiCck2i8hmS6KaNXH2ImsBEB00H2E2ta49dhzfcEpUd7nbZzy6iYhh
	ZRLlxr3KJ5FzFhZoTmZHP8U+3Jz+47sax9yuktax1EgMbaha8HyxJnvUP88LU0OOhSNZLC3eZakYE
	XImdEhWJFx7zVsLk+5Q7yXGg+fTKQXySQzopvlkCns8LWGpPd/3p+P8zVjxSuUlraDRpsjG3kan4k
	2GO1dueloFeO7dHP0Wj/eEdXmA5ofYrGdCKOcwafcBFIFHCgsmytyILap8S1T6eh2BP81S4m2/8CB
	xrvmNHnhEkNcnsp8E6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmll-0000d9-Pn; Fri, 13 Mar 2020 16:02:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmfL-0001lb-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:56:05 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jCmf7-00012X-Sk; Fri, 13 Mar 2020 16:55:49 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jCmf6-00054P-27; Fri, 13 Mar 2020 16:55:48 +0100
Message-ID: <3aedf6357f321efaf1d59a0b654300803ad51cef.camel@pengutronix.de>
Subject: Re: [RFC 10/11] reset: imx: Add audiomix reset controller support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Abel Vesa <abel.vesa@nxp.com>
Date: Fri, 13 Mar 2020 16:55:47 +0100
In-Reply-To: <20200313141606.euumtuizm562zghv@fsr-ub1664-175>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-11-git-send-email-abel.vesa@nxp.com>
 <ac6eb54c01cce4ec52560ac622e024ab47f2136c.camel@pengutronix.de>
 <20200313141606.euumtuizm562zghv@fsr-ub1664-175>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_085603_237888_52184A5D 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-13 at 16:16 +0200, Abel Vesa wrote:
[...]
> > > +	if (assert) {
> > > +		pm_runtime_get_sync(rcdev->dev);
> > 
> > This seems wrong. Why is the runtime PM reference count incremented when
> > a reset is asserted ...
> 
> The audiomix IP has its own power domain. 

The reset controller does not control the power domain for its
consumers. The consumer of this reset should implement runtime PM.

> The way I see it, when the last deassert is done, there is no point
> in keeping the audiomix on. So, unless the clock controller part of it does it,
> the audiomix will be powered down.

You mean when the last assert is done? Presumably the driver wants to
use the hardware after deasserting the reset and asserts the reset when
it is done.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
