Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CA1912C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi35DaC3qFaqzX1KJ4Ay6CmJSCwJztHae4CY0qDdzU0=; b=KCnKB6FwRUIZTH
	0AAzSBZDDDVDxENwI4+bXXb3+pvZX63mCJWxiwL52OfZPqb77V3epion1EyvwGT3JjMylSgge4icE
	aBXi8utAo7r+rxkXFDV8cf5u3a/llVNcq+WHTZNxs2GAkeZvzpnCgP4VWPnL8xFlCxc4or/wneAn+
	xZENxHpbkcYA5gFQ+cCQkEtSZEr8znnB1LvpmrfDtoX4fuTaQCAM9zzn3LsN87gFtM9XKYHecBFPb
	uVpIJv0jg2P8h4UYKnASCNoKNkNhERwHxivaJHSphwwMZq0lr0XfWZYmHJ7iSO9spJY3GlQbA21FQ
	5A9FXeXZGTRmQTYXiv1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkQH-0007AD-3K; Tue, 24 Mar 2020 14:20:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkPq-00070j-59
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:20:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so15640197wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wAwZJvvwLgZDn1ywdQ6nPmOn7qCnl4VE3QuxXpY3Nzg=;
 b=Xsl08M/PvJVLWLPPkngG3LxHwcqqyhr1PyrntQo1Pjna55EDs/31lpg+TG8gyM5/HN
 3qsQEuzohclevTKn8dveoyUoF6SPBqe9oy0xahadz23jBugTJ6u3GqH6gID8E2tNcGR3
 UwHXHkoUTt/s20spoekxsaOKiGnKxhmDvMc3ZkpCIltoF5iM4f5siceEK58bjtzDZnnp
 zUyCUP0ZPizxM5h//4JTGHjyIMgA2B0r8ok+mhu4vaIWN7364GedTRyqqbs5YNhYELKs
 NEYFvYUjqli9tU9gd6UxpnDofklf/imdf613vFbnVFKXDQC9CcbZYullWH7c+K4ejNM6
 QfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wAwZJvvwLgZDn1ywdQ6nPmOn7qCnl4VE3QuxXpY3Nzg=;
 b=kCRyuKU7zRrP5hcgoQpWOPC26tl5YvBWd9DCVpxAK8eSyoCDXNjZxHXdglj189rWnf
 EJ3QlcX82zIgsnwgzjHh55lWSsI/I7bHcIWrbWlPIDuHLGUW+C9X/UMT4mRpaHzno7MW
 uyceZP76ydKmr+W1kW78z+ixuG6BaLSY+ClLRnzIQPnwMf+CYDbWNCc+0rT4RC8NG7mw
 2FRpcPWZ8GxcsiejztMfTnABV+m2l4mu4G0zth4kXXxW4u2XIaOZvuGvaRgFy3Jz/cE1
 g+dBy70/6xhh/BS3RlTLFjkcbJbHQ5idPKUhPa4xoEcRa0TyRkVRayBZzWSk3tyWKpLx
 +a5g==
X-Gm-Message-State: ANhLgQ02cuAwcPyxpzPqnxArsMmlYif+6TpbRKWAk4xOq3Ah56Qljrj1
 ujUIi0bSBM42fua27ZJHySpLkg==
X-Google-Smtp-Source: ADFU+vuWKFRgRnFG7irPanaxg/SMcv7FNJEKjQfKU2zqGDySjvyd/47d3NcTB7S4cBNrQ3ZYXpAi9g==
X-Received: by 2002:a5d:49c8:: with SMTP id t8mr22990127wrs.5.1585059624463;
 Tue, 24 Mar 2020 07:20:24 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o4sm28688472wrp.84.2020.03.24.07.20.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 07:20:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/7] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Date: Tue, 24 Mar 2020 15:20:10 +0100
Message-Id: <20200324142016.31824-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324142016.31824-1-narmstrong@baylibre.com>
References: <20200324142016.31824-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072026_200774_BEC37A73 
X-CRM114-Status: GOOD (  10.37  )
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
Cc: mjourdan@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, ppaalanen@gmail.com,
 linux-amlogic@lists.infradead.org, brian.starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
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

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/uapi/drm/drm_fourcc.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 8bc0b31597d8..6564813d2f7a 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -309,6 +309,7 @@ extern "C" {
 #define DRM_FORMAT_MOD_VENDOR_BROADCOM 0x07
 #define DRM_FORMAT_MOD_VENDOR_ARM     0x08
 #define DRM_FORMAT_MOD_VENDOR_ALLWINNER 0x09
+#define DRM_FORMAT_MOD_VENDOR_AMLOGIC 0x0a
 
 /* add more to the end as needed */
 
@@ -804,6 +805,35 @@ extern "C" {
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
+ */
+#define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __modes)
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
