Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA87125191
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSliDzxI6dETEHxHACJPMX/vm395t1MfvMnbabJfSzM=; b=sq9lGddKI4S8l3
	+pmrKzmSMlYyLsaxrAV8P93baXlAx/G4mJENC/wJ9aLFraKtWrqIDl6nzcwVn63ajBNgQ1yOUbJjB
	T5UEEF7Z4Pyl0eEQ2iz3fMN1YBEpoWZg/ZJFg5M8XTZ4ltEIB4vWvgXrJBec3DZ3jpp9hc5eo2+Br
	afIF9zr3z42pPWy+hGsVK2XDWUngZ6SAj/yrwKW6aWLC2AcclyN5swuVuUlfA9m7vK/CcXIdETn9B
	/dnhthFrYDXhxQ5M0/r2o9p2hpQQldwRczHNcnIxrV44q1nYwAX3filb5Igi1V0UaqerxNNJuC5G1
	aGe1qM8m+Lr5L6asmjXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihejz-0001lx-B2; Wed, 18 Dec 2019 19:12:11 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheig-0000mB-8N
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:10:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id z16so1750509pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c+shghrwvHSuaCCAe91cOcF/cABrNe9ZFXBpEs6T1pk=;
 b=pZ8uPDUyofDjdToN5t1zFX7EOUoQHgElefAtWAY2a0xE3C+UzywVgYFh1cRo//8ldK
 dkxGA87VEybp7sOpx7eGEyvPyE02cVpzJh0Sz7GwLzhuxvhmE39bwoNFOrYIt6IIko8w
 59oJZCYsccwqdnIMNu4JjudoACBiEOxWsVD3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c+shghrwvHSuaCCAe91cOcF/cABrNe9ZFXBpEs6T1pk=;
 b=Jrsh0MJKiPYC/w/mwQYkzc3bi5TvrbOx3DHZOqKZAS4jZ2BQdiELVv988CytkXSOIt
 3nlGJ9zIWIwU3hYcgieuwbUraEnX/rVxIN7C6KLWngrbA6bkS3/kOz21kE4ACsKgMeSH
 MR6rDZcze6EwZBneNjVrVZqZOIMyaP6Di7we4URVffaN2H1NLjhOP2yKjOxEE2sGM/U1
 bJz+MRAdOFrDqCcDzbVO7XRY2iPxGdcw8RDPX1d9NxDOsV96hgdSwWgxDH7ht8vRv3oc
 TqG0WMOi2+AK12ZVgP7Iko3lNXrqn3596cNbvwKSKR93hep3VXkiOQljHDVAEYbE+BIG
 nv1Q==
X-Gm-Message-State: APjAAAV5f+bxLQ2qGWZlwSGla4GdASCXEx4vnt7kWAFrtvCmwutuXCAF
 vtiDYhk/M+bpcK7RoeKuZNz6Gw==
X-Google-Smtp-Source: APXvYqzWo+135srItLCIbQetR6+zfji/31rxO3bMV0dn+U+qlizWEE04ek5zqZbLuYJfUG+Gr29Dsw==
X-Received: by 2002:a62:c541:: with SMTP id j62mr4808803pfg.237.1576696249620; 
 Wed, 18 Dec 2019 11:10:49 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:78ea:e014:edb4:e862])
 by smtp.gmail.com with ESMTPSA id q7sm3745855pjd.3.2019.12.18.11.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 11:10:49 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v13 5/7] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date: Thu, 19 Dec 2019 00:40:15 +0530
Message-Id: <20191218191017.2895-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191218191017.2895-1-jagan@amarulasolutions.com>
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111050_336629_D2250199 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so add compatible
for Allwinner A64 with uninitialized has_mod_clk driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
Changes for v13:
- update the changes since has_mod_clk is dropped in previous patch

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index de8955fbeb00..8669d5f0e744 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1264,6 +1264,7 @@ static const struct dev_pm_ops sun6i_dsi_pm_ops = {
 
 static const struct of_device_id sun6i_dsi_of_table[] = {
 	{ .compatible = "allwinner,sun6i-a31-mipi-dsi" },
+	{ .compatible = "allwinner,sun50i-a64-mipi-dsi" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
