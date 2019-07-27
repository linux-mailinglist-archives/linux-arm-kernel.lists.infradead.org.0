Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A6778A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 14:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdfF1oO1kAJ982c66bwxAS5dX2V3Ex1lqChUIUhFviA=; b=VKis1acVMS+FQz
	56OmlTp2aKuRKesVtdhGu4JQtwrQou9zofO4jWsLsaY4oOsgg/uyUc57sDKVp9LyaVVW8vrR3SS21
	DJsysfm/CvLSiWZF+wxSU/4rRvmnLg7P/7jpYXSjxQd7px5ihwZT6WfD6pAuzd9+N+eiSjOXl8lHG
	b9RqhHdxm1u3wxoVSmoJ7rQ9fXBDEi8gF+swMGD9ADEtEj2hhcRGjeEQnTH6aU0DhqQiy1vfqOVQe
	v/b9j9Nd/lk5138Dj6v6TL4QrgJCwO3pAATBz9fFNvIaCdtXNARa9rdi/lfCRxB4mZf3XatkMsX/L
	FfERhUsSt49flA0gpoOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrLaG-00025g-DT; Sat, 27 Jul 2019 12:13:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrLZU-0001EQ-K3; Sat, 27 Jul 2019 12:13:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id p13so56989684wru.10;
 Sat, 27 Jul 2019 05:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M1c63JSwpgOze8F8pCPA5/iXGFnYX96rO0PJN0uiLng=;
 b=n+YubnUJE+3ya51GU0gCWEFmN2Is8esPm9su1SzC4xFK2t/5X/wRmg4kKVBOiLOVXE
 SeMTz7HfovTyx8cTWHpiKksKrNa9RopkYILmSMsXboAXIMbICg4pZNgv/K1DRI8sjaj9
 sdj2zbjZeVsLZkw5sjzOUHOZGRC6Fm6U0H9zft11utfOR3n6gCTvr5edK0t35WP8OOth
 wcP5R5xj11f9DdVfL81GywWBwFQlvAGEBvXhwrG9UleZpVCTcTZ399h9+PTP0YcLctem
 IXcjnqg0qSwZmmjGYr/1JAqYdwx3F5XMIofanMlm2aoHg1kvW3MCylPy4WzUzy8SGp5c
 crgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M1c63JSwpgOze8F8pCPA5/iXGFnYX96rO0PJN0uiLng=;
 b=mpGZnpMIYy83W8ELKs+r7Ke7Y6VRBQSzLd7UBKYDR11UAg73VftnSg8ZAvX5C0ZbVN
 ezGw+Q8S83NiEpljzkIqtCv7gm78PVAEs7m0b0ys7XZ5qLsyYk+T+/w6b7PyBvpIunUL
 zMQOg6qFu2MMYuxFjeDUa1OQQuUxGZlmZSM4LfdmWgDzOKLc+fqcbkwGreWErbi02q++
 s9/2XFk9rr6FSYNP0zr5kwlEuf6+cEQ/y3rCRdkC+MeyXDTFKblh7zgM9MzJjX3/QRr3
 vOEjZt4yVqYiwI+NvTHEB0itAeQBXe10eFhh8w62F4cx3eE8B/65G3Gc5oRTgi2lmqBk
 d1pQ==
X-Gm-Message-State: APjAAAXny5b5HfqisHxsQf3vIDhXwbxaEXzIhIlZsBwZY91R/Y91PRCd
 aNP7SnUREgU3pJJij8tS/jWjX0P8
X-Google-Smtp-Source: APXvYqyr7nirAJDTRhfEZh2/V2yjDVaRoaLfSaO5Fn4FmWl+IwT2T2//0bdNuTazUIEuHY9BVvNKrA==
X-Received: by 2002:a5d:4ec1:: with SMTP id s1mr101413995wrv.19.1564229587054; 
 Sat, 27 Jul 2019 05:13:07 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id
 o26sm111786569wro.53.2019.07.27.05.13.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 05:13:06 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 4/4] ARM: dts: meson8b: mxq: add the VDDEE regulator
Date: Sat, 27 Jul 2019 14:12:57 +0200
Message-Id: <20190727121257.18017-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
References: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_051308_671536_75277630 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
index bb27b34eb346..6e39ad52e42d 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
@@ -76,6 +76,22 @@
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
@@ -112,6 +128,10 @@
 	};
 };
 
+&mali {
+	mali-supply = <&vddee>;
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vcc_1v8>;
@@ -143,10 +163,10 @@
 
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
