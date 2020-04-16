Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3411AC9C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+G9bR8Rez1WHnctaSXLnRnlYSBUcfT9hzyalheyKEV4=; b=HxnKftXwBaCLIg
	7robDYifK89xwLjHTFHNmtoCB+R5evPDVvrLbyOWEGIEIw8hxoaIE6cZ9M+abf0n78UspUN9/TLo5
	rg1G91R9FVnYZU/zawlDsfTK/xA47mpdgW012Nem7ydlOtdP7U503ZqkgvkmchN+76+BTtjDo0Gyh
	o6jKNRXlSsIJQlJsgivC6sczZhaU7dQVuFQ/1mORPi2nVrF6wb5xSdx/FWCqFiBg9uLQe+EmuHz6X
	v1j0VrO3/dfGYQJMULKDWddmyYqTzQKR7D29INQ5+bP2xbCi+TWTCIhoPL12rAGCDx7c+3cbiKKLJ
	ev07zsTqWoiqnGrJT0ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6QF-0000NH-QY; Thu, 16 Apr 2020 15:27:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6OF-0006z9-Ru
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:25:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id h26so5320416wrb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x74ZNY2Ii0Wq7WqU8UNzlM4qIe5Anz5MtvDWgXAqJ8U=;
 b=Q9sFCx/QxugMEbo/HrWaN7/l9wYvrDBzi+BaORQLde30NDU+pchUv6x2xo4yNFqJcW
 C7a7bKJTD9UtwfKR/BnAmmVHoYgycsF/kf1jx7CZXLkJJdvmLuZwyV4JBs3AXkqFod0M
 xv6XoDI8LhXY2WeJ6sQ+JyFUoxrljmxSmAK74DPbUQ0DNDoRYoxPB78f+pOGzlALSGKa
 psP4tH29K6BIye15yiigPWJW5F9yOpvQC36gvol17c1syMD22b8bMVf3nd0ZnIXa+KhO
 VSUkeR03lEnZd5cj7EsuDZjzUFWToJYoGX7UjSOD+EOpIijnNMkc1r3zIYrPXd3oKar8
 /9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x74ZNY2Ii0Wq7WqU8UNzlM4qIe5Anz5MtvDWgXAqJ8U=;
 b=XobaAp4y6tGUfy1xyfH1nw0CplmmxiUivE16tQTzgA90sulsmmP5t5Ff9dE0JF5YqD
 CTb5TKMa7IlOAzoEc03J+lUP3vY6VzBH4XY1vxq5Zp7lU2bxu/CHcfeqR7V053uG7yNX
 qMAtKm1hg5MjCegoBlHAh3cLRS1anoenyoHNnHtLZXf9Y89WWsCr0EDD9v7FK4SlEEpd
 fJSa+QRNthV4Ogd9d9xVDIyuKhz8ehHWW0mjHlQgDYAE6ix+2ZwNLkjnI8Mo+pDOSOEv
 NpLTA5fI9j3n97UCKNQHVm2lTYhP+4XtsLU4+vTQwZyAmkNjYR3iYd8cicdUB7U8uiyG
 K5AA==
X-Gm-Message-State: AGi0PuaBHLNe49x/YXDs/dHjMEPAqIHb8VZstMLz5C/ItBJUGtEwMKGd
 yx2DCtlWqL7NSKRcqrSd2LXBjOmEMFoy0A==
X-Google-Smtp-Source: APiQypJD88ybgaDtDKq1U3lq0cPR53Jd+LyWH4BTyYS5P/piMZdjIcsHLVxv0kGThgLlWqtQbsiCcQ==
X-Received: by 2002:adf:f2c5:: with SMTP id d5mr35893659wrp.409.1587050718352; 
 Thu, 16 Apr 2020 08:25:18 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i17sm18019489wru.39.2020.04.16.08.25.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:25:17 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 7/8] drm/fourcc: amlogic: Add modifier definitions for the
 Scatter layout
Date: Thu, 16 Apr 2020 17:24:59 +0200
Message-Id: <20200416152500.29429-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416152500.29429-1-narmstrong@baylibre.com>
References: <20200416152500.29429-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_082519_982125_FC16FCFA 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
index 664dd238574a..ac2d4753eb6d 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -843,6 +843,19 @@ extern "C" {
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
 /* Amlogic FBC Layout Options */
 #define DRM_FORMAT_MOD_AMLOGIC_FBC_OPTIONS_MASK		(0xf << 8)
 
@@ -854,7 +867,8 @@ extern "C" {
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
