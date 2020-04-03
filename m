Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF7619DD67
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 20:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E6nJRT43ln10s7S4yNhVkkgtmw122B913Ax3x2DD2ys=; b=rftqvvvDJv3wEfr/IIhh2UQKJq
	Y4SZLaDNXQp1GTObwHTxULF861RbX9z2I6jpYSCLOaLa2hfX3zWfWDKh33c7YD7hX/KcGYumKuOQO
	k7mM/RJ/CsfjBcQmpgntPJKF8hR/5b2AiXovVIl4BbvNdz1xeixsMOgJv/N0Z5ByQSrvTZcQVa7C8
	zwJtZp+SYKxckgUhVqIl77pOVzQ2Y4Eoa7dKSGe3jFNq5ZY75wj+zqn5AqJZc6v/2rM+5AHF9bLK+
	iNLUZ4IHqhTkFOgDq3wc5yrjrp8NvVXMOqhREyi611rYBCjE+ZKJZU8OqcosTyTOE9Q8qoPCo1rKp
	Mb3h/23A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQeY-0005WD-Tz; Fri, 03 Apr 2020 18:02:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQdz-00055T-FF; Fri, 03 Apr 2020 18:02:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id h9so9579851wrc.8;
 Fri, 03 Apr 2020 11:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pJW7G8+AK7on97oQRodU2eKPtvCqhsk+Q2DcdPPDzz8=;
 b=Q2iZUdHeWfYgT0GIKTgX9g9cbkvRoWuoAEuQn3SCx/4TX+zhxmCgWBPytSUwlK9CQC
 +VTKZkNxS4G2UHy22CVrDUJzi1XsxQRoKeMSWmY/HeP4hq85+i+i4SwanD6WOXYullwi
 VFCAEMyOcmXXEeduWr8t7L79dOO9A6OMenWqz3hjWHHFujmgZZ5K4jeF0JC7UmIqXyLJ
 ai+YU4zU8oDq/gB2jc8gUMdPeN8NoOntBN2JV7In/2R6vDP8lT+0wGKKHBQ0sxot5Wcl
 PWfQkqZABBI2soimfmlEMd66sKGfu9qcCpuaQjTlro+7/NpNgaERYHIaeMVcv29Y0fk4
 qyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pJW7G8+AK7on97oQRodU2eKPtvCqhsk+Q2DcdPPDzz8=;
 b=c9PNGh527GK5HDBH6WB4kIUy3Kyp52Evaop7xQnWhzrrXdG6ctSgdWYpgCPASF/kel
 wbUyXKUfk7LUkdul2nRm4EUSp2sOQMBNaY71wNgQRpVkrhzUaqrbC2KKhTz2yOPE8hfC
 tIWe7LgV7gwJpm0Gs8rHXXRnezCwDy879hkyi0fkcUP9kJpUYxeR1RHRVnS2x6YJW8lb
 jMQ07H9Et4ozWskR4JVi1EbRu0KZRdafzImS7HsYj3rPIdKQ40Gt4km3HSfR30+4euEA
 sZp50NRGNxyk3jzvJ8Ng+28App0/fqKcuwLA4GaK0KK/lquStGfaV7HBYNoTptx9l1z4
 IqVw==
X-Gm-Message-State: AGi0PubyLqrCHvdqM7p9+te5g6iAYj0HEQhSVzgmH0EKa2Vmc1k0L8U4
 4mWZttsMucfWb4UIxxrvzHQ=
X-Google-Smtp-Source: APiQypI7ZLu33/QL0354eqDrhOWt2QusPd92n+8YfQaB7xvV+Xc3kHE37UcC3XsvhlIDo3M9vnJsGA==
X-Received: by 2002:a5d:630b:: with SMTP id i11mr9750425wru.94.1585936932802; 
 Fri, 03 Apr 2020 11:02:12 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j11sm13005492wrt.14.2020.04.03.11.02.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 11:02:12 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 3/4] arm64: dts: rockchip: remove include for irq.h
Date: Fri,  3 Apr 2020 20:01:58 +0200
Message-Id: <20200403180159.13387-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403180159.13387-1-jbx6244@gmail.com>
References: <20200403180159.13387-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_110215_533926_4F23F3F3 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
