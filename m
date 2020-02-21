Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EED7167906
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=balGKx0I/t7Mln5lovOuejbyeQOdIkDYq3BPGsGMJ48=; b=gMZpPpbFxBWVYo
	Ow8t/3UwVSYRPN7cIbDWTe+FQ6Wk2YM+DxKuJinQcHAspOYb2aFifD6giPY+CAS+B2OCZMjB2ysRY
	Bz/gwCgO7p3HLLpYYzRYIpcgKOXHH8aHLx4ifC3dfuaSdivHH3jzThZFC8dxhNJLazrP3ZHdcwMzF
	EHJW0AMz/FIdsDwaZ8o5uCASKvd73oyQ87RTCi9aoHuqefBEXVUSj6Kj/fFty8oJTcwnVPbuZFJei
	253y7pUR5ewo1xln8jiXpHkk+UbQ2y244eEfyUdjvOKvBJXnfqJ59UWo1rHawE3/66IjeFbDoSXHM
	8AxMaE87qoGwoYX6uUTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54Jb-00076D-35; Fri, 21 Feb 2020 09:09:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54Im-0006WO-SQ
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:08:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id c9so1075954wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBEY6IZdpR56nXsPUK2cFqYc8DeNfrXDbwpY0flDUNU=;
 b=VllRnzbBY6hzEcF2hDDNEkEEdYvCxAauRWNfmMJ2jr5QM+kqIiikup1MAhGL9zBWyd
 oUrboYCfNKZ4a0skJ6d7MgewVYHeestIVqUH2cy6fY9JY5Dp1e1L36ssdzJyMbUD5yHw
 1CxyhZVKgDm7TzzTjLpeFiJZHRmDCyGqwZNUa7BP7UXCKEM4eRiEJNOPd9TCyc+DhR7T
 P/m11SbBi7RnlEU9hGAED2brqYRm9OeMYaYVLjRvREON2AI04lMe+5L1W+qWdHiOafHY
 G8FzRy3/4Bagi6LkMZ8zrki3MjALcwD60jngmtaK3e4xoYe2zvTnMfs1uHPgD4wLxuIW
 1KWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBEY6IZdpR56nXsPUK2cFqYc8DeNfrXDbwpY0flDUNU=;
 b=kEhV4Dgc+1uEk8BIY5Kl0MTBBigAmT9dXa0w3boI4OAyVh3xwv/dq5Qeog45H6duA2
 9hTRRycj5lEBRoRgVCbC6LScCrGwHsKCjZ4zOLnm9OYdh5ZH2aCAll/QU1wyDc5ELjGz
 vUlB+n9LwPVl9aXCvXIgC8XUFV09ahmenGM8hJ0rxZDsfrWhsFtWZbIAjatXoJ79CMRV
 3S9cs62e8pR/d07x6SQ2lXzU7Euxb9fmBr2URwirqjtCwhWx31XfcT4fhwA6xCA6rSCD
 m4hjDPNxMgGxm3k5+AZP5wX/N/jUsWzgP95EwAW+SyW1N+43dy6X4d51+0foDpb5oQqg
 3mfQ==
X-Gm-Message-State: APjAAAXaEhziLtsCVJHIpBXYIG4fS92/pAaxDxw2hzzMoCZyD1oilh7i
 EX9fYdD+ejHkIPyCzOnVvly5cw==
X-Google-Smtp-Source: APXvYqzkjc9uO1jlQ9asSGYblHXAZ61o5tYA+NmLBT/SG0XjoMfflPRxU5alISIHTeI3dAaRbSoJkg==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr45917500wru.382.1582276131114; 
 Fri, 21 Feb 2020 01:08:51 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 h5sm3173288wmf.8.2020.02.21.01.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 01:08:50 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 2/4] drm/meson: add Amlogic Video FBC registers
Date: Fri, 21 Feb 2020 10:08:43 +0100
Message-Id: <20200221090845.7397-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200221090845.7397-1-narmstrong@baylibre.com>
References: <20200221090845.7397-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_010852_951957_2747F92B 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
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
