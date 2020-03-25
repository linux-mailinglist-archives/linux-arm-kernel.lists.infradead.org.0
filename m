Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D084192337
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:51:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcKyTlgjpMfjBQw7YVD0XPe0Ot8H5PsXDBKCivgW3Y8=; b=uUXrTbWhxLG+aV
	WQQd2SfBt9X1Vmkj5t0EuKMIVi7TEDbH5nWzxjsuyttwpF3syIKUVH9P4zbhWPcTODZCHP8SVvDlZ
	CM9aj54ElFgLqrFdoXPEYXNF8DpYDIxSA0cdZFqeZBUKCZjTu4yhf1UWLjXpJCkbp6DVPSI1JCDr6
	92PtTI9n5pcueCgd/fPNB5SblmwifIPms9dHNcPw4il0X/uEmY5Ni5RT+fUxDjhRUeADsUrmkCaG5
	oQ8s9wiHrmGPwleG57x7c6LNGYnt/s2YqzJ9C4uOd591FaD7MEGjDZil0NSjuc1V4L8+NK/94QJFF
	UY/O4tpO/3xqiAq+ThAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1l3-0003cd-01; Wed, 25 Mar 2020 08:51:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1kB-0002cb-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:50:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id m3so1527296wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 01:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wEt0VLaSvhUT7nyu4RhagnuYQaTu9Oo49aJG5CKXEWA=;
 b=WNW1hxOUyik3KNX89dbIVqZHKUp+GeaU0mIGsx5AGcA2EuJud5J9sgmXPwNAJNWUhS
 3gzEx2ZwHgM7FY0xV6TiqFygdp+aX3qLpCLJBMSetYpCI4lRzi+S2qb+ybOQunU9lEcU
 W2wR6p9oXBw0yAnuBnGoEp2uKJhxhcwrREF99XjFNJf/mnsMXzF/Aw4pDRwtRyiBcfmq
 TuSriR6W1vjly0cRdJQy+MoZQnTDWqcHPRq69iku1IpaKT1oTWUavMfDQBxkdzc0lNWU
 t6tlAydLJYLQ4coxz3OqEOHlom5Hazdyz4wmZcST/jTrdm4ZVBilqsyYQCB5/mU/X9sO
 gGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wEt0VLaSvhUT7nyu4RhagnuYQaTu9Oo49aJG5CKXEWA=;
 b=Iiv/e1XTwDaQ12WBHIDpd9GbBgajISVxoA+v7y039CWkwNHDiz9af02o62vjR1HZIz
 WyjaAezYLJ6PTYz7gr5AkZong5Ob27LecqMDpqSSHxQrR9uebZ+21uJc5r4buQfPy9zR
 B3LV8ZGZgjqyO9Lsn1ExiHs7UwKMaQkuvHivBnD8exYpmK37o4GjOTg5by3gzBWfpUvi
 3NbF9GMrSo6HPpNAASS0rVtizb418JhaIxK04QQ2JSEDOF0wxGd8ehUN0mi56KHilQv5
 iJ87K+Tyt4K+2+gQv+LEULs/nMgI0SIhBrsCMPq8HstwrvT9LgiFXeHX9XvpaTlzFhy8
 emow==
X-Gm-Message-State: ANhLgQ2pN0/RGHfeaYQwXzdoz6KC+eZrRI/hTdIiTG24hrrdA+aBZXJg
 WQeVwToF7ykTgOYeiFDHhaa+ew==
X-Google-Smtp-Source: ADFU+vuaSMZ3OxlYUBsL4QVXZmKvzAkmgnAjbIq0Fo7kTd5yKttbT/uXfyWOqm/ruqBs2RU6wMv7IQ==
X-Received: by 2002:a05:600c:581:: with SMTP id
 o1mr2375592wmd.111.1585126231690; 
 Wed, 25 Mar 2020 01:50:31 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o16sm33892229wrs.44.2020.03.25.01.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:50:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 2/8] drm/meson: add Amlogic Video FBC registers
Date: Wed, 25 Mar 2020 09:50:19 +0100
Message-Id: <20200325085025.30631-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200325085025.30631-1-narmstrong@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_015035_415517_AA9680FE 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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

Add the registers of the VPU VD1 Amlogic FBC decoder module, and routing
register.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_registers.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 8ea00546cd4e..08631fdfe4b9 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -144,10 +144,15 @@
 #define		VIU_SW_RESET_OSD1               BIT(0)
 #define VIU_MISC_CTRL0 0x1a06
 #define		VIU_CTRL0_VD1_AFBC_MASK         0x170000
+#define		VIU_CTRL0_AFBC_TO_VD1		BIT(20)
 #define VIU_MISC_CTRL1 0x1a07
 #define		MALI_AFBC_MISC			GENMASK(15, 8)
 #define D2D3_INTF_LENGTH 0x1a08
 #define D2D3_INTF_CTRL0 0x1a09
+#define VD1_AFBCD0_MISC_CTRL 0x1a0a
+#define		VD1_AXI_SEL_AFBC		(1 << 12)
+#define		AFBC_VD1_SEL			(1 << 10)
+#define VD2_AFBCD1_MISC_CTRL 0x1a0b
 #define VIU_OSD1_CTRL_STAT 0x1a10
 #define		VIU_OSD1_OSD_BLK_ENABLE         BIT(0)
 #define		VIU_OSD1_OSD_MEM_MODE_LINEAR	BIT(2)
@@ -365,6 +370,23 @@
 #define VIU_OSD1_OETF_LUT_ADDR_PORT 0x1add
 #define VIU_OSD1_OETF_LUT_DATA_PORT 0x1ade
 #define AFBC_ENABLE 0x1ae0
+#define AFBC_MODE 0x1ae1
+#define AFBC_SIZE_IN 0x1ae2
+#define AFBC_DEC_DEF_COLOR 0x1ae3
+#define AFBC_CONV_CTRL 0x1ae4
+#define AFBC_LBUF_DEPTH 0x1ae5
+#define AFBC_HEAD_BADDR 0x1ae6
+#define AFBC_BODY_BADDR 0x1ae7
+#define AFBC_SIZE_OUT 0x1ae8
+#define AFBC_OUT_YSCOPE 0x1ae9
+#define AFBC_STAT 0x1aea
+#define AFBC_VD_CFMT_CTRL 0x1aeb
+#define AFBC_VD_CFMT_W 0x1aec
+#define AFBC_MIF_HOR_SCOPE 0x1aed
+#define AFBC_MIF_VER_SCOPE 0x1aee
+#define AFBC_PIXEL_HOR_SCOPE 0x1aef
+#define AFBC_PIXEL_VER_SCOPE 0x1af0
+#define AFBC_VD_CFMT_H 0x1af1
 
 /* vpp */
 #define VPP_DUMMY_DATA 0x1d00
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
