Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A32B1295D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e5sutMcpFCnHhGYlNGaau/jLgQraoBPunO2zJ21dnQc=; b=VrJ
	BmsAAtujV4EyqOv/73vCUmWx+cOcag1vjPhjRR2qPyb3936iZGzM3wzhGRPtq2cVQtBVcJlhXSZm2
	3vz06v6XmjkoEiPTRCyQz1Qk7+ii71d0oIX3PucdMQAAfUJxmwD4qFslHK7cQB7ihvsr3BQnvLm4U
	HFxdlH82hVmiPimmvsg34DlgIDMuVf5yb/hVklyFDT4kbRwCvMm9aBoecw4Le5LrTOaKu/cbYmYcH
	K736GnA0+eFGa+kz0MCLR+VIWEWav+7OMc96H1KIPHbdYCJDF9+0DjK/C8evhrNxWLl+loFiULOrT
	w56NmvPxl2PY5etD2gugCYlesWuf83g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMVD-0007La-Db; Mon, 23 Dec 2019 12:07:59 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMV4-0007Jy-2Z
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:07:51 +0000
Received: by mail-pg1-x531.google.com with SMTP id r11so8746221pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 04:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=C/NDjdg8YQGt2AK0E3j6iJbr0F2WO/uc87KiGLNm5+Y=;
 b=lpEzaA4THpszZ/Ppu08/O5yU3X9L1VnX/RSyAW7pJ6NA3OLZ0vjsmsFnI8vG8nPbaD
 zsYyT5aS9ySca5D4+dL28IC7b2sKFof3SuMwfxuNTaQtr9w5sLvlJnOKKbtEFmt0WFLz
 iCt+0xxqZsCR7gu6a2pQrRH+NArsx+RuI/yDlTvgX5z2ZrrTNgnY6NwFQVGojuFvDGK2
 I1CZD4j4IL9Vv28yupdAH9IhI8iUVPRNbW4ygUwziLJALVIiQmxSlRBnrsNwjqcVXgf4
 3nRH0iCulN/RVMvuSuVYWIZabui0OesVwX7ZWsm1qNnruJFsfktHK4/iYxQb4HlAcI4r
 K+ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=C/NDjdg8YQGt2AK0E3j6iJbr0F2WO/uc87KiGLNm5+Y=;
 b=DRN91/6EFQb3QPKMcz18nmfFaqFXOlDi5X/Y7RqCRX4swsdAyqFzM7o5DeRN/lG8bg
 3KuavMHf0HNdiq3yEWpLfn1bfQ3SA98QPEr4N2HE4kcII+IhabxWQCGmYt81EtBSzwhs
 5yB/AgiQ1gMH4abUq7mr7alsNtATPpFtOLpQXuWPdw0xDu8uOVewj+25p+/73jYB/mOp
 I7MF4q9YE3tlC9cQcKCxCVKbRr8qeEeeoP1mtyxAU+uqKa6GUWR1pWx5xTl9QoGKWEuJ
 3MuCAUXmsI0FvEyKJY7oOPYjr3afMAPbha5ZEBxj4aaz2ewEIvwwFu0eU22Ri4PZkRKT
 kfPg==
X-Gm-Message-State: APjAAAUVeIZq13bA+PWdrsThUTD7RbK7oRAkxa+2YWiwmb3RTlqWV11/
 LkJ4wGl7LCdcF2mBjpHaXxjQsdxRrPE=
X-Google-Smtp-Source: APXvYqzJdMswDscvxWPNKy12Y1hZaE/fHu30MCc7H6WYWHOBZmhGNSLOz+IZWUO3159cxb2kCjA4cA==
X-Received: by 2002:a63:a350:: with SMTP id v16mr29499781pgn.87.1577102867968; 
 Mon, 23 Dec 2019 04:07:47 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:482:5bb:db1f:d676:5d7d:ed2b])
 by smtp.gmail.com with ESMTPSA id
 k1sm744312pjl.21.2019.12.23.04.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 04:07:46 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2] ARM: dts: imx7: Unify temp-grade and speed-grade nodes
Date: Mon, 23 Dec 2019 09:07:19 -0300
Message-Id: <20191223120719.7448-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_040750_119205_4F39B29A 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Changes since v1:
- Change the node name to fuse-grade (Shawn).

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
index 139ab9b98472..568d7a984aa6 100644
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
+				fuse_grade: fuse-grade@10 {
 					reg = <0x10 0x4>;
 				};
 			};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
