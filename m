Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD1218520E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 00:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ndbF7Zj+3Wb2VKgFKnaC07uUIU3iN3bRJ7j7m/3MAVc=; b=tksg76swHLhJZ6
	se02qYJxC7n/Gf9OqU/ij67Jt96S1IDeWxQIBpoPropphbWzhlavRvXdEae8iI4kw6abvWebQZWQQ
	UKidF3JWsDmofragt6mp+hQoSM8lImk6fdsX1LyOAJSV1UsRgKe/f4LsfwkBSAL59V8yjjbjrf841
	V0YG1UlTNYL+weaik9tgjFiAh0++8M7wl313Wn5GCi5HQGFJnEvxqm8z/jpgP2qRmIJj7icsgz7UG
	BbIZmkSSfvo1ZQ2noSvjr663tPff3893H9flN81ZCyrOt/VTPEvWZpbwH/G864krs5rYsZ3KmK6NR
	aJAylUUoal02axsA2goA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCtN6-0007Mh-FI; Fri, 13 Mar 2020 23:05:40 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCtMx-0007Lj-MR; Fri, 13 Mar 2020 23:05:33 +0000
Received: by mail-qt1-x841.google.com with SMTP id 59so9119944qtb.1;
 Fri, 13 Mar 2020 16:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K19tWYumSLxb2jgL1zYdrr/V94anTYSOiMqlc5VxdrE=;
 b=alFec87BZpXN0KlqpPOND8yBwUN3qvnWceUs7RmxNXeRDLzbLwA4DYwSftKfaQlb/5
 7CAPgS3YNllTd3voPPiwGOMxjOQZSYwCJA51vA5c2WrbGD0dXJDIk37PRPc9mHoyySa/
 gIQjUk+ytd9tDQFbOxNsYc6bySk+TmEccp59iajt3fu5Fv8UiXif7ksXa1pNMPrSv3II
 c0pFJjeFk7YuM2R/Dsl0S74VPm2Wq6bFgbInkAYrPMvMgz2NxorHElKI3Z7GPyyxPvOO
 UHvD8Ewk/06FHXmloZqLkhsG/pS6FtdDbTO7EKDWK1SBmLHKgaVYuYCuUu7HS5LfHfbd
 JtQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=K19tWYumSLxb2jgL1zYdrr/V94anTYSOiMqlc5VxdrE=;
 b=QnaMfgQs/fVosguVSdU6N2VuRMaVHqZ6rjzjE0bVjEMXzc8O9BIqMEl5cy3EXelY1t
 wxQhMoITixuta1C3w4zcw6MEJN/+Mr7D0FhrzTOjrb4mPttFS1lskgERJEIrwCCzMHRp
 FkfIbhO9xGlG5QAIafjEmtgIGriLJASxyaInOX/tOGFE2AS2Ig/golGWDHLxlGRLlI4t
 /lyIQOa/XaZDL1MBmQjoHm0Z44qi/90+dIQTgUrdVqS87sNais16+AM30q01w2W858mf
 TExdqP+K6hf8augflXZAVjGTMwW8CKA8BrnNI9VwwnFm4sbS9LFwLKjJ2baBUH16lVkM
 BXNw==
X-Gm-Message-State: ANhLgQ2vU/N75fxWW9/nduxYkeyf0NirpxEYs+3uCF6rDONiL2sJFrdb
 Fe4Ycaa6z2NwiDkWEo/FGMI=
X-Google-Smtp-Source: ADFU+vu2A0jQITKSfb9D6lzWugdRnkulN3l3qRdmwJK7GenwUubT5WBUEj4UMaYTfXtbMNN5smwyEQ==
X-Received: by 2002:ac8:6685:: with SMTP id d5mr15145698qtp.170.1584140730346; 
 Fri, 13 Mar 2020 16:05:30 -0700 (PDT)
Received: from localhost.localdomain (ool-45785633.dyn.optonline.net.
 [69.120.86.51])
 by smtp.googlemail.com with ESMTPSA id i1sm25756015qtg.31.2020.03.13.16.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 16:05:29 -0700 (PDT)
From: Vivek Unune <npcomplete13@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de,
 npcomplete13@gmail.com, ezequiel@collabora.com, jbx6244@gmail.com,
 akash@openedev.com
Subject: [PATCH v2] arm64: dts: rockchip: Add Hugsun X99 IR receiver and power
 led
Date: Fri, 13 Mar 2020 19:05:13 -0400
Message-Id: <20200313230513.123049-1-npcomplete13@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_160531_758383_3E08287F 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 - Add Hugsun X99 IR receiver and power led
 - Remove pwm0 node as it interferes with power LED gpio
   pwm0 is not used in factory firmware as well

Tested with LibreElec linux-next-20200305

Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
---
Changes in v2:
	- Changed led trigger from none to default-on
	- Changed led node name from power-led to led-0
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
+		led-0 {
+			label = "blue:power";
+			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "default-on";
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
