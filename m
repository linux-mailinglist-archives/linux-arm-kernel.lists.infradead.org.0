Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8515C878
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z1s9zZ7FTuZnzQKuuKBdNCi8gG9FqSmJARRXsPMR8c=; b=VbnkTIrk37VEDW
	VfP5i8oPDFbAKT4mu4mRIm+WqfuAzI4ZtuBgqDJgs2xQ87XDwzK3glyB5IVm8xwAp222s48sjb0HI
	eXP1e7b17y7WcLvf6nIrEc1aQpJO6rovBXjauT34CUTFldf4ktY878SgPdu4YifKPYpHNK04CWeBe
	oZPD5U5emjtgWa7017tA+VplHoEkkIDlf2HgNZPhgk8/wyO4hYDW4hUvuocQGei09FA6uQW0DAxnn
	Y/2H0nsgRcOcabrU7ygBBK5lJEGJB5OWrYh9OjwxBo7XwUS5T4g2jI5PImyCHrUZ63OWH09M33vtB
	lIWg0Ar4YzuZZzfyhw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HXZ-0000cq-GW; Thu, 13 Feb 2020 16:40:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HXA-0000Qq-RL
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:40:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so7515871wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p2uFK6KKYdYtPUVDDYy0uzQtv76HpgnZNeuTDoj+jDo=;
 b=EfmemPcpI15FP/1eISeFgDAvHIXtZK3NjmSai3nK0kaddNyEb3kwxnYrMueDFUUeu5
 QZXPsxXUeKhm+I1xCUtqKpNbEFUrRG+W0xnv9+iBYhvw1HpaDj0XzuMIuU/41vpkdzJy
 2Zj7VZOOpDYX3rwrl969E0vMCN1vCDTSoomL1riWQ8I/nfkbsyPpQPHk/9t4CKyWXdOt
 8tnkI+e1GwURyuaF0LvmZJ5sU7PJHVxEG0McRg1k/sEyxCUcu6IlSzj+OQI2ZYRB6jLx
 npIlIBX0yaq9tDFy67rke6kHOCkCnJTuIipXoJgzFEzoUgiqxbw9615ulXtKQT3DQhXK
 /EEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p2uFK6KKYdYtPUVDDYy0uzQtv76HpgnZNeuTDoj+jDo=;
 b=TljMHr75NlXokyBEXxQxftgf84nDXGmwLFod+yYETEFDlmrKif0xWCLuAn139vmhUY
 QHYBtznumU9vvIvtKAFbnd3Sb1G46EakUPlVoycru+yVp1YYMCYhXDKAIpV6jQMaMhym
 Poc4vBmvcBseVLSVOpqdHsxol8P2NtciS759EDbfk0eNRDZ3NavDXYYgfaBtqeQOVPO1
 o4zsS6vmxK0uHm7BS7MATUF6u9wx+hXxE5zQi4PAdqRpZqZykbdkGXanm2IaUjhcKol4
 FBSvNBIBvSo8lU09O0XHr7/4xrj22r9ADgSk5AfX/QC5PA6JWJwrdPXfoxz76nukCLVU
 iXOQ==
X-Gm-Message-State: APjAAAX5z2jNfMJH9Dr9nyT22jxjfGUOv3lcLr5cIRCqhjxIkUogDG63
 69JrA4xWJj4QYPFOZ+bs01HaQO23
X-Google-Smtp-Source: APXvYqx8VQjaga8fOGZZT0G2o0Kvfo0ucpKfM5avVBwqi0khvmBAtSsPumSuFOqEEXt3q4LjhRwyEg==
X-Received: by 2002:a5d:5403:: with SMTP id g3mr23784994wrv.302.1581612010365; 
 Thu, 13 Feb 2020 08:40:10 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id o4sm3454944wrx.25.2020.02.13.08.40.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:40:08 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 1/5] dt-bindings: Add memory controller bindings
Date: Thu, 13 Feb 2020 17:39:55 +0100
Message-Id: <20200213163959.819733-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213163959.819733-1-thierry.reding@gmail.com>
References: <20200213163959.819733-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_084012_918646_3D47F875 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 linux-tegra@vger.kernel.org, iommu@lists.linux-foundation.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add the DT schema for memory controller and consumer bindings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../bindings/memory-controllers/consumer.yaml | 14 ++++++++
 .../memory-controllers/memory-controller.yaml | 32 +++++++++++++++++++
 2 files changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/memory-controller.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/consumer.yaml b/Documentation/devicetree/bindings/memory-controllers/consumer.yaml
new file mode 100644
index 000000000000..7b71a6110c51
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/consumer.yaml
@@ -0,0 +1,14 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common memory controller consumer binding
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+
+properties:
+  memory-controller:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
diff --git a/Documentation/devicetree/bindings/memory-controllers/memory-controller.yaml b/Documentation/devicetree/bindings/memory-controllers/memory-controller.yaml
new file mode 100644
index 000000000000..26257a666c3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/memory-controller.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/memory-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common memory controller binding
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+
+description: |
+  The memory access hierarchy in a modern device can be fairly complicated.
+  Accesses to system memory typically end up going through a memory controller
+  that ensures that data is stored. Along the way, these accesses can undergo
+  classification and be prioritized and/or arbitrated.
+
+  The interconnect bindings (see ../interconnect/interconnect.txt) provides a
+  way of describing the data paths between devices and system memory. However
+  these interconnect paths, in order to be most flexible, describe the paths
+  in a very fine-grained way, so situations can arise where it is no longer
+  possible to derive a unique memory parent for any given device.
+
+  In order to remove such potential ambiguities, a memory controller can be
+  specified in device tree. A memory controller specified in this way will be
+  used as the DMA parent for a given device. The memory controller defines a
+  memory bus via the "dma-ranges" property, which will in turn be used to set
+  the range of memory accessible to DMA children of the memory controller.
+
+properties:
+  "#memory-controller-cells": true
+  dma-ranges: true
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
