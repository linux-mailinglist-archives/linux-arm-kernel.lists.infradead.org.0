Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA65E5759
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1bOUgciKdHIB2sjYFMidj+McnlPvypwwWgwpeT2Ed3U=; b=vCi9I21WhL6+xT7Pa/4ZKYBw26
	FGf480mq2AZuQTQKyf7xlW5ldkOkFpxq7AF8xksY60s9bnPDyVQOwo1WZIwtdvWf7V207oR6XH1Qr
	wOJhMrBnJBQtqgKSHuHAbbyxWbAlNbxehNlG1xKifnyS/XLTP52vgQUY9CWRKZGTOGddRa0FBwR8m
	qvkQK6k2PLYImGZeTrl9JpTQBbWoySRYAlFcsbY17pYX+b/NRi6dJYXGGVz1eAo32GhGlV4EjMcYX
	V0IRdUmrg4LvYMfMKLNXalssFk2QuVlViUVMujbmFWcLNVuoUc8iZBOgp7ALX743lL/dkZ6cqSxbE
	/joLe9cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9XB-0005TW-Av; Sat, 26 Oct 2019 00:02:21 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9Wd-00052k-HZ
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:01:49 +0000
Received: by mail-qt1-x842.google.com with SMTP id y39so524497qty.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=w2Qe4Y1E5QpVDPsqMFOE8/bVIH+/dJJ0HI2l6GB+kWU=;
 b=jxSf/kl6ubzeD6imZ4TU0l0dtA5dpa+Vh+r2h23loH1OIgV0GEq6HUiVzyborJfJhn
 V4d/nmQUxCcZ8tCTQXYT4ucnKO3eAik81K3A5N41wJDrftgsZp5Ft+NtWqn7UcgMUFta
 EmzOwhtAOD3/wMmTpezfR6iQ4TGE8ZlKRf+slLDgL0sWtpINeUhbrWiGshiFthuKLDMS
 Xcbdb7BTjjZvEkn3IQ4yegIJ/zBLqiudvfBEV3V4N1odQW3whcPEofHHSnl5z3U2nkLa
 hiCO3s7mmhaZfjvdwQk/1+OcnK3fZ0TAsnt7ER5FkUqf5E1aReX/MLVsVdZQwyRZEhIe
 ZNTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=w2Qe4Y1E5QpVDPsqMFOE8/bVIH+/dJJ0HI2l6GB+kWU=;
 b=lBv3zZAwIj0oEGjPegYQBvoYKO3ZozPXuYgMtliSIkXsSjUgVzATpUiWVLxs3ESGVm
 yPQVzCn+kM6OzlRWkdRSOOxiaSwJtHSlHpG+B2ogwqLclbTWGojnD6gDu5/ejeoebSeM
 LD7r9HCXbAlE1pRpHzHziZwjtJXeqVOy6viX9OFhkKW0pVcNLJaS7KIO86AxNeaOi0Ti
 YZrFHP6zO0bDw64Ypd3Opml+hFzoeXscTdqvRBi9oaxtrgZPy5rSpwQcPUk9Q/Wj1NYV
 iProSU1u1hH2ts+FtgjOnXL1UCGd4cdbDbkUXt9PNmqX0eelLmgeanB4yoiM91joNoMp
 B7Tg==
X-Gm-Message-State: APjAAAX0HvQqo7197OEpImWDJvzEU0pnSQ8zI1IbpouT+v8cTl5k98h1
 LkBVmyWuQqnmufVi0L9Ksd0=
X-Google-Smtp-Source: APXvYqwbttIZRrfdudc7IwOa1FE7bE8iO7oD0rjQMhpAoR153Z9VGc9I11XxeXT/1WTqgxuQr4lSOg==
X-Received: by 2002:ad4:58a9:: with SMTP id ea9mr639923qvb.179.1572048101935; 
 Fri, 25 Oct 2019 17:01:41 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com
 ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id l3sm2547840qtc.33.2019.10.25.17.01.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:01:41 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/3] arm64: dts: ls1028a: Move thermal-zone out of SoC
Date: Fri, 25 Oct 2019 21:01:18 -0300
Message-Id: <20191026000119.27178-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191026000119.27178-1-festevam@gmail.com>
References: <20191026000119.27178-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_170147_615296_BD3D449C 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 leoyang.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move thermal-zone node from the soc node to the root node.

thermal-zone node does not have any register properties and thus
shouldn't be placed on the bus.

This fixes the following build warnings with W=1:

arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi:583.17-612.5: Warning (simple_bus_reg): /soc/thermal-zones: missing or empty reg/ranges property

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 62 +++++++++----------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 51fa8f57fdac..370e9aa07efd 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -128,6 +128,37 @@
 		};
 	};
 
+	thermal-zones {
+		core-cluster {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&tmu 0>;
+
+			trips {
+				core_cluster_alert: core-cluster-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				core_cluster_crit: core-cluster-crit {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&core_cluster_alert>;
+					cooling-device =
+						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -580,37 +611,6 @@
 			#thermal-sensor-cells = <1>;
 		};
 
-		thermal-zones {
-			core-cluster {
-				polling-delay-passive = <1000>;
-				polling-delay = <5000>;
-				thermal-sensors = <&tmu 0>;
-
-				trips {
-					core_cluster_alert: core-cluster-alert {
-						temperature = <85000>;
-						hysteresis = <2000>;
-						type = "passive";
-					};
-
-					core_cluster_crit: core-cluster-crit {
-						temperature = <95000>;
-						hysteresis = <2000>;
-						type = "critical";
-					};
-				};
-
-				cooling-maps {
-					map0 {
-						trip = <&core_cluster_alert>;
-						cooling-device =
-							<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-					};
-				};
-			};
-		};
-
 		pcie@1f0000000 { /* Integrated Endpoint Root Complex */
 			compatible = "pci-host-ecam-generic";
 			reg = <0x01 0xf0000000 0x0 0x100000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
