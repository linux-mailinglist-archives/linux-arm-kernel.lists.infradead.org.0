Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79A45BA89
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O/BynC63/CFLFbRCV6TCv/UiY8XUM5e4DQs+L5rHsE=; b=EeGBKOOIEa407P
	8yXeCj3MI6yM4mQUgCFX34XaAmIkvalQ3wS3vw5Oj4qDLsn3+6wOMGJgdGnvvHW2/0yuTfN0T7Ijn
	lyak5ruV5t/pgagmJYXMo410lCPnsYVsLkAouG/uSbr0BBzriwiVABKMcSb/amnFBCf8jEF0SoP5Z
	vd9qkFsWXUtSJBtE8WlGk7eH1XjKXAb4brh7BE5J/BeFinxIpPnBimS7n4C1zhU9vttdiG3nh0jGM
	vF4CnDT3KOoX+DfXxCV27Xvz+rfD4H2HuhJzU+pege/6FHLis0WY+615nS4MJuR/kk7ANjdjyrTNy
	Ew+PoytxgeUzdLnq+SgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuQT-000505-R8; Mon, 01 Jul 2019 11:24:49 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuQM-0004zS-Ib
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:24:44 +0000
X-Originating-IP: 86.250.200.211
Received: from bootlin.com (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 434A124000D;
 Mon,  1 Jul 2019 11:24:28 +0000 (UTC)
Date: Mon, 1 Jul 2019 13:24:39 +0200
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] driver core: platform: Allow using a dedicated dma_mask
 for platform_device
Message-ID: <20190701132340.21123dee@bootlin.com>
In-Reply-To: <20190628155946.GA16956@infradead.org>
References: <20190628141550.22938-1-maxime.chevallier@bootlin.com>
 <20190628155946.GA16956@infradead.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_042442_765018_C0E2AF07 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 nadavh@marvell.com, brian.brooks@linaro.org, Rob Herring <robh+dt@kernel.org>,
 thomas.petazzoni@bootlin.com, Russell King <rmk+kernel@armlinux.org.uk>,
 stefanc@marvell.com, Frank Rowand <frowand.list@gmail.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Fri, 28 Jun 2019 08:59:46 -0700
Christoph Hellwig <hch@infradead.org> wrote:

>I'd much rather bite the bullet and make dev->dma_mask a scalar
>instead of a pointer.  The pointer causes way to much boiler plate code,
>and the semantics are way to subtile.

I agree that this the real solution, it just seemed a bit overwhelming
to me. I'll be happy to help with this though, now that you took a big
first step.

> Below is a POV patch that
>compiles and boots with my usual x86 test config, and at least compiles
>with the arm and pmac32 defconfigs.  It probably breaks just about
>everything else, but should give us an idea what is involve in the
>switch:

I'll test that on my boards too.

Thanks,

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
