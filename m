Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 207EF888AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cmt839Br3kYrTG4STSQ7O2VeWnOD5PjyTDGGvKFvbjk=; b=HMpKN6wa+lRgj8Dt0/PsfJAj0A
	nDJ5vH4+wfLPL0RZThXcPL9i7osyyyZOf+6K2DSMMmVmQGaMPobyBLfucMJyBEIo/XxQYJTPVdVwc
	lufUKctrYQDAVPiWD+kuptgfGBysV5dMG/5M24TYEuoucB5O4PvEDx95A87n5Zul4mSoo4XA6qrae
	5SVmlfC2RrVU6FQkPFKcofg07cZ9HveFQk5uoEUBdHRWFbadu0zeDpev0g+ZPPAnOij5AjaAx9cdo
	ynUtfvof/axC9Ez+p6EcWsdoGDzcdfVs30oMO3pxCMKxCIdUTAEDdpUNm5g7VWamD1xVm4Pjxa6Ig
	4ro/nevw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK1d-0006QH-Ir; Sat, 10 Aug 2019 05:34:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJxW-00034g-3i
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:31 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so47118286pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N97E8/sjLzhDk5t0PaLYKP9s4xc14haiY7F1jTT8rvA=;
 b=ZRbyXiUF6gmLzn1OgJc7h/Hf+DW3O8LRQKGyeBgbf6cqioGR47ZdLTH5+11AfvdCyw
 LKGQlCR3NKbdJNpn0FF82vptUjuhz65HyJEUwbSyswVoS7XeEMR9BBewfeZ5YihKwcR0
 dyTwCU8PO3jfRvxduaepqLwpC8rv3pxjzlTECubkKfxGhMDxhWgFulkJcbki9tbr/x+Q
 1i1D6xhTKJK4sqe/TzvhCLOgmdy6cf9YUhRbidBKHpn+pSD3x/rsNfvtjPnyY93A6eg2
 heBRqnvyzd304Vgkt1CKz6HpVF1wmxDQ3zm0mVfsaVMZ210ACYsWhKp7p02Wz40JhgNV
 A/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N97E8/sjLzhDk5t0PaLYKP9s4xc14haiY7F1jTT8rvA=;
 b=gH9hm4kJyWM70lv19gqeQ0y5wK23NFi+gnBr/PO+I1/Ugq+SZICZ53KWXb2P16JKk0
 1ZKSfOXTZONwylDuoqNEiKudjV8Jho6fydTYku1eyJsi5UrtZqkCib8Ck3PdAksPQRo8
 lg7O+ozU86gXmIPGqQoK1L27aCy3P1EbpvqZ16bPxcbQ6hPex0+/Nd4iFXw30BXgFAJd
 Yh89XZstjSqNpYkBn1XYDDD85uM4+gOXO8OzpsrX0I69aAUSxMt8KfDtAkw/v9v3xoiS
 qPU4fWfED5cypLXpdR1HoZWSUY2jOLiiYgbl09M5Km/zJSPhbHK4d9zAtUJqsRABkxrs
 IdPg==
X-Gm-Message-State: APjAAAVs2EOlVoaclauiEtlV/hFLFQST7cOz6Qmlc9E9o0rQqGkamitm
 ZmTG7rJ6SRKOIPJRRghVpZo=
X-Google-Smtp-Source: APXvYqxQJC2cov0AZI9Zc6L1PoOKHIqa7mOVzuvWNzU+GwSLSgVq2r0q65Ii4MJWgZcDi6gXhannTw==
X-Received: by 2002:a62:e315:: with SMTP id g21mr26135824pfh.225.1565415029673; 
 Fri, 09 Aug 2019 22:30:29 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id z13sm6999252pjn.32.2019.08.09.22.30.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:29 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 18/18] thermal: sun8i: add support for Allwinner R40
 thermal sensor
Date: Sat, 10 Aug 2019 05:28:29 +0000
Message-Id: <20190810052829.6032-19-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223030_339845_BEC22A91 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The thermal sensor in Allwinner R40 SoC is quite similar to the one in
Allwinner A64 SoC, with only slightly different temperature calculation
formula.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/thermal/sun8i_thermal.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 78a888d85cba..0de9a56c3775 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -529,6 +529,17 @@ static const struct ths_thermal_chip sun8i_h3_ths = {
 	.irq_ack = sun8i_h3_irq_ack,
 };
 
+static const struct ths_thermal_chip sun8i_r40_ths = {
+	.sensor_num = 3,
+	.offset = -2222,
+	.scale = -113,
+	.has_mod_clk = true,
+	.temp_data_base = SUN8I_THS_TEMP_DATA,
+	.calibrate = sun8i_h3_ths_calibrate,
+	.init = sun8i_h3_thermal_init,
+	.irq_ack = sun8i_h3_irq_ack,
+};
+
 static const struct ths_thermal_chip sun50i_a64_ths = {
 	.sensor_num = 3,
 	.offset = -2170,
@@ -563,6 +574,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 
 static const struct of_device_id of_ths_match[] = {
 	{ .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
+	{ .compatible = "allwinner,sun8i-r40-ths", .data = &sun8i_r40_ths },
 	{ .compatible = "allwinner,sun50i-a64-ths", .data = &sun50i_a64_ths },
 	{ .compatible = "allwinner,sun50i-h5-ths", .data = &sun50i_h5_ths },
 	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
