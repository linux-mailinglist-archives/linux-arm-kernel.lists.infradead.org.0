Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DE61912CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=balGKx0I/t7Mln5lovOuejbyeQOdIkDYq3BPGsGMJ48=; b=J5/OAMqtQZNtPO
	FBhjJFouQ5YNKhsVAijV7aHxzzk4yIa8n21kxofOw+SwUMGSYAcY6PA+QzT/PN0J4WRhVtDHU6Y8Y
	F1lvqkaQk2fhgvwcDGDneXBShS+8f3904aRlk78maBMl2eaWWgTtpOxvgA7rpoEcs/zgaM8s27wwQ
	YFywdDeXURV8Zge3M93qj3bD6jgz481taCqcmUFv6jYogOLoSHffARBEIZZJMc/qeIEAvgpz37c7r
	ys3bmypN/uil/iOkhiZPo65fB+1dnfL3vZqNKLEZ7b1y11nHk11pmFW7K+hIfxwsgWWqldkaLw11O
	lzu9MULvKQyLL1IQD1nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkQn-0007bJ-9c; Tue, 24 Mar 2020 14:21:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkPr-00071c-4F
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:20:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so3580933wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBEY6IZdpR56nXsPUK2cFqYc8DeNfrXDbwpY0flDUNU=;
 b=Ujq4taOC53EX1VPxJIgX0apsuybWLHZBAKegJRrf/6iNtbxxaFxidGswTmXhcSbMeS
 5Xw3ZVu/LmLaXCJcuW8EMPuv9z7UYqeNNGxgLAQ6VinOKxZvBF/JnMPnZMfv87Rd4h5x
 QI1vyPTYzCjWy/FZgINt6zQKZQd/3dhqTrXo6uDt5z1xtyg5B7IY9IoQ53kXeZwpBs4L
 qcEzw7jIKeAWHn1oyzhZHE1t2mkKVCEZSRS+Lm9l6zcwA1TCayaFEaU7efzyfrGQKe/h
 srTZdxNIRvztfg6C9z37mIq4oy5+ODSMBiID77DGBu3wnQ9RmzjIbGgcHiF/ptrkmn+J
 h/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBEY6IZdpR56nXsPUK2cFqYc8DeNfrXDbwpY0flDUNU=;
 b=G01TchCv1AMpqezXM2xLp3MRUuXATS3XVNDr1Xm0lcAlzjaOODk3CwrgYfF5Rqwa4h
 sG+ERhxXc1JLlBoLb0RT2DxRuhz+53wj26CAmUSKLHWPxIIJtkqDMaHWFQuEWPt8T3Ib
 bENJXf41wXAzjKh1VBMceE93AJxSd/wYf4g/A9NL+SS/Eqre9QtHfMNZroKM9xdO22kW
 FQRHJFqUtz+wYjSmZbSY1gINpTWlIb1HIqixEByh25J2jmnXcHouvGWCCu1JuSuxQlEm
 /hft6yqcyndfHzdWGIw4YfiWo5SvjqoNU/hdbqnhSulfN73QLAhkfWcUXmJim6wjxgkt
 b3GQ==
X-Gm-Message-State: ANhLgQ285Qs88t4LjNhLvLangoz6c3Z9PDb+IgWSH4pA3ZqiFWf7CsfG
 8teM1HPd6/5ggaOreFkscnOE9g==
X-Google-Smtp-Source: ADFU+vvOnCjmbsfdy/PDaPF1ocXefI+ISW1golVVq0SNsJU1J64MUUy13XNRUmg4TPFrYbXH1WjhsQ==
X-Received: by 2002:a7b:cb81:: with SMTP id m1mr4817627wmi.1.1585059625706;
 Tue, 24 Mar 2020 07:20:25 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o4sm28688472wrp.84.2020.03.24.07.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 07:20:25 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/7] drm/meson: add Amlogic Video FBC registers
Date: Tue, 24 Mar 2020 15:20:11 +0100
Message-Id: <20200324142016.31824-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324142016.31824-1-narmstrong@baylibre.com>
References: <20200324142016.31824-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072027_196813_507B9BB6 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Add the registers of the VPU VD1 Amlogic FBC decoder module, and routing
register.

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
