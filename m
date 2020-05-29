Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263CE1E81A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJkELwRA7evBrSeSE3dWZMTDc6bQ98WyWFg19Gg3ZBc=; b=o2Gx2m4VpEFqeh
	h+hr6hyxKQv+RYqnWhvMd1bHdxPJinPjHBOw0zYpq0GMp93jjt7p6GnKcrbzOeA/0oiokBLBL0DjX
	Vz0Kd0Y36AI5AH+DI5EFQyUKhSW3vKeUJ91Q4Qp7BXRe6stUZLdVHgutQFIdwEFQMCSyCFAjmNh+5
	Ipdn4ms1pFWT+FVCxJlKcL/gbH9xB4BT1J2KZ8Jny/LSGknwvF0Hx5k9hfjU8+rAqwVJndSyqUZra
	2WX6vdnU0P3LFqByZYsjAgDZbygs1q6EmrLpMJ0ACLqPhvA0EmAj8abSC09Pfiip+++p2vTVz0DtB
	7VNCDa+qM07ODwLAKlBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegoZ-0000V3-B4; Fri, 29 May 2020 15:20:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegnP-0005md-0w
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 15:19:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so4154481wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 08:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sXSSwzUY45Tzam9RmLSgT3NUjnL8G0U3TkqO4f30tyg=;
 b=INoEBYRJKiMBcRrdZ3KCtef6ctCTf7ko+wPETDhQXfSBRDUtY3RmXq6uLNHQOOGOHE
 FDvV+0mztVlS32ktvbFoWLb+GHgr1Oval/z31sxOUsIxyo/Ieeer2W2G+/kQ9OnoT4bj
 As57P/V55olt1ZRAz3QKnJrwBZ3e0/OD8RS2x8Vfn3jHJYUQ2rsuZSx3vMA/lkqOG81L
 sbypwrtsGnrL3ikncYB6OtFX8OIK4ycgQHzxQzkZzNHPnBnVEPYv3Vr2JAQPpJ0emVXp
 JKQ+ZTGHN4KfR50TQy8zAnP3GAS3aTl7Wbq9yCjX2L5h0SMr//ex24uLLtyeIqMWKZJf
 YCdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sXSSwzUY45Tzam9RmLSgT3NUjnL8G0U3TkqO4f30tyg=;
 b=PR9zFUoiOflqDVVB/1wOj/bd9h0LG99sj0CRrueH5F9bOraUS0LBrL4FwGi24xf0AN
 GCOw8/2Fv5ezjpAYogRCUKks3pkhbaGllYEKNVUkEzX929p1MXywkxOX4rO3Cv5ey5cF
 xK0o79MAb0o5Z3CWDROzrNqVHM39iofMYaxKyehP8qt9F294ugKG/3lk3WbdSg5E21px
 URFwut80MMuWP1kdDhI5OCvFbMqWQtczo46AeWxmv6Q04FhgFeaMR7Ukz6VdgsJCatNJ
 YY06VX/+Ym7QVPrtCiZPDg89BVBZ5ymezXU+CBekpHgnkdEWeFrtRVVNVgspOIO5jb0D
 r7iQ==
X-Gm-Message-State: AOAM532Uvup8oUl6AkNVWIcb3+VPRb0ur+/VjrjFA/umvoqhQIKYqWdi
 0Mow/waWSw59f7m3GcI/4KvLxg==
X-Google-Smtp-Source: ABdhPJwqvnJnWqhwVAesxwkNMVAizdqs1uKuIvd8jRacJUioeNcvwATRrxSWsQE1u6j+Mw/1JkaekA==
X-Received: by 2002:adf:dfcf:: with SMTP id q15mr8920904wrn.373.1590765581283; 
 Fri, 29 May 2020 08:19:41 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:acf8:18a8:b3a5:a17b])
 by smtp.gmail.com with ESMTPSA id x66sm9220421wmb.40.2020.05.29.08.19.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 08:19:40 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v7 1/6] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Date: Fri, 29 May 2020 17:19:30 +0200
Message-Id: <20200529151935.13418-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200529151935.13418-1-narmstrong@baylibre.com>
References: <20200529151935.13418-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_081943_066294_288E1D69 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic uses a proprietary lossless image compression protocol and format
for their hardware video codec accelerators, either video decoders or
video input encoders.

It considerably reduces memory bandwidth while writing and reading
frames in memory.

