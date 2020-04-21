Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0361B2C7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcKyTlgjpMfjBQw7YVD0XPe0Ot8H5PsXDBKCivgW3Y8=; b=V22+QV+v9/ZcRt
	ymuVmPwdTi2IzbS5vFHDg8+WVHqr/2vqE7V3vTdzOXL7+RZ+w22DnQrDuNkPVfkWite016oa+K5Fo
	w2a9jqcINsEbkP8Mcx2ZRid5OqcMvxuln4uggAgeHxDAq5guzG86fUOfML+vc4T7DJ+cjUUm54DZQ
	FBC/fLYWzn+dY8cM4vXlTiZ0n9Q7eEUGpUWT5Fqyy5NhWW8sYUE3s3eqWYhZpnJyqqG2Pxz28kObS
	Fq3OqOKCWgUKqr7BwNo8kqVDb6RVpO838JCGbSBsYbpXF669RfBfLevmEeGATw2C6Zb+E4CgW6w6r
	Eq3ufDy14kxJRK3mMLFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQvdF-00054C-Pp; Tue, 21 Apr 2020 16:20:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvZB-0001h3-NY
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:16:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so4370871wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wEt0VLaSvhUT7nyu4RhagnuYQaTu9Oo49aJG5CKXEWA=;
 b=NGgecMLbtC3PDBUY6z/AYFi1locTndBe2dvXfhXuoT58q4xdHw4EWuhWQrT4AEepwJ
 rNDUYpKQnKVSC4ulOjpKkAL3AtXaWs/6ddc6Rqa5zbPUIgifptOHCtw4A2YBVZjn/9/P
 HTESIv5cj56mRjKJOb6zpszwPHwBKL2XzTxGmTkR5CzJheM8NWw4wdLAHa7aDkd9knxh
 OUvzYbI8Ig+gcy67146tEFuosPOTq+KikWJLSiy5fbskn8PzX66zbDwiWqdPIv4vItaJ
 oBvR6tJzVtmZfTMeeBq6MPaf5tmvEnP1O9QTKj1eCsQQ1XQQ5tB79W6VeFS7RmbKauEr
 gHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wEt0VLaSvhUT7nyu4RhagnuYQaTu9Oo49aJG5CKXEWA=;
 b=ceUug0lhhPSTBvej8sSM+0SSlLOsPsPqm7tmNxPF9d+2GKOaQ78eTachpkg5BixqLt
 gOCzyTSBnvar6jxIa6UNfOCiBJmVye69TE6KnFhOflsCvGkXgF0mc7Hs1XkzjMGIfgN7
 avSUsbPh7U2gS0+Yg5I/oWNXWSzGRm/5tV97yLvZjeQNVo1P/k36YPoMV1bxB7HO3O2e
 VRP9eOVtiR0IjtSKAQDcOtHpVmK2CqHEEEzsf1c7j90lKfX9geocq4E52x4UaKM877Zq
 0xHqFXa5ZMEmrJjIxXNlzFAEG5S5ld4fu5xHe2E1cJXPxWJ+VsEtSdNAGz6mj29OUf/D
 FPiQ==
X-Gm-Message-State: AGi0PuaReCM3ct65LANrbXKvGFAkblHacPjCLxb0iKmQqWFlBOQImVOR
 TPuo5EYg0LsVxiDDhWUEgQKczA==
X-Google-Smtp-Source: APiQypI3cie8pkqJDDqXzSqoQ2mnR5NO+rWE/2lxIKLD/sckQ4zuzNmDLYDnaGtbYCraqJ9NfSJ/uw==
X-Received: by 2002:a1c:6a0b:: with SMTP id f11mr5608062wmc.123.1587485767562; 
 Tue, 21 Apr 2020 09:16:07 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 m8sm4410873wrx.54.2020.04.21.09.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:16:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 2/6] drm/meson: add Amlogic Video FBC registers
Date: Tue, 21 Apr 2020 18:15:55 +0200
Message-Id: <20200421161559.2347-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421161559.2347-1-narmstrong@baylibre.com>
References: <20200421161559.2347-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091610_010079_34238CAB 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
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
