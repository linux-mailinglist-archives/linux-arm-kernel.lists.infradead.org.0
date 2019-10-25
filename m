Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF751E52BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6mCwcrnzKuZPRS0dagIWIz17l901pnoLPYwQUs1UE8=; b=c0qmNnQsKrtuDa
	F1mtVp2eHRy8ovDg68Bm4ppi1Jhjd2ljGt7+2z2twpxm9+Oaxpk8Ut/w2Bch4VPin/Cb9nPIs5anI
	OcGSBpizBT2JeuTdZ2Q4nGKkgLJc/MuerMEhkx/C7r6GKtoljA2eLC58dqSn9ULSMzvsmgf7584Zu
	+RR9T4Ws5FVCt9WOWMkD3JJuE6dy8bWuHTiDJ39ivZ4FUZorsw6h6WbGUWjs+A/O51iiWbz17SFV0
	cM2rYYIo9GcFBZULQWQ4F7GOV49YsjFsGolLVc5g8o/Ih76f5bpBRd6SXeOC2nPrgDx3xfkXg0KEG
	SV8TICLnQspFO5YOnv6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3qc-0003if-Vy; Fri, 25 Oct 2019 17:58:02 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3pk-00033i-JC
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:57:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id u23so2030311pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P3Mki6uub+NAK80E3ntfBcsFK0xNEI4Pl6xkUsSgIeM=;
 b=i3MIHeuYlYEVmU4821ovZp6xUdW9w+0CO4+t4aQLQryHnwktMguR3UUD+Yd9ZkzbTJ
 4iQrMyZXSu1Za0QtBnk0m4NeXcBDnmIdW7LtsfXsM4RHfFgOEWbXEXuvHz130kkxKtiF
 fH4VjdQ2kJHmdErld9s1DPCCJz7NeHLkpyWIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P3Mki6uub+NAK80E3ntfBcsFK0xNEI4Pl6xkUsSgIeM=;
 b=ZcahtQ8LnNT6jNWVQeVq3ZWYGJ+mEZB8gFCwnHn3yzFM04nkuK64h5qNq+UvM8bwuo
 6Ddv0bufU4DDQtFmmVh5DTfvwHIccVd0UDedD0A7dJsvkv7xJEFZyiv0JFZ5eYE5dXsQ
 gdQtKk1mzj/ClxgNS+Pw71pKkPONK6MqUVo6pSr2wcDhKbPVuAp4ufFtlIcNIZjd/9yB
 KcmNxqNQpmAUwGs2RaQ6pZsqjgQoya3UyNrF5JwajHyE3kj2/zfSOaVU5D1dapHwWp6Q
 29wdGIKNI00a6xvrcwb8BAi685tVVmaVGdtmuSzxJVslwIIU1kL1IJuJ9RyhgeO5uDNI
 4XaA==
X-Gm-Message-State: APjAAAVL4M96p17LowFh1HwYw0lGj/FqhQjslUoveITlkUx3UD/l2+Gj
 DI5d1fIzQ1DE7EYT++pXQu0yEA==
X-Google-Smtp-Source: APXvYqwQDEhpc37JYujaBlS0c+W1Le7LhGIIS5sXpnrhe8K1umdFkvWh0OaUWV5zfFMK68Yte1XnMQ==
X-Received: by 2002:a62:58c2:: with SMTP id m185mr6044311pfb.10.1572026227045; 
 Fri, 25 Oct 2019 10:57:07 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.57.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:57:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 4/7] =?UTF-8?q?drm/sun4i:=20dsi:=20Handle=20bus=20cloc?=
 =?UTF-8?q?k=20explicitly=C2=A0?=
Date: Fri, 25 Oct 2019 23:26:22 +0530
Message-Id: <20191025175625.8011-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191025175625.8011-1-jagan@amarulasolutions.com>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105708_978980_4A9F47AE 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Usage of clocks are varies between different Allwinner
DSI controllers. Clocking in A33 would need bus and
mod clocks where as A64 would need only bus clock.

To support this kind of clocking structure variants
in the same dsi driver, explicit handling of common
clock would require since the A64 doesn't need to
mention the clock-names explicitly in dts since it
support only one bus clock.

Also pass clk_id NULL instead "bus" to regmap clock
init function since the single clock variants no need
to mention clock-names explicitly.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 8c4c541224dd..eacdfcff64ad 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1109,7 +1109,7 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(dsi->regulator);
 	}
 
-	dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
+	dsi->regs = devm_regmap_init_mmio_clk(dev, NULL, base,
 					      &sun6i_dsi_regmap_config);
 	if (IS_ERR(dsi->regs)) {
 		dev_err(dev, "Couldn't create the DSI encoder regmap\n");
@@ -1122,6 +1122,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(dsi->reset);
 	}
 
+	dsi->bus_clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(dsi->bus_clk)) {
+		dev_err(dev, "Couldn't get the DSI bus clock\n");
+		return PTR_ERR(dsi->bus_clk);
+	}
+
 	if (dsi->variant->has_mod_clk) {
 		dsi->mod_clk = devm_clk_get(dev, "mod");
 		if (IS_ERR(dsi->mod_clk)) {
@@ -1196,6 +1202,7 @@ static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
 	}
 
 	reset_control_deassert(dsi->reset);
+	clk_prepare_enable(dsi->bus_clk);
 	if (dsi->variant->has_mod_clk)
 		clk_prepare_enable(dsi->mod_clk);
 
@@ -1227,6 +1234,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
 
 	if (dsi->variant->has_mod_clk)
 		clk_disable_unprepare(dsi->mod_clk);
+	clk_disable_unprepare(dsi->bus_clk);
 	reset_control_assert(dsi->reset);
 	regulator_disable(dsi->regulator);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
