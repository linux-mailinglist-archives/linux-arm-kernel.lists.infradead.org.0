Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78665183DB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 01:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FUpQfGMyK8948aGGbohZrzMFiKTn/J+MnlAWhZn4e1E=; b=K64eO3Cs7GRvZT
	3QhAAG1EC2VIMn6NYuhAMtOAk7/fAFNLzgFsIF+n+HZU6r9D9palW48RMrXWsDw2wAVfjs1bVYoTR
	JcHXMi7IMoJABij/2JnnQFfYTjEtReL/b3XZSVpfTGTIR0pWQNM4JH6cVrhQcIjhQXppsoLGp7Lhu
	Dq6elwYm9ByZz7h2jm740h0srcwe8M0PPYgB+3+M9SPedPtove+iWKDcZfWELTRCDRvjYNgPOA78y
	FXzsASurSylGl58jTmigJoNwQw/2zG9grHhSCjxX1UDlJ11ZBcqIWio7TlCq2xpav6vsXEhS0W0PR
	fq/geDcNTjQsM4KKjUXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCXln-0001Al-Sy; Fri, 13 Mar 2020 00:01:43 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCXlg-00019z-Ax; Fri, 13 Mar 2020 00:01:37 +0000
Received: by mail-qk1-x743.google.com with SMTP id h14so9564957qke.5;
 Thu, 12 Mar 2020 17:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4F6aCvMwJEvodjQcp+3IIHrmQA07dblW9GNp3FIT77w=;
 b=oX1Hbv734WRN6kIB5DlUxS/NzZ85FTGqjDcbH8BscB2d69i7BDHDmpNG4NePCMsrPb
 L6g4qe+BcN5qh4OFhVR7NsBVYCxzJ3ie9u+Jct5RrfkmQqQplDNydj3RVxkXD7aueEWA
 sh1StPdX01hI8xYvS0lklsx6eqDJor2pIgC+yx4n5GKyK2Qpoj4jhq1Qq0pmCdLzJir9
 qII2fu74pN/pVjb9joxsqqs/RDw1LJMwKXvQPVKxl1INCWEwJEqqi2uqx26HxEo4Yyth
 nhQCzpn9m2bDGDaFEIQ/52830KryQX4kDvcG6FEA2eoDNjQ4ebCvDMByczRBFx/pV4H8
 fSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4F6aCvMwJEvodjQcp+3IIHrmQA07dblW9GNp3FIT77w=;
 b=mbohUgAJRJX2bSHOwYuqzSY3uhqWdHVsqAL1caxjiVSTe0RSmsW45iWskpZd3Z4tam
 hybO5mqYfoYT3fa//l7qEaIiVm0NPkgE0eKyNQ0swaVDD9JoHrEouQHDYqBBNgtTAFYb
 KMgmIYZJkU1pdWV1qnNLR++Hv7GPHoMCywPE6OJNK9AOqY5OX02YJfABbOIOwlNAneQK
 bgcrnK2ZS7Z7hyEVloU05WCeTOc6f/R+0lsCeNhLkp7OhJGsHjwXnQ30kjA1WT9VXxlH
 XpObp+gZ2+LuCeByx9mSWeQ5Z+fZO3cDVA59O40428CElMFSCEKYIyKN8+OozJZFZKyp
 KRnQ==
X-Gm-Message-State: ANhLgQ05s3qeHyMlGEgj6lgqvd+p/o4yfAOpPSFh0GlQlYuD23vq8DbB
 y2fROGt8u8du1r+19EV2xoY=
X-Google-Smtp-Source: ADFU+vtRT9YtSpWfTr62cQOvqoKlnBy08CT8ETqziryBs19ZCrjhES5yaXYjB8SDzIrv16QSXmQMfg==
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr10283265qkl.226.1584057692741; 
 Thu, 12 Mar 2020 17:01:32 -0700 (PDT)
Received: from localhost.localdomain (ool-45785633.dyn.optonline.net.
 [69.120.86.51])
 by smtp.googlemail.com with ESMTPSA id c190sm6819210qkb.80.2020.03.12.17.01.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 17:01:32 -0700 (PDT)
From: Vivek Unune <npcomplete13@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de,
 ezequiel@collabora.com, jbx6244@gmail.com, akash@openedev.com
Subject: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and power led
Date: Thu, 12 Mar 2020 20:01:12 -0400
Message-Id: <20200313000112.19419-1-npcomplete13@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_170136_378732_578D1A64 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [npcomplete13[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npcomplete13[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Vivek Unune <npcomplete13@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 - Add Hugsun X99 IR receiver and power led
 - Remove pwm0 node as it interferes with pwer LED gpio
   Also, it's not used in factory firmware
   
Tested with Libreelec kernel v5.6

Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
---
 .../boot/dts/rockchip/rk3399-hugsun-x99.dts   | 37 +++++++++++++++++--
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index d69a613fb65a..df425e164a2e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -29,6 +29,26 @@
 		regulator-max-microvolt = <5000000>;
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_rx>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&power_led_gpio>;
+
+		power-led {
+			label = "blue:power";
+			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "none";
+		};
+	};
+
 	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
@@ -483,6 +503,18 @@
 		};
 	};
 
+	ir {
+		ir_rx: ir-rx {
+			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		power_led_gpio: power-led-gpio {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins =
@@ -539,10 +572,6 @@
 	};
 };
 
-&pwm0 {
-	status = "okay";
-};
-
 &pwm2 {
 	status = "okay";
 	pinctrl-0 = <&pwm2_pin_pull_down>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
