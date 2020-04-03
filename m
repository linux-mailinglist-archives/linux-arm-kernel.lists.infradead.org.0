Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1492D19DA73
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 17:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E6nJRT43ln10s7S4yNhVkkgtmw122B913Ax3x2DD2ys=; b=tZiP9WekU86TQtPBOCQWqyoig3
	XreagCfK3UlW2ai5YJglri7qkhnxxKwR2+HAy2p1eGNGBNMZuCRbKj5+WXiZRzv1Jferlicp7h1rO
	mfc/BBL6+5ehl6MjBvIrUMH4EIWRi0e/A7Tf3ZEsBaldCBsoq8eSTBmfu9mJZaIGIFUm1URm3F/XM
	N3OZWbyCO1B4L6PPHUvT9SJoQMPNRDYpS1w4Z4L+H+w8l/hCZrvO+GUiU6bqlQhF/ITHwLthUZZgQ
	RMUrijQlTAUh+ndJcwEf3X6/Chlpc41Qcwbgit+y9pRAxpEV9g612rZgrPe76AEVROlsa8eoAQOjR
	UaL+RWVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOUZ-0008Ln-8Q; Fri, 03 Apr 2020 15:44:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOTs-0007jo-PJ; Fri, 03 Apr 2020 15:43:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so2825758wrv.10;
 Fri, 03 Apr 2020 08:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pJW7G8+AK7on97oQRodU2eKPtvCqhsk+Q2DcdPPDzz8=;
 b=YsStG8A5lTrfMhCobWLibPDOdgx7uaUkrcKnsgoZ6m7l4uQKiLSkVr7SNnjTh7ecSt
 c4+TngxLVPmQglZ1Os/5j9gQBypVYtZ3B4/Oi0xRLiheN80JUNfcmEcNhynM+q8vU4gV
 r5p9XvbMzKunWGUcQ/Mx8p2OH/2RQj5AaEwZb2VoRT53S9f7HEv9eEivyAofhl1iEQ6n
 s7p+E+blwpKcNAAVjWRu2enj/x9u5i1wjM3x0l4XXLfS42A+jSpUj8/eYJTxQe/eYSDb
 bEIOCC75N0Pjqcvcs0DDGWoJ94L/JB7TyVkbjOV1THRjzFdxPW9zFTp1aE6/YHdHppu1
 MccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pJW7G8+AK7on97oQRodU2eKPtvCqhsk+Q2DcdPPDzz8=;
 b=SFs8dNGeRR48Ehh1SKYXBaZnkcprdMVJYSYAfB4KN1/aTjS4nWmiL5YNjCtN1Wh5BQ
 IlsIg69Gh1WSSOnZMgxt7DgelFan5GEzZXTEZAN1wAFUE7vCDFFVBvAEVfJqeVWLaZHz
 3jKjJ4LLZfl6XSJCd9eXy+e5eqGF+fnZ+BfgtZ7rePViCJ211a9+hij1E47ZxBcVvQBw
 dM1ojQ0xkjIGajFLYFS5qe8My2Aldi81IA/ax2OM10RBeV8ST3HMQ7grbZYxUT4XQ93h
 4/QqoDTjdyv3Z0eNllcSxJH1/EJdFhbh6iZeV1PYp6t6POoMgw7HjNd0dMSkl0esV45x
 4jZw==
X-Gm-Message-State: AGi0PubiCXiDB46Xtx9qjywE+MlcSnLvgdNcDAA+pRdyIFiibmaKy2FU
 T/q6fuRQe6RAHQy6C7e9DA8=
X-Google-Smtp-Source: APiQypJXUfhLnIeJDO6myvWEkdL4J0QdDbMurE0ImmLwTOsJPOpdKOfj5Ot5kldFmQDBTflYB+Q5fA==
X-Received: by 2002:adf:fc05:: with SMTP id i5mr9491160wrr.127.1585928619208; 
 Fri, 03 Apr 2020 08:43:39 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h2sm11701580wmb.16.2020.04.03.08.43.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 08:43:38 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 3/3] arm64: dts: rockchip: remove include for irq.h
Date: Fri,  3 Apr 2020 17:43:29 +0200
Message-Id: <20200403154329.11256-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403154329.11256-1-jbx6244@gmail.com>
References: <20200403154329.11256-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_084340_822541_DE4CFBE6 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The 'irq.h' file is already included through 'arm-gic.h',
so remove them from all Rockchip dtsi files.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
 5 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 6f7171290..4820edc7f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -6,7 +6,6 @@
 #include <dt-bindings/clock/px30-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/px30-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index ac43bc3f7..a9b98555d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -7,7 +7,6 @@
 #include <dt-bindings/clock/rk3308-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 #include <dt-bindings/thermal/thermal.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 470783a48..175060695 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -6,7 +6,6 @@
 #include <dt-bindings/clock/rk3328-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3328-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 1ebb0eef4..f22475016 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -5,7 +5,6 @@
 
 #include <dt-bindings/clock/rk3368-cru.h>
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 0d895cff5..123b7402a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -6,7 +6,6 @@
 #include <dt-bindings/clock/rk3399-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3399-power.h>
 #include <dt-bindings/thermal/thermal.h>
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
