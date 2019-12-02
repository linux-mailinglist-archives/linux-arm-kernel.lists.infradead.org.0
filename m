Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F7910EB0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syKI9BzB2f5jXrA1RSm55oze3ibMQy9OH8Typb26aCs=; b=c7pePcMgQBXsiL
	G7p6Tt3zpXyXIkwfmfQcqiEjr+GhrtgXaTcdFDtPm9aVVmXRLTnPbkg40+7Trn+EeK4IvzyD7Muzk
	ZrIpA7Hdy/f5S85wmnjWKaYDEuwG0czBMpnwGPXiLWl1sapeXne6LeSdb5ZoT8PiCtuuqiM7d5HNS
	74R3+iMmqx9gDOEoP3cvaH4L0RBuuAzfbFsvaOTBLudOoFD1UAoYQ66fWsLL1f2EBlVJ9pUkX2tTh
	VIRCAIJQTIE4pWGKNnoSCPbWvXP4axd51SZ3T15REZ9GMcd8WNQgEVW4ID9J8QblaKtp7km94Gzwp
	FKvUl8P76N3jkIpy5ITw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibm31-0007Y4-Ti; Mon, 02 Dec 2019 13:47:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibm2t-0007Wb-VL
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:47:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id n25so2984599lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 05:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A0Ch9GdyhFeE+gfd6Z5DWf7KGKT8iNUVse8tB117Zm4=;
 b=XCas24bn2q3q7q/Ck8Vw55vrahamI50QxSIfJquu9Qq9RlJHjHSY1fEMzst5h45z7u
 t3ea8hn2UdCumfw4fmUjiBcn977whMTxKNOrgpzlmdN354Vgd+vdblSJjEZG6HoJXoJm
 ZEoPrqhnPTn3QpT/uyd6X1atqIIX5v8h9aNawvDyVZjjpB8xEJNzzvzkdg99rLoz3sla
 /R7dyxP5m7NOZvCe0c1c56hPCrvQe+uY8K2jMxEcvSQUYMVC3LGtmi1eyRciMFXLeVDy
 lwEHFFjhLx7WwJo4MDhEADeVyb4+4JwVmq/7UnocmSIlPo/tnHMNj/ukTiHy2UDWR43v
 /Xpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A0Ch9GdyhFeE+gfd6Z5DWf7KGKT8iNUVse8tB117Zm4=;
 b=CWne+jrBD1ca50uzGOZ0O7Hv+TE+6btVaytYsN6bhWJHEj1NKP6TFpC00gd1WBs1jw
 TRVS5D8E7qI7WtvKGGIYAhFMiY+0D9WWrs/sgsg0yVaF45kez6/85O82/RJb9g4kdwW0
 m4ehsIkE/YLOX72VMUg4ICQBEn+pjOxdIqPaTwQh/9YErLkIHXcL4k5SqWoqOKYVbZLX
 +gsa+NBn8vRN41+8ifzUVO8kftCIfypOH6pYXZKKN+8Zb/uypyUIrDsZsPfHV1ul0bjw
 O4txTyDPWwjl/7AJGOUvJfrOl2ga4alkiI2THdNvtPlTnFdPYHxj2OfL8TUMI9S6NcKs
 MuiA==
X-Gm-Message-State: APjAAAWu3CylYTDtIc8sRD1TAspeivbCvoo69/NzL8zujdtZ+mBzWtzO
 DxjTjMJVf0ZCrp0HRTM8+IlbfOS7d4bI9w==
X-Google-Smtp-Source: APXvYqy2ksseeVDtg2mfDRQsT5XPfHoavrEqU0v8PMf5ffOQBVXHHD4yI3j7KerJMjUbpfuclf2gXA==
X-Received: by 2002:a19:645b:: with SMTP id b27mr32647592lfj.117.1575294442357; 
 Mon, 02 Dec 2019 05:47:22 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-21cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.33])
 by smtp.gmail.com with ESMTPSA id f13sm5904912ljp.104.2019.12.02.05.47.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 05:47:21 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/mcde: Fix vertical resolution bugs
Date: Mon,  2 Dec 2019 14:47:17 +0100
Message-Id: <20191202134717.30760-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_054724_020463_3D7A8989 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

In video mode the VACT (video active) and VSA (vertical sync
active) got swapped. Fix it up.

The result was compared to a register dump from the Golden
(Samsung GT-I8190).

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 21cee4d9d2fd..8f6ce1557e3f 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -431,16 +431,16 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
 	/* Recovery mode 1 */
 	val |= 1 << DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT;
 	/* All other fields zero */
-	writel(val, d->regs + DSI_VID_MAIN_CTL);
+	writel_dsi(d, val, DSI_VID_MAIN_CTL);
 
 	/* Vertical frame parameters are pretty straight-forward */
-	val = mode->vdisplay << DSI_VID_VSIZE_VSA_LENGTH_SHIFT;
+	val = mode->vdisplay << DSI_VID_VSIZE_VACT_LENGTH_SHIFT;
 	/* vertical front porch */
 	val |= (mode->vsync_start - mode->vdisplay)
 		<< DSI_VID_VSIZE_VFP_LENGTH_SHIFT;
 	/* vertical sync active */
 	val |= (mode->vsync_end - mode->vsync_start)
-		<< DSI_VID_VSIZE_VACT_LENGTH_SHIFT;
+		<< DSI_VID_VSIZE_VSA_LENGTH_SHIFT;
 	/* vertical back porch */
 	val |= (mode->vtotal - mode->vsync_end)
 		<< DSI_VID_VSIZE_VBP_LENGTH_SHIFT;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
