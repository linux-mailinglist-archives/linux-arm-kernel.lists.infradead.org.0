Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1949C2B01B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMTaJNziQrXQFZMetfP/s+mXDlJPJH4jXM0LJ4PfEE4=; b=PMqpg/EDa7zZiM
	fCuoQFGgOgfe83hoQQKdv8rkHJ0e6sZ3485FhNm17NbAqUwpw3IfMeL2mcS8MRn4Lgs4OFjlSQLcb
	tVKmnsv187mXVGwcnj8pQGdHwI6kWJKzIkAhJbnxcgQfhnpJrWK41/Shzr8VSyxbd8tmHBz1Hc8p7
	6bwPvIXwz5zU2HVqrXEtM+4gAXuqTtMNlPrtqQnWo9fPkM8Wu0SdpN2tSqWibbM9vJMdYAs4wUVH8
	0B8Z7YlCwvw7kqH46NUc4Dfo8yJ/AxntOrP8oVjvF0gQP0s57FlTj1r98YsneEicVATYIOXUzpAZb
	zwRmU0OKlInoo186fnZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAvB-0001cv-8i; Mon, 27 May 2019 08:23:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAuT-0000tS-98
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:23:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id s17so16005696wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 01:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oOz0LP9XTs5tIMlVAfAa4sEOphJ8DfIzZ/dQTkiG5RA=;
 b=yCOHiHplnwXVnVvgMMq+WTfd08hSzLEbtyehNusK+SmHiWfDcF6ZStaxb8s2aBbO4o
 0jobPG9WnWr65/a3rnnbaVi1mY2Cieh8lvmaoHAne1acn2J5r3eWXWRQ7Y3uI2osJAHS
 6AfXeQgdAuFHiCOlaeZNIzOGgF7oReiIEv0MkVz1xnP1mrbWN9eEyEG21OnWSa8bnec2
 2FeJ9hwiAE+UmtVEHiTjsynANIMSa0JDRo7IPW3LALW1ghlKsl22/Q8SuXoP/N/Mpmjs
 S1aKHRA5p3ViE5aYVrN8/UqTt2smTAJhQsBdz5ppWpsjjY/VR1svGx10haDUnYkMtw9D
 TeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oOz0LP9XTs5tIMlVAfAa4sEOphJ8DfIzZ/dQTkiG5RA=;
 b=crC1DBRzzi4AnklMvTw+XCVLNJ2DYcENboESKuV9xroqZX94BhIgt/KhqShox+voMO
 D5+Ffvdy4AA1une1QhDEQ6r+Qd8vzbdifPzBj9svCFKlOPhKKq2TV0zZuh1STrqQjJxS
 cAjqv6gtFtCUru8v6QxvFyRY4PlkAHy259hEWXgntIE4QGvNmq0EZpW40AhXWblVkNJn
 jJ+PyZoLrF2ylK0fbrZ6Y3tBGSayOMcXBYf1tpz5EKvMyF87G3aJeyjbkSUWHWv1nnrb
 8++yarYAjsUYV9ziYbOvfp+URNEwDWmqs4xxYelzNWco83JMnBRQAsMnT6BXi0SbTtS5
 t7OA==
X-Gm-Message-State: APjAAAVgdfrc35+i2MyREO2ZE5Q3LWQ+XAUqIMv66BtLXIiWQlftdEIp
 OkpA9oIxPURiay8s6MDJevgdXg==
X-Google-Smtp-Source: APXvYqyNYn3rnNZSWnBrcaeR6u4YqpqZBBBFmyW5rVTM0Wa8Fwkb1DC+23nrCA0lXM+xg4r3l/IWBA==
X-Received: by 2002:adf:cf03:: with SMTP id o3mr10091252wrj.5.1558945387586;
 Mon, 27 May 2019 01:23:07 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:23:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 David Lechner <david@lechnology.com>, Adam Ford <aford173@gmail.com>
Subject: [RESEND PATCH v5 3/5] ARM: dts: da850-lcdk: enable cpufreq
Date: Mon, 27 May 2019 10:22:57 +0200
Message-Id: <20190527082259.29237-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_012309_499983_182FD409 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: David Lechner <david@lechnology.com>

Add a fixed regulator for the da850-lcdk board along with board-specific
CPU configuration.

Signed-off-by: David Lechner <david@lechnology.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/boot/dts/da850-lcdk.dts | 36 ++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/da850-lcdk.dts b/arch/arm/boot/dts/da850-lcdk.dts
index 26f453dc8370..b36d5e36bcf1 100644
--- a/arch/arm/boot/dts/da850-lcdk.dts
+++ b/arch/arm/boot/dts/da850-lcdk.dts
@@ -155,12 +155,48 @@
 			};
 		};
 	};
+
+	cvdd: regulator0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cvdd";
+		regulator-min-microvolt = <1300000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &ref_clk {
 	clock-frequency = <24000000>;
 };
 
+&cpu {
+	cpu-supply = <&cvdd>;
+};
+
+/*
+ * LCDK has a fixed CVDD of 1.3V, so only operating points >= 300MHz are
+ * valid. Unfortunately due to a problem with the DA8XX OHCI controller, we
+ * can't enable more than one OPP by default, since the controller sometimes
+ * becomes unresponsive after a transition. Fix the frequency at 456 MHz.
+ */
+
+&opp_100 {
+	status = "disabled";
+};
+
+&opp_200 {
+	status = "disabled";
+};
+
+&opp_300 {
+	status = "disabled";
+};
+
+&opp_456 {
+	status = "okay";
+};
+
 &pmx_core {
 	status = "okay";
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
