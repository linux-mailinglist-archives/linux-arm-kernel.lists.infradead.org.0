Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717DAA5259
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5ppI8rd/qRlRmw/mbp+yxf5QdWUDHeKiDgfLIvR4XQ=; b=YmNWshPc0+cTae
	wuzjpAGblk/+VXWzEb4Li7tJRdpg9nOrnmgei5zr30x4Z1ARDF3SQkEMGAF74+As5AO6dIQY8RgKr
	MbuFGJfJLT5n5ukhjjmuJPEhGvesNqGoGK90y7RXqaN9M3jXNwqK0J1w8D49L1LsWFwqynrL21btH
	hd/T/Pg1POb16oJwXXmtF8+iZcdEWZWZgiyPq/axHff3awp1oZWsV8vDyUxnsDnhCAj4MfbK/eMWu
	9rQGU9BS/k98/jnwbuqAPpirtKRt4MFFebiE2xJDuppGZZppWUP0kHPMd4XDaxyTPgEfjmgB//9oV
	STlMvS610G11PAODjmuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iBP-0004bf-Q6; Mon, 02 Sep 2019 08:59:31 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iAb-00047s-Uk; Mon, 02 Sep 2019 08:58:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so3613195pfl.0;
 Mon, 02 Sep 2019 01:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Evc5Oocb4Bzm/ej/oCNbe7g2Kw/0/LCaIG/fqce+EF4=;
 b=YZSjtEc9my+Zw5OYisr9t38RV2Ii6+D8ie4L8pPbYsDAVb+zlcz5b2PZHhtKhzsadA
 Q/q70gecmRu1o5gzfudJdASqtiSKf3O2+ULNZzy1Qj02blosRLcnkzYThmEY6B4VIhcS
 U7QveRl5LADdmiLcvQur4QWXZ98/Kx54zOgMZQHeePm8M0LvVnvDWM7aV6KyNjoMf3d5
 eIZFWwnGzaMqP24Eccspd0GjKIR06mNVqp63SCDnx6F7PuWjzKqLNInmYHV+dvl2q19m
 MlO+xrPE2zkiF1HzdqpndD2HeQAUTVifo+xNXmKxAyAeYKmZZh0+QGtXcxaX4wdWlXDq
 s8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Evc5Oocb4Bzm/ej/oCNbe7g2Kw/0/LCaIG/fqce+EF4=;
 b=K9jgdhk0HKx9bXfytnHOVQBEOD3xbF6vDAPF5LXYSMQqxzDD0u2R5PhB2QH8YIZcR9
 Dyglm9Jh+Ku2lbIQH9sSRh+qHBJ6eZAE6pnPLvSSVYDnhKbyZS8Wt7UlT5lxabXHNoWT
 4lK5eokMCId1opJvIcY7sBTuD8pVAjri3lfFsYAgLc6FSDJSoS9mBi6yx6VLZ0B8/E61
 AxhDxLbiLnsAAaua7as0pZq0sM04TIGjw/88Tl8DEl+tqqaj1L/QgKsvCaD+pJa88Qld
 NtV+DrXYLokZ4Mj2viNiSZU1vIdffSz4eBWvmWjytRYRYxNQj61RnbFKiAvmGPsgMGse
 23yw==
X-Gm-Message-State: APjAAAXpLLzvzC37wrSie9pz1K7qWHBYMwiyjIjUdv5sAubq478bDh6q
 WVTXams2ZoX1LCNZc+QcyYE=
X-Google-Smtp-Source: APXvYqylOpDpihTs4Yfbu+0WeAi5mvhaQO6NnrVMoTglbxIZFpO1NtjwH1v0mc7Axr7ak3OLF5U7Mw==
X-Received: by 2002:a63:5765:: with SMTP id h37mr23673532pgm.183.1567414721301; 
 Mon, 02 Sep 2019 01:58:41 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id y6sm6313117pfp.82.2019.09.02.01.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 01:58:40 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv2-next 2/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to VDDIO_AO3V3 regulator
Date: Mon,  2 Sep 2019 08:58:20 +0000
Message-Id: <20190902085821.1263-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902085821.1263-1-linux.amoon@gmail.com>
References: <20190902085821.1263-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_015842_034578_34D2BEC2 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per schematics TFLASH_VDD, TF_IO, VCC3V3 fixed regulator output which
is supplied by VDDIO_AO3V3.

While here, move the comment name with the signal name in the
schematics above the gpio property to make it consistent with other
regulators.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
changes from previous.
- Fix the typo.
- Add the comment as per Martin's suggestion.
- Added Martin's review tags
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index b763b76820ba..ef2c3b74415b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -67,17 +67,19 @@
 	};
 
 	tflash_vdd: regulator-tflash_vdd {
-		/*
-		 * signal name from schematics: TFLASH_VDD_EN
-		 */
 		compatible = "regulator-fixed";
 
 		regulator-name = "TFLASH_VDD";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 
+		/*
+		 * signal name from schematics: TFLASH_VDD_EN
+		 */
 		gpio = <&gpio GPIOY_12 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+		/* U16 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	tf_io: gpio-regulator-tf_io {
@@ -95,6 +97,8 @@
 
 		states = <3300000 0>,
 			 <1800000 1>;
+		/* U12/U13 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	vcc1v8: regulator-vcc1v8 {
@@ -102,6 +106,9 @@
 		regulator-name = "VCC1V8";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		/* U18 RT9179GB */
+		vin-supply = <&vddio_ao3v3>;
 	};
 
 	vcc3v3: regulator-vcc3v3 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
