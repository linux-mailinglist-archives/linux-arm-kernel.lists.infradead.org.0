Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598FAA3F70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 23:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQFeBvCATufx0ga4KUPt/j/GCpMX136MxcX9FjMZ+I8=; b=anqF/5XhI9h/MV
	u/7BIwSMiGpWfXQVrKVxB+zXtV1Ku9+nm81SvVTQRuluqKTw0W0HuvUTEWdrSBBm+DJwnXzWoTGqz
	d+72d/J++3dl343tCA/wG+zzZtYglKnKIZccGn/pxnE8JiJLFhecbD/ixWeQF2LqWoJaVZRdey4sJ
	28G6MHuQnfPkiNuDwu1qKUEe3iJcwoPeKu3QAGUPvTkB2SwC+wXWwTuDl3/IW6wz3fjW7qMVIag2W
	NpX/3z1lQIkYanDEbXlcH9FJ+Ur5ifhcsyj9GJYGK5l7LkaQNXfo/YBOBT4+VdA6Q56pEZX0uStN3
	xFwYNgyCB+dmX9MmvVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3o7K-0004my-N8; Fri, 30 Aug 2019 21:07:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o6q-0004Z5-MX
 for linux-arm-kernel@bombadil.infradead.org; Fri, 30 Aug 2019 21:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ntb+/Y9y8ui3RyyTLw4sByVxYzjIYUCqTLU/A0O+2Aw=; b=hpnwZInyd04mgsi9Ab0nEufOhM
 vJUQNE+osySXb6ksbJmkfFGRVvamExP/QT066Bj/LVa2xEO4K7yE41MM31Ow8DDm+u22kOGGjworW
 mdH55letggAXANgDnCQ5a6+CNUA4tcjTbTHa7JuVw7jI4uXiXoxwyjd+wYHq6Aq50tn6+Chsi5/nB
 BMtv9xahYoWushZ4mgp3qnfgcg23pMOE0kA0pK6xMNwurHBGRlAXTaZkuxObDvnl2PQvXXhW4/sAA
 8ZexOclsCju/TehXVZIhl3DSQp7sSZCK6g/CCGjNm11PE4zYfD7+OOGiZUzhjK8IgrjGXUyEFFsmb
 AzA36XXA==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o6o-0001F3-77
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 21:07:03 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6B0BF100005;
 Fri, 30 Aug 2019 21:06:17 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 3/3] MAINTAINERS: Add an entry for the Xilinx logicPD-I2S block
Date: Fri, 30 Aug 2019 23:06:07 +0200
Message-Id: <20190830210607.22644-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830210607.22644-1-miquel.raynal@bootlin.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Michal Simek <michal.simek@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, alexandre@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reference the driver and and the bindings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5bf8f340e6a8..382c33a1adef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17136,6 +17136,12 @@ L:	linux-serial@vger.kernel.org
 S:	Maintained
 F:	drivers/tty/serial/uartlite.c
 
+XILINX LOGICPD I2S SOUND DRIVER
+M:	Miquel Raynal <miquel.raynal@bootlin.com>
+S:	Maintained
+F:	sound/soc/xilinx/xlnx-logicpd-i2s.c
+F:	Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
+
 XILINX VIDEO IP CORES
 M:	Hyun Kwon <hyun.kwon@xilinx.com>
 M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
