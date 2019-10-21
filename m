Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C19FDEF83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPmEHpFaWIcCxjN6koCyDKSMFEj6B+FzjaGVU+ZIaRI=; b=pQXseASFaKmcei
	KQdnb2F0Mp+qWSME4wl6Mq9uoq/LyhzQ1d1RGg/EjwYgehAJDTb6lDsY+jPPpt86shciso2oa2Sd3
	xH8QiAdZx6W6YXDJl/ELNk3iSuJd8n2mnIH5AbQPD4zRKkzSQRXAoYsEF0JzpOw3lO0TiEwDP+MNV
	+ZA+k7AtyZ/QYh2rHaNvEQp74TBfnqd7eUg2H1YqO80YnQ8Tgcx1FWXt+HM7n19/kRl3oNzcnlDFD
	a4gIc3Dx9UZCNN/YJdVlQ/Eet5gXD4RJHJvBpT2RYd4GGKSnOj9tgmevIdG6PWWqg5SsF/29+9m+Q
	3T5samuY5d5EPuyYj4bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYgn-0007K9-8h; Mon, 21 Oct 2019 14:29:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYgG-000708-IJ
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:29:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id v9so3000008wrq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QxYYIsnCFuLUec3Mt7t5xj1H4ecLSFsGNR/kmuhF8Xw=;
 b=NDuJdtzqxA3OkM8uec3rQa8bOcNzLPulM0OXh/XyrH9Ymu5xNJsy3h1598MEwd6anI
 X/6r/euqtrCGbxi/pCDiLwiQB3wkDOwB1Ce/YSVAWgeySHI49KKoGcYIMQP4tMm179YS
 //N7JGeQhY9hYx8Ho3z+l5B66Hl6rzeuNV5xwkBfB5bv3B+Y3FOhaARhGQPpvwv8C7In
 7v0ZN1SfWLG6cyXOcItJ8sMrPMRxopF7WIM1/g+axau+0ZUUfCgN11UR3Re/geaFNUhJ
 tcDcueyK/Fsy6chlR4r+uAEJutQEmNL8K1Ubm0OIgcmakwZdzABtcnHW6OUMWmnZ5ze7
 dRWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QxYYIsnCFuLUec3Mt7t5xj1H4ecLSFsGNR/kmuhF8Xw=;
 b=i3cxRnvn3E9kYsMW8j7VtzHtZFtd4kmMN73XYN5Yzgy+iv6fy5Bo7lyKWjrOvOySJW
 9AscpP8jaER2Gm1EmAllhwRWShGOIKxBhQjmimm3kRWcfA6RQCuZfuo+JtmjTAjmQa5M
 wtvtYOYzQ26KWd2pZypENQRdc8XVC0LNxPno74DNy4Y0dOdA/5MnAPo1AqB/sebtc+4j
 zdGF9baoIhG0b4DiBIeqZ5k2Or5y6In+Wfvb8xPgR8CAlYR/8DiPTDvVzeQBfJRLreYZ
 p9CL7NZ3m0RhBOuWlQtAA60Gbbfi4NMVEt5texp1gXDlDSwg+e8ez0jg8U0N6hNT92sk
 /9ZA==
X-Gm-Message-State: APjAAAXWTspsNyc1/O+8swPOexiS5QV3ACefXghGj/KJss6axJ8DSXeI
 O9RJsqHEx6iehB77UPxi4K3qag==
X-Google-Smtp-Source: APXvYqzoY3Id/cVnMuCKMTHqE3o3klKK3GFRil4uFFZJ/1VmKO1UXMdfsxgAkMy3bby5/p/Or7OubA==
X-Received: by 2002:adf:c143:: with SMTP id w3mr20338530wre.77.1571668147049; 
 Mon, 21 Oct 2019 07:29:07 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d11sm17304463wrf.80.2019.10.21.07.29.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:29:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/5] arm64: dts: meson-g12a: fix gpu irq order
Date: Mon, 21 Oct 2019 16:29:00 +0200
Message-Id: <20191021142904.12401-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021142904.12401-1-narmstrong@baylibre.com>
References: <20191021142904.12401-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_072908_606424_8176B9E8 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-g12b-s922x-khadas-vim3.dt.yaml: gpu@ffe40000: interrupt-names:0: 'job' was expected
meson-g12b-s922x-khadas-vim3.dt.yaml: gpu@ffe40000: interrupt-names:2: 'gpu' was expected

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 3f39e020f74e..f9c52ada7fda 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2388,10 +2388,10 @@
 			compatible = "amlogic,meson-g12a-mali", "arm,mali-bifrost";
 			reg = <0x0 0xffe40000 0x0 0x40000>;
 			interrupt-parent = <&gic>;
-			interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "gpu", "mmu", "job";
+				     <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "job", "mmu", "gpu";
 			clocks = <&clkc CLKID_MALI>;
 			resets = <&reset RESET_DVALIN_CAPB3>, <&reset RESET_DVALIN>;
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
