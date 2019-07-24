Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF37303C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phmDdJKRt0MRq7LLAKLHHRkClKZa+rAcBZUniSj7+a4=; b=DdXpRBn7fDRYIL
	HEUu0ecgvFx5utTvbN7ET6p/kVgqko85QQPvjC8gANQ4omZ7eGTeFm+kiGKFEuHLRHGUxJkFiQLdw
	4c9EPZpMBOpaP3I0WQKmOwra+QFPtN5LjswJA6r4N3DktiNLBS+zCIF6YZT8LTxL5zR8lGU+GQM7Z
	j5ck7xn55nvZawLVUohBURn8dBqhZdqNuIZ/B9MU3TNoqWJxyIkuuJ6TLnwPZrp8kzsMFsy9iPIh5
	EIRgaotOBRlgDyt8qjNZ7kL4HrjVA4+JHeenm+GAC+AB+mWHdaCu+QFsAB+ylugntKeoIhsqirYOB
	bHYxP/2+92Z8cyZF9Rdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHf5-0000Wz-CA; Wed, 24 Jul 2019 13:50:31 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHel-0000Nl-FF
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:50:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so44562865ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 06:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HfPoVJsXGaQ7CrPxMNDhvPdtz+hWWRNJKhx9Zt29Rpw=;
 b=xqkD4l6pQ59S18/2N97O4kkMzx8lUYEVdwU8E6DDQAjlTZbekJZ45iJxLjCYV8wPkB
 oFJQsyDhyr6TG++7ko7t24C9YqC3QX9lKck0pa/+JScHKTtpj4LcIL3PETrNI5ddzNlk
 u1mQnmHFwPDUlRYXj7KdrfopRx9UxPCntJoAvVDv/uh6ypWag6UdbPiImhI7sobYGym+
 U+MKkK4amr4J6NZVmbdtsGZAhLutz6UmI8Fb4AzAGWARs9BtHpFUi7e9x+79OlJXVXix
 s3MQIcG3uGvEFJHlOky9cSIJlp8+gcYiUnfJ1PuqP/4unyq6tTLNLy9e74hqCfGz8ivH
 RquA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HfPoVJsXGaQ7CrPxMNDhvPdtz+hWWRNJKhx9Zt29Rpw=;
 b=czYlOE5X77jRqvofLR4ZXIGPajK971XyxXRx/zuA6V5g0ZdmtPvIZFuqa0EsEppLne
 xG49mhlHIsmBxga98XZ0b5m/32JkLqaTYTucjFdcJf5Yl+BPqWWFkmbPRLg7buv/LMvx
 /B9W5tJrOAnOgQbRbz4cR7YpdWbs3Xh61GL2pCnxjJ/HvDorZfOgV+5w/uANnUjQ0Hmk
 LaUWWyMnYkjYPwtNXsOG6L7FUv3ZMM8Nd1BCJ1bJjebv0DGlSn4PRGb4XqEwrvIzVhSa
 4u0TayMRem0RhnrXRljT+nmnN/v8vvJcLrzEKUEWZTjiWok7OwIepn5pS2jYQffbS24F
 Xp4A==
X-Gm-Message-State: APjAAAVMTN/ltsCN1uetA1+8pGv5vBFVYtNlgJDUUTzo44APzjPA2RNH
 PMZHXgXbeoS3bRmjrDMnDM8tzg==
X-Google-Smtp-Source: APXvYqyjk/0IsjFe1aAfxByZ5nzwaHZIWvF4GQjqOS05zabNCqCg+h3+FahVUnfnxWqiOJs3cm8nWw==
X-Received: by 2002:a2e:7315:: with SMTP id o21mr35196730ljc.3.1563976209824; 
 Wed, 24 Jul 2019 06:50:09 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id v4sm8586483lji.103.2019.07.24.06.50.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 06:50:08 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 2/2] drm/pl111: Drop special pads config check
Date: Wed, 24 Jul 2019 15:49:59 +0200
Message-Id: <20190724134959.2365-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724134959.2365-1-linus.walleij@linaro.org>
References: <20190724134959.2365-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065011_512304_5CCC956B 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Liviu Dudau <Liviu.Dudau@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Pawel Moll <pawel.moll@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This drops the check of the surplus "pads" configuration
from the device tree that is completely unused in the DRM
driver.

This was only used to work around limitations in the earlier
fbdev driver.

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Pawel Moll <pawel.moll@arm.com>
Cc: Liviu Dudau <Liviu.Dudau@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/pl111/pl111_display.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_display.c b/drivers/gpu/drm/pl111/pl111_display.c
index e42fb6353623..8595a676b084 100644
--- a/drivers/gpu/drm/pl111/pl111_display.c
+++ b/drivers/gpu/drm/pl111/pl111_display.c
@@ -572,24 +572,8 @@ int pl111_display_init(struct drm_device *drm)
 {
 	struct pl111_drm_dev_private *priv = drm->dev_private;
 	struct device *dev = drm->dev;
-	struct device_node *endpoint;
-	u32 tft_r0b0g0[3];
 	int ret;
 
-	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
-	if (!endpoint)
-		return -ENODEV;
-
-	if (of_property_read_u32_array(endpoint,
-				       "arm,pl11x,tft-r0g0b0-pads",
-				       tft_r0b0g0,
-				       ARRAY_SIZE(tft_r0b0g0)) != 0) {
-		dev_err(dev, "arm,pl11x,tft-r0g0b0-pads should be 3 ints\n");
-		of_node_put(endpoint);
-		return -ENOENT;
-	}
-	of_node_put(endpoint);
-
 	ret = pl111_init_clock_divider(drm);
 	if (ret)
 		return ret;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
