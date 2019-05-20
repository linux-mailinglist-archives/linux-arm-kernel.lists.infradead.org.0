Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB9C23C8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8nih3Be183l1syn5iyuC2pVaX3BpqyGOIW0fK1zGTdg=; b=nDK8n+rI5CzmaI
	/yXGOvgLWvIK03YbKqr+bMdfkqvx9wlHEehBiPr160AxM2wCUnCHon7MoFdlzIg3V0++r3j6BuUgx
	Tu6uTINaGjZqu4tdAlRXUeVo3kgBqTRbn2cC4AGZ/+DZqAjRTuH9zFGQESUzkwe4unzTuX2nr/CD9
	99qrZ0X3oKpsHeubswVbXhaX3gobSK1LNyOJhgEubYX+ZHG+vKPPOqSuZvYwG5/4vEOEs2Ico3i8W
	ZCLDW0SWdM+4/PQhz43TStaJye8vSwt/zmA+JsD3dmIz8wfE1cLn5JBQDxRZRAB3EobqRCzF7pDMl
	P9uYUUnlAGRuAW/ivEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkZp-0001si-63; Mon, 20 May 2019 15:51:49 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkZi-0001sO-Ga
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:51:44 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6EBF0E0015;
 Mon, 20 May 2019 15:51:28 +0000 (UTC)
Date: Mon, 20 May 2019 17:51:27 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Device Tree nodes ending with -supply
Message-ID: <20190520155127.cdc6dofoqckwsrrb@flea>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_085142_701951_56D737F0 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

I've noticed that you recently added support to validate the *-supply
properties in the dt-schema tools.

However, we have a family of PMIC that are exposing a bunch of power
supplies (battery, AC, USB, etc) to know what is currently powering
the board.

All these various supplies are exposed as children nodes of the PMIC
itself, and they are named *-power-supply. For an example, you can
look at:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/axp209.dtsi#n56

Now, those are obviously not properties, and yet the current dt-schema
schemas are trying to validate them.

I'm not really sure how to fix that. Changing the node names seems
like an obvious solution, but they seem to be what they should be. Can
we reduce the scope of the validation to only match properties (ie
arrays?) and not the nodes (objects?)

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
