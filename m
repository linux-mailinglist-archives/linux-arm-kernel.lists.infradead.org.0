Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D538DDF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 21:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2RVKZuVr+HodOUfYFGhnjfIWltrVjkRgeRtGY8UfH28=; b=HzAm96YelWGLZ+
	5OmVtGKQF2M3VVpYkYyR027rMzOJF8v6XaSHoPjZ5YFLPaMPNnRNwUyvTdC+LHnn6CEmXCSXPlBB0
	cwu+RroabJhxBPtyusXKQVuG3fXkLlAifCeFFGpFM1TulByYkXYhdNWVrD4YOVp9+iIUBbLAiWF5f
	5fd4wpH3Mu7ZKeh5RgFgJo0PdfPhYd9utwF5hLAd33RmFDuXTEelj/qPGNDGid/cmM9kF001NEiDV
	80QjkzivJHdQvYlIF9YOIfPonpGpv3XVYOe9AVoTICNk+8t+UVNVI+dP/g6jynMwWowEkzPoTcLt4
	kK4xBHUg9zTua7tFR0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxz44-00046c-R2; Wed, 14 Aug 2019 19:36:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxz3t-00046J-0t
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 19:35:58 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so76335pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 12:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=udDZ8D9z63VnH0o8q5In252RZUS/LTZzdCyQGXY/J2E=;
 b=Fff1Z/ZD0Hv+bKtJnXFqq50wIuzHFp3AXytMpSlaaJZbN06XK6B817tEmN0ZUEP2uf
 9MGWCXKz7+S9nqSrJTQ0196lyQcNkE6wewZ1xt5ak1ctXe2NfNPM1DkQCGNCG0p0gUPI
 ix4+LlweVk2xl/s3yBlVy7boCEwixJCzHsOFVa+fSa9+JEIIrRLMkKUTwQMl8U7KaVD2
 /ff6sQwpv1Kf5sCI7+6nafww2K/rWzN72EdzC/5O0t8kNtodj8DstzkSHnKPVTnFTHCj
 21pG/NiSP1Lj9VjeEEzfkwcrAiun7lsgkmKq6aqcqIZWqiSoq7gUksbFL9eqfFMBoA6X
 dQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=udDZ8D9z63VnH0o8q5In252RZUS/LTZzdCyQGXY/J2E=;
 b=rEOlUtBwm5qJawyAAr3dfv3zWiTSusSxzLq2iIUf0MBL7m2PUmRYDG6hB+HTypEqWE
 UySBonb1Polg/MlQsW3nhnlPAdAk5D299gyMBQB1mVsI9ktWb6WtFynCGj8R/UO5Z5CO
 wZ5fjLeIc5O4xTZDfLGxM+jXkF+L9H3Hl2VQnT3WsWeRTmh7uMPMXsoU/gwvYNAJgTT9
 ta+EqWlel5LLu+MNVXWd1I269EVuJ6Ub4SKKtgFMRszrmDMQ3vZVEKnHOG52QzNRjiv9
 iESrPUZlM8/hx++1O6VnomlFaxJZS00tZgxs58804LBOL+SLF4yo4Uec3kJvQJBhOldT
 4N2g==
X-Gm-Message-State: APjAAAVznQw0rsXo4kDobAC8SxFSohiXMfOnkFJjb92SbRbjXANRprir
 al9eFlwYV1nJrR3iSAJfZlE=
X-Google-Smtp-Source: APXvYqxl0zd19U3LmCJmi5GqGOBpJVxOUNDFJEFY5MkCV956G150A4Jn9Ws8eqMoJOlCdwTgRIYElA==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr670277pgc.20.1565811355927; 
 Wed, 14 Aug 2019 12:35:55 -0700 (PDT)
Received: from localhost.localdomain ([2607:fb90:8066:4c72:352b:229:44d:ae69])
 by smtp.gmail.com with ESMTPSA id
 r75sm656791pfc.18.2019.08.14.12.35.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 12:35:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: 
Subject: [PATCH] ARM: vf610-zii-cfu1: Add node for switch watchdog
Date: Wed, 14 Aug 2019 12:35:36 -0700
Message-Id: <20190814193536.15088-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_123557_093235_B2F18EF5 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add I2C child node for switch watchdog present on CFU1.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-cfu1.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-cfu1.dts b/arch/arm/boot/dts/vf610-zii-cfu1.dts
index 7267873b5369..18c19c092dd1 100644
--- a/arch/arm/boot/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/boot/dts/vf610-zii-cfu1.dts
@@ -239,6 +239,18 @@
 	};
 };
 
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	watchdog@38 {
+		compatible = "zii,rave-wdt";
+		reg = <0x38>;
+	};
+};
+
 &snvsrtc {
 	status = "disabled";
 };
@@ -324,6 +336,13 @@
 		>;
 	};
 
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			VF610_PAD_PTB16__I2C1_SCL		0x37ff
+			VF610_PAD_PTB17__I2C1_SDA		0x37ff
+		>;
+	};
+
 	pinctrl_leds_debug: pinctrl-leds-debug {
 		fsl,pins = <
 			VF610_PAD_PTD3__GPIO_82			0x31c2
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