The underlying storage is considered to be 3 components, 8bit or 10-bit
per component, YCbCr 420, single plane :
- DRM_FORMAT_YUV420_8BIT
- DRM_FORMAT_YUV420_10BIT

This modifier will be notably added to DMA-BUF frames imported from the V4L2
Amlogic VDEC decoder.

This introduces the basic layout composed of:
- a body content organized in 64x32 superblocks with 4096 bytes per
  superblock in default mode.
- a 32 bytes per 128x64 header block

This layout is tranferrable between Amlogic SoCs supporting this modifier.

The Memory Saving option exist changing the layout superblock size to save memory when
using 8bit components pixels size.

Finally is also adds the Scatter Memory layout, meaning the header contains IOMMU
references to the compressed frames content to optimize memory access
and layout.

In this mode, only the header memory address is needed, thus the content
memory organization is tied to the current producer execution and cannot
be saved/dumped neither transferrable between Amlogic SoCs supporting this
modifier.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/uapi/drm/drm_fourcc.h | 74 +++++++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 9e488d10f8b4..f7692fa2d32d 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -309,6 +309,7 @@ extern "C" {
 #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
 #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
 #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
+#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
 
 /* add more to the end as needed */
 
@@ -810,6 +811,79 @@ extern "C" {
  */
 #define DRM_FORMAT_MOD_ALLWINNER_TILED fourcc_mod_code(ALLWINNER, 1)
 
+/*
+ * Amlogic Video Framebuffer Compression modifiers
+ *
+ * Amlogic uses a proprietary lossless image compression protocol and format
+ * for their hardware video codec accelerators, either video decoders or
+ * video input encoders.
+ *
+ * It considerably reduces memory bandwidth while writing and reading
+ * frames in memory.
+ *
+ * The underlying storage is considered to be 3 components, 8bit or 10-bit
+ * per component YCbCr 420, single plane :
+ * - DRM_FORMAT_YUV420_8BIT
+ * - DRM_FORMAT_YUV420_10BIT
+ *
+ * The first 8 bits of the mode defines the layout, then the following 8 bits
+ * defines the options changing the layout.
+ *
+ * Not all combinations are valid, and different SoCs may support different
+ * combinations of layout and options.
+ */
+#define __fourcc_mod_amlogic_layout_mask 0xf
+#define __fourcc_mod_amlogic_options_shift 8
+#define __fourcc_mod_amlogic_options_mask 0xf
+
+#define DRM_FORMAT_MOD_AMLOGIC_FBC(__layout, __options) \
+	fourcc_mod_code(AMLOGIC, \
+			((__layout) & __fourcc_mod_amlogic_layout_mask) | \
+			((__options) & __fourcc_mod_amlogic_options_mask \
+			 << __fourcc_mod_amlogic_options_shift))
+
+/* Amlogic FBC Layouts */
+
+/*
+ * Amlogic FBC Basic Layout
+ *
+ * The basic layout is composed of:
+ * - a body content organized in 64x32 superblocks with 4096 bytes per
+ *   superblock in default mode.
+ * - a 32 bytes per 128x64 header block
+ *
+ * This layout is transferrable between Amlogic SoCs supporting this modifier.
+ */
+#define AMLOGIC_FBC_LAYOUT_BASIC		(1ULL)
+
+/*
+ * Amlogic FBC Scatter Memory layout
+ *
+ * Indicates the header contains IOMMU references to the compressed
+ * frames content to optimize memory access and layout.
+ *
+ * In this mode, only the header memory address is needed, thus the
+ * content memory organization is tied to the current producer
+ * execution and cannot be saved/dumped neither transferrable between
+ * Amlogic SoCs supporting this modifier.
+ */
+#define AMLOGIC_FBC_LAYOUT_SCATTER		(2ULL)
+
+/* Amlogic FBC Layout Options Bit Mask */
+
+/*
+ * Amlogic FBC Memory Saving mode
+ *
+ * Indicates the storage is packed when pixel size is multiple of word
+ * boudaries, i.e. 8bit should be stored in this mode to save allocation
+ * memory.
+ *
+ * This mode reduces body layout to 3072 bytes per 64x32 superblock with
+ * the basic layout and 3200 bytes per 64x32 superblock combined with
+ * the scatter layout.
+ */
+#define AMLOGIC_FBC_OPTION_MEM_SAVING		(1ULL << 0)
+
 #if defined(__cplusplus)
 }
 #endif
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
