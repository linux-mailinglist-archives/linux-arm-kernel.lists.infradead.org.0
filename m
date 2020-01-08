Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A50134ADA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uFY82jYY2GuhTsBosBeiQi3Jwvc8AtRuEH2ylHUNJI=; b=CWCNnfjcTvtJ/C
	C+TacXvhc/h/Qt9I/rNorsq//18V2mSqdcirgrwFYfUTiMp5/uIUUCm6GgLbsvtThddj/coaF+rei
	sVudHTtRn0NmEApEQH8uFsacfptx5XT/XLq49puWwitmnD+tQZHySsOcRx0MRPmlor8miynxDtP2T
	iW/I8WUs52bh8QVpsI0TEE/cggk/I7acWEpxQVK9UB5jPHnYtLmGjeVTm43hsJmqppz4UmnTfQQ/x
	N/jGCoRdaey7U+FG+XH+bWIedECbom7SrlQOMHwPBAF0w1zsngsZeJakig16yCQxDk/Kfy6D9C1pu
	Wm3sBabhOuqY1sLE64Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGN9-0001Tg-Q8; Wed, 08 Jan 2020 18:48:03 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGLT-0000I7-Go; Wed, 08 Jan 2020 18:46:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 7E79C2912ED
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v13 07/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
Date: Wed,  8 Jan 2020 15:44:50 -0300
Message-Id: <20200108184454.825725-8-helen.koike@collabora.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200108184454.825725-1-helen.koike@collabora.com>
References: <20200108184454.825725-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_104619_819690_70F67EB2 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, robh+dt@kernel.org,
 hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, Jacob Chen <jacob2.chen@rock-chips.com>,
 joacim.zetterling@gmail.com, mchehab@kernel.org, andrey.konovalov@linaro.org,
 jacob-chen@iotwrt.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jacob Chen <jacob2.chen@rock-chips.com>

This commit add document for rkisp1 meta buffer format

Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v13: None
Changes in v12:
- Change Jacob's email to original jacob2.chen@rock-chips.com

Changes in v11: None
Changes in v10:
- unsquash

Changes in v9:
- squash
- migrate to staging
- remove meta-formats.rst update

Changes in v8:
- Add SPDX in the header
- Remove emacs configs
- Fix doc style

Changes in v7:
- s/correspond/corresponding
- s/use/uses
- s/docuemnt/document

 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst

diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
new file mode 100644
index 000000000000..32034e481357
--- /dev/null
+++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
@@ -0,0 +1,23 @@
+.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+.. _v4l2-meta-fmt-rkisp1-params:
+
+============================
+V4L2_META_FMT_RK_ISP1_PARAMS
+============================
+
+Rockchip ISP1 Parameters Data
+
+Description
+===========
+
+This format describes input parameters for the Rockchip ISP1.
+
+It uses c-struct :c:type:`rkisp1_params_cfg`, which is defined in
+the ``linux/rkisp1-config.h`` header file.
+
+The parameters consist of multiple modules.
+The module won't be updated if the corresponding bit was not set in module_*_update.
+
+.. kernel-doc:: include/uapi/linux/rkisp1-config.h
+   :functions: rkisp1_params_cfg
diff --git a/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
new file mode 100644
index 000000000000..4ad303f96421
--- /dev/null
+++ b/drivers/staging/media/rkisp1/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
@@ -0,0 +1,22 @@
+.. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+.. _v4l2-meta-fmt-rkisp1-stat:
+
+=============================
+V4L2_META_FMT_RK_ISP1_STAT_3A
+=============================
+
+
+Rockchip ISP1 Statistics Data
+
+Description
+===========
+
+This format describes image color statistics information generated by the Rockchip
+ISP1.
+
+It uses c-struct :c:type:`rkisp1_stat_buffer`, which is defined in
+the ``linux/rkisp1-config.h`` header file.
+
+.. kernel-doc:: include/uapi/linux/rkisp1-config.h
+   :functions: rkisp1_stat_buffer
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
