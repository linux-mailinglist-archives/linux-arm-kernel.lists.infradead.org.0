Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CD0DCA53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZrJ5XWv+u66Agelvg9EcdOPlJ1VDtl2yJTrqaPDdJU=; b=lhjUM2YuOnQnlq
	v9I7mO9ePWazOjMleEhYGQohRI+KB6C7Ha+kGRvXLCsI32OFsDe5rjGLndr/KgJNxHjew+eef3MK/
	sWN4kppfSLQypdF/+Xqwsh8LEidJkBf4JGSfuCwBKZuU2qOrcRobiLxKrJnrzNTl1P2SDiCVbGPpE
	9B4/zZnWx4w3h1WHgotWMQGtMtnqeLdaLK7csao3Lr2YByB+GZ8BUajKcn9Ezf+sboSYEqaFWEFHU
	kb0qUKuz/Uux7zVxNAD8fnqktVwafeN3BSxy5wdJTPNVMWgvDeqPv7owApRyAikBTNIxCW60uY1/P
	J3VXTU//85SnMqRgJ0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUnc-0006lo-35; Fri, 18 Oct 2019 16:08:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUn3-0006Nt-VA
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:07:49 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1iLUmx-0002BU-RJ; Fri, 18 Oct 2019 18:07:39 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1iLUmw-0004AV-69; Fri, 18 Oct 2019 18:07:38 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 devicetree@vger.kernel.org
Subject: [PATCH 3/5] arm64: zynqmp: Label whole PL part as fpga_full region
Date: Fri, 18 Oct 2019 18:07:33 +0200
Message-Id: <20191018160735.15658-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018160735.15658-1-m.tretter@pengutronix.de>
References: <20191018160735.15658-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090746_007299_259024C6 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Nava kishore Manne <nava.manne@xilinx.com>,
 Nava kishore Manne <navam@xilinx.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nava kishore Manne <nava.manne@xilinx.com>

This will simplify dt overlay structure for the whole PL.

Signed-off-by: Nava kishore Manne <navam@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 43f01dca1f78..e72343756f7b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -135,6 +135,14 @@
 			     <1 10 0xf08>;
 	};
 
+	fpga_full: fpga-full {
+		compatible = "fpga-region";
+		fpga-mgr = <&zynqmp_pcap>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+	};
+
 	amba_apu: amba-apu@0 {
 		compatible = "simple-bus";
 		#address-cells = <2>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
