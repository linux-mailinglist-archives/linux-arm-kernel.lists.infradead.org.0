Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63742166FC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:47:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=24Sr1dX3qtdr/3YfowZ6LHhNGtZeoMqkWwOHAFEA3jI=; b=u4GxBCA+9DweCZn9Cy6cqJVZpH
	sLzH4l+HX59pqRwmPMF1QVgTUTkze45NhyaFDF8q1rRboy5VQwb3TrzFE+ex83TWlzAfQSx3l9PdU
	iwhzWAySSp21ZOWwYtbsE6PkfNW6kmQA6q1g32+7v//6kP386Da77BovajzT+/PuhLC1Ln9vG8x2D
	aeDy7WoZck+tLlpZtmbJTMQYHGF9imQ/BPtxAABLNkoAnLTkbM89C555W/UzM3psPmVny9w7q0T3J
	QdIj+Uu1HKn/c7ZcZ+kiGnRdNlYlDs9Vn+1gqEwLV4STd0WplCJ5enQ2+Ghs4pYoTfSoB2HS/atpy
	bTUISwxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j525s-00085u-7z; Fri, 21 Feb 2020 06:47:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j525d-00083u-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:47:10 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 20DF6206B9D;
 Fri, 21 Feb 2020 07:47:08 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2A932206BAE;
 Fri, 21 Feb 2020 07:47:00 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5D98940381;
 Fri, 21 Feb 2020 14:46:06 +0800 (SGT)
From: sherry sun <sherry.sun@nxp.com>
To: bp@alien8.de, mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
 rrichter@marvell.com, michal.simek@xilinx.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 1/3] dt-bindings: memory-controllers: Add i.MX8MP DDRC binding
 doc
Date: Fri, 21 Feb 2020 14:39:14 +0800
Message-Id: <1582267156-20189-2-git-send-email-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
References: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224709_704982_012F6CAC 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, frank.li@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sherry Sun <sherry.sun@nxp.com>

Add documentation for i.MX8MP DDRC binding based on synopsys_edac doc,
which use the same memory-controller IP.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 .../devicetree/bindings/memory-controllers/synopsys.txt   | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/synopsys.txt b/Documentation/devicetree/bindings/memory-controllers/synopsys.txt
index 9d32762c47e1..5c03959a451f 100644
--- a/Documentation/devicetree/bindings/memory-controllers/synopsys.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/synopsys.txt
@@ -6,16 +6,20 @@ bus width configurations.
 The Zynq DDR ECC controller has an optional ECC support in half-bus width
 (16-bit) configuration.
 
-These both ECC controllers correct single bit ECC errors and detect double bit
+The i.MX8MP DDR ECC controller has an ECC support in 64-bit bus width
+configurations.
+
+These all ECC controllers correct single bit ECC errors and detect double bit
 ECC errors.
 
 Required properties:
  - compatible: One of:
 	- 'xlnx,zynq-ddrc-a05' : Zynq DDR ECC controller
 	- 'xlnx,zynqmp-ddrc-2.40a' : ZynqMP DDR ECC controller
+	- 'fsl,imx8mp-ddrc' : i.MX8MP DDR ECC controller
  - reg: Should contain DDR controller registers location and length.
 
-Required properties for "xlnx,zynqmp-ddrc-2.40a":
+Required properties for "xlnx,zynqmp-ddrc-2.40a" and "fsl,imx8mp-ddrc":
  - interrupts: Property with a value describing the interrupt number.
 
 Example:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
