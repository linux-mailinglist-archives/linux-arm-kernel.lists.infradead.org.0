Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47AA1B88E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 21:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bQZDKtGfSMGKJxX6/D8F8BWdvOFhB000RhtTnLxNGR4=; b=Gux
	GDDcoKfZ5jwR9xE+mNa8i6xwMQumcAE7x1+hCHDfqDDmgXuJh/LQFi4ZWoxlCU7GBSn3A8inqDZiu
	eedEKBwONNp2W2b0hU0d4cPbiUNA7FDuFL8olNHeL5smebbbo4BjaZpLrnGFNyt3ly6tv61dVpw4w
	n9mQKPwr0FiH/Ebk869E9hrfZ8u7fMWDyo7n5GOwS+0wrDkMa9TMTQIap65KBZz4Dv5pXpM/xjVHs
	iPuFXSYDHusuyRVheWzfmKmolvlmn8Aj+OV3iWRZfZ599hpeUezsgO5BQtEFF9nILnBMMXw9vVKZ1
	60oItdkmG6kf8uBT+N5sV92yyQRC4WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQQT-0007dS-2M; Sat, 25 Apr 2020 19:25:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQQH-0006zk-Nk; Sat, 25 Apr 2020 19:25:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id y24so15716005wma.4;
 Sat, 25 Apr 2020 12:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Svwyrkr3vZwd5gW0zxpIHtZBdUFG58pTxykJU1ReoEI=;
 b=o6HCt7MVG5qE3rdhC06F7oJEaQrBhlAt31o0hGF4VVyT9lWSQLDwzU/Gsoy/EjaVYs
 X6rkhDQuCb4UC2Z+UGjSC+kfnFz0G7EYKwSroVNbhdWEOElrmrvS80+dWydgY97kAIGl
 2dNWdNt5bes//bjT1ymMcT5guGSuXkluWx/j8VfXnivU2FqnKJ0f+aceAc2ir9yGfKAz
 ONbZvJGH8CNojAUwDaVa/495vx5enCxVVgWM5FbvzaFYrDSdUllZCBAjOGESvKNEQ3dM
 GXwhbVKcY08bt7U9RiXEdLUZusRTg99jJh3BEsOW4+HtHVq6IQdnbe1ZI9vDgSMXjNP4
 6frw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Svwyrkr3vZwd5gW0zxpIHtZBdUFG58pTxykJU1ReoEI=;
 b=ZyJGSpNKuUQH8IVU7xxjPFnZQ+aKm0KvTNjzFtrWBgeUhUvYM9242xMMQtPqImDrF3
 yWavmisFTxXmc4tzkwgT4LLUuCzw6lLWUXHlZnh8EV9/z9sUqcAOKdtXzQzeHoEK2w/e
 jZSMpoXmtohzqCV/GaKNeoL7uR1EZS6RHP9lFlUR/PpWy8erZ7U26BC/T3bw9YJbgo7s
 Y7IoePwK/CVY9dhYJgBdNwur6kDeOYNNaV5QN/nKOJLfuuDG4hNvFwJXRS+bHNvM7lcZ
 3PqaSIwQA9eh80dGoiKdhDUF74aHlLBUM0SMPdFqkRqYh+BC4CJ8KxQNhz7tF4qe+Iis
 cUVQ==
X-Gm-Message-State: AGi0PuaKUrnhn81ZujzWe1AUHoK8dIjoIryXOOS9JYlldsXdVIl6IFfO
 qAReEoKo7hNuwqVH+BV5FDI=
X-Google-Smtp-Source: APiQypJvr2ETu86soNz5g+ftzOH15ko7oHbimV7sQWH3laHOhQ46ztWN9wQQV1fyA6HogX+wRGv4dQ==
X-Received: by 2002:a1c:7905:: with SMTP id l5mr18237912wme.5.1587842707860;
 Sat, 25 Apr 2020 12:25:07 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j13sm14277666wrq.24.2020.04.25.12.25.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 Apr 2020 12:25:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: swap clock-names of gpu nodes
Date: Sat, 25 Apr 2020 21:25:00 +0200
Message-Id: <20200425192500.1808-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_122509_803188_D8C331E6 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dts files with Rockchip 'gpu' nodes were manually verified.
In order to automate this process arm,mali-utgard.txt
has been converted to yaml. In the new setup dtbs_check with
arm,mali-utgard.yaml expects clock-names values
in the same order, so fix that.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 781ac7583..d9a0c9a29 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -128,7 +128,7 @@
 		assigned-clocks = <&cru SCLK_GPU>;
 		assigned-clock-rates = <100000000>;
 		clocks = <&cru SCLK_GPU>, <&cru SCLK_GPU>;
-		clock-names = "core", "bus";
+		clock-names = "bus", "core";
 		resets = <&cru SRST_GPU>;
 		status = "disabled";
 	};
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index f7c80538c..7a1a69183 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -557,7 +557,7 @@
 				  "pp1",
 				  "ppmmu1";
 		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
-		clock-names = "core", "bus";
+		clock-names = "bus", "core";
 		resets = <&cru SRST_GPU_A>;
 		status = "disabled";
 	};
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index f9fcb7e96..d929b6051 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -84,7 +84,7 @@
 		compatible = "arm,mali-400";
 		reg = <0x10090000 0x10000>;
 		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
-		clock-names = "core", "bus";
+		clock-names = "bus", "core";
 		assigned-clocks = <&cru ACLK_GPU>;
 		assigned-clock-rates = <100000000>;
 		resets = <&cru SRST_GPU>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
