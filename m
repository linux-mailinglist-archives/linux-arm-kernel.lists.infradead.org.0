Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C2A1AC9A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOwbSnXVX5dgWDZUBLFiv2dYHvEbCJjAXq6Pbm3/1Gg=; b=LBHZ5WsC+4BR6y
	aC4AiJ9JAZm/LCdBROaNTo5P9A9QQJFl5ui+zTEjOPD4ANJX2LuP0lnzG5Q21J3O08Ov0RV99aaUk
	kpPSpA/RI7ca9aIBPmaJyJ5qoQupbbjBhRWpS3DiGk6ppYvXaQgmRUUGD/qfKdewY4Nd4mYP3K3HE
	cGASD9cMK17WTL2O/KWTwZAtGF+S8liyP63JrgpruRFUpqW1Mf+5bEucMe6gsPdqoDRJyWm1iVvyz
	tQ+Ya8bEbfnI239NQFsvFoZ1YjzSnfaHR5xsDe0VgR/jRUcOCEYA3yeAYRTdx/11idBBm4Evw38Nm
	sjKHQR49GZK8CHpkb7vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6On-00079L-A1; Thu, 16 Apr 2020 15:25:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6O4-0005Rt-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:25:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id d27so5374046wra.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hlAyBA8CcMUXp85BDwBKC42D/qldDHdyj7qKWzB2WdM=;
 b=LWOSh6J4oHdRqocw6T+gupl4SfkmDILSRdedkw9pNCBnbVeVMJ3p1vQ1jCXYGKSc9P
 G0TA75egWRpZcSgxW5QXjT5T6mgsnueYjjSx9mGvHqaYdLtSaspzusSO94UPUN+DouSZ
 YL8ZnEfEjC2DLNwASGkAg6MFSdsEZDekgema+Db2EoTTBZcR/Nkbp/j9cVxdKpaNpBAA
 ygQy9iRIzRrLeevaU+aGRWNGMt9BbEtSSS7diKjj3kezmFZRztjSvWPX+/rpsxr2B+Ck
 xSWSrg8bO2kyHv7vtQ7cLw8FXu+gjR3cfceCa7AzvF08UuE+wX+dbOjizaaXH6DNugSE
 4rqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hlAyBA8CcMUXp85BDwBKC42D/qldDHdyj7qKWzB2WdM=;
 b=LxWEnF+h7m3zuZ611SndWdWDlIObu0/7Xns/QPv583BUUDwX0wutDIz9kvbZUbNMGl
 UE/4meVsDOQLhSuNM5loK69tL1S9y+3QaEG3r1rlNRsUJpDIhUzISx98ooM4tLq4YrAb
 EFcPma/zA/8Yn8PUIUBbkUezsCj33fgrOMT37uCAGfwHY3VHiDVdXBMIAJ4Jk2nasYHr
 x44S+rjd1r3tjW10j4DyPVjKnz93UHN9/omYxdJJUlJZ0NFlUyOLEHBEkCzfWrw039V0
 8XkCd/XaFQjld6qSh+fLGFbIkGQwTpZxjCv1qppSddaJhDmGqZi0I/bjYRs16W9RZaJG
 zT8Q==
X-Gm-Message-State: AGi0PubX6zt54Px1jDanh1uc0QYtTVwAC9fBgLTLAbV8Mhr9dYiU1FLB
 4aGfjl3o99jcaLigs5ayguC/xg==
X-Google-Smtp-Source: APiQypLqBg7kl4HJjT8KQzhJlt3fJAI3Rp5CAv4vKPEYnCZ6J+g5WvsII7utk6pPSMtnCGw9RSueSA==
X-Received: by 2002:adf:cd84:: with SMTP id q4mr20565789wrj.320.1587050706682; 
 Thu, 16 Apr 2020 08:25:06 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i17sm18019489wru.39.2020.04.16.08.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:25:05 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 1/8] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Date: Thu, 16 Apr 2020 17:24:53 +0200
Message-Id: <20200416152500.29429-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416152500.29429-1-narmstrong@baylibre.com>
References: <20200416152500.29429-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_082508_099234_BE79BE09 
X-CRM114-Status: GOOD (  11.86  )
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

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/uapi/drm/drm_fourcc.h | 39 +++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 8bc0b31597d8..a1b163a5641f 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -309,6 +309,7 @@ extern "C" {
 #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
 #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
 #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
+#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
 
 /* add more to the end as needed */
 
@@ -804,6 +805,44 @@ extern "C" {
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
+#define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __modes)
+
+/* Amlogic FBC Layouts */
+#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_MASK		(0xf << 0)
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
+#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC		(1ULL << 0)
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
