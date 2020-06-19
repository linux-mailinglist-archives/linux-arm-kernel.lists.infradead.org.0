Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCE0200325
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bb+MyR310GCuwBI86oug2k6i01WdZ6so8LKMOucmVZY=; b=Szxu4beiSMRm8w
	F/mrcB+121Adl7u5GyQ/vrzn3Cw1zsHBQnSf1GlijT1y/0f4cSv39+FpZQsiwZLRoleddYS7EYDpl
	GmbDfHMxzkc6QzDfdlDY0mG96NEuujL14RM7s0Eu0MaHOp7EcRmBkdbUdwF6nQPWS1iwWKtAEtzkV
	HQz9IKHcKqq2DH10AGjyjJyMJEfV8olmCo6wxyl2QDzlz5IyJn8eZh46DWSKl06u/u4UBwYPI5mFP
	c1GgkUNiGQQEhSu9UuA74X0KR7lqhiU5Kcd3l2oxS/bHmassJNhtVV64FQwZJ71lCY4BA41HrHwEx
	xiXHb8BmAhgdFTuk/Eyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmByp-00040a-4d; Fri, 19 Jun 2020 08:02:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmByL-0003ng-EH
 for linux-arm-kernel@bombadil.infradead.org; Fri, 19 Jun 2020 08:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Zi6il7YI7zPQiB6XJVahLpHNmVxm1Kb8LXTefx2GSfc=; b=gQ24CT6yCKVY2tKM5dohqgyL5N
 hHj63D4MMOlime00HSwh4h12PbSZLiih77R1fAovi8fy2nzOzGtTyInTOjR8ziwtsvKWTAeN9Lgp1
 TBXKM468nq1AIxO9vdW/5pncew2qQj0pixGO1G08ckjAikL3oJ5edijVnuYADmD1rJj1NZ3xweBss
 RvJ65m84wCbl9sJHlcTXOZuFDvvIJ5wNeJI8QyiPTIj8L1ezH9gyvFY+WOaLkqWdsN6ukQHiX+97/
 BMPxELgkSuxs+prK/+o1I8Qza+SrKllirGLagNCAOVeD4ftALTprfNgVRxhyLKS9gKpCJol8+MIXB
 0qeztWoA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvi-00029i-K0
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:59:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0007WD-VS; Fri, 19 Jun 2020 09:59:15 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0004vl-Ca; Fri, 19 Jun 2020 09:59:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH v3 2/6] ARM: dts: define indexes for output clocks
Date: Fri, 19 Jun 2020 09:59:09 +0200
Message-Id: <20200619075913.18900-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619075913.18900-1-m.tretter@pengutronix.de>
References: <20200619075913.18900-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dhaval Shah <dshah@xilinx.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VCU System-Level Control provides 4 clocks. Defined indexes for
these clocks.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/clock/xlnx-vcu.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 include/dt-bindings/clock/xlnx-vcu.h

diff --git a/include/dt-bindings/clock/xlnx-vcu.h b/include/dt-bindings/clock/xlnx-vcu.h
new file mode 100644
index 000000000000..f2a5ea9c4155
--- /dev/null
+++ b/include/dt-bindings/clock/xlnx-vcu.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2020 Pengutronix, Michael Tretter <kernel@pengutronix.de>
+ */
+
+#ifndef _DT_BINDINGS_CLOCK_XLNX_VCU_H
+#define _DT_BINDINGS_CLOCK_XLNX_VCU_H
+
+#define CLK_XVCU_ENC_CORE		0
+#define CLK_XVCU_ENC_MCU		1
+#define CLK_XVCU_DEC_CORE		2
+#define CLK_XVCU_DEC_MCU		3
+#define CLK_XVCU_MAX			4
+
+#endif /* _DT_BINDINGS_CLOCK_XLNX_VCU_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
