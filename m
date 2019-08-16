Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E34909C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 22:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JlDSeF9ME70Ayf/g+Yc++jVDsLyvooLWvfjQbrgtzsM=; b=WJ8TWVuVIxRS8A
	vB68xYr7v8xMmuWRhPubjoqP/UakPhnUE8BxYogcbXuB0xP/dlnVRacOT40kiiKx+TtCz3FrAkrT7
	DIT1dvBw7Y0eJO2J9sOAGGatpsJzJiSGDSewyfykkQvhkZJDWQ0DbpZUpmbtJieEE3x5tirVgDw/S
	4ZhnngukFlN2EAZl6u9RSmwJHS5q/nlPRWXh7OjxMgg/6MEAyNXZ2OLYjAQeVZETwjuaH4ulkfAx4
	rcuGM6JT4zppzu8BQchL6URW8IQkcTG22GXDfFGsss99jHYQa+fAjYNk0UmAL6XZtyoU9aNT2ebnK
	UWBb/iOumBua+coYKuuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjFY-000101-UX; Fri, 16 Aug 2019 20:55:05 +0000
Received: from mailoutvs19.siol.net ([185.57.226.210] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjF3-0000iL-5S
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 20:54:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E5841522273;
 Fri, 16 Aug 2019 22:54:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id tIZzlFjlx4s0; Fri, 16 Aug 2019 22:54:23 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 99DB152227B;
 Fri, 16 Aug 2019 22:54:23 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 994DD522273;
 Fri, 16 Aug 2019 22:54:20 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, mark.rutland@arm.com, mripard@kernel.org, wens@csie.org
Subject: [PATCH 0/2] Introduce Tanix TX6 box DT
Date: Fri, 16 Aug 2019 22:53:40 +0200
Message-Id: <20190816205342.29552-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_135433_356887_0F2EFC06 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for Tanix TX6 box:
- Allwinner H6 Quad-core 64-bit ARM Cortex-A53
- GPU Mali-T720
- 4GiB DDR3 RAM (3GiB useable)
- 100Mbps EMAC via AC200 EPHY
- Cdtech 47822BS Wifi/BT
- 2x USB 2.0 Host and 1x USB 3.0 Host
- HDMI port
- IR receiver
- 64GiB eMMC
- 5V/2A DC power supply

Patch 1 adds compatible strings to dt bindings documentation.

Patch 2 adds Tanix TX6 DT.

Best regards,
Jernej

Jernej Skrabec (2):
  dt-bindings: arm: sunxi: Add compatible for Tanix TX6 board
  arm64: dts: allwinner: h6: Introduce Tanix TX6 board

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 100 ++++++++++++++++++
 3 files changed, 106 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts

-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
