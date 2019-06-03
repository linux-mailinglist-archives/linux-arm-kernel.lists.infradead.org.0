Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA13632D22
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 11:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86Jr3lMUDMtmN2hv3cSSmIu3cVR2Pl7RTrzWkKmGydU=; b=G94p8pWaY0tKba
	q55v9aTAjhUU4BGSYATOAen9CHXybVgYYYOf0M3u5VQgiOo6tpfYH0IXQK7Rx/XmbDiJ7FRN3HkkB
	nAb6CY62DuB6gDKSNgBAW30OkdOZVMVg28KBMEp7hUongx7bW3DDlC9AYv45vQtgZOA9un3mWm8KZ
	4cAw+/GAs2YaTN7pxSUlQ285zqe1y7xhkVkv5+K/D7G5rJbA5ftM49IxFRwxyPdKwWsKkPXbOvj30
	QxMygoC/LP9Ie/We4XDnCCMBfK2fDb+tOKFHZu6Qk1+SZfd8iHbKBDRan87d0cpSYbUNdt+jvoUCt
	e30+lYB0zkbaAoSCdlJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXja6-0000V3-JS; Mon, 03 Jun 2019 09:48:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjZH-0007z2-Ob
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 09:47:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id t5so10317121wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 02:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T9Ny5N7xcGaPs9PTlrreMwQ78swu8eI1bqcwr5eO4vE=;
 b=jZRdLLd/0Cwb2WksjvzB5nfmewOs6XQTiqgY3942FTJZbY3otyh522qliwYQUxB80r
 tldzgHNhJJDUtVqZqbbUaurGWFIWMjB07Tbpi2Nr2fXQbwTBScqSPtUEzGg/REKu8y74
 96r+RTtykcM+FmDC49Bf97j7ggNKk0RTHUuwghW1TiaWe9aw9eVSzVAoxtuj+vxVomPN
 tE8aXdcslm6uL7cb4sB09Tn+q496+67zaoL3zQAiyh29M07k1Qg3Rxo9T99jVmXQrivZ
 e5NouXydbCRiZ+Waa4lXIO2rqDLnEoyHPxG/FtOnB3HRl6PwFtyvfszgfY8tbh8F0jq/
 nGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T9Ny5N7xcGaPs9PTlrreMwQ78swu8eI1bqcwr5eO4vE=;
 b=tWKRLRaJ5l/ajC5C6/WWSf+N/JPLoHZfxp+Mwrq/gpYlqCvI2+sqaSJC+Ua+791f8e
 6D8q+WhBNFcuBGN7sRvLDzms839PPUCMIFdDcUc/4TJR/yY7Jan60S2r6EaE6iC0jYhH
 swXzt1DufhDE2bTM5HlqnEYe/UwP5QvD5JyrsUL0btMmu8/nUbLfjrVzOBh9j1xlRZba
 +0sM/AbadEZ0LvjugSmwAk1rJ5H+AHr5j9C3Nw/XIIm3jN0csNTUEVKCb3p0yCIx9iji
 mfc+Uv5mSEVU1bGGasKt/YbFdVfdZ37T+daoMGs+2iAPYdoI12LMob62A8RdB3G/zE22
 IUdg==
X-Gm-Message-State: APjAAAXSPzhcp6oHp5Dkde+LOOUrbEH7+q6cb4WSWRLKzdobf0+YQ+ZR
 GC/K+sWCrPZ7uBxFP8O/DnLzxg==
X-Google-Smtp-Source: APXvYqxYgQQ6aKW2VVH6+UX/ZVBFLY7/jEsZhudyesWCvOJtNp0VN66G3eM04FyN/tjpGKCky56o9g==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr13747212wmj.155.1559555270333; 
 Mon, 03 Jun 2019 02:47:50 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z14sm11235375wrh.86.2019.06.03.02.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 02:47:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/4] arm64: dts: meson-g12a-sei510: bump bluetooth bus speed
 to 2Mbaud/s
Date: Mon,  3 Jun 2019 11:47:39 +0200
Message-Id: <20190603094740.12255-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603094740.12255-1-narmstrong@baylibre.com>
References: <20190603094740.12255-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_024751_803375_2538CF68 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting to 2Mbaud/s is the nominal bus speed for common usages.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 3e0e119c13ce..4fc30131e5e7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -530,6 +530,7 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
 		clocks = <&wifi32k>;
 		clock-names = "lpo";
 		vbat-supply = <&vddao_3v3>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
