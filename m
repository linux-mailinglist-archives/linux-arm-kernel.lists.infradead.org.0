Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBA342DC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYMYs3gHW9/8TZOrH9zwBvN8G+ejK1gKocaUTFA26aM=; b=kyLw3s7DfZ6SQ5
	h9Jtukuk4jW8Nw3uxzhSybkEj0jvzN/bpllqs2sDJrxzfikcHxowiK5CVNyCCcpB/lU/Qp30+IhT/
	EFk1DUKMzu0cHWhQRzHJUYPgVw2z0gNpxlI6uZxE/Sw6j1ZtbnAiZppDNehcDXcast4gapgeXNSaB
	9kWqlyfEipp9rHbboBfVN+nIRpD1kUz0cT9Ge7ZW+SAdsZa3xwQbiZmHSKkjdjn//9QWRHA0zRl78
	HRGmxkzGtAaa4PT4dX+cyFZgisS5vBSfrm8UgZwu180NSYwU5lWaYY1myjPldv4xFFZoSgZsgJGUM
	iaZvDFHxCh8mFix4Dnag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7Ro-0002gs-FA; Wed, 12 Jun 2019 17:54:08 +0000
Received: from 201.86.169.251.dynamic.adsl.gvt.net.br ([201.86.169.251]
 helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7Qx-0002Dr-SJ; Wed, 12 Jun 2019 17:53:16 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
 (envelope-from <mchehab@bombadil.infradead.org>)
 id 1hb7Qq-0001hd-O2; Wed, 12 Jun 2019 14:53:08 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH v4 26/28] docs: xilinx: convert eemi.txt to eemi.rst
Date: Wed, 12 Jun 2019 14:53:02 -0300
Message-Id: <b2adf3e68b4e8f3f3c3d670be7f32a9bd981b17c.1560361364.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560361364.git.mchehab+samsung@kernel.org>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
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
Cc: Jonathan Corbet <corbet@lwn.net>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a very trivial conversion: adjust the title markup
and add a few literal block markups to produce a better
visual when parsed and avoid warnings.

As newer documents related to xilinx could be added in the future,
create a new index file for it.

At its new index.rst, let's add a :orphan: while this is not linked to
the main index.rst file, in order to avoid build warnings.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 Documentation/xilinx/{eemi.txt => eemi.rst} |  8 ++++----
 Documentation/xilinx/index.rst              | 17 +++++++++++++++++
 2 files changed, 21 insertions(+), 4 deletions(-)
 rename Documentation/xilinx/{eemi.txt => eemi.rst} (92%)
 create mode 100644 Documentation/xilinx/index.rst

diff --git a/Documentation/xilinx/eemi.txt b/Documentation/xilinx/eemi.rst
similarity index 92%
rename from Documentation/xilinx/eemi.txt
rename to Documentation/xilinx/eemi.rst
index 5f39b4ffdcd4..9dcbc6f18d75 100644
--- a/Documentation/xilinx/eemi.txt
+++ b/Documentation/xilinx/eemi.rst
@@ -1,6 +1,6 @@
----------------------------------------------------------------------
+====================================
 Xilinx Zynq MPSoC EEMI Documentation
----------------------------------------------------------------------
+====================================
 
 Xilinx Zynq MPSoC Firmware Interface
 -------------------------------------
@@ -21,7 +21,7 @@ The zynqmp-firmware driver maintain all EEMI APIs in zynqmp_eemi_ops
 structure. Any driver who want to communicate with PMC using EEMI APIs
 can call zynqmp_pm_get_eemi_ops().
 
-Example of EEMI ops:
+Example of EEMI ops::
 
 	/* zynqmp-firmware driver maintain all EEMI APIs */
 	struct zynqmp_eemi_ops {
@@ -34,7 +34,7 @@ Example of EEMI ops:
 		.query_data = zynqmp_pm_query_data,
 	};
 
-Example of EEMI ops usage:
+Example of EEMI ops usage::
 
 	static const struct zynqmp_eemi_ops *eemi_ops;
 	u32 ret_payload[PAYLOAD_ARG_CNT];
diff --git a/Documentation/xilinx/index.rst b/Documentation/xilinx/index.rst
new file mode 100644
index 000000000000..01cc1a0714df
--- /dev/null
+++ b/Documentation/xilinx/index.rst
@@ -0,0 +1,17 @@
+:orphan:
+
+===========
+Xilinx FPGA
+===========
+
+.. toctree::
+    :maxdepth: 1
+
+    eemi
+
+.. only::  subproject and html
+
+   Indices
+   =======
+
+   * :ref:`genindex`
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
