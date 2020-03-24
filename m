Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4E01912D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:22:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+KzI2Vf93kOyjISlzeVV4gDkoY4dz/7TU5wXJPU074=; b=dJ/CdmyWwuMviF
	iWQN5+NhRKPS9GZTbOcHNGMY/Y+KvshN5FgtEp0ksPEBrSp/dLhr58KnRKZH2W95gdegfCSM5e1WH
	ihO5xe/jug0j17KKUBOgDSkltB2yndYvi0yagIwBD/ZEzTYzacCRTqjXYzmnSFjwpwaJgLaiEzfqc
	jO9OtcrJduzgboezMypr+tUAwTwTOxGPDIdH8XJq4pvLrny63LaUT5lcqoD0XLxMnCn1YEeslGOv2
	rUkL2X5NsMOiZDPdmrs+/97phbm7gZN07JfZsQt5+T/QaIpIwBmihu+8rxIIjp6twQnMD9dcIz/hS
	xpz4QowGt/nsLlouHD1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkRe-0008VX-Qh; Tue, 24 Mar 2020 14:22:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkPv-00075V-Dl
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:20:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id t7so16981235wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/WyG+n8djNvIo3nOPxwWbAPG6RneB4WAm9wKQe+zHsY=;
 b=kgvsjSTRISrTA5t190/L3CdCx53KraHUPzxQJAdGOT+B+wo7Q++j7C4esQEoaZ7m9h
 lqxHe1yA3pKLxXcTcp1PZBy/RGQYypcaCqsD1do5Q5HE503nZClU6tjyBP2B+2+A3Bbl
 YrqdoRemrNhhrEP+Iwf/fd4QFc35y00KP3OxbGbUnMZVN+odWo1UrlH+wGIuxv1F2NSy
 30Fjn/Y8zBVVMHsDHd/L2UiwFCuDo34GQCisSPQ6D3S9iPjaF45260jNChtx78S0RlM4
 8jNTxmBnzt2nbGrv3cFc2u33hMfxJkXl2hz+cYC9bumk9LkB7atxovFX3Y6A6lxGneHw
 b3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/WyG+n8djNvIo3nOPxwWbAPG6RneB4WAm9wKQe+zHsY=;
 b=jyzPu47Hctv0d0BZ90fQaK5TiyD/Co2vg8gFIvVaSEP2TYXZtAc0HeqSV8q27y7tUn
 30r2YBJNFf1FwfmPI0Iey+vMZGHudzlxVXK5tgAeR+yZF0x0tSle9UawhzPGLXoTD2mF
 5XESOrlnLkAvy2TsPw945yEOpgYfCxRaS/m+sxfnxtyBGIrosD2CDqJ2br5jYDDk6fLW
 ZKcVb0cecujVou54CSJHGETsm0R0MODw6/u8AbSpVF+cgmxNx469Ye5X+OiFUAiYBdTg
 VOP02tSDqJdCmWS1ZySl6JEKmq6JVVEHR5B66Q23YEJE9ktjUn/A9+9Db44E1ZXk8SS3
 ahDw==
X-Gm-Message-State: ANhLgQ3oL3iNFMIK3VukGu8RfTt9Uru3CjG9IC0YMW9Xgq3Y2PWbsP7W
 ooXwdP4IBhnJETgHG7fNVrqStA==
X-Google-Smtp-Source: ADFU+vu2pPTHrxXiQqwlVpbFf/IYZjooPuR+f8p2vHH2AMc5SvS3CVLEsI6qLMJRtysQLUQ01BwuVA==
X-Received: by 2002:a05:6000:10c6:: with SMTP id
 b6mr36580657wrx.130.1585059630058; 
 Tue, 24 Mar 2020 07:20:30 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o4sm28688472wrp.84.2020.03.24.07.20.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 07:20:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 5/7] drm/fourcc: amlogic: Add modifier definitions for
 Memory Saving option
Date: Tue, 24 Mar 2020 15:20:14 +0100
Message-Id: <20200324142016.31824-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324142016.31824-1-narmstrong@baylibre.com>
References: <20200324142016.31824-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072031_503785_323B03AC 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

An option exist changing the layout superblock size to save memory when
using 8bit components pixels size.

The layout options starts at the 8th bit, keeping the first 8bits of the
modifiers bits to define the layout.

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
