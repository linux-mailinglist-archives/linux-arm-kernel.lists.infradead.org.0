Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3978210FF42
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHx6cgLqYMUEuYceUPiGe4mnDpnhEcNFnAsLSNsnOCI=; b=Cz5NbfO4GdUD7h
	dK6SCpu1XFa6jhoAlJPnP6zYAwltqlKVIzDs7TF2+8D8lpsHvaTUIykP2SzKEjrtyEDPq7Fnf72oO
	dk/ZOfcgZQ3KQwp3ndDxUl76Tkhxj3UGXGzPcH1QsKx7V3wgdo/bmLGSw+NsKZJmuO1/vQPJ9Ing9
	ydBqGJKkiMxrQli9z/un7NAYCCecGgPB8bRysOUeXFtVDcXLPFFmXqqq2JWjpcMYOdQoGghnOo5w8
	C5L6mYEsN4qwW3IzBl9YQsBI2tOnwNo9c+qKgy+RGBCREeMnR7beo5FSttqFubE9f4XZjuum/RLtr
	1veKggUD+ZUcBbUklM9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8Zq-0002PV-7t; Tue, 03 Dec 2019 13:50:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Xx-00009w-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:49:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id r11so1724349pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GvY7EGGLO25a5o48qmefaws4aAtPmG5PqqVM+V2F2v0=;
 b=P61OjPv9p9rdBXwWKpdC3BKZ2eG0qALzjaq4PWVhOv0Imk1pU/XdRKWhc/V7jYac6t
 C5RiQZlWUz54FyBSjjP0vgGT3D9vcDvvz944EqNqD68VIRRtcYY0B3vzz+CPeMCq9XiE
 yKGDB5aamTiO66N04pyDT3FNRkzikQI/7Qqe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GvY7EGGLO25a5o48qmefaws4aAtPmG5PqqVM+V2F2v0=;
 b=hi7b3UIYBxCiUOpC3p4Q559KJxeL3AW5VkAaz3CB+1E0PsUgE0BCh1qfqPGzbp8Jhh
 rH66haPaaGvBJhUMJlC1OGOTHtKfYWUC3Gwxy09dsjVPFITSvTtIWqz+ofdpdMWo2QOr
 INTBaB/kgAIicvc2KSNGK/aXuj2/YXBFlz1/CEhjHJRuVSmhXuYYTu/36gGMHe5+5+MR
 iJzGsVuSb97H2wALoswSGxawSViFk3hZdKxDq+xbQ+HEpuZ5xT6UOO+TbKfEF/j6gaB8
 J6O1G71746LF3O/ziFl/yYIOoND/2ePxxNEGt9muRCCb5K9V32QvD/v9tz6G/EtPwtiA
 +TUw==
X-Gm-Message-State: APjAAAVR7tN8sUqsAXEKHrGTiq8yeiaGpc+KYEffcoC7yFPnvTEIVSPT
 pvmn+j1EfcMPBN2Jq4ZQSWGcHQ==
X-Google-Smtp-Source: APXvYqwm0cu3OUOj7mGNRPnxcAIXp99P9fa7KifqYH6jQUxCZrws2pFbIgmk6iPHa24PSNgZI5cxGA==
X-Received: by 2002:a63:101:: with SMTP id 1mr5341092pgb.336.1575380935648;
 Tue, 03 Dec 2019 05:48:55 -0800 (PST)
Received: from localhost.localdomain ([115.97.190.29])
 by smtp.gmail.com with ESMTPSA id y144sm4397892pfb.188.2019.12.03.05.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:48:55 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v12 5/7] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date: Tue,  3 Dec 2019 19:18:14 +0530
Message-Id: <20191203134816.5319-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191203134816.5319-1-jagan@amarulasolutions.com>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054857_648671_4420160A 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Changes for v12:
- none

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 6085ad2eafc3..34a64473dd09 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1270,11 +1270,18 @@ static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
 	.has_mod_clk = true,
 };
 
+static const struct sun6i_dsi_variant sun50i_a64_mipi_dsi = {
+};
+
 static const struct of_device_id sun6i_dsi_of_table[] = {
 	{
 		.compatible = "allwinner,sun6i-a31-mipi-dsi",
 		.data = &sun6i_a31_mipi_dsi,
 	},
+	{
+		.compatible = "allwinner,sun50i-a64-mipi-dsi",
+		.data = &sun50i_a64_mipi_dsi,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
