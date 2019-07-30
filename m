Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849627B276
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nLjLJKHPc6us890DrACC5eLZH1PlZf4YLoBLNYbsfk=; b=q/ZB0ewT7ovIRf
	oVAsmxAWMlkvLPDqcR0rXzme6OxSlivQ5mBbEgqo3Jg0q5jl7ENxbnmIpGU8b/HxmX/WORWgzlcfM
	17KKukjwXwIUxeLX0NZNieyqJVdB42Hb153/JKpI186SP6IfP2YmTCjTn9qA1V08payJ9nMz56BNk
	nmjgH1AJETGYpFfHrsOJfw+zv+fLttOZVVHff7x2KjQ035/wKsH1wZpX42KpWHexhjFiPPmg7l7di
	CfEKqB749rcfEE2A4aSiHiOX/bw2TX1ZOzCEdbcZ5opWl7RCV8wGjuqDqeryCCvP5ofUHZCu1LYC0
	irejv9U+vSui5RvFrtBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsX8N-0004tF-A4; Tue, 30 Jul 2019 18:46:03 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsX7B-0002zS-F2; Tue, 30 Jul 2019 18:44:51 +0000
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:c7f1:ce2f:ec1:e6e6:2e9f:e76e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8A69A28B920;
 Tue, 30 Jul 2019 19:44:43 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH v8 02/14] media: doc: add document for rkisp1 meta buffer
 format
Date: Tue, 30 Jul 2019 15:42:44 -0300
Message-Id: <20190730184256.30338-3-helen.koike@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730184256.30338-1-helen.koike@collabora.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_114449_780987_15C50585 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, Jacob Chen <jacob-chen@rock-chips.com>,
 jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 Helen Koike <helen.koike@collabora.com>, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 zhengsq@rock-chips.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jacob Chen <jacob2.chen@rock-chips.com>

This commit add document for rkisp1 meta buffer format

Signed-off-by: Jacob Chen <jacob-chen@rock-chips.com>
Acked-by: Hans Verkuil <hans.verkuil@cisco.com>
[update for upstream]
Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

Changes in v8:
- Add SPDX in the header
- Remove emacs configs
- Fix doc style

Changes in v7:
- s/correspond/corresponding
- s/use/uses
- s/docuemnt/document

 Documentation/media/uapi/v4l/meta-formats.rst |  2 ++
 .../uapi/v4l/pixfmt-meta-rkisp1-params.rst    | 23 +++++++++++++++++++
 .../uapi/v4l/pixfmt-meta-rkisp1-stat.rst      | 22 ++++++++++++++++++
 3 files changed, 47 insertions(+)
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
 create mode 100644 Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst

diff --git a/Documentation/media/uapi/v4l/meta-formats.rst b/Documentation/media/uapi/v4l/meta-formats.rst
index b10ca9ee3968..5de621fea3cc 100644
--- a/Documentation/media/uapi/v4l/meta-formats.rst
+++ b/Documentation/media/uapi/v4l/meta-formats.rst
@@ -24,3 +24,5 @@ These formats are used for the :ref:`metadata` interface only.
     pixfmt-meta-uvc
     pixfmt-meta-vsp1-hgo
     pixfmt-meta-vsp1-hgt
+    pixfmt-meta-rkisp1-params
+    pixfmt-meta-rkisp1-stat
diff --git a/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
new file mode 100644
index 000000000000..103b5cb79b7c
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-params.rst
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
+It uses c-struct :c:type:`rkisp1_isp_params_cfg`, which is defined in
+the ``linux/rkisp1-config.h`` header file.
+
+The parameters consist of multiple modules.
+The module won't be updated if the corresponding bit was not set in module_*_update.
+
+.. kernel-doc:: include/uapi/linux/rkisp1-config.h
+   :functions: rkisp1_isp_params_cfg
diff --git a/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
new file mode 100644
index 000000000000..4ad303f96421
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pixfmt-meta-rkisp1-stat.rst
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
