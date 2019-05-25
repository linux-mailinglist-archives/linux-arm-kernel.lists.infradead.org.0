Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83012A6B8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 21:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrpOejEvpGLK5ao3y5aGSujIGKGuELabt5DMrzz4hNg=; b=r5Q3/VpykL+0Pa
	KsOF86te/xB9lCt54dk8YQquHbnfq+oKQp0pcDlgGgpuZMLDwGjmsgWtvR4yI8CDstP8CdiZKPcRl
	fK9DcWMnBWQVThGIvutEl4hfMI0NcEf52utV7ACZCYcC0PRWgMFHcP6Mino0PiomPBxhAoQp30ulC
	56YykRAokvgcXaYgp7xQnEtEbgMXrGlB3qWgWPQ8P+6sLJzyLwTAuZYYNUWdPL4FMHkCXO7QiO4Ub
	NrzOivmry/ENs26br/FVJZOonrptJoIFApvAopxxLdt+yHek6zvwUqQjvquICszljDHNZR2YU3/ju
	JfclMghMaRaOIkn5fZ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbwr-0002dS-8k; Sat, 25 May 2019 19:03:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbvr-0001WV-MI; Sat, 25 May 2019 19:02:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so12985391wrq.12;
 Sat, 25 May 2019 12:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wwuYv3aJc+Jn6CC+ws46Y8JvxBizBD22MAUJcAPoAWs=;
 b=athd6wnvzMFvUabNQ5m23SBnvwwo2uiQkJ3YFUL8HHiVgS4lEYg6Ehj1l7FuqSYAIy
 o98L0uICFvssWTZYMTW/Doe9uC+xur1WNzSrjeEQHUmG/d1v6jTGYFink/Xl3TR3U/iw
 lF4ZleVNnzs6AlkJGWSjMCpo+YG+U8pxgBmuwel5k8rVrgRYmyv9DJ34SRLmcXKksFUk
 fmr+ka5pylHD/8r+x1yyl6fzKXZa9r/E6bZ7L/CmXtMj2mUjtNP5Sa9Jtu0v3EwyqW4H
 dTCjunvDz/QeyqxwI+vYuE3dXHKPWRhTnPJ1pYBkwrAumt7SwU00e3qP6qEpAahTC5qS
 h9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wwuYv3aJc+Jn6CC+ws46Y8JvxBizBD22MAUJcAPoAWs=;
 b=omK2Gp3q/uK30MK8bjaDNAI2ms8qChw3baLP70N/23Mx4dnj9eKtkJLFVH7uBVZuHt
 1X4MKW+l5+HwrtxB3AZ6zaDgDIqRBjYQ1ctZEpmvgoIKm2kjAEd7FP4KPNngXofFxB6a
 2auHI80h8VllW26mOrrNxKd+nzeYPCpKrRcZQuL4DZ7Q17+oGLn0EJ3aMeFNIntfSCqx
 G6HTq0VWr3zUzBFO+CFdA3pI/iy0vwlxRAZA0rnZsc3ebC901OkQB06Y/hQotvxE1kY9
 DYOq3d1dHwTktF+gZSAaG6nbXVu3jl/JbwFc2iDAyNu6+xpLL/yujoU8qnfZtWzlUCOs
 12ag==
X-Gm-Message-State: APjAAAVplElzHHJdsm18Nlx8HOwI+woXn8LJ3/X06eHKn99it/cFLKjX
 LgzWtVz9mxcHx/4sgXM9Ej2Ksm6k
X-Google-Smtp-Source: APXvYqy52Xb3yRcwFLGBRb8J5DjY31vTTOpWN18I1HEqnnydCPU1mcr8g4nguQ6yCFdL8ZnffvoBmA==
X-Received: by 2002:adf:9c8e:: with SMTP id d14mr15880942wre.215.1558810934037; 
 Sat, 25 May 2019 12:02:14 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id f2sm6870426wme.12.2019.05.25.12.02.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 12:02:13 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 4/4] ARM: dts: meson8b: mxq: add the VDDEE regulator
Date: Sat, 25 May 2019 21:02:04 +0200
Message-Id: <20190525190204.7897-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
References: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_120215_724458_C26C3044 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VDDEE regulator is basically a copy of the VCCK regulator. VDDEE
supplies for example the Mali GPU and is controlled by PWM_D instead of
PWM_C.

Add the VDDEE PWM regulator and make it the supply of the Mali GPU.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-mxq.dts | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index 07f1cc513f8a..8f7a02c1e27b 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
@@ -116,6 +116,22 @@
 		regulator-boot-on;
 		regulator-always-on;
 	};
+
+	vddee: regulator-vddee {
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDEE";
+		regulator-min-microvolt = <860000>;
+		regulator-max-microvolt = <1140000>;
+
+		vin-supply = <&vcc_5v>;
+
+		pwms = <&pwm_cd 1 1148 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
 };
 
 &cpu0 {
@@ -151,6 +167,10 @@
 	};
 };
 
+&mali {
+	mali-supply = <&vddee>;
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vcc_1v8>;
@@ -182,10 +202,10 @@
 
 &pwm_cd {
 	status = "okay";
-	pinctrl-0 = <&pwm_c1_pins>;
+	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_XTAL>;
-	clock-names = "clkin0";
+	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_XTAL>;
+	clock-names = "clkin0", "clkin1";
 };
 
 &uart_AO {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
