Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161D60702
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0lIlSUMsNPJg60OM4XGYIjLfOGWYiEU48aXrAqscNBI=; b=l0qPuRKML/7NZJ
	Ibht66AGn/JFvJ4BAgU932j60RUAW+rFdSeLe15iWL57MeEynzgjDILKU+xkg7WAXrEFSJQ9rRFYa
	YSD6vhmidk6j6oCl01qWn/WhekP4iefyQrYU8fwBlztkYbspkl4ULoycko6ml2NSoahihaT9YhzJv
	P1QiH73oZMsCI6faAR5kDFXoNU6Wga46feC46HaBVZo7p6kHFaCLC2AtWH9O27g11A+jfO+LNUhln
	ACV3Qp1RyoiokZxWSfmrksCtsyGHfNSyrYJ0gwGSaZcF6tnknpvjFqt9KAXY9yDdLj+HNN6/Q/2zm
	/3Mm7tKBIAlm84kACx3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOk5-0001nI-3q; Fri, 05 Jul 2019 13:59:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN2m-0004oo-MS
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 12:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bi3Ep1nPCGGfL8TJSg1AOh7r2TzizZiJ3EiAm7+qDeg=; b=bzUj3JBOUP1wNy9l9/4Mj2qK8d
 UGaCENVzrpVFzlKhLsJwFlUVLBdvBhXllreGP2es/0jPFW61WT3ctZZA/xVC/mVDu478yvESiq0hY
 H9vrakT5d44DhbztjB4+sEnVfgEudKRFq7Y0P5GRUPyGz+xV63DUfApto8A0CjDkD77yL1nIgkXJL
 fFPMI8+qxzF47d9WglfJaI6+e4EsobHzUQHsSFGooXZSIVR8Yf7xb7Nb7s8todI3prM6PHWdlaiGs
 xB9ghpuFOgWGzMHREx4iOiobnl7GWA8NokIOg6CuFk+EYaUo1vws/vCEbGfqhCooQ8D+YdpuLJ+xU
 iD97Fa5Q==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN2V-0001WA-16
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:10:08 +0000
Received: from mc-bl-xps13.lan (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id DF277200005;
 Fri,  5 Jul 2019 12:09:10 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 0/2] net: mvpp2: Add classification based on the
 ETHER flow
Date: Fri,  5 Jul 2019 14:09:11 +0200
Message-Id: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

This series adds support for classification of the ETHER flow in the
mvpp2 driver.

The first patch allows detecting when a user specifies a flow_type that
isn't supported by the driver, while the second adds support for this
flow_type by adding the mapping between the ETHER_FLOW enum value and
the relevant classifier flow entries.

Thanks,

Maxime

Maxime Chevallier (2):
  net: mvpp2: cls: Report an error for unsupported flow types
  net: mvpp2: cls: Add support for ETHER_FLOW

 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 6 ++++++
 1 file changed, 6 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
