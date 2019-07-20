Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5016EE96
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YxPQItx9sZXirgAOSftPpWA0wXjgfMDCXWVtgGUSic=; b=HUNLFtZgM1n79K
	OKgZV1IxS+J8NEqcsRZFi/PL5jRPwMmjIIB5bhTuhBLGnZ0DWotvktM8LyUB977hS1GEmF4cF6kqr
	Av7zFEXMEwq3VKh8U2unIKnpvAFWwkoyrXgK5LZnelcL3IeMhsp0W1RO6yOukWOrEKHcvWe5AbhJK
	4tQO4hGXtQb8BSkLxYQjSE64uFKZayghqtDXRtsvj5gVcFZJ47pu1kEBjRBiLXUOXn8Jdoteschbd
	NR8ZCogGHXXBH4HvCtAKZZTtmqNma/0JV/csARl4Ko0/0Reus4H/kDA2VkqvhJ4bAd/+ALdIAp1ke
	lRBm9RXb81CToAlE4o7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holYU-0002aO-R3; Sat, 20 Jul 2019 09:21:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holXy-0002aE-9c
 for linux-arm-kernel@bombadil.infradead.org; Sat, 20 Jul 2019 09:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o01ocxTRJY6PBUNKPa9xXqxhrGkhQNqd+oVOzJDAapM=; b=vrpGsm0sCDA8vi+zalkkSznv9
 Fs70x/QtFHtt80uLJgDXub7AiAhkKTCm5iUCJovCZDUnEhSnDZm98DRUEghM7vMyTcSNE6hIVAHNF
 BIZilugHgVsOL4fLcUIc1VNuqT2AbhzRrFoaHiltNhggaZ85pA1wizUNbq/BngpC7h/BNnOdNN0lY
 Ao2lc7RdLCS8rXH+EbVsK2yhzpq5zCePhp00+voc1voFotOlZorZIg8R/LVZl2iahAAQcXvtEGBV3
 xT+GdRTW5KlOhIIzlDXbOlGq2aZYuJLQ+ucvSUsjezLOgb0t++IV84mQpVLv2KoIsroq6kuKfcAdo
 xjc1Fa9Mw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holXu-0000V9-Pt
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:20:52 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B01CFFF804;
 Sat, 20 Jul 2019 09:20:16 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:20:16 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 1/8] pinctrl: sunxi: v3s: introduce support for V3
Message-ID: <20190720092016.bue2d7lhflrpmcg4@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-2-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713034634.44585-2-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 13, 2019 at 11:46:27AM +0800, Icenowy Zheng wrote:
> Introduce the GPIO pins that is only available on V3 (not on V3s) to the
> V3s pinctrl driver.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
