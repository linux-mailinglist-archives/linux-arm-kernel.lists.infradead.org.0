Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC3D187CE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRju1O56s/hbFlmHgORdPicDcjg39uYR/HMgww+nUfk=; b=exzkT3jkJvsRlX
	xFooO47uuQRoOS8G3qWp2RFEVHCjKrUwMNABL7J2zppqk/dcmiA426Weg9zyD/snjtSJGhi0pfyRZ
	v5Yd7I4chYaWe3YLgeKnrvBNZ1LZf1Mb4rE5u0hhUzep/nel7SAahlWL1BvA67eX++Qq0vj9pLCo3
	3fcC+WA3syhn3u4UcTapYp8BDLHHqCQORL34smdjfgfSIoA6uWnrABTLtW/RjK9xNL/yCskZUQzNI
	n51wDKQ5lbvaT/Nhq4xBJI1m1SLdsYHOqryw5ta6Xn0DhbIlFFfln8iPLKIDdVIOn4n23VgjDqp70
	xu9nBL0SVocUKJa/g7jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8jT-0006Fh-CQ; Tue, 17 Mar 2020 09:41:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8j1-00062Y-Aj
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 09:41:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jE8ix-0004QB-2O; Tue, 17 Mar 2020 10:41:23 +0100
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jE8iw-00049Z-GV; Tue, 17 Mar 2020 10:41:22 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 6/6] soc: xilinx: vcu: add missing register NUM_CORE
Date: Tue, 17 Mar 2020 10:41:15 +0100
Message-Id: <20200317094115.15896-7-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200317094115.15896-1-m.tretter@pengutronix.de>
References: <20200317094115.15896-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_024127_390237_7336F7FF 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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
Cc: Dhaval Shah <dshah@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Michael Tretter <m.tretter@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H.264/H.265 Video Codec Unit v1.2 documentation describes this
register as follows:

	Number of encoders core used for the provided configuration

This is required for configuring the VCU encoder buffer.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/linux/mfd/syscon/xlnx-vcu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mfd/syscon/xlnx-vcu.h b/include/linux/mfd/syscon/xlnx-vcu.h
index d3edec4b7b1d..ff7bc3656f6e 100644
--- a/include/linux/mfd/syscon/xlnx-vcu.h
+++ b/include/linux/mfd/syscon/xlnx-vcu.h
@@ -32,6 +32,7 @@
 #define VCU_BUFFER_B_FRAME		0x5c
 #define VCU_WPP_EN			0x60
 #define VCU_PLL_CLK_DEC			0x64
+#define VCU_NUM_CORE			0x6c
 #define VCU_GASKET_INIT			0x74
 #define VCU_GASKET_VALUE		0x03
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
