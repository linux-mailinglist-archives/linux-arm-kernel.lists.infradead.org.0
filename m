Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB39193381
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 23:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNTgIvMzXedxj/zPgGKH/sOr/eBROUQ5Ti4CqEK9Q+c=; b=X5WL1GqIx91J7l
	zmVow7fUBzUGUFVYKyccvE47wUODAVZsYi1u4VJJcqwsD9XQucwafyo/uf0TG3p6FPyp3UgzNGJQw
	nIoNGpblNnODHcVXldm9ibHAkf0whqcoc8Zo+opkPB93s2/6xvlAC2StuSj0RNwCrkeS76+GcL/ra
	fOCAmmGHpaeba3/xQgJMcQpOI/5N3rFdSPuOIt8OsP5ywDG30ffRnloQaGYBh+dO92Qh7+qxirDA9
	ZzXXAldkrJhBG469ztFta6+JYylPIcbLp3JG+F+T6tAU8BB/ZSD5YW97EsWuYFIz0hoC/Pw8UeGMm
	Y9Jh/8twiQ6/MLjyw/vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHEAa-00026B-Rn; Wed, 25 Mar 2020 22:06:40 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHE9o-0001Tl-AY; Wed, 25 Mar 2020 22:05:53 +0000
Received: by mail-il1-f194.google.com with SMTP id m7so3490390ilg.5;
 Wed, 25 Mar 2020 15:05:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7Ulr9pBC4SUbqUU5FsVEbaY1gpVe/0DQ9QLWI1PPgfQ=;
 b=nv3+JTyJaZG120Ed7CWE6lwPNiAskNuyhOd9mL6Zir6GO3a0X1JsipiwnsgJ2inXor
 OIE/wg/Lvoqp/EPbiFsQX4wJUlQH7e4qVafzvL/WIWJdW3pAPahIOV6g8bqq7FEPYfze
 BGtCmT9y/gH+ym56YcwV8RBhh4R8kBBjv2CW90fzcQag1pGFk/6HsrQ6lkRMsWbPwNTk
 yULjlWUAO+FZJY4vQdwb3kIdgOcQC48OdIZEiVmIqdinPuewhNIaxhaP3CvrfIHbT8hS
 EtAoewR7mojaVbrHbLz0QOpr9geyl4mj8wVqvgcB8+1E/gfWepDfaf4DME/4ti1Iv2E/
 TzdQ==
X-Gm-Message-State: ANhLgQ0/oYBdarnMe9YsCUSk5WKhjko6LLY/zxsIwj6aQ1WmRLEq73RY
 KCTlXOWEagIn9sfAZUZ31A==
X-Google-Smtp-Source: ADFU+vue8Vxmky7PF9etOIHQcfy9dQqZ6AbqyS9J6TatHClhkfnl2UGT86/bcc6UGlxsmE61Cop/rw==
X-Received: by 2002:a92:6e11:: with SMTP id j17mr5689060ilc.249.1585173946547; 
 Wed, 25 Mar 2020 15:05:46 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.250])
 by smtp.googlemail.com with ESMTPSA id v8sm102390ioh.40.2020.03.25.15.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 15:05:45 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: iio/accel: Drop duplicate adi,
 adxl345/6 from trivial-devices.yaml
Date: Wed, 25 Mar 2020 16:05:38 -0600
Message-Id: <20200325220542.19189-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200325220542.19189-1-robh@kernel.org>
References: <20200325220542.19189-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_150552_382725_EFC0E50B 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 Kevin Hilman <khilman@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Zhang Rui <rui.zhang@intel.com>, Brian Masney <masneyb@onstation.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-media@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'adi,adxl345' definition is a duplicate as there's a full binding in:
Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml

The trivial-devices binding doesn't capture that 'adi,adxl346' has a
fallback compatible 'adi,adxl345', so let's add it to adi,adxl345.yaml.

Cc: Michael Hennerich <michael.hennerich@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Hartmut Knaack <knaack.h@gmx.de>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/iio/accel/adi,adxl345.yaml     | 10 +++++++---
 Documentation/devicetree/bindings/trivial-devices.yaml |  4 ----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
index c602b6fe1c0c..d124eba1ce54 100644
--- a/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/adi,adxl345.yaml
@@ -17,9 +17,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - adi,adxl345
-      - adi,adxl375
+    oneOf:
+      - items:
+          - const: adi,adxl346
+          - const: adi,adxl345
+      - enum:
+          - adi,adxl345
+          - adi,adxl375
 
   reg:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 978de7d37c66..51d1f6e43c02 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -42,10 +42,6 @@ properties:
           - adi,adt7476
             # +/-1C TDM Extended Temp Range I.C
           - adi,adt7490
-            # Three-Axis Digital Accelerometer
-          - adi,adxl345
-            # Three-Axis Digital Accelerometer (backward-compatibility value "adi,adxl345" must be listed too)
-          - adi,adxl346
             # AMS iAQ-Core VOC Sensor
           - ams,iaq-core
             # i2c serial eeprom  (24cxx)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
