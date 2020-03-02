Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4253175E3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:31:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=InZdCSEK/AwLtypJYewYW5xZk/19jNEuiasOOA63Ttk=; b=HE1uN633+XYemcXHf5309Gj9LY
	+p2TvPQ4h2sC4PIdvbidrHZQDvXJUuNNZ5psXrs0oY5vAvAUm1GtaXahtcJYjdFzML00s/Bjn7J9/
	JnsCZmqgqymtJhsD3/x2o4WDIFabxHhbWrbvUPa01FS9QSYToWKQrxkXgIwSZ5Ipruwwc9Bpfzawa
	aJ1M7B79u+NEwct1IAYZ7Fdar+yS2iMA7jp/UH/PD+CDGfWkRaxm+AaylCFS4cORI4V9jod/kGGjP
	QNAIvmBqtleXflEQgE4epofJxrC+d/otWOFLJsWe4waPjZ1bYOsdgObCAxT7jNewScelTtPzy+ol4
	iBeTTztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8n2a-0002UQ-MN; Mon, 02 Mar 2020 15:31:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8n29-0002F6-Fd; Mon, 02 Mar 2020 15:31:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id j7so116594wrp.13;
 Mon, 02 Mar 2020 07:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eFDMzvNJhb9C/gjmO5CDDLNllKw2BwatUidg0r9OWqc=;
 b=NSQIFwJD1hXMDRKHfbPuIpu/mXLa55KLrT5j9PkX2LU2p6fhyD5ya9mMjqqi9hYXns
 ojy+Xua5CGm/m0RBQPSaq2h6039qAft3JpLhUHEFvmilxIJM7zps6og557U91v93+M/S
 lYz1C1YMUA8gKmbKd5PDDp3nHPW1kJbvQ/Rvsj2NwajiE5d/5dgwslqDIJ+QV+ubL921
 e+kmE0tuiwM4jTR2vUUVzi3J9iWRp4xpFRhiGTgKquBIqWqb2PGCj5L+xNvLw+K32d/C
 xvSrsD/d3RvqeiYWxUDCMW8XtKGORklwjwOIbe3l6XJ3F1dDSyoeUEP3x7jAPBEL0DPy
 V4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eFDMzvNJhb9C/gjmO5CDDLNllKw2BwatUidg0r9OWqc=;
 b=C8wr2Ud2EREFU6Wp2ZXJ6YXlS956J9ig/HQyrGXkOm8Y9c3u/Sardt3FdTOpMQ5MGm
 RzHzyDJQ6qBNrMdIHt99aNOcAQoUxlLdnmMxn3dHMtPWQdFru6s0xVkERi8Fc81oVqqg
 yhNglYcvG+JeI7KPJnG6hyTT1mgdBuReeW13F3OpJKwsas5fRPfhm6r4xfsXv8QjdMxW
 i0uE8bBqBxKpCavnZHY0Tw8rLSZkoxzF1/hTTcecW43wDF6KHqei3uy9vCJ4OJsO80x9
 Ev2cQiSbCAYbd0Kjfl0huNOqLxqxBH3Wz6oWJnYk2nO1KZG6t29Ti+0gXUhR7I5F9wAd
 /pVA==
X-Gm-Message-State: ANhLgQ30sSHOX+193A6ss+T/UFpjqgLuRAu0cPSPJhpLSUB9ePUBlvFk
 FzHbUxGazI8f+YpGh52SIeY=
X-Google-Smtp-Source: ADFU+vvbIMHFtMOd/nNEBuz9Sck5/PZWnPzOs6+fSxM1d70yAvo48rCFI0OCKH6irEXdAFZNLy9kgw==
X-Received: by 2002:adf:dfcc:: with SMTP id q12mr140710wrn.171.1583163063985; 
 Mon, 02 Mar 2020 07:31:03 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g7sm23967540wrm.72.2020.03.02.07.31.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 07:31:03 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: add bus to rockchip amba nodenames
Date: Mon,  2 Mar 2020 16:30:47 +0100
Message-Id: <20200302153047.17101-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200302153047.17101-1-jbx6244@gmail.com>
References: <20200302153047.17101-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_073105_522317_A89A6C38 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: amba: $nodename:0:
'amba' does not match
'^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

AMBA is a open standard for the connection and
management of functional blocks in a SoC.
It's compatible with 'simple-bus', so fix this error
by adding 'bus' to all Rockchip 'amba' nodes.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/simple-bus.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4f484119f..215515ccb 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -700,7 +700,7 @@
 		clock-names = "pclk", "timer";
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 3bd5bc860..ac43bc3f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -513,7 +513,7 @@
 		status = "disabled";
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bad41bc6f..d9490f417 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -142,7 +142,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a0df61c61..2079e877a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -136,7 +136,7 @@
 		};
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 33cc21fcf..63355ba7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -197,7 +197,7 @@
 		#clock-cells = <0>;
 	};
 
-	amba {
+	amba: bus {
 		compatible = "simple-bus";
 		#address-cells = <2>;
 		#size-cells = <2>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
