Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9E9CCA69
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rz8w+WTMt4eOiz+isOEUzF9p6iwI8YWNZOXaRty8O2c=; b=VSXJ6xyF+YPGB8
	TJOJmB0VAPXec6nuwjU0R+SJovTbOsfTGYW/2cWaYx5MeufMRm/sYQuex4Qz7gyMhginWAw7192Tb
	CcvWf+mOJ9leo7gjEu4PZPZShLZGRPZBd+0Rvcfw1nPrf30ZO4yAKFeZyhtD3Bp0O/8AMl7DW7CvE
	EcQgWmgf4dyzw1DSucgf/MvAHx7Rml5WPQyCssxgePtrkEyrXmkyBdImFacFFXESLc+EwGD/AG9cL
	VgGF6bOfBdEXd6xltOSQqvPSU3o0/8TkeJUzBSlg7xtiTnFBPtW4iHlWQWpiApiO0tOqFoycLYVH6
	tIY5paKzUIO59+e6EBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkvT-0005nh-83; Sat, 05 Oct 2019 14:20:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGkuM-0003pr-8u
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id e1so5424500pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3NxA/Yr80iVxdKub81APPkpdy1Qml/Yl3GutfXi9RDc=;
 b=YrrSlKQWQDx5ylGAdfIauv3lHB9Oak4L4iNrX08dGdQzvNF/GVgM5ikcJkkw4Yoaod
 LtTeWc+LKQ3n+2Fa3x8B4YL2a3EMIGzcOcxkU5SVsUJRn2Ll8ktBt1Yej3mlX8Rfozcy
 Y6sMA31Cpm/jDWq/o0rSo969bolIAGnpTHibQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3NxA/Yr80iVxdKub81APPkpdy1Qml/Yl3GutfXi9RDc=;
 b=nEMBqM4hdOJNyAp27Z5GeumPX/vRmln3lOcRsJPnTXtStokLUACrJDFwwAPzmmstvc
 Qmdavi9Dyoy6EieDZQhx4Yl/aUUMlJkL/2F5Epy1/vwo0BV3Ky3EQOLefKNoehh9q7dJ
 ikQw7br8D3mSxsGbEuVYtbVdYh0Pfzn1cFKyUeIlTaX/5X98SVa0D5LnpeS4NjZbQ/rv
 G7vXcz0lUmH43sFI3b0DQLhP0DTm44CO4zBKYBHJmBH/FfCZ4rrNdAy7lMlZxml6HtSB
 hYolOEGdA7D0j7nO52L/Q2pf1kBppKI5K+4Q8YPFTzoqX5jAeE+tmhHHX2x6Rd6cKkOl
 FlMw==
X-Gm-Message-State: APjAAAUQXehlseu0m1zp7dxhAfg9E2+L2tgx9O4+sx8F/EZfb9A3k/6a
 IThVFjNruMoho+tFv80IBHlgzw==
X-Google-Smtp-Source: APXvYqwOS0LD2HS1m+5XKVlRht04+Vt6iAydlUtKPt+uRbbxb1fyadX5tNpeeaNlC31fEo7gW7E91A==
X-Received: by 2002:a65:5802:: with SMTP id g2mr22108678pgr.333.1570285180636; 
 Sat, 05 Oct 2019 07:19:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v10 4/6] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date: Sat,  5 Oct 2019 19:49:11 +0530
Message-Id: <20191005141913.22020-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071942_342142_9DA152D8 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
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
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 6724a14c816d..e3aab815fa73 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1241,11 +1241,18 @@ static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
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
