Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7497164648
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZvJUnmqFJtseYevKb+jflTmDtxFLsKgeOyyYjXxmaE=; b=A+9cVnpsIv4Bj5
	Yl4GkedBMWELQHvUUMclEDSkUL8iXOfT7fx/u5hvABDv04HRCY4leEkqAm7DCxB0itGIpz+oJQBzp
	DwXSkp3OB5DR6pvC9jIwrSPqSnUvWI2al3OkzwgtCwbSiMIAydmiXnoCI/77debsD8y0e7Qw7s+sk
	ysd0oEBln426GQaz21h7Mc0Ej+I/ueXhNPtqHQgaw9AVWHNJBbBR913X/yPh/kNbwDOdsU4InEW4y
	yArc3lol9Yp7o6+G8YVMdefGWhiQSXgx9mFms4Mt6k/awKmzYwxfL7xECmFaRf++M8vqhDNBcrOoY
	41kcs22LT9/kg5o1XJrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4PwW-00019B-Jt; Wed, 19 Feb 2020 14:03:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4PvY-0000L1-6I
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:02:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id t3so658997wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=glMpHGfoxy59MT1nCJe+0fFtPySi308jUiqy/6I+JEo=;
 b=YOUgET+jOl8FFIb8DMdvnGisZnKWE5nBZjpL3UyvNfcVy8qZSWyeaYqvKIUvNFaVCY
 GfCA7Jf8+NGPdojz1+e1vWymcd7rTSeb0zwhEepyKzxMT23jHFfijyesO1CsK+g+YRUE
 DcJyEFnSqmBDIkuO6AJgvnFwCmK/WwdEUrWy/hRD92mgGsE3D4SBIMyzbicJdJdf0msj
 +qhysrC6I+eo9GXalmxobSfQLd/GW6ENupo2ZW+1dqCXB/P/UzAmGmwKeDs5xHQAIW+d
 GwTjW1UzbcbKL90seZWNlR40VZIcQH9xE0VF5hU98Tt61Y4BfqkKCnO8q2SZ5PVJPT4i
 pwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=glMpHGfoxy59MT1nCJe+0fFtPySi308jUiqy/6I+JEo=;
 b=sGY0FXNkKZ+u1zTctf5Nz463aox1+T4wFrKBhIbrEA2g/jQF3vR6gufyV0Fx2uHCBG
 2Y5wAYYFubCfE+mdov9NAGusiA3zbCoHpKOE6rknKDgTMuC4cu6Gnye9ZpLvylMfSfwQ
 m/PCfb5MdDTAInsykzoQ88rzWEnWohXYPsRve/dESy3rTViDJcYLqC1VQHCuCW3GkM8O
 wo7VscU6aCj+N0/i4PMUAVEY82VVdC7Ir7JUeFPwS1z969avk8lQoDxuSrDkEmP2p6S2
 MeZ7ICFznnnsseJLO+FE/vYHAB40E543Mh9MjNCqwr7ba9MtOwXs8t/vjzM7psKxwtGf
 s2Nw==
X-Gm-Message-State: APjAAAUh6Ly/carEiQs7PdVr0KqXu0haA6k7FQM2xO6v3FhH3qWba7Qi
 9fGXFOB8BE/3V+EV91fqbEp6OA==
X-Google-Smtp-Source: APXvYqyU0h0L0Oq9lyQGhcq8GAHW5Y7/ux0t0pqd862/+dQoTSBSUsfhZ91+HlRnAFxINvElBPqOBg==
X-Received: by 2002:a5d:4a04:: with SMTP id m4mr36719403wrq.104.1582120929804; 
 Wed, 19 Feb 2020 06:02:09 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 j14sm3178634wrn.32.2020.02.19.06.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:02:08 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v6 4/4] media: meson: vdec: add H.264 decoding support
Date: Wed, 19 Feb 2020 15:01:56 +0100
Message-Id: <20200219140156.22893-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200219140156.22893-1-narmstrong@baylibre.com>
References: <20200219140156.22893-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_060212_460767_A8DDC351 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

Add support for the H264 compressed format (V4L2_PIX_FMT_H264).

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/staging/media/meson/vdec/Makefile     |   2 +-
 drivers/staging/media/meson/vdec/codec_h264.c | 484 ++++++++++++++++++
 drivers/staging/media/meson/vdec/codec_h264.h |  14 +
 .../staging/media/meson/vdec/vdec_platform.c  |  61 +++
 4 files changed, 560 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.c
 create mode 100644 drivers/staging/media/meson/vdec/codec_h264.h

