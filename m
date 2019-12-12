Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA711CE81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:38:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f3Ok7wiwkxKhQte+Xmfh9IcgGOtEwUD/GxocKqQnExQ=; b=KNE
	c59UUHQfuDzlJJoj0B1LzjVJFQXAByieAWgvtVUw+c/0VWoEaVZRQOvT3fN0QwGJ8Gw4LG0G/oeVI
	/2RiVmvPRO/Jnr3eIgKiMSyWQ56C/mNtpEdSQHyax/nWUbya0OsLX//cCgenTrfYS//3kIjdLgqhk
	MAw9UrObsN9mHJ1kquIGKfss2znh9Xh6f4qSRQv9LvnV0C952FMvImUVOKaaTtg9tRll+x5/kpqyf
	M9hxlFzh6SQOF6lNaDmNmwrZUPU/1kwHSBtJ629sR7zEbYuKh0LQr9/oOe095cPpBANNNYedQAxYM
	BNMzdszMEYl3fP/OptVZAPV9OxL4Tew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOg0-0004ZP-Bu; Thu, 12 Dec 2019 13:38:44 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOfq-0004Z2-Ca
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 13:38:36 +0000
Received: by mail-vk1-xa43.google.com with SMTP id g7so422398vkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 05:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XPKbrW+GgXfnBsWc7n0t7J3uGHJbpmRlzdz7rtslnHY=;
 b=iE+3Kd1GgBQF3lyW6ramHAzFk+QQ2Q5jORErzDUki4eMcUGwDnDWApNJiRAbJPdw3a
 WikqMtVoswNKSb5VR3Z59b7Q41cBWac2wXGDZOUZYxBKEEESvVFNOLSZDM2L1g/H+Wwe
 unB6M/q/Vy3ePxpxuODUPwuPgCNxQMN/pNcCZzgobOaAyRsebCQjJJVYhb+0/lzegYxo
 hiFq10BMi5/kVn4UWzhjTZwjwTGCmnRMN5FbKN64b5flKNoLlkApk6QADnDp/VRbQlHV
 rGUbSgNnvGfqqitztC0zNNLIpNlPrXrxWWJieDn50ZML6AivK0mcoGNjejrinCYA/gM5
 0Shg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XPKbrW+GgXfnBsWc7n0t7J3uGHJbpmRlzdz7rtslnHY=;
 b=unlYL8ITlj20FPNsf53JgUJndXyHVlnEdm41yjuvdDcISUUwCfZXdhgIv1psAFDw10
 jW1uEH9LZzTOmCXW5TW2zUK3a8uuC3yj/4+Cfx6wmfX6NWHtwIyfz76zPwRlZZbFm4Mc
 bzk51i8yxcBXQhYvyQFHogKqPkg3x4GTBYLcAhi7snHVgzYUUnNVw6Y9/kL0TRSSqfbk
 nwTCEMZKhscV1cdfV/PJCaY7SMHEQ5McnoPWgShRaH8mVEBybTzAk5etIRd/pa2+ntBi
 dBqXsElqGZHqRpa5+gbVSOGE01c37JPkCcnRSYc0EgqZFgVd10yCGvwbjnRoP45ayd9U
 Nurg==
X-Gm-Message-State: APjAAAXj6TEOrYsVZZIv66Llzxv25dzztLBwTKJCnf0I59kk+N9N8t7I
 vxafqVurPGKLiJ7CD0fs8w4=
X-Google-Smtp-Source: APXvYqxvK61sSavkykq4QNG9tYNWWBNHfyVEwcTu5xdzPBX7Kta9bK6Va01hthPZ/7gCdZhJKO+Pvg==
X-Received: by 2002:a1f:1e13:: with SMTP id e19mr8915993vke.88.1576157912480; 
 Thu, 12 Dec 2019 05:38:32 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id 41sm3246132uaf.8.2019.12.12.05.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 05:38:31 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx7: Unify temp-grade and speed-grade nodes
Date: Thu, 12 Dec 2019 10:38:00 -0300
Message-Id: <20191212133800.17929-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_053834_428390_51813234 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following warning is seen when building with W=1:

arch/arm/boot/dts/imx7s.dtsi:551.39-553.7: Warning (unique_unit_address): /soc/aips-bus@30000000/ocotp-ctrl@30350000/temp-grade@10: duplicate unit-address (also used in node /soc/aips-bus@30000000/ocotp-ctrl@30350000/speed-grade@10)

Since temp-grade and speed-grade point to the same node, replace them by
a single one to avoid the duplicate unit-address warning.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx7d.dtsi | 2 +-
 arch/arm/boot/dts/imx7s.dtsi | 9 ++-------
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index d8acd7cc7918..92f6d0c2a74f 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -12,7 +12,7 @@
 			clock-frequency = <996000000>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			#cooling-cells = <2>;
-			nvmem-cells = <&cpu_speed_grade>;
+			nvmem-cells = <&fuse_grade>;
 			nvmem-cell-names = "speed_grade";
 		};
 
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 1b812f4e7453..05d099da5a02 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -152,8 +152,7 @@
 		interrupt-parent = <&gpc>;
 		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 		fsl,tempmon = <&anatop>;
-		nvmem-cells = <&tempmon_calib>,
-			<&tempmon_temp_grade>;
+		nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
 		nvmem-cell-names = "calib", "temp_grade";
 		clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
 	};
@@ -548,11 +547,7 @@
 					reg = <0x3c 0x4>;
 				};
 
-				tempmon_temp_grade: temp-grade@10 {
-					reg = <0x10 0x4>;
-				};
-
-				cpu_speed_grade: speed-grade@10 {
+				fuse_grade: temp-grade@10 {
 					reg = <0x10 0x4>;
 				};
 			};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
