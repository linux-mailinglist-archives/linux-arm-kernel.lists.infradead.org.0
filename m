Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CD9158092
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T6bugG8TzIE674xNBkimSKsog42rQ6MgzjkGASfdasA=; b=mOf9D5JzI2VwL5
	sN0xV8PvfE2ighBf1UZwUnCyro1i3fP8w2MMck3AVN7uRY/+/fD4nW8bV+kif9iC2BiQGu1vkl2gP
	YeqNqtoyFX5FaLEVl6WR6OBMAmAD1Fb7GrVI1V6PzLkGfSfICkfDkN/lubHJy+agSeN9bMyQ4lqQ4
	/JB9oIgDjQ+XUt0u5gp8KQUDq5Ip5A48HXoU/IvK2Qlc9jNA0K40gncvhT0+FqJhwVO3Lds/Oefci
	Qk2EG3Sh7UMP2xFB1ADmR78SnVdmN+d70vfXhMa4UhL622blvG20V9Hvu/YHkJOBdD9vpjGC/GahA
	hPmWHgWJMjZYGCGC6KXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CXU-0001mX-SL; Mon, 10 Feb 2020 17:08:04 +0000
Received: from mailoutvs30.siol.net ([185.57.226.221] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CWm-00013z-KM
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:07:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 12934521B5F;
 Mon, 10 Feb 2020 18:07:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id xnyPHZsLLLki; Mon, 10 Feb 2020 18:07:09 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B727E521AFF;
 Mon, 10 Feb 2020 18:07:09 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 03CA2521467;
 Mon, 10 Feb 2020 18:07:04 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 0/5] arm64: dts: allwinner: a64: Enable deinterlace core
Date: Mon, 10 Feb 2020 18:06:51 +0100
Message-Id: <20200210170656.82265-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090720_872774_729CA599 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.221 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner A64 contains deinterlace core, compatible to the one found in
H3. It can be used in combination with VPU to playback interlaced videos.

Please take a look.

Best regards,
Jernej

Changes from v1:
- use number instead of macro in patch 3

Jernej Skrabec (5):
  dt-bindings: interconnect: sunxi: Add A64 MBUS compatible
  clk: sunxi-ng: a64: Export MBUS clock
  arm64: dts: allwinner: a64: Add MBUS controller node
  media: dt-bindings: media: Add Allwinner A64 deinterlace compatible
  arm64: dts: allwinner: a64: Add deinterlace core node

 .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml   |  1 +
 .../media/allwinner,sun8i-h3-deinterlace.yaml |  6 ++++-
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 22 +++++++++++++++++++
 drivers/clk/sunxi-ng/ccu-sun50i-a64.h         |  4 ----
 include/dt-bindings/clock/sun50i-a64-ccu.h    |  2 +-
 5 files changed, 29 insertions(+), 6 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
