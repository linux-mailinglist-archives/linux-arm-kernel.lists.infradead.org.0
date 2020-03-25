Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D33519234D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zj6jQ9BIUmcDZguyRoaCELZEcJAAyRhtrVINnjEoRGw=; b=s6gdPpJLIgBMCf
	yuzqw3VT3O3hB0ZlCIIGIbfUJwbfmDHhjGprUBdQTpMJN4EWDQfoGw06KKFiAVffnPs7ABF/olLcg
	mJVyIl0fCTGONp2t61w2KKVvAFoSVIxU6Vng0g40W2ifo/gQhcsrKlPohSWEs+XiaxSAQVg6sUxIV
	2Prdnpcnshx9JHW8f3Gt0NfugjCPH/3TvdHONWr3t7s9UroctNI7wLObOSRm7K+Ov0AQQQ/4vBeLf
	KKLdAYF4+R3R33VczeNnfpnzrc5cGfvJYkhD2NC4RNkzqrPgiPOLxImCmD1cRk28EgO6+DXRgUG2P
	SFcPZ/SIFBblcCHYePdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1mt-0005iw-FW; Wed, 25 Mar 2020 08:53:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1kG-0002rC-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:50:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id w25so1568193wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 01:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q9l8X4L1wYo/Bu0UrNNDh9XednyRebzGgXHXi0wzQ5Y=;
 b=noxHwO+a8RZLmm/H8YM/X17fO+M9jPDojcTFnZOiHMbgM/KRXHq1P8x5uREIDIg+SF
 FJyG78kJ4A5V4zmcF+8XgOwEhYXMObeC4vPtnUF7+ljYjlpl95BLgqYwdnKo7LCZ8362
 fMrAcLF/+AhFLB+9Ql5EHtE/GKDJZXntL3Cm0Fgxi3F+SNCgAiwDGW5z4M1CYEjP9Uxi
 Z8jEBZkhvqnKXX4DDLrzBKiiOwzJT1EtV4rC3gHx55rli4aHT1xZ+pElPKaPXE9NCBYU
 BFaWMwcEO9q3+pth4qAcHgPBkcBnhbSgfQwOqFk6y6PBvVj8rSNNH0OVsNx727FxypaK
 3njw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q9l8X4L1wYo/Bu0UrNNDh9XednyRebzGgXHXi0wzQ5Y=;
 b=ejEO1iFmGJb1uPIR160OhJGs8iu9LznYepCtpc6IIM7RsO/uigY5DL70W7mhH66gWM
 m8U+FaDTB2I5czK3d3IZeZ+d3vzv2El09KjNmbK+TceXiu8pBcS0YEBsJO2dsgFpM/m/
 x7bw/PnWoXHu2PHJdOY3Cq2DpNCGF5UxKvEtUbov5ewFWGN79RxsgwGE3IsBxjel41vB
 0Rf8zDl0h/jna8dvHo92C08blO3qBWfYyAwEb86LIzgrB2WoXEwesEiF6lS6UGLfB4Sx
 ft6PbzlbvFqIJN2XzY4L13uFqM7pq0kUyEwzEsQRHFxBWF9QrPPXR5v+wt8N8uTvt+ke
 PTfQ==
X-Gm-Message-State: ANhLgQ2HilDSzincvjlFGBnt+u8hBHCRWOa8V4yTF38sO9kfXs5PyXiR
 6xAYufG70NDViEkYlb4wiWqdaA==
X-Google-Smtp-Source: ADFU+vt+uw4hhT5gVLqrLThJ7Bn9/HL7QfI6wZ3InIgG/WW9t5QAx3AdZg1AILOEFxruKjtvkGDmDw==
X-Received: by 2002:a1c:1fc9:: with SMTP id f192mr2427074wmf.4.1585126238688; 
 Wed, 25 Mar 2020 01:50:38 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o16sm33892229wrs.44.2020.03.25.01.50.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:50:38 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions for the
 Scatter layout
Date: Wed, 25 Mar 2020 09:50:24 +0100
Message-Id: <20200325085025.30631-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200325085025.30631-1-narmstrong@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_015040_260324_F7C570E0 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: mjourdan@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 ppaalanen@gmail.com, linux-amlogic@lists.infradead.org, brian.starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic uses a proprietary lossless image compression protocol and format
for their hardware video codec accelerators, either video decoders or
video input encoders.

This introduces the Scatter Memory layout, means the header contains IOMMU
references to the compressed frames content to optimize memory access
and layout.

In this mode, only the header memory address is needed, thus the content
memory organization is tied to the current producer execution and cannot
be saved/dumped neither transferrable between Amlogic SoCs supporting this
modifier.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/uapi/drm/drm_fourcc.h | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 84edc5d69613..b49f1d45e1b4 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -840,6 +840,19 @@ extern "C" {
  */
 #define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC		(1ULL << 0)
 
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
+#define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_SCATTER	(2ULL << 0)
+
 /*
  * Amlogic FBC Layout Options
  */
@@ -852,7 +865,8 @@ extern "C" {
  * memory.
  *
  * This mode reduces body layout to 3072 bytes per 64x32 superblock with
- * the basic layout.
+ * the basic layout and 3200 bytes per 64x32 superblock combined with
+ * the scatter layout.
  */
 #define DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING	(1ULL << 8)
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
