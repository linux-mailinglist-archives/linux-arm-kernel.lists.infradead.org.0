Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9576F175E38
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yMB1tE9vo9PCcy7Mz5l6QxjbnmiBzKdyO72srliFY04=; b=P5+
	8ES6Mtlma/VlGo50FZ1oqrGIWZtY/G8k/DxyxctKGerys4B+XxPbX41fm/l1CpNyBuTaBI1QRhG55
	g/2SBE5Pv+Rugmljggg8+wAVpHd7f72E/NpVy5JPboZNrDFdgpmXxCat834thTYLnq26dbtAfERr1
	bsrPzCPbL5hGHpkytygkwY0PQdweY88M2G4yWLOpzZFMylkfAWXGpujrmels6dzfkrYH/cj7hjD+M
	lNftMP34yRDpXkzuy4pPGXTk5/v6d4+uFy0tRwBHqH4a7RDLQiKNF2JFcCjORUcW1vYeerfcHb9un
	qK8yAZpxt+/1nZ09AFtoJyk3RJB+TkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8n2F-0002Ff-ML; Mon, 02 Mar 2020 15:31:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8n28-0002EP-2A; Mon, 02 Mar 2020 15:31:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id a25so169055wmm.0;
 Mon, 02 Mar 2020 07:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cDxTJ3U/zVDbQifHojY/+GljrxTfGRmptXZLeP80vjk=;
 b=J76VcCPby95I5ByDSiHe6gQn9iBMMgDjDXFvtmOQHiEmrNEFsAX4WbLPkQ7jJyNIju
 UkPpaEvzk93UzUpO11yPZBwQDdZITEMIgOlogKyWpAfDXOCoDvV3TM+pKSgJtbQzBdSY
 pIiKNU8qHgwGq6sON1xxHabxz/WgfjRtGF/d9uTMWgyfgdbsPQTiVMa00OJf08PN+kN2
 fhGEqlYm574HF98X/M9LB0pQ6NSVYoXxTsfJRZSLy97GLgxCDljJtJ1xjzdTbGBiU1+o
 EJZZlGby6OapdZ0o1uAg6aa4jiJrYH8rB2H5UQI/Fq6ZSrqg1W+XjflDBa2vgx/BnrD9
 VTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cDxTJ3U/zVDbQifHojY/+GljrxTfGRmptXZLeP80vjk=;
 b=CrFo+2eaOmb6IkvlA5y8VWbGCQeyAf/YjZQXi2a6aXrnXS52M7Zm5k+6ubspgvnz9w
 lzM1m2KX90ch5bjCezrxthNfELA+e9RTjhMeYp3j790DRoo5TRr17BD/tjgNTqp4GY32
 9/T/HItws5K9TWPCnAUz/nIyjy8B8JS3KaPTpmbnn/nAg212ziMyEPi+vrJFiTCO4/WI
 2s0Xsd/S3IzNMD5tcS33Rk3t612y5+wIJ6TRk3zNoAxSwzAiACKj8PKzVA6nf/362jb8
 G6BO3IP2EKUwp0elaPVyihJ1Xe8+x9I21gvG49/kQd6GtV9t+qMATWESUcbZAGzGY2ya
 /08A==
X-Gm-Message-State: ANhLgQ1bLSkVzxakhbpTrxrbKBD60JsjjRweEOz4N/DMK+ephs4u+n6Q
 2L7GLi5Pnu+2XEUw9JcpfXI=
X-Google-Smtp-Source: ADFU+vvYp2Usg0GZFt1juRtRwKLL1LOLUPzV4bbQ9j6TD9wIYfWqOEC6l8LldndvuXDMif/X6Ebskw==
X-Received: by 2002:a1c:9d85:: with SMTP id g127mr7459wme.75.1583163062535;
 Mon, 02 Mar 2020 07:31:02 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g7sm23967540wrm.72.2020.03.02.07.31.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 07:31:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: add bus to rockchip amba nodenames
Date: Mon,  2 Mar 2020 16:30:46 +0100
Message-Id: <20200302153047.17101-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_073104_130082_B96D82F2 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: amba: $nodename:0:
'amba' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

AMBA is a open standard for the connection and
management of functional blocks in a SoC.
It's compatible with 'simple-bus', so fix this error
by adding 'bus' to all Rockchip 'amba' nodes.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/simple-bus.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index b62138563..c28d293df 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -54,7 +54,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index dac930be3..b98579035 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -95,7 +95,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 039e8aa70..8bcb4a516 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -155,7 +155,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 241f43e29..9438332b8 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -32,7 +32,7 @@
 		spi1 = &spi1;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index c3621b3e6..59295babd 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -85,7 +85,7 @@
 		#clock-cells = <0>;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
