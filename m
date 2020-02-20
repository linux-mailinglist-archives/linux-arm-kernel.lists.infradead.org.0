Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF191662AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zJpH1NClevpzwYqd3b/Br6CDROZW3MkYV/iPq3rw3M=; b=bcmjVXbs1QAFGX
	oq6h1Fd9b2Ts5TBMqkcN4wfHJnGApJ0HTTep82Tbh1NfHts1yWFRQv3CmxoiBl5WsjUnMaRe1Hf3t
	ffnpDSSAFiF7ECKOgaq//B2xSrdzJTCo2WDBzOTVWr2JbIDELK9EoWXgnITDLwff+UqDnV+9kv2pX
	O1ITr/bXeFcNfM88Wu00ybGM2+YymH/rPPLfoPsjoY8weFWpeSiqAvP01XbvgTk2tr8AlLQ0CkbJX
	oAwqJqm74JMZqYnqMxzsTy5s8Rb9HHqcNeIZOt+yslAYtOfA7gMa7710IupHcT2KAYkMg4cC0FSqL
	8gwS3x/pe8wlYk0cfHog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oh8-0004of-Kf; Thu, 20 Feb 2020 16:28:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ogG-0004FS-8y
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:28:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so5270403wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 08:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4L5pErhEaYa7J2GkK43QrlafHtSEfJ6mEB5MQxQaGdU=;
 b=flSVXLW8+HCvS8lAoJdppN6qT5tWnzrNaEvEDnJmCgXcC2tk9cOjdv39eJrYBTrce6
 EE/1vV9CN8QbXXJsX0KSgeSB2gmE+JqHk9DjtSAUBjiL7T1KieNxc7BkDooT9hlfc32z
 Uoi7JJddr44DQ+YGv+YisVbx4co+nwyfkwRUHk+vsmmqGdilfxBKTuc6WKWpLbN6r6b0
 08mfBvTjdJmVCPuNVGCt3gzrs8JFmo2tI27Ped5uetie25Z8Bx+0kqR3Qp8WGFcfTdfl
 7derxVfCJGNu99SNb4n+lADjOUAjezljlLhQjh9H4Gm2LsMu9SILZx0lw+bn9TkZDCU9
 rstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4L5pErhEaYa7J2GkK43QrlafHtSEfJ6mEB5MQxQaGdU=;
 b=fzUjXIyaM51dT2zsYRbhqlSQ9fUi9Jqblu+1E8tNmJZvWYhmGbaYMNNTEQDhSKwZDS
 SYgvF1KQXe/8lm++H7kLxqs/onJbmQqWbgoNBCC3CSyp4qzwMXfdaez5a/et74kze3nb
 Dm3UL+Fq43U4mEGEIfl9DtrxDqm3zfur/TnEeLgEiG29hReHQLnv9hGR0UFEL1AmjcIp
 B+rSLGooaG9T0JusR9tzLThA1C3OrJ6vj7gddbGyFHyW/NjJtzOeBYrB1s8757P7dAuF
 uySmT/htRhQ865zzowh08lsAcvMUq2xO5yI9r+qXnyMhpVPon6mAuYn2uNDuvIAz//Kh
 2KPA==
X-Gm-Message-State: APjAAAVA9o2vEcwYSmnm38xmygSgvtE/FyNn9xC8zumk4DSKKaxCbsuF
 oHdPoXhQX6L5YlZ9FyqnhULPCQ==
X-Google-Smtp-Source: APXvYqz8btEuioC58lPL2CALueebDz5VNXjtrpbgzakzF4p5lCTfG1eLu+ErlTVF5foqpDnbiJSStA==
X-Received: by 2002:adf:f14b:: with SMTP id y11mr20564948wro.90.1582216082632; 
 Thu, 20 Feb 2020 08:28:02 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c15sm104164wrt.1.2020.02.20.08.28.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 08:28:02 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 2/4] drm/meson: add Amlogic Video FBC registers
Date: Thu, 20 Feb 2020 17:27:56 +0100
Message-Id: <20200220162758.13524-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200220162758.13524-1-narmstrong@baylibre.com>
References: <20200220162758.13524-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_082804_313815_4E5A18E7 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
index 8ea00546cd4e..f784d7d1fe2e 100644
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
+#define		VD1_AXI_SEL_AFB			(1 << 12)
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
