Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D2A9BF6C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtSwOpYkaRDsZk5jxLYlw928eeMUBpQN0BxQuVAWckk=; b=f1Z0vhm/4TAzxa
	75oUWoZevR7k2cKKU5P2wEy7AZRtbR/CJaztwflst2XCiH3B1tAUl1MG6oX/N452jW4dGrDGc4gSu
	USvbNZkJuzEuSxwT8NplvjyuF/Wv0ZJ3p/XKSW+qfDZ9cSdNn9MYK8rimxgh9LQl3HdmQqx7+hO/y
	7zfl2wjp7I7gi6mtyym5xPsJZrg2gawr2OsoZ5sUZIO3xUIkM+/t38ic5EAv4VLM6B2UH8ftQt5W9
	KH2UqUc7YGbqLIUhZH8eYMZkVhwYJgCYa1Z+C6A7ewhpyyWogHYbG/lJTU4i0PNcAu/zGwhGKjTDW
	SDbQ7ko4QCwlSlSB76VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1b7D-00054j-4s; Sat, 24 Aug 2019 18:50:19 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1b6q-000535-Vi; Sat, 24 Aug 2019 18:49:58 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so7606254plr.11;
 Sat, 24 Aug 2019 11:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mWM5LytVm+qVRCAst8MByyiY2Qa5JPuN6rsR3ZQ70z8=;
 b=ueVeoJxLluToFx+7NSL/79KFr3FgDymk0Q3IbzlNc+RpUCVdkfYubfuw6llg0MT83V
 RHgYVMjGtjLKwPLF61/YYc9Vamj9ZHFRtdUo1R167dxlVQEzi/NmTBb21scWlroo54nQ
 20pTzu1ghzF8CEsSaxA7nT5KeVzB/td+GaCu8w9N/gYCutyTid0mHqavLhEVZneea+rj
 JcOH9hMGAmiucsSC3yXuhy6M96YV9hDz7evYiEfc8txKzC7iBrMNFDwUvCdW8R8kudaY
 9bIZTWwLbpD0meiOnN64iZxIGMznrvrI9DZZyZ2P6xjpAc7JzbmhzPAwsq0nwUJzuxxv
 18Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mWM5LytVm+qVRCAst8MByyiY2Qa5JPuN6rsR3ZQ70z8=;
 b=bJtwJ2VZGLzrloUl1rzGXl48nHDn3Edjx87eVcxSqNAmB3b20OlmiUplgbfmgMkajM
 zkCloX89fDDgb4NIntpkohC59uBdmgSSukks8Si5z1h0O/9BwQT7qE18OX1RObxH6HWu
 prabXpSIuriBjiaqIXUYHBQwEaxx9IS1v9/jTO49NaVtpkNiypDbi+1bCrug8peQjNBa
 7dC9qc8k5ZfhibK9NU88M3GuSFlffPAA/QiOAXRWA02ZjjYVtBGI2ouL2L81rbUNDZNV
 KdyXQNsOhrtdArqVN1Y30905/yqE+V6EPhTeRviQx1VVfHTyoQnT3GXmxhqVrshFx/Ph
 z75A==
X-Gm-Message-State: APjAAAWnEuB8uqY/rp+8Y8V81Mu38AUHBMiG7IjvpCrnO+ZoWXDq/INP
 SqSXrsLA10HuWmlR5ftHQ+I=
X-Google-Smtp-Source: APXvYqxcnSVgRSIlKHxAzb4Ia7pYMTMytnfEb5MOPyrQskplVfhLXfLS9fKipFL2C/aKSs2M2GNqjw==
X-Received: by 2002:a17:902:1105:: with SMTP id
 d5mr11346603pla.197.1566672596225; 
 Sat, 24 Aug 2019 11:49:56 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id t8sm5519292pji.24.2019.08.24.11.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 11:49:55 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv4 1/3] arm64: dts: meson: odroid-c2: p5v0 is the main 5V power
 input
Date: Sat, 24 Aug 2019 18:49:10 +0000
Message-Id: <20190824184912.795-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190824184912.795-1-linux.amoon@gmail.com>
References: <20190824184912.795-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_114957_016298_7A8DD601 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per the schematic Monolithic Power Systems MP2161GJ-C499
supply a fixed output voltage of 5.0V. This supplies linked
to VDD_EE, HDMI_P5V0, USB_POWER, VCCK, VDDIO_AO1V8, DDR_VDDC
according to the schematics.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes from my previous attempt below
[1] https://lore.kernel.org/patchwork/patch/1031243/

New patch and fix the commit message.
Added regulator-always-on since this is core input regulator.
Split the linking on regulator and usb node in separate patch.

Later more patchs will follow linking more core regulator as per
shematics.
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 9972b1515da6..41d5fa370eb3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -50,6 +50,15 @@
 		};
 	};
 
+	p5v0: regulator-p5v0 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "P5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
 	tflash_vdd: regulator-tflash_vdd {
 		/*
 		 * signal name from schematics: TFLASH_VDD_EN
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