diff --git a/drivers/staging/media/meson/vdec/Makefile b/drivers/staging/media/meson/vdec/Makefile
index 6bea129084b7..711d990c760e 100644
--- a/drivers/staging/media/meson/vdec/Makefile
+++ b/drivers/staging/media/meson/vdec/Makefile
@@ -3,6 +3,6 @@
 
 meson-vdec-objs = esparser.o vdec.o vdec_helpers.o vdec_platform.o
 meson-vdec-objs += vdec_1.o
-meson-vdec-objs += codec_mpeg12.o
+meson-vdec-objs += codec_mpeg12.o codec_h264.o
 
 obj-$(CONFIG_VIDEO_MESON_VDEC) += meson-vdec.o
diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
new file mode 100644
index 000000000000..cbabc8f29f2d
--- /dev/null
+++ b/drivers/staging/media/meson/vdec/codec_h264.c
@@ -0,0 +1,484 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 BayLibre, SAS
+ * Author: Maxime Jourdan <mjourdan@baylibre.com>
+ */
+
+#include <media/v4l2-mem2mem.h>
+#include <media/videobuf2-dma-contig.h>
+
+#include "vdec_helpers.h"
+#include "dos_regs.h"
+
+#define SIZE_EXT_FW	(20 * SZ_1K)
+#define SIZE_WORKSPACE	0x1ee000
+#define SIZE_SEI	(8 * SZ_1K)
+
+/*
+ * Offset added by the firmware which must be substracted
+ * from the workspace phyaddr
+ */
+#define WORKSPACE_BUF_OFFSET	0x1000000
+
+/* ISR status */
+#define CMD_MASK		GENMASK(7, 0)
+#define CMD_SRC_CHANGE		1
+#define CMD_FRAMES_READY	2
+#define CMD_FATAL_ERROR		6
+#define CMD_BAD_WIDTH		7
+#define CMD_BAD_HEIGHT		8
+
+#define SEI_DATA_READY	BIT(15)
+
+/* Picture type */
+#define PIC_TOP_BOT	5
+#define PIC_BOT_TOP	6
+
+/* Size of Motion Vector per macroblock */
+#define MB_MV_SIZE	96
+
+/* Frame status data */
+#define PIC_STRUCT_BIT	5
+#define PIC_STRUCT_MASK	GENMASK(2, 0)
+#define BUF_IDX_MASK	GENMASK(4, 0)
+#define ERROR_FLAG	BIT(9)
+#define OFFSET_BIT	16
+#define OFFSET_MASK	GENMASK(15, 0)
+
+/* Bitstream parsed data */
+#define MB_TOTAL_BIT	8
+#define MB_TOTAL_MASK	GENMASK(15, 0)
+#define MB_WIDTH_MASK	GENMASK(7, 0)
+#define MAX_REF_BIT	24
+#define MAX_REF_MASK	GENMASK(6, 0)
+#define AR_IDC_BIT	16
+#define AR_IDC_MASK	GENMASK(7, 0)
+#define AR_PRESENT_FLAG	BIT(0)
+#define AR_EXTEND	0xff
+
+/*
+ * Buffer to send to the ESPARSER to signal End Of Stream for H.264.
+ * This is a 16x16 encoded picture that will trigger drain firmware-side.
+ * There is no known alternative.
+ */
+static const u8 eos_sequence[SZ_4K] = {
+	0x00, 0x00, 0x00, 0x01, 0x06, 0x05, 0xff, 0xe4, 0xdc, 0x45, 0xe9, 0xbd,
+	0xe6, 0xd9, 0x48, 0xb7,	0x96, 0x2c, 0xd8, 0x20, 0xd9, 0x23, 0xee, 0xef,
+	0x78, 0x32, 0x36, 0x34, 0x20, 0x2d, 0x20, 0x63,	0x6f, 0x72, 0x65, 0x20,
+	0x36, 0x37, 0x20, 0x72, 0x31, 0x31, 0x33, 0x30, 0x20, 0x38, 0x34, 0x37,
+	0x35, 0x39, 0x37, 0x37, 0x20, 0x2d, 0x20, 0x48, 0x2e, 0x32, 0x36, 0x34,
+	0x2f, 0x4d, 0x50, 0x45,	0x47, 0x2d, 0x34, 0x20, 0x41, 0x56, 0x43, 0x20,
+	0x63, 0x6f, 0x64, 0x65, 0x63, 0x20, 0x2d, 0x20,	0x43, 0x6f, 0x70, 0x79,
+	0x6c, 0x65, 0x66, 0x74, 0x20, 0x32, 0x30, 0x30, 0x33, 0x2d, 0x32, 0x30,
+	0x30, 0x39, 0x20, 0x2d, 0x20, 0x68, 0x74, 0x74, 0x70, 0x3a, 0x2f, 0x2f,
+	0x77, 0x77, 0x77, 0x2e,	0x76, 0x69, 0x64, 0x65, 0x6f, 0x6c, 0x61, 0x6e,
+	0x2e, 0x6f, 0x72, 0x67, 0x2f, 0x78, 0x32, 0x36,	0x34, 0x2e, 0x68, 0x74,
+	0x6d, 0x6c, 0x20, 0x2d, 0x20, 0x6f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73,
+	0x3a, 0x20, 0x63, 0x61, 0x62, 0x61, 0x63, 0x3d, 0x31, 0x20, 0x72, 0x65,
+	0x66, 0x3d, 0x31, 0x20,	0x64, 0x65, 0x62, 0x6c, 0x6f, 0x63, 0x6b, 0x3d,
+	0x31, 0x3a, 0x30, 0x3a, 0x30, 0x20, 0x61, 0x6e,	0x61, 0x6c, 0x79, 0x73,
+	0x65, 0x3d, 0x30, 0x78, 0x31, 0x3a, 0x30, 0x78, 0x31, 0x31, 0x31, 0x20,
+	0x6d, 0x65, 0x3d, 0x68, 0x65, 0x78, 0x20, 0x73, 0x75, 0x62, 0x6d, 0x65,
+	0x3d, 0x36, 0x20, 0x70,	0x73, 0x79, 0x5f, 0x72, 0x64, 0x3d, 0x31, 0x2e,
+	0x30, 0x3a, 0x30, 0x2e, 0x30, 0x20, 0x6d, 0x69,	0x78, 0x65, 0x64, 0x5f,
+	0x72, 0x65, 0x66, 0x3d, 0x30, 0x20, 0x6d, 0x65, 0x5f, 0x72, 0x61, 0x6e,
+	0x67, 0x65, 0x3d, 0x31, 0x36, 0x20, 0x63, 0x68, 0x72, 0x6f, 0x6d, 0x61,
+	0x5f, 0x6d, 0x65, 0x3d,	0x31, 0x20, 0x74, 0x72, 0x65, 0x6c, 0x6c, 0x69,
+	0x73, 0x3d, 0x30, 0x20, 0x38, 0x78, 0x38, 0x64,	0x63, 0x74, 0x3d, 0x30,
+	0x20, 0x63, 0x71, 0x6d, 0x3d, 0x30, 0x20, 0x64, 0x65, 0x61, 0x64, 0x7a,
+	0x6f, 0x6e, 0x65, 0x3d, 0x32, 0x31, 0x2c, 0x31, 0x31, 0x20, 0x63, 0x68,
+	0x72, 0x6f, 0x6d, 0x61,	0x5f, 0x71, 0x70, 0x5f, 0x6f, 0x66, 0x66, 0x73,
+	0x65, 0x74, 0x3d, 0x2d, 0x32, 0x20, 0x74, 0x68,	0x72, 0x65, 0x61, 0x64,
+	0x73, 0x3d, 0x31, 0x20, 0x6e, 0x72, 0x3d, 0x30, 0x20, 0x64, 0x65, 0x63,
+	0x69, 0x6d, 0x61, 0x74, 0x65, 0x3d, 0x31, 0x20, 0x6d, 0x62, 0x61, 0x66,
+	0x66, 0x3d, 0x30, 0x20,	0x62, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x73, 0x3d,
+	0x30, 0x20, 0x6b, 0x65, 0x79, 0x69, 0x6e, 0x74,	0x3d, 0x32, 0x35, 0x30,
+	0x20, 0x6b, 0x65, 0x79, 0x69, 0x6e, 0x74, 0x5f, 0x6d, 0x69, 0x6e, 0x3d,
+	0x32, 0x35, 0x20, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x63, 0x75, 0x74, 0x3d,
+	0x34, 0x30, 0x20, 0x72,	0x63, 0x3d, 0x61, 0x62, 0x72, 0x20, 0x62, 0x69,
+	0x74, 0x72, 0x61, 0x74, 0x65, 0x3d, 0x31, 0x30,	0x20, 0x72, 0x61, 0x74,
+	0x65, 0x74, 0x6f, 0x6c, 0x3d, 0x31, 0x2e, 0x30, 0x20, 0x71, 0x63, 0x6f,
+	0x6d, 0x70, 0x3d, 0x30, 0x2e, 0x36, 0x30, 0x20, 0x71, 0x70, 0x6d, 0x69,
+	0x6e, 0x3d, 0x31, 0x30,	0x20, 0x71, 0x70, 0x6d, 0x61, 0x78, 0x3d, 0x35,
+	0x31, 0x20, 0x71, 0x70, 0x73, 0x74, 0x65, 0x70,	0x3d, 0x34, 0x20, 0x69,
+	0x70, 0x5f, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x3d, 0x31, 0x2e, 0x34, 0x30,
+	0x20, 0x61, 0x71, 0x3d, 0x31, 0x3a, 0x31, 0x2e, 0x30, 0x30, 0x00, 0x80,
+	0x00, 0x00, 0x00, 0x01,	0x67, 0x4d, 0x40, 0x0a, 0x9a, 0x74, 0xf4, 0x20,
+	0x00, 0x00, 0x03, 0x00, 0x20, 0x00, 0x00, 0x06,	0x51, 0xe2, 0x44, 0xd4,
+	0x00, 0x00, 0x00, 0x01, 0x68, 0xee, 0x32, 0xc8, 0x00, 0x00, 0x00, 0x01,
+	0x65, 0x88, 0x80, 0x20, 0x00, 0x08, 0x7f, 0xea, 0x6a, 0xe2, 0x99, 0xb6,
+	0x57, 0xae, 0x49, 0x30,	0xf5, 0xfe, 0x5e, 0x46, 0x0b, 0x72, 0x44, 0xc4,
+	0xe1, 0xfc, 0x62, 0xda, 0xf1, 0xfb, 0xa2, 0xdb,	0xd6, 0xbe, 0x5c, 0xd7,
+	0x24, 0xa3, 0xf5, 0xb9, 0x2f, 0x57, 0x16, 0x49, 0x75, 0x47, 0x77, 0x09,
+	0x5c, 0xa1, 0xb4, 0xc3, 0x4f, 0x60, 0x2b, 0xb0, 0x0c, 0xc8, 0xd6, 0x66,
+	0xba, 0x9b, 0x82, 0x29,	0x33, 0x92, 0x26, 0x99, 0x31, 0x1c, 0x7f, 0x9b,
+	0x00, 0x00, 0x01, 0x0ff,
+};
+
+static const u8 *codec_h264_eos_sequence(u32 *len)
+{
+	*len = ARRAY_SIZE(eos_sequence);
+	return eos_sequence;
+}
+
+struct codec_h264 {
+	/* H.264 decoder requires an extended firmware */
+	void      *ext_fw_vaddr;
+	dma_addr_t ext_fw_paddr;
+
+	/* Buffer for the H.264 Workspace */
+	void      *workspace_vaddr;
+	dma_addr_t workspace_paddr;
+
+	/* Buffer for the H.264 references MV */
+	void      *ref_vaddr;
+	dma_addr_t ref_paddr;
+	u32	   ref_size;
+
+	/* Buffer for parsed SEI data */
+	void      *sei_vaddr;
+	dma_addr_t sei_paddr;
+
+	u32 mb_width;
+	u32 mb_height;
+	u32 max_refs;
+};
+
+static int codec_h264_can_recycle(struct amvdec_core *core)
+{
+	return !amvdec_read_dos(core, AV_SCRATCH_7) ||
+	       !amvdec_read_dos(core, AV_SCRATCH_8);
+}
+
+static void codec_h264_recycle(struct amvdec_core *core, u32 buf_idx)
+{
+	/*
+	 * Tell the firmware it can recycle this buffer.
+	 * AV_SCRATCH_8 serves the same purpose.
+	 */
+	if (!amvdec_read_dos(core, AV_SCRATCH_7))
+		amvdec_write_dos(core, AV_SCRATCH_7, buf_idx + 1);
+	else
+		amvdec_write_dos(core, AV_SCRATCH_8, buf_idx + 1);
+}
+
+static int codec_h264_start(struct amvdec_session *sess)
+{
+	u32 workspace_offset;
+	struct amvdec_core *core = sess->core;
+	struct codec_h264 *h264 = sess->priv;
+
+	/* Allocate some memory for the H.264 decoder's state */
+	h264->workspace_vaddr =
+		dma_alloc_coherent(core->dev, SIZE_WORKSPACE,
+				   &h264->workspace_paddr, GFP_KERNEL);
+	if (!h264->workspace_vaddr)
+		return -ENOMEM;
+
+	/* Allocate some memory for the H.264 SEI dump */
+	h264->sei_vaddr = dma_alloc_coherent(core->dev, SIZE_SEI,
+					     &h264->sei_paddr, GFP_KERNEL);
+	if (!h264->sei_vaddr)
+		return -ENOMEM;
+
+	amvdec_write_dos_bits(core, POWER_CTL_VLD, BIT(9) | BIT(6));
+
+	workspace_offset = h264->workspace_paddr - WORKSPACE_BUF_OFFSET;
+	amvdec_write_dos(core, AV_SCRATCH_1, workspace_offset);
+	amvdec_write_dos(core, AV_SCRATCH_G, h264->ext_fw_paddr);
+	amvdec_write_dos(core, AV_SCRATCH_I, h264->sei_paddr -
+					     workspace_offset);
+
+	/* Enable "error correction" */
+	amvdec_write_dos(core, AV_SCRATCH_F,
+			 (amvdec_read_dos(core, AV_SCRATCH_F) & 0xffffffc3) |
+			 BIT(4) | BIT(7));
+
+	amvdec_write_dos(core, MDEC_PIC_DC_THRESH, 0x404038aa);
+
+	return 0;
+}
+
+static int codec_h264_stop(struct amvdec_session *sess)
+{
+	struct codec_h264 *h264 = sess->priv;
+	struct amvdec_core *core = sess->core;
+
+	if (h264->ext_fw_vaddr)
+		dma_free_coherent(core->dev, SIZE_EXT_FW,
+				  h264->ext_fw_vaddr, h264->ext_fw_paddr);
+
+	if (h264->workspace_vaddr)
+		dma_free_coherent(core->dev, SIZE_WORKSPACE,
+				  h264->workspace_vaddr, h264->workspace_paddr);
+
+	if (h264->ref_vaddr)
+		dma_free_coherent(core->dev, h264->ref_size,
+				  h264->ref_vaddr, h264->ref_paddr);
+
+	if (h264->sei_vaddr)
+		dma_free_coherent(core->dev, SIZE_SEI,
+				  h264->sei_vaddr, h264->sei_paddr);
+
+	return 0;
+}
+
+static int codec_h264_load_extended_firmware(struct amvdec_session *sess,
+					     const u8 *data, u32 len)
+{
+	struct codec_h264 *h264;
+	struct amvdec_core *core = sess->core;
+
+	if (len < SIZE_EXT_FW)
+		return -EINVAL;
+
+	h264 = kzalloc(sizeof(*h264), GFP_KERNEL);
+	if (!h264)
+		return -ENOMEM;
+
+	h264->ext_fw_vaddr = dma_alloc_coherent(core->dev, SIZE_EXT_FW,
+						&h264->ext_fw_paddr,
+						GFP_KERNEL);
+	if (!h264->ext_fw_vaddr) {
+		kfree(h264);
+		return -ENOMEM;
+	}
+
+	memcpy(h264->ext_fw_vaddr, data, SIZE_EXT_FW);
+	sess->priv = h264;
+
+	return 0;
+}
+
+static const struct v4l2_fract par_table[] = {
+	{ 1, 1 },   { 1, 1 },    { 12, 11 }, { 10, 11 },
+	{ 16, 11 }, { 40, 33 },  { 24, 11 }, { 20, 11 },
+	{ 32, 11 }, { 80, 33 },  { 18, 11 }, { 15, 11 },
+	{ 64, 33 }, { 160, 99 }, { 4, 3 },   { 3, 2 },
+	{ 2, 1 }
+};
+
+static void codec_h264_set_par(struct amvdec_session *sess)
+{
+	struct amvdec_core *core = sess->core;
+	u32 seq_info = amvdec_read_dos(core, AV_SCRATCH_2);
+	u32 ar_idc = (seq_info >> AR_IDC_BIT) & AR_IDC_MASK;
+
+	if (!(seq_info & AR_PRESENT_FLAG))
+		return;
+
+	if (ar_idc == AR_EXTEND) {
+		u32 ar_info = amvdec_read_dos(core, AV_SCRATCH_3);
+
+		sess->pixelaspect.numerator = ar_info & 0xffff;
+		sess->pixelaspect.denominator = (ar_info >> 16) & 0xffff;
+		return;
+	}
+
+	if (ar_idc >= ARRAY_SIZE(par_table))
+		return;
+
+	sess->pixelaspect = par_table[ar_idc];
+}
+
+static void codec_h264_resume(struct amvdec_session *sess)
+{
+	struct amvdec_core *core = sess->core;
+	struct codec_h264 *h264 = sess->priv;
+	u32 mb_width, mb_height, mb_total;
+
+	amvdec_set_canvases(sess,
+			    (u32[]){ ANC0_CANVAS_ADDR, 0 },
+			    (u32[]){ 24, 0 });
+
+	dev_dbg(core->dev, "max_refs = %u; actual_dpb_size = %u\n",
+		h264->max_refs, sess->num_dst_bufs);
+
+	/* Align to a multiple of 4 macroblocks */
+	mb_width = ALIGN(h264->mb_width, 4);
+	mb_height = ALIGN(h264->mb_height, 4);
+	mb_total = mb_width * mb_height;
+
+	h264->ref_size = mb_total * MB_MV_SIZE * h264->max_refs;
+	h264->ref_vaddr = dma_alloc_coherent(core->dev, h264->ref_size,
+					     &h264->ref_paddr, GFP_KERNEL);
+	if (!h264->ref_vaddr) {
+		amvdec_abort(sess);
+		return;
+	}
+
+	/* Address to store the references' MVs */
+	amvdec_write_dos(core, AV_SCRATCH_1, h264->ref_paddr);
+	/* End of ref MV */
+	amvdec_write_dos(core, AV_SCRATCH_4, h264->ref_paddr + h264->ref_size);
+
+	amvdec_write_dos(core, AV_SCRATCH_0, (h264->max_refs << 24) |
+					     (sess->num_dst_bufs << 16) |
+					     ((h264->max_refs - 1) << 8));
+}
+
+/*
+ * Configure the H.264 decoder when the parser detected a parameter set change
+ */
+static void codec_h264_src_change(struct amvdec_session *sess)
+{
+	struct amvdec_core *core = sess->core;
+	struct codec_h264 *h264 = sess->priv;
+	u32 parsed_info, mb_total;
+	u32 crop_infor, crop_bottom, crop_right;
+	u32 frame_width, frame_height;
+
+	sess->keyframe_found = 1;
+
+	parsed_info = amvdec_read_dos(core, AV_SCRATCH_1);
+
+	/* Total number of 16x16 macroblocks */
+	mb_total = (parsed_info >> MB_TOTAL_BIT) & MB_TOTAL_MASK;
+	/* Number of macroblocks per line */
+	h264->mb_width = parsed_info & MB_WIDTH_MASK;
+	/* Number of macroblock lines */
+	h264->mb_height = mb_total / h264->mb_width;
+
+	h264->max_refs = ((parsed_info >> MAX_REF_BIT) & MAX_REF_MASK) + 1;
+
+	crop_infor = amvdec_read_dos(core, AV_SCRATCH_6);
+	crop_bottom = (crop_infor & 0xff);
+	crop_right = (crop_infor >> 16) & 0xff;
+
+	frame_width = h264->mb_width * 16 - crop_right;
+	frame_height = h264->mb_height * 16 - crop_bottom;
+
+	dev_dbg(core->dev, "frame: %ux%u; crop: %u %u\n",
+		frame_width, frame_height, crop_right, crop_bottom);
+
+	codec_h264_set_par(sess);
+	amvdec_src_change(sess, frame_width, frame_height, h264->max_refs + 5);
+}
+
+/*
+ * The bitstream offset is split in half in 2 different registers.
+ * Fetch its MSB here, which location depends on the frame number.
+ */
+static u32 get_offset_msb(struct amvdec_core *core, int frame_num)
+{
+	int take_msb = frame_num % 2;
+	int reg_offset = (frame_num / 2) * 4;
+	u32 offset_msb = amvdec_read_dos(core, AV_SCRATCH_A + reg_offset);
+
+	if (take_msb)
+		return offset_msb & 0xffff0000;
+
+	return (offset_msb & 0x0000ffff) << 16;
+}
+
+static void codec_h264_frames_ready(struct amvdec_session *sess, u32 status)
+{
+	struct amvdec_core *core = sess->core;
+	int error_count;
+	int num_frames;
+	int i;
+
+	error_count = amvdec_read_dos(core, AV_SCRATCH_D);
+	num_frames = (status >> 8) & 0xff;
+	if (error_count) {
+		dev_warn(core->dev,
+			 "decoder error(s) happened, count %d\n", error_count);
+		amvdec_write_dos(core, AV_SCRATCH_D, 0);
+	}
+
+	for (i = 0; i < num_frames; i++) {
+		u32 frame_status = amvdec_read_dos(core, AV_SCRATCH_1 + i * 4);
+		u32 buffer_index = frame_status & BUF_IDX_MASK;
+		u32 pic_struct = (frame_status >> PIC_STRUCT_BIT) &
+				 PIC_STRUCT_MASK;
+		u32 offset = (frame_status >> OFFSET_BIT) & OFFSET_MASK;
+		u32 field = V4L2_FIELD_NONE;
+
+		/*
+		 * A buffer decode error means it was decoded,
+		 * but part of the picture will have artifacts.
+		 * Typical reason is a temporarily corrupted bitstream
+		 */
+		if (frame_status & ERROR_FLAG)
+			dev_dbg(core->dev, "Buffer %d decode error\n",
+				buffer_index);
+
+		if (pic_struct == PIC_TOP_BOT)
+			field = V4L2_FIELD_INTERLACED_TB;
+		else if (pic_struct == PIC_BOT_TOP)
+			field = V4L2_FIELD_INTERLACED_BT;
+
+		offset |= get_offset_msb(core, i);
+		amvdec_dst_buf_done_idx(sess, buffer_index, offset, field);
+	}
+}
+
+static irqreturn_t codec_h264_threaded_isr(struct amvdec_session *sess)
+{
+	struct amvdec_core *core = sess->core;
+	u32 status;
+	u32 size;
+	u8 cmd;
+
+	status = amvdec_read_dos(core, AV_SCRATCH_0);
+	cmd = status & CMD_MASK;
+
+	switch (cmd) {
+	case CMD_SRC_CHANGE:
+		codec_h264_src_change(sess);
+		break;
+	case CMD_FRAMES_READY:
+		codec_h264_frames_ready(sess, status);
+		break;
+	case CMD_FATAL_ERROR:
+		dev_err(core->dev, "H.264 decoder fatal error\n");
+		goto abort;
+	case CMD_BAD_WIDTH:
+		size = (amvdec_read_dos(core, AV_SCRATCH_1) + 1) * 16;
+		dev_err(core->dev, "Unsupported video width: %u\n", size);
+		goto abort;
+	case CMD_BAD_HEIGHT:
+		size = (amvdec_read_dos(core, AV_SCRATCH_1) + 1) * 16;
+		dev_err(core->dev, "Unsupported video height: %u\n", size);
+		goto abort;
+	case 0: /* Unused but not worth printing for */
+	case 9:
+		break;
+	default:
+		dev_info(core->dev, "Unexpected H264 ISR: %08X\n", cmd);
+		break;
+	}
+
+	if (cmd && cmd != CMD_SRC_CHANGE)
+		amvdec_write_dos(core, AV_SCRATCH_0, 0);
+
+	/* Decoder has some SEI data for us ; ignore */
+	if (amvdec_read_dos(core, AV_SCRATCH_J) & SEI_DATA_READY)
+		amvdec_write_dos(core, AV_SCRATCH_J, 0);
+
+	return IRQ_HANDLED;
+abort:
+	amvdec_abort(sess);
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t codec_h264_isr(struct amvdec_session *sess)
+{
+	struct amvdec_core *core = sess->core;
+
+	amvdec_write_dos(core, ASSIST_MBOX1_CLR_REG, 1);
+
+	return IRQ_WAKE_THREAD;
+}
+
+struct amvdec_codec_ops codec_h264_ops = {
+	.start = codec_h264_start,
+	.stop = codec_h264_stop,
+	.load_extended_firmware = codec_h264_load_extended_firmware,
+	.isr = codec_h264_isr,
+	.threaded_isr = codec_h264_threaded_isr,
+	.can_recycle = codec_h264_can_recycle,
+	.recycle = codec_h264_recycle,
+	.eos_sequence = codec_h264_eos_sequence,
+	.resume = codec_h264_resume,
+};
diff --git a/drivers/staging/media/meson/vdec/codec_h264.h b/drivers/staging/media/meson/vdec/codec_h264.h
new file mode 100644
index 000000000000..7cb4fb86ff36
--- /dev/null
+++ b/drivers/staging/media/meson/vdec/codec_h264.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2019 BayLibre, SAS
+ * Author: Maxime Jourdan <mjourdan@baylibre.com>
+ */
+
+#ifndef __MESON_VDEC_CODEC_H264_H_
+#define __MESON_VDEC_CODEC_H264_H_
+
+#include "vdec.h"
+
+extern struct amvdec_codec_ops codec_h264_ops;
+
+#endif
diff --git a/drivers/staging/media/meson/vdec/vdec_platform.c b/drivers/staging/media/meson/vdec/vdec_platform.c
index 066d4a055894..e9356a46828f 100644
--- a/drivers/staging/media/meson/vdec/vdec_platform.c
+++ b/drivers/staging/media/meson/vdec/vdec_platform.c
@@ -9,9 +9,22 @@
 
 #include "vdec_1.h"
 #include "codec_mpeg12.h"
+#include "codec_h264.h"
 
 static const struct amvdec_format vdec_formats_gxbb[] = {
 	{
+		.pixfmt = V4L2_PIX_FMT_H264,
+		.min_buffers = 2,
+		.max_buffers = 24,
+		.max_width = 1920,
+		.max_height = 1080,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_h264_ops,
+		.firmware_path = "meson/vdec/gxbb_h264.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED |
+			 V4L2_FMT_FLAG_DYN_RESOLUTION,
+	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG1,
 		.min_buffers = 8,
 		.max_buffers = 8,
@@ -38,6 +51,18 @@ static const struct amvdec_format vdec_formats_gxbb[] = {
 
 static const struct amvdec_format vdec_formats_gxl[] = {
 	{
+		.pixfmt = V4L2_PIX_FMT_H264,
+		.min_buffers = 2,
+		.max_buffers = 24,
+		.max_width = 3840,
+		.max_height = 2160,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_h264_ops,
+		.firmware_path = "meson/vdec/gxl_h264.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED |
+			 V4L2_FMT_FLAG_DYN_RESOLUTION,
+	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG1,
 		.min_buffers = 8,
 		.max_buffers = 8,
@@ -64,6 +89,18 @@ static const struct amvdec_format vdec_formats_gxl[] = {
 
 static const struct amvdec_format vdec_formats_gxm[] = {
 	{
+		.pixfmt = V4L2_PIX_FMT_H264,
+		.min_buffers = 2,
+		.max_buffers = 24,
+		.max_width = 3840,
+		.max_height = 2160,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_h264_ops,
+		.firmware_path = "meson/vdec/gxm_h264.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED |
+			 V4L2_FMT_FLAG_DYN_RESOLUTION,
+	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG1,
 		.min_buffers = 8,
 		.max_buffers = 8,
@@ -90,6 +127,18 @@ static const struct amvdec_format vdec_formats_gxm[] = {
 
 static const struct amvdec_format vdec_formats_g12a[] = {
 	{
+		.pixfmt = V4L2_PIX_FMT_H264,
+		.min_buffers = 2,
+		.max_buffers = 24,
+		.max_width = 3840,
+		.max_height = 2160,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_h264_ops,
+		.firmware_path = "meson/vdec/g12a_h264.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED |
+			 V4L2_FMT_FLAG_DYN_RESOLUTION,
+	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG1,
 		.min_buffers = 8,
 		.max_buffers = 8,
@@ -116,6 +165,18 @@ static const struct amvdec_format vdec_formats_g12a[] = {
 
 static const struct amvdec_format vdec_formats_sm1[] = {
 	{
+		.pixfmt = V4L2_PIX_FMT_H264,
+		.min_buffers = 2,
+		.max_buffers = 24,
+		.max_width = 3840,
+		.max_height = 2160,
+		.vdec_ops = &vdec_1_ops,
+		.codec_ops = &codec_h264_ops,
+		.firmware_path = "meson/vdec/g12a_h264.bin",
+		.pixfmts_cap = { V4L2_PIX_FMT_NV12M, 0 },
+		.flags = V4L2_FMT_FLAG_COMPRESSED |
+			 V4L2_FMT_FLAG_DYN_RESOLUTION,
+	}, {
 		.pixfmt = V4L2_PIX_FMT_MPEG1,
 		.min_buffers = 8,
 		.max_buffers = 8,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
