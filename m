Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FB9A525B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAG6xcWY7FNHTRNdc9gG4zQOusbOG8o/hkZ+VE2gpZ0=; b=KO8OVgwBniGMt+
	ELBIWAuYKvHwmJ1hi4KT7yuG7vj+OsJ2t5AATQwtUUVh2kAlIhHbvAhRKohzgVI1Vx3icvpxPGH/I
	wIPtTixQZx4f2c4uXKoIqz0jWzJiQGxu162iNmlv8BAMQBW4a/b7uqb0LKRUcX49sfBaJ2kL4cD+y
	kr/6AWxPn+hdP3VyW95kcRHe3jolUHx71S8nMgQJSBdRaoCl3GgXJHagCnZasA2podAPFTj3PSoPm
	YxPy7GFnWNr9yRbuENIT7wq/BXNK25curh9tzigsguTA/Fw5cWZDQTgMFPt1KuTMgudbNojQh8iMs
	Fp6YPOTPj1abPP6NSwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iBl-0004sP-Jj; Mon, 02 Sep 2019 08:59:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iAf-0004BZ-Cq; Mon, 02 Sep 2019 08:58:47 +0000
Received: by mail-pg1-x542.google.com with SMTP id n4so7176781pgv.2;
 Mon, 02 Sep 2019 01:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VeTPzJ+ApN7GKUp8q8Zb3MQjmxhoQ+Z6J4rIQfIPMcs=;
 b=p2zSEeCQMIN4+TtDuAUx64/2zNyixZ4CxGIdpAHhzWN+3pwCTpR7LsNV6lBUQ3vluz
 AhbTmBUZBOdmlyeYnVOldMkWPPpso+v6z0yjAJ4yeTmjDkPDLvOJFIlb8zklQwQa4T9l
 MlBbkT+VeHsI/eCPR3d17d8QhqzVkvI+UPvTqaFcStDUnLXjDeXsZWbbAYKopdRODvz8
 PLnEKtVV57rKYlY9sAUuCnD0/6nIwO4uyWZRa8P4eTWkxin7L2FR1ZPOZIopaq6dg1Rn
 b9xgoXnICPA1+xLa5vEoiC4oU5xBtj+o9ymVs4C7GTClg6dTyQLQkuOdSszTTQE3Eoyn
 cY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VeTPzJ+ApN7GKUp8q8Zb3MQjmxhoQ+Z6J4rIQfIPMcs=;
 b=IFxJ/054FW97IZeN0iYb3qv9lhJ0ktU6+unwutigyNE0PX25GUYpidRxfFeAOAFZGU
 NTm8YVyOBbtWFKSo7yCTs6CX/+EBAbY9hjGkDXAM9VE9ChnbumD7CGT6m2n0l1Dk9tI9
 r8IDYy2SU8V4uFUNfSUW4rMWLUCTyZsmEPYpx2ghg5BywEP1KbsREoT9Of5FCvfF7QqF
 rFnOzrYTYxW6KOcBJXQgt/e2q+EJJaLbygTrHj6wdbTfvlnEaKetOqOkyV82gRQmvKEm
 gq5pEraps/h/nLjYwCNb3VDHrDIJ+CgetsTF8Ctfz3blKR6eZ8hAaQ48Z5xzH+YnuLNB
 ic1Q==
X-Gm-Message-State: APjAAAV2YuoKs5Fu/ooxJRYTEzdF663zn/3i3kb9mlmcLWAo1ZxOtuvE
 N0jTJmvDqR34LhXQHC2XU4Q=
X-Google-Smtp-Source: APXvYqz/XVIL92q6ROyMvLN8edaMCL4kFQPd9X397P59sX5o4g/F7kM5IfpBBD+l5eYNHQWRp0spVw==
X-Received: by 2002:a63:5c7:: with SMTP id 190mr23692838pgf.67.1567414724496; 
 Mon, 02 Sep 2019 01:58:44 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
 by smtp.gmail.com with ESMTPSA id y6sm6313117pfp.82.2019.09.02.01.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 01:58:44 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv2-next 3/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to HDMI supply
Date: Mon,  2 Sep 2019 08:58:21 +0000
Message-Id: <20190902085821.1263-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902085821.1263-1-linux.amoon@gmail.com>
References: <20190902085821.1263-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_015845_756181_703A33F5 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

As per schematics HDMI_P5V0 is supplied by P5V0 so add missing link.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
As per Martin's suggestion added the HDMI_P5V0 fix regulator node.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index ef2c3b74415b..a520ec0d73ff 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -66,6 +66,15 @@
 		regulator-always-on;
 	};
 
+	hdmi_p5v0: regulator-hdmi_p5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "HDMI_P5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		/* AP2331SA-7 */
+		vin-supply = <&p5v0>;
+	};
+
 	tflash_vdd: regulator-tflash_vdd {
 		compatible = "regulator-fixed";
 
@@ -220,6 +229,7 @@
 	status = "okay";
 	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
 	pinctrl-names = "default";
+	hdmi-supply = <&hdmi_p5v0>;
 };
 
 &hdmi_tx_tmds_port {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
