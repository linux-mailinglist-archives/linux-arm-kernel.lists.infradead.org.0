Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA30934192
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xROXDVDHWX5jstbdIHqKbn3Y7WkuDNpjJ/dR24mGhh4=; b=RsMLbi+zQkR2epxur6L0OAqJx+
	Y99Df+Y4iznWTBRCW11gOLxPupmsONWl2g0PFQ4lylwDNouUvzAtQ6eNJ3jzrRIG1urhKvP3NW35q
	mmdiOimpUGjsrSMNUXE2Pi8V2z/UlddYiqX4utNL/v0raslbcW5E2noxl+fQ216p5bplIcbR73PJp
	+4AdSCvwfuIQFySTuX629QCQRZp3ZMRzot1vBFGmSHV7oX7Jw55Eiq7QweOR7r76YhQz4cYGbkMFg
	sOSLfYP+TUdgCkE7ABEoDCN3j+CRRpRBcNhCytIgQoFoCr8nR1fuoweX9YLs/CoItMxeNxpO2R0BY
	MGb2YdHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4ce-0003j4-6G; Tue, 04 Jun 2019 08:16:44 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4bS-0002Ew-Jy
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:16:09 +0000
Received: by mail-pg1-f194.google.com with SMTP id w34so9877857pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=dER5z7AUiZqvyewGFEgnTI66kajUzFaGGa3MWKBcALw=;
 b=vB+Hs12ydRRg7xKl2y5pq42c9TjetjyW0KPP4CLQt1K5QD8u1082ngypqoz/11y6pf
 HsTDlpjOvwfLUalvg4uG96nQ2MLMmkyHNeAodvBKqe1k6KliNxZtqwgdUPx1nRVCDaLS
 d/gpsoMpSCfGI5CUCM+4zoY7lZ6mNNLD4jXkaJ21sHDJsdpjn0SIxSCt9tqmtkfOofB7
 RqQpd+nyHy8bd1NIy3azycy35bMkxl7stgprnj3dhXBUQy7smuGvkPvmCPP9+IRlqzDl
 nw7NJ48xznSFJhLrRThp2Bn4mrOl4dcFT4lxs6ckloBL3l1TfCRU8gfHKoeqhcD/oe+G
 fhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=dER5z7AUiZqvyewGFEgnTI66kajUzFaGGa3MWKBcALw=;
 b=Jd7ah2+1cNGCH+c8slhf4aATEevS0gB4Zvwf0xjg8KenwL5dAf0H2xnQ2QBNRqk+cn
 YuIl1qv54Rk1ZG5hVJdIU0RHJ/Oqb3dW8Y6ERS/KN+orNIK3nlAFgzo2xhy6BshvM4z8
 sKir+zdSxPdTES8iGdpb3FX9AkMERrv6+zllRPkZ6pduw5COuiRKkmNpwH/+iem03dEe
 KXrB7a2qmvfeKIZdJzjpMyMtLo+hXst/Ya2/wBLFcprjzkCARuOJlZMjiYYIUEcgaESA
 +a2vdzLpQR+uNVNbTuBQAcO8XnOoX/dFABdzKXK0s0S3KuNj1qWd0Qt9+7B6pM9ldXO/
 QdOQ==
X-Gm-Message-State: APjAAAWU8KeN1AmE3dOHZUe4ZpbYM6gRCqv//WwU1Wl0OPhYWEXuKdcs
 tw+g8n3VraVEMU7Rl+auV7GZ8g==
X-Google-Smtp-Source: APXvYqwm5O/KPp7XNf1fWqY832/e4ZO4cZ+12EaAKnp9jkR2KI4E6QiX8CcY/sQ9R+DjpbaetygTiw==
X-Received: by 2002:a17:90a:1a84:: with SMTP id
 p4mr35971999pjp.15.1559636129484; 
 Tue, 04 Jun 2019 01:15:29 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.25
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:15:29 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 9/9] arm64: dts: sprd: Add Spreadtrum SD host controller
 support
Date: Tue,  4 Jun 2019 16:14:29 +0800
Message-Id: <3ca273e341f2f5f66b121d411428c60afd412586.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011531_119978_AF022CA5 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add one Spreadtrum SD host controller to support eMMC card for Spreadtrum
SC9860 platform.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 arch/arm64/boot/dts/sprd/whale2.dtsi |   35 ++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/sprd/whale2.dtsi b/arch/arm64/boot/dts/sprd/whale2.dtsi
index 4bb862c..79b9591c 100644
--- a/arch/arm64/boot/dts/sprd/whale2.dtsi
+++ b/arch/arm64/boot/dts/sprd/whale2.dtsi
@@ -130,6 +130,34 @@
 				clock-names = "enable";
 				clocks = <&apahb_gate CLK_DMA_EB>;
 			};
+
+			sdio3: sdio@50430000 {
+				compatible  = "sprd,sdhci-r11";
+				reg = <0 0x50430000 0 0x1000>;
+				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+
+				clock-names = "sdio", "enable", "2x_enable";
+				clocks = <&aon_prediv CLK_EMMC_2X>,
+				       <&apahb_gate CLK_EMMC_EB>,
+				       <&aon_gate CLK_EMMC_2X_EN>;
+				assigned-clocks = <&aon_prediv CLK_EMMC_2X>;
+				assigned-clock-parents = <&clk_l0_409m6>;
+
+				sprd,phy-delay-mmc-hs400 = <0x44 0x7f 0x2e 0x2e>;
+				sprd,phy-delay-mmc-hs200 = <0x0 0x8c 0x8c 0x8c>;
+				sprd,phy-delay-mmc-ddr52 = <0x3f 0x75 0x14 0x14>;
+				sprd,phy-delay-mmc-hs400es = <0x3f 0x3f 0x2e 0x2e>;
+				vmmc-supply = <&vddemmccore>;
+				bus-width = <8>;
+				non-removable;
+				no-sdio;
+				no-sd;
+				cap-mmc-hw-reset;
+				mmc-hs400-enhanced-strobe;
+				mmc-hs400-1_8v;
+				mmc-hs200-1_8v;
+				mmc-ddr-1_8v;
+			};
 		};
 
 		aon {
@@ -272,4 +300,11 @@
 		clock-frequency = <100000000>;
 		clock-output-names = "ext-rco-100m";
 	};
+
+	clk_l0_409m6: clk_l0_409m6 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <409600000>;
+		clock-output-names = "ext-409m6";
+	};
 };
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
