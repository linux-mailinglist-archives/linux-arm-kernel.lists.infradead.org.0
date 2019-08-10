Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1E5888AF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=02h9IEdFdFBsx/LWWP6mofsNtpr9gkUOQaCCmYDc33k=; b=qjq
	+LejXeCp794gT08JBR/UTrf1D34VR1lrUQmhZ7aCdCzB56Sa8L4Vq8T55gwrQNb+o/pWSM3g67M7u
	/wSFFhdapmQZzOUYdaZQct/BHd1gbK+cMzRZ+yFmYY9cdHp7ocoKYr/Mu92rTyJwthQiMj+NQsXpX
	nWtzg1nhd9eZgVUD2wTLsIZ8bQqPDLp2CKuTmdLRMQc0MBCbp2S+D3OhtyErP/NM2MKNbHNidonLJ
	C5kHfwQr0Ae+7G9NqjaiZk2MSPlDakHEYgF1se16BpM4vepCUjgJhggawS8JvHa3/0t6mZGDSUs1G
	bqhKMhxdAtMD4FkTVBRsCgwvEUNmu3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK1t-0006eb-KJ; Sat, 10 Aug 2019 05:35:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJzY-0004ok-Hy
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:32:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay6so45819910plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=71DUVtj5Cvg/Wok9dZsUDEqRY7qzU/CKNT9zSocN+ao=;
 b=oH/Pf9MtSMDZkluj4qQKlvh6Kv8FriGzPN9CjiWS1WBhMkpRogJ5AYRzjRkOt+MO9y
 DensadzKBFHj3agCJgnb3xMpazh9MI43ilUc0NXpzI7eyC0gmIAhzJp5zvR0IQrsdymo
 nJIPKVISeubH+rufmf3Lc/KYui2pUCc3Zyhu8DXu9KDooJesZmLnC+5g1bJlVOetHSS1
 Woq5wOdnef8MHDFi4DP/rUQLksb2NhiKvjWqfWI6ehlkuoq12Kn+A80ApJodRlFiTsUR
 1fy4fS7ySH71Gaelyza0+EmuwftY6JgenWu8GsFN/nwMdBTweYeMYDt6TksRya0JxO5C
 3SCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=71DUVtj5Cvg/Wok9dZsUDEqRY7qzU/CKNT9zSocN+ao=;
 b=GBd6yejhGJOh3qBewKnJ1ZRSsA4iF/BPqAxuP75OSSlXWcFd4I8o+ivpQCToTiug/T
 +pTmwaS7OXlQKNipYNybWisdRsXp/kIjVvicpaO5XV2WBVFXNKtjtPjPBeTQ5toD38d5
 iKJh/aByaQnX56ysT7f/F9GQ9FX6ORnB0JZZUaosOOk4M4WXluFGFsHLUQuQkT8fIhYB
 2IOhfxwcPr6r7DT2TgiVT+c1OTvX5lYD5SeZEWJ5yXNTQTmv5aoyTGb/CNcPIE+vOwfb
 grqdcv5IyTY5PiRt5RuTncfKeeeBYAXWMkwPORKSeMk9hiNaF2ZIIq+Y3RiSl+P/L7m/
 dUtg==
X-Gm-Message-State: APjAAAVH1nnta1yzIntNr5uEuy8/pZfPPF6X407+C/z+jSlWKuwc26gC
 uqSe9uW2UlKzZe3WjDEZ/pU=
X-Google-Smtp-Source: APXvYqzx2x2due+dcKfhyyCVT9miXzJYXimf/VWFq0pAMOqAFhvOtdO+BDXCCX1MutojsCyob5lLGg==
X-Received: by 2002:a17:902:4383:: with SMTP id
 j3mr16103296pld.69.1565415155840; 
 Fri, 09 Aug 2019 22:32:35 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id 16sm26554443pfc.66.2019.08.09.22.32.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:32:35 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 13/18] thermal: sun8i: add thermal driver for A64
Date: Sat, 10 Aug 2019 05:32:32 +0000
Message-Id: <20190810053232.6125-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223236_634032_05371939 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

Thermal sensor controller in A64 is similar to H3, but it has 3 sensors.
Extend H3 functions to add support for multiple sensors.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 41ce8cdc0546..3259081da841 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -515,6 +515,17 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
 	.irq_ack = sun8i_h3_irq_ack,
 };
 
+static const struct ths_thermal_chip sun50i_a64_ths = {
+	.sensor_num = 3,
+	.offset = -2170,
+	.scale = -117,
+	.has_mod_clk = true,
+	.temp_data_base = SUN8I_THS_TEMP_DATA,
+	.calibrate = sun8i_h3_ths_calibrate,
+	.init = sun8i_h3_thermal_init,
+	.irq_ack = sun8i_h3_irq_ack,
+};
+
 static const struct ths_thermal_chip sun50i_h6_ths = {
 	.sensor_num = 2,
 	.offset = -2794,
@@ -528,6 +539,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 
 static const struct of_device_id of_ths_match[] = {
 	{ .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
+	{ .compatible = "allwinner,sun50i-a64-ths", .data = &sun50i_a64_ths },
 	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
 	{ /* sentinel */ },
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
