Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B7E22FD4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlCh0Hm2VxbJf+wjVReU0+hPYOEQ2FnX7R13504XeL0=; b=T22SrQGgzprseI
	iMcd9OQb8lGacCnh8y+ywSNC5+2OI/97s8JYrltvuGZ5fi8g5FJNM4q19DxWsiGjkorpnr0JdD1B+
	Vp5H//Ds44qpC3PrpNAfvLY7bOb+JC3VEC6oGDXRI9b11MXcI6xlneoOZCxiXN2UvT9X21/yeg38Y
	Ld4w3T+9Iq9pGFUcgMET96/XFMNJdpW2kAWYCjUnUM/9emM2cV8e0hFf+ZkdrUa42S7h6Ry+5yamY
	T1NSfOTv3+I3j0V13+g+F8E3NP6OOZ/C7xUfrFRS34IN7rFbjIYwx7UqZMHagTEZ4ihZmzpMxdIj0
	4RcC6IfheBB/prN/Ko+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeHO-0003S8-Lh; Mon, 20 May 2019 09:08:22 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGi-0002lQ-Av
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:07:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id j26so6492638pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v9fCm6pJfwNnZtBLiOWDCiXX9M7MmpxMOv/deygL7hU=;
 b=DZf0IHTg+6ePioO6PbxXMr3b0sxOtlWkuB0Rp/4yTi2ZN5gA6vpKqzCt+E79/4xyLz
 sTb8V2qQqNyxh1FgxVCOw5Ro+uDhlkiDCr+Teqvov0ZjXg4xmEQAe9q73sschfeV2/7b
 1umWfMmqWgnFDP9XQOT2EyjzH1L1l22e8ByC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v9fCm6pJfwNnZtBLiOWDCiXX9M7MmpxMOv/deygL7hU=;
 b=XfgzqoMJjjfnYAb24TE+br5q0CNINYHZM//PsdDKcPCQ61fq5jBq3W5tn3sqwOIIST
 1xA7eAUu3cGhOaydL2Qd/rmFMTvV1kUyujso3AX4gxLBp1XE8n8azQqmpG7rc43Y1avK
 ee9NxFQlJ/nkNxNt+1jiASwBuUi+OSrykvJ4gaS5OGNTtHmMW6TgeqU8mEpjGiyXIgqB
 jFesvzW87f0bZNywCOxEKyYGSAiIPn0/2eINV99ISMlMmK2/16bRL8uMm1iwJ1cJViu8
 0FDz1gqv+pxIIIKYS1hPEvor+lkpL4zRP4oZfRqooi7rAWvgmqLXB37YfcJTXwBvRIma
 vTGw==
X-Gm-Message-State: APjAAAX3uSbf8FCSaQNNv4nkGmL+2t9YW7R7t+SqoHDZNkAJoM2daBJM
 ydTPR8zFtlenXfxfr0YVy4tP8w==
X-Google-Smtp-Source: APXvYqySfQ3A6Yya3mnBJTmrp77lvlN5ou8ZoeGALRWlDGRY8S5yM7HkEEgoTE9x3zLO+IG5XbCEIA==
X-Received: by 2002:a63:ee0b:: with SMTP id e11mr21644801pgi.453.1558343259840; 
 Mon, 20 May 2019 02:07:39 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 05/11] drm/sun4i: tcon: Export get tcon0 routine
Date: Mon, 20 May 2019 14:33:12 +0530
Message-Id: <20190520090318.27570-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020740_746356_E5DA6A90 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sometimes tcon attributes like tcon divider, clock rate etc are needed
in interface drivers like DSI. So for such cases interface driver must
probe the respective tcon and get the attributes.

Since tcon0 probe is already available, via sun4i_get_tcon0 function,
export the same instead of probing tcon explicitly.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 3 ++-
 drivers/gpu/drm/sun4i/sun4i_tcon.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 8f93121fead4..9e9d08ee8387 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -221,7 +221,7 @@ EXPORT_SYMBOL(sun4i_tcon_enable_vblank);
  * are located in TCON0. This helper returns a pointer to TCON0's
  * sun4i_tcon structure, or NULL if not found.
  */
-static struct sun4i_tcon *sun4i_get_tcon0(struct drm_device *drm)
+struct sun4i_tcon *sun4i_get_tcon0(struct drm_device *drm)
 {
 	struct sun4i_drv *drv = drm->dev_private;
 	struct sun4i_tcon *tcon;
@@ -235,6 +235,7 @@ static struct sun4i_tcon *sun4i_get_tcon0(struct drm_device *drm)
 
 	return NULL;
 }
+EXPORT_SYMBOL(sun4i_get_tcon0);
 
 static void sun4i_tcon_set_mux(struct sun4i_tcon *tcon, int channel,
 			       const struct drm_encoder *encoder)
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index 84cfb1952ff7..88e971d5f937 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -272,6 +272,7 @@ struct sun4i_tcon {
 struct drm_bridge *sun4i_tcon_find_bridge(struct device_node *node);
 struct drm_panel *sun4i_tcon_find_panel(struct device_node *node);
 
+struct sun4i_tcon *sun4i_get_tcon0(struct drm_device *drm);
 void sun4i_tcon_enable_vblank(struct sun4i_tcon *tcon, bool enable);
 void sun4i_tcon_mode_set(struct sun4i_tcon *tcon,
 			 const struct drm_encoder *encoder,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
