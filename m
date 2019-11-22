Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4061106707
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPFr9I8fkyCii9KrcWCbXQSY7wUTG9VHRFJ5ZSMdIo8=; b=h1JkvsP9/IWN3N
	s0+GyZMiE9q3MJAgDA5lk7VTzJAeVe11epsUqSmInYdgMfEGBGbanvhtlqusYWeoYoENGu+NO9cZV
	J6AtCazP1IKpCqaGUAMMTOaWUc0LVL8GX03pX68nQB4DzbLnL0vI0P/dEVvZ75eDSK/gc+YRHucts
	jJQFKrxVQKuAcaZzfzgQaoCSLgkuK3iO7X7i3y9mVP1cLVhBQ2gKMAQ9Lpfplwefex620KZtG+UOm
	oXJ39p9u+GfL9WSD5yKuet9z/YQKqBNkcZTgvmE8vNBd0hq6YsaOxZbHDcSkAkDW/l10hl89B1MUS
	dbIkcdL1hmzVQ6NY/OMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3Jc-0004tW-Iz; Fri, 22 Nov 2019 07:25:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3JQ-0004Ey-MB
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 07:25:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id p18so6162297ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 23:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P6uG/Y/koPc50FC4dd0Y4/POJMoX0WFT55LgqB+SC9c=;
 b=KAI6LIcufFWUWEpwoIE142/h1b0G1G5c5DH5TlOyJKshY6UcVTeKH34Bc66qJb3ksV
 tvAIsjEbB0iKqT1iGW7+IBzZ/HVv5H0cg7hUMtfQeXzHh/ORTKkKNdHg7gCBrUJw3EVN
 ctqdEKg7zOXKftJy4oNVCcRWUcY/iAlpFR8HbbU73+GgU0D7lvdxQzWdLcH7Iad1lT2M
 vhcaavvAANhdo1wd55pfnlRyDQNBBKFffNnc56jcQj7HObkNzKFPInCqeGoRNWCErLxk
 dbz4Joc2kjKPNIu07VzJxDa+gVQjonPLJUMgHT2zNHdH5SKTVAkmNT7//BCesFwMFJUv
 f5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P6uG/Y/koPc50FC4dd0Y4/POJMoX0WFT55LgqB+SC9c=;
 b=I1aODECsSWVN8teUP7r0VGtT9fGUTQODBK2NNkZVOhQRXmJBJvKygrOT/C1o9JFbz1
 PhHMBRpiwUYpppHw7Nvwgj+UqSwrlv27fqyQwZiYZR0odVhmHe2IeFHYsbITbFwzx94J
 6/gPPXRUO05hMDhlvg1TJAQdu6Pdfz7/BFTlVHi1U4wU7sB9JDB/AsTwRcL6X0vE/lke
 WUu4NxrN4kKIK7XVfpXp6BjZxw0aI/aha22FfwCNxrQF+V2J4acJcvr+2G5KbGARG4xB
 TYC2skHpg5vUbp9tx5D3LsfWTYKUJNXTKje0MXjsOaFzFbztdQB6YP5es52Z61qrpdlj
 1uog==
X-Gm-Message-State: APjAAAXMojWWyeJ5Dbw+mcp0C+EROh4uz69ffLIJtLklcNYSUNeCNDeB
 e7gB6YRqRRKDfljPndqHHNyCiQ==
X-Google-Smtp-Source: APXvYqym1eTLyknpwVqzImXoV+s463bJ3UZIORURNvIaHZVBUBjZQO2B4ChJLH82OXas3sJ1/lpaqw==
X-Received: by 2002:a2e:9649:: with SMTP id z9mr10981112ljh.47.1574407502500; 
 Thu, 21 Nov 2019 23:25:02 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-21cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.33])
 by smtp.gmail.com with ESMTPSA id b28sm2752633ljp.9.2019.11.21.23.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 23:25:01 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 1/2] drm/mcde: Reuse global DSI command defs
Date: Fri, 22 Nov 2019 08:24:57 +0100
Message-Id: <20191122072457.25619-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_232504_862768_453CDD84 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MCDE DSI include file redefines some commands that
already exist in the common <video/mipi_display.h> header.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_dsi.c      |  2 +-
 drivers/gpu/drm/mcde/mcde_dsi_regs.h | 11 -----------
 2 files changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index d4a12fe7ff01..dc07b534f01f 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -350,7 +350,7 @@ void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
 	val |= 0 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT;
 	val |= 2 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
 	val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN;
-	val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 <<
+	val |= MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM <<
 		DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT;
 	writel(val, d->regs + DSI_DIRECT_CMD_MAIN_SETTINGS);
 
diff --git a/drivers/gpu/drm/mcde/mcde_dsi_regs.h b/drivers/gpu/drm/mcde/mcde_dsi_regs.h
index b03a336c235f..8089db805c57 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi_regs.h
+++ b/drivers/gpu/drm/mcde/mcde_dsi_regs.h
@@ -123,17 +123,6 @@
 #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LONGNOTSHORT BIT(3)
 #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT 8
 #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_MASK 0x00003F00
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_TURN_ON_PERIPHERAL 50
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHUT_DOWN_PERIPHERAL 34
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_SHORT_WRITE_0 3
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_SHORT_WRITE_1 19
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_SHORT_WRITE_2 35
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_GENERIC_LONG_WRITE 41
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_0 5
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 21
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_LONG_WRITE 57
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_READ 6
-#define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SET_MAX_PKT_SIZE 55
 #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT 14
 #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT 16
 #define DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN BIT(21)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
