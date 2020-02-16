Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A899160521
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 18:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YdsZHR/dPV7IFDYbsR9wCniU4orHzHlv1e5cJpTVjo=; b=A88ONzymX9GtsE
	eZ8PJ8Xg8DdwTPVpYEhgEeeBscI7OeRKMMTrsiB7AahEbWKrgqVhZq4q4EXaQYkeaK+V1DnvBKEpb
	Uu7aH25QtTrtz0DIlkAhYnopmRRT7ozw2jnO4Z+BWCbYYXLpHyYKSBvsXofernZ1tI+xndn9Ncd2T
	fSiH1apuvgImwdYQg1fDiOnytoijwny4vWcUQ0KyMe5AsNDNwisLbHT/Q0eaRI944BPqR5MYYv9FK
	izfZNoywVg1GJhtCkMWbcni/2gEch/7axjkpy7ewgBWDkcY9YWR8KkcyljA/jy4oc7/zAtJ1ZM60+
	0pT1U26yEbznLWuBp94g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Npb-0000S1-00; Sun, 16 Feb 2020 17:35:47 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Np4-0008M1-0x; Sun, 16 Feb 2020 17:35:15 +0000
Received: by mail-pj1-x102b.google.com with SMTP id n96so6120275pjc.3;
 Sun, 16 Feb 2020 09:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QJBFrhbCj4MW2FP4lLqpYa6YgQUhBipNhqkx+l0iOfQ=;
 b=RWWAnVhPGKLJcJMkkbYf5cYcJx/3etaaQ5GWv+d1s/bSvHk0vsmSpKKwFpbUE//oJ/
 Jabpj7A7p1mLXVk89Qcx2Wt1btEVkJZmGrnnGOZHldBkZQ2Tujg12uJPpbsRMJxR3h8I
 O27m8W1aGX4ybUZh1+c+oDpjq7QH28Pqfp26DulN58bVSbvfa8SEpjqnMKleNrMMQWie
 3c9DpKIOXHPCa2ucbSdyGUa/O21O4H195iPdZ+rB6pybxBSH2WymvgH9G5gN2ENszDGU
 sIMHtrlTL/4uEYkwdmu6/d7jEKdsEG0//dXOhUKggEbNOFKVNA//R381eDktPlSa4H9Z
 7TCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QJBFrhbCj4MW2FP4lLqpYa6YgQUhBipNhqkx+l0iOfQ=;
 b=pnSw0+9eZS6LsPJTugKWF1WhrirhbedB5jXAtW1SARBB9Ta3PA8qHgyS3VYcW7lMJQ
 2o/hAq5BzqFlNgjdtef7eSEFODIjtxi3noElcg+s01SsVW7l4nAhPCxuzXH8rcEQQUjy
 pZ/8Eq+8zcwmDQV4kbWE/en5FIr9eIFj82BDKVgGmGaNLLSDgLmE68O4ncb3a4ljQF41
 D5QxMUgPI3noj39O+sUVRFjzaV8yTAcUUt5GAWtQoZk8eEG4tydzDdT+IUq1FA+tUAGJ
 Nbt6wdBH2VXzqwLnjlB3kmLVFmKL61K3CQ5C8c64HvMbnQe7gUwUWZ3XXqu+/0jwszhC
 XcRQ==
X-Gm-Message-State: APjAAAVQGJLncU6KUZ9TszWG8qSodASVm677RJFS4NyTVFW3CM+glwIM
 v4Anu35ujBxcYNgKq+ACTh+yWSof
X-Google-Smtp-Source: APXvYqwNQKt62HfzoPLn0vewOSTufVzWbDQ09Pjevzec938dfGoWoc0OxhdO/qd9n2HqQTUuodXShA==
X-Received: by 2002:a17:90b:28f:: with SMTP id
 az15mr15247514pjb.4.1581874511589; 
 Sun, 16 Feb 2020 09:35:11 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.127])
 by smtp.gmail.com with ESMTPSA id a36sm14284724pga.32.2020.02.16.09.35.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 09:35:11 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCHv1 2/3] arm64: dts: meson: Add missing regulator linked to
 VCCV5 regulator to VDDIO_C/TF_IO
Date: Sun, 16 Feb 2020 17:34:45 +0000
Message-Id: <20200216173446.1823-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200216173446.1823-1-linux.amoon@gmail.com>
References: <20200216173446.1823-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_093514_104576_83CEBFFF 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics add missing VCCV5 power supply to VDDIO_C/TF_IO
regulator. Also add TF_3V3N_1V8_EN signal name to gpio pin.

Fixes: c35f6dc5c377 (arm64: dts: meson: Add minimal support for Odroid-N2)
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 353db3b32cc4..23eddff85fe5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -66,11 +66,14 @@ tf_io: gpio-regulator-tf_io {
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <3300000>;
 
+		/* TF_3V3N_1V8_EN */
 		gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
 		gpios-states = <0>;
 
 		states = <3300000 0>,
 			 <1800000 1>;
+		/* U16 RT9179GB */
+		vin-supply = <&vcc_5v>;
 	};
 
 	flash_1v8: regulator-flash_1v8 {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
