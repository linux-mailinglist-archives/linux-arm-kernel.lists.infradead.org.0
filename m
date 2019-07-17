Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6286B6E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8SnK7ssZhJK5eoQCxJOJxIOdGE0cpH2a35SDir5MjnM=; b=fY9SnYGsAhkcZA
	yu4DHfVmeV7JBQNhNTqexvR1G2UxZAEHkgwUJGqVsaBzDPa43tn5mHmw+7uCKnO0sP29gcNkACzZe
	16JL5zldl9znA+fGt3zfQmwQohMvQrDxkCIyv+Ku5HH+exwFzoVZHw2r8fRjwxmiioVd1uER2yJel
	LnkjnC5OfeHbRBxTgJMy2dH6TVaQnyMo4yCGQ6WCuPq9+HeZDyba2dWZ8fguiQkfXREBDhXhEmQ2d
	rx0LgfLChPT0zH0bFbb5Ng8jGmHS88VOn+w50xRrhvtEOOvjeEWSCMpy0PcoyxeLN/qrRCZouolMr
	dRURhcM6WtGATXZckVqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndgB-0005lY-MH; Wed, 17 Jul 2019 06:44:43 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndfy-0005kp-BA
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 06:44:31 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so22434353ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 23:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qQOSa6kWxlLoflHL8OdfTqPq/TojpJrLJGEjx81YQz4=;
 b=lC9hotHtG2BypEKQBhJAMKQSsKfn9SA9yna9QOpHdb7Au+2o8f5Qe8F8Uj04WBAS8d
 a1ztZDlrzxFi/VfravWwnHiP1538Z8/wgzcngm+SOjvd7jIikAIs2TgHUHSEJEhhzAbz
 vH369/VaRyId80mI/Uo/ocHyGdskXYs5+4TxL3WkwLWysriIqhvfU9g8zj3CKsLjc2D8
 HmKgztV7xaFYKyExsLSt4pW3WRg53MRQ/NCzMLzyca+aHiPgAt7G++8FgP+hXKqaDSHs
 QU0DtmmmwmPD0YQCnkMlOqSKnhMik084dBc/28Z6A60a2GTa6mPyCLC2cRNWqKqFbzs3
 cyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qQOSa6kWxlLoflHL8OdfTqPq/TojpJrLJGEjx81YQz4=;
 b=bSQFIct2DtuCXeYOIqszwNguDJymyFw6FZ99GGzpuA+/U1Jscpitkmi3GSWEV/2/e3
 NErwcFbCi4e1IJCWAL/PL4m6Tm8dXwDbwKnYKiWib3kti6G9GGqrMAu9hvPpdgp3cXCp
 wNd/zbZE3KoePEVQFeF+Q9dXDIwWSeF5thEYrwFmWQtkD7JlBccpFGD7IBNrgq/8D9su
 l7QCoG6GEnVZGJXrsxZwFDy6nuaJcMbSPCql9XebBPQPNX7H3wzev/mqCJH79/hn07Lm
 kF0AKkdaT1yHhUcZ/jWswEvO5QoNQsc0POacPeqQmhqpkU7X2Eyf5eNR/pGKJHalDWXC
 igug==
X-Gm-Message-State: APjAAAXGjj7RsLilvw/QFSeF5Oq2Ir4HIcRZFvXFvC+fsPLrqoBLAxrh
 lvA0LOmQHB2m6qJnAZwQsLjyh1PDi28=
X-Google-Smtp-Source: APXvYqy3Ubfcq2E+9PrxIsUWpElGRIEiHjGbg/nBA8IR71urhhgl4nPYVOvAQr43gJoIr7EKoew3cQ==
X-Received: by 2002:a2e:970d:: with SMTP id r13mr19921585lji.126.1563345868756; 
 Tue, 16 Jul 2019 23:44:28 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id c15sm4198246lja.79.2019.07.16.23.44.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 23:44:27 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: ux500: Fix up the thermal nodes
Date: Wed, 17 Jul 2019 08:42:25 +0200
Message-Id: <20190717064225.7695-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_234430_404537_923AB7C8 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The thermal driver for the DB8500 was never properly converted
to device tree, the node should definately be activated for
all board variants so move this down into the main SoC
DTSI and and default on.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi  | 22 +++++++++++++++++++++-
 arch/arm/boot/dts/ste-snowball.dts | 29 -----------------------------
 2 files changed, 21 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index 339da70d4e83..90dcbc3a29c3 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -505,10 +505,30 @@
 			thermal@801573c0 {
 				compatible = "stericsson,db8500-thermal";
 				reg = <0x801573c0 0x40>;
+				interrupt-parent = <&prcmu>;
 				interrupts = <21 IRQ_TYPE_LEVEL_HIGH>,
 					     <22 IRQ_TYPE_LEVEL_HIGH>;
 				interrupt-names = "IRQ_HOTMON_LOW", "IRQ_HOTMON_HIGH";
-				status = "disabled";
+				num-trips = <4>;
+
+				trip0-temp = <70000>;
+				trip0-type = "active";
+				trip0-cdev-num = <1>;
+				trip0-cdev-name0 = "thermal-cpufreq-0";
+
+				trip1-temp = <75000>;
+				trip1-type = "active";
+				trip1-cdev-num = <1>;
+				trip1-cdev-name0 = "thermal-cpufreq-0";
+
+				trip2-temp = <80000>;
+				trip2-type = "active";
+				trip2-cdev-num = <1>;
+				trip2-cdev-name0 = "thermal-cpufreq-0";
+
+				trip3-temp = <85000>;
+				trip3-type = "critical";
+				trip3-cdev-num = <0>;
 			};
 
 			db8500-prcmu-regulators {
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index 3428290644ba..064e8abec954 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -376,40 +376,11 @@
 			pinctrl-0 = <&ssp0_snowball_mode>;
 		};
 
-		cpufreq-cooling {
-			status = "okay";
-		};
-
 		prcmu@80157000 {
 			cpufreq {
 				status = "okay";
 			};
 
-			thermal@801573c0 {
-				num-trips = <4>;
-
-				trip0-temp = <70000>;
-				trip0-type = "active";
-				trip0-cdev-num = <1>;
-				trip0-cdev-name0 = "thermal-cpufreq-0";
-
-				trip1-temp = <75000>;
-				trip1-type = "active";
-				trip1-cdev-num = <1>;
-				trip1-cdev-name0 = "thermal-cpufreq-0";
-
-				trip2-temp = <80000>;
-				trip2-type = "active";
-				trip2-cdev-num = <1>;
-				trip2-cdev-name0 = "thermal-cpufreq-0";
-
-				trip3-temp = <85000>;
-				trip3-type = "critical";
-				trip3-cdev-num = <0>;
-
-				status = "okay";
-			};
-
 			ab8500 {
 				ab8500-gpio {
 					/*
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
