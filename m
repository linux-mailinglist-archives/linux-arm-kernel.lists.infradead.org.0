Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BED6192340
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RW7Z1fGuX/cmIXa6TzVHArwCV007mp3caXGqgiCP9M=; b=aQbyYYQx3Ir38F
	WPR6+2foJ5Jx78LKffRLH86yCW910snfwtBkASpT+r4q4W9veV7Zi8laiXupajsvsnlJxHf1x/ysG
	SN/nZUdKXnCBBO21WgTHzzv3ge0LHNpF2EMNvo944FrMrh6hz7TsNfwK0F16oNTS9qaYSbZhSweHC
	w9uY33mT7mmYiuv98f4mMb8dQMgC77Q+r5QWf1QG1rQFp7pr3mOrSUgSfOYR4A0qRIJq9XmPQtcJE
	7cQnb9vvnelK6S4zg5k4gEe87+Hprfvoyy/8HoRV+XhcIYiColBA1J5vJ7JYpw91DntnL0U5kLwTb
	r9pwYAYocr9P8laPzynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1lx-0004gL-CU; Wed, 25 Mar 2020 08:52:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1kD-0002kh-MU
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:50:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id c187so1406550wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 01:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ANDOlCT1ZqrnKgx/+UtkXPnR52K04rx8cZE8y2hTCQU=;
 b=pgsyudR/D2KpBB4/CqRb3vU07WoAY4c5vp9glayeMsrR3uDiTPhmtEDK+AWoQqkzHQ
 bvypr/WDimmRzKQ48OxtHMcKAjTT6iIXBdLTWhlFb+93oRxsvpeczFkVeg4aKq/wQ/Je
 rfl4bK1txMY3ppAZIm4afopOmNjNpExwGRpAeB14dZhpkQZNQb4VbGA0ALzAiWLVotmU
 +UiL8ZI9SrjEu3Uucu2dCRVRqDazHya8qIot8dJIp1DRUN6vEj9i3TURcaiYWPdGPb7v
 OTSR7GbpUra2bCrJH7EkC9JQfY3865RiKJi4lJo1XeMHh9yhUeU3NBZvxqC8MdfvsC0R
 pc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ANDOlCT1ZqrnKgx/+UtkXPnR52K04rx8cZE8y2hTCQU=;
 b=b/po8l49Kn58UMnCHbfMiLRT3021BLOwlIVrViXrAXgJlH+3PAHwzNqdRAxeR2tJwz
 w20sypeQGYDjMvFOEdNcNP1ZEHRfkLuWZH8O9f6j87FxA9QFB3TT+r3PCqzEQuyEuI/W
 2rBm4FdLHgGYgSn1kWbMUmrIt3952nu4kl9Sg74icFpaRXGYR57b9AzppaK7b7opdiJZ
 98yJ+bIodalSv9pGVWuvCy3JPNlRvZCBiPEUf7TSVrA14g27nWqoqI5Pcsb/00aDMUKO
 DIRmAGwNrcbPiH2LmArbtLyFt/i/2/XtwkgYgqXh95nq65mJBXlFdn9Q2sfbcCfZSqjm
 e0Uw==
X-Gm-Message-State: ANhLgQ1gt6Xdaz/7iN9s64a3cw0vt9uR5xVmlqXW+cKhFL+Pj7CiadYE
 gJPAWTMA+FfeuZ3kY1husTp/qQ==
X-Google-Smtp-Source: ADFU+vur2MxTtHCjMfpHGxgRx4ZUbLJ6QSkqLw6sapP5tKS8pwjf38c2XDZiJmEAsfp/QTuirs7tBQ==
X-Received: by 2002:a1c:81:: with SMTP id 123mr2218819wma.97.1585126236258;
 Wed, 25 Mar 2020 01:50:36 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o16sm33892229wrs.44.2020.03.25.01.50.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:50:35 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 5/8] drm/fourcc: amlogic: Add modifier definitions for
 Memory Saving option
Date: Wed, 25 Mar 2020 09:50:22 +0100
Message-Id: <20200325085025.30631-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200325085025.30631-1-narmstrong@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_015037_757380_3B2621CB 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

An option exist changing the layout superblock size to save memory when
using 8bit components pixels size.

The layout options starts at the 8th bit, keeping the first 8bits of the
modifiers bits to define the layout.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 include/uapi/drm/drm_fourcc.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 6564813d2f7a..84edc5d69613 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -819,6 +819,12 @@ extern "C" {
  * per component YCbCr 420, single plane :
  * - DRM_FORMAT_YUV420_8BIT
  * - DRM_FORMAT_YUV420_10BIT
+ *
+ * The first 8 bits of the mode defines the layout, then the following 8 bits
+ * defined the options changing the layout.
+ *
+ * Not all combinations are valid, and different SoCs may support different
+ * combinations of layout and options.
  */
 #define DRM_FORMAT_MOD_AMLOGIC_FBC(__modes) fourcc_mod_code(AMLOGIC, __modes)
 
@@ -834,6 +840,22 @@ extern "C" {
  */
 #define DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC		(1ULL << 0)
 
+/*
+ * Amlogic FBC Layout Options
+ */
+
+/*
+ * Amlogic FBC Memory Saving mode
+ *
+ * Indicates the storage is packed when pixel size is multiple of word
+ * boudaries, i.e. 8bit should be stored in this mode to save allocation
+ * memory.
+ *
+ * This mode reduces body layout to 3072 bytes per 64x32 superblock with
+ * the basic layout.
+ */
+#define DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING	(1ULL << 8)
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
