Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F03119233A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMco8IcoPMli0mYSBBlA7Hm4QtKW91057G/AoWdQbes=; b=MoYHDah98ALOZR
	T2xTlnPCmIpY1ODjwgGpH1ndLdZjcuT1xXOXWGsCrRjiKcsXbjfO00wCUeBbP1YVBqIoKUdDGmd06
	9I1edcIdfhbWQ2TjtDdKJ9zXlmW9EwQFkyI57/Wvf3WzjtYs4p/q5gQ5DL6rpFDSWStkmJ6dq8IC+
	0538QtXMMgG1TEsVDAkCSanOJnt53duOisvEnBcT0s7rhvBdqer4MAXxBzc4eIiGbYoE7DojFagYY
	OuG3ZRdopjclB6iybh07tbX9Tjma1MMxL06e9sVO5Vnoy7XXE27pns8eaWaJIRsGuZfASwzNg05L/
	O6O8bsvUPk8AFKhn2BPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1lJ-00043f-VM; Wed, 25 Mar 2020 08:51:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1kB-0002cZ-83
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:50:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id c187so1406172wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 01:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kNQXsVDevnlZb1LKGB3Ujzy43w3o9PSRXDwMVWOkBSw=;
 b=wWvVIPh6SDMtMbmcyPL+7DTO5b9bPC/1AiW8rKENoQunhsv0xqdP3US3/Wk/EC0JkP
 riB7Oi5CewnR6asT+DzI380C2FTSkdGaA9jfKMQMFS0uEt/pL53jeahTpHSZDEqgf4mQ
 Js59FtpnZBmynZRL1f/+S8ed45pyCJSMqaSnqSxaX5AmlTIafSajCfH2OaJR1BOn29s6
 h+WYi6w3ccoTkAta4dspSRgyLaRQq99BXMeuSddM4S3D1py5KQep31KwL+Ab6iotS6Oh
 OR+jc1Q0fCYX9V7ADzy7V6irNYRtlLMS0a6QlRyQD6qAlAmfPYlqTxqzdDyYq+kjTG3c
 akPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kNQXsVDevnlZb1LKGB3Ujzy43w3o9PSRXDwMVWOkBSw=;
 b=Yk/ECXjpPHieNew/ECbRVoEIoLr9RFV0MIIn3xcVGs80H2dUeBbaSCAidc9H/nGwoo
 rT0xMoK3eOLIvaAQaGvwVN0ZSfTjPRO1J9VMEbsjTx5OH3SSDRsf+or1ZLgM5NXi6x7d
 JVUosGF9e+o4mWKWxjD5B7qQ4lYgO5h3GxjR1mMIPwccFq60FY2Hmt+b1KqDdSFJ74Vs
 VfuaTiZ7APEAaTHUOKT5rU05SscS/gYbFEqgffaNz0bAi3fpCTf3zjtZiKmRnpphxfRl
 924o0m1nTeKCPX9jPwMJ6s5fC8xONr0kVFk+uTTv10z4wnnupcUEBYATJYDlPmiy7q0P
 X4OA==
X-Gm-Message-State: ANhLgQ1EfGyDZeVW9YLeyZTfZyh4AHdxDRxoJ43/nBkqnnndRqRxnGhv
 a6bUJ2WCHs6E8NAz/Byhm2PURg==
X-Google-Smtp-Source: ADFU+vutjR8yjcwJIWw7JDjncyKk41p3983bAe/W5fRN3MrpHabRbIq4Oh/Ad+2cQD1wZgWl/XnxJA==
X-Received: by 2002:a1c:5654:: with SMTP id k81mr2378424wmb.145.1585126230271; 
 Wed, 25 Mar 2020 01:50:30 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o16sm33892229wrs.44.2020.03.25.01.50.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:50:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 1/8] drm/fourcc: Add modifier definitions for describing
 Amlogic Video Framebuffer Compression
Date: Wed, 25 Mar 2020 09:50:18 +0100
Message-Id: <20200325085025.30631-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200325085025.30631-1-narmstrong@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_015035_414203_7FD57EF8 
X-CRM114-Status: GOOD (  10.04  )
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
