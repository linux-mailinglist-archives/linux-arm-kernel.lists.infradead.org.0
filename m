Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811346B16D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 23:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QKsd2nrySm9MQYQTHZJeh8KgoZBlhDlxPyU6bhDZKtE=; b=KATUaLzokPKtl0
	1+J2RpWhubyNbAnmRkphYNliL0uoi3SqeVxs6d/MQZcubwwo6NfDYDEipZZwTnQrS4n5gUFMnM3ym
	bKragXaeV49UyRFTiGrm5E0DAgCJzc1acuZsCMqC8/JWhSFcJkt5CQijCxcBYgME/KgKgBfgiEO5W
	EYZy/hThlwQVEWpQJOt5WTSXWtwAvZLgnousFSyVdemBneywwa8G4jD9pFyBpDTsjMU/6FVAajEk9
	ExY+EshWY/3VRTtCbmxv2ep1zsDrbRYgqvS9D3REvsrwz6bdDiwxQCODuqtSVrqLWMcxQ1rbunhQX
	Vup0Q7YilOqd8dbopQ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnVR1-0005ei-2M; Tue, 16 Jul 2019 21:56:31 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnVQr-0005eD-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 21:56:22 +0000
Received: by mail-io1-f66.google.com with SMTP id q22so42503766iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 14:56:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kADd+NQKUgWUED+820fdDO7gVP7dDmGj1gYm9p5p3sw=;
 b=MK7HVPMlnNXYpbOr35vmxDuGRn+upC+FUtrkRzQnVd6wU4JgC63Q9QEQv3tctTOd79
 zm0LKw4TbfUYvANPv5vg3xRLWq3Vpb4o+G1o3bo/VFq2CHXnkoMjyrrkBgKmVVT+OdHO
 tO1c5DVbhSvJwRl7WSTENEX+mLgiDrtVxcHuyfru4VaHKI39FB7fbjU/X0oIMV4+PG1e
 tVM3rqMpYeXxlHjpQ3jEkYvBigEdf2XdVaHa7DZTQ1r6toqi8XtHgP3+ypKaSuq/byyC
 pbiac2rvXuP7kDviW0XfhIkqegM6RSg/nomw6pKqRlZVhClbW+ZpPKMZp3YAGSJL3biG
 orZQ==
X-Gm-Message-State: APjAAAWhq/kKw9T8cdUP6qAs8hJM69wVrZoEH1JLd96bZwxHivzW/Hf9
 iXamts2Jp0mbduDucDj0qw==
X-Google-Smtp-Source: APXvYqwDMRb0ggHvOfuex4HW4eSe1qMvzAf6AwQILMzFafLTkg23I/dov4glX6kdigbpojvrSAFSjQ==
X-Received: by 2002:a5e:d51a:: with SMTP id e26mr26126978iom.71.1563314179727; 
 Tue, 16 Jul 2019 14:56:19 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.249])
 by smtp.googlemail.com with ESMTPSA id f17sm20074646ioc.2.2019.07.16.14.56.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 14:56:19 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] dt-bindings: pinctrl: stm32: Fix missing 'clocks' property in
 examples
Date: Tue, 16 Jul 2019 15:56:18 -0600
Message-Id: <20190716215618.29757-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_145621_368295_4C52DFF6 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that examples are validated against the DT schema, an error with
required 'clocks' property missing is exposed:

Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
pinctrl@40020000: gpio@0: 'clocks' is a required property
Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
pinctrl@50020000: gpio@1000: 'clocks' is a required property
Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.example.dt.yaml: \
pinctrl@50020000: gpio@2000: 'clocks' is a required property

Add the missing 'clocks' properties to the examples to fix the errors.

Fixes: 2c9239c125f0 ("dt-bindings: pinctrl: Convert stm32 pinctrl bindings to json-schema")
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: linux-gpio@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 3ac5d2088e49..91d3e78b3395 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -197,6 +197,7 @@ required:
 examples:
   - |
     #include <dt-bindings/pinctrl/stm32-pinfunc.h>
+    #include <dt-bindings/mfd/stm32f4-rcc.h>
     //Example 1
       pinctrl@40020000 {
               #address-cells = <1>;
@@ -210,6 +211,7 @@ examples:
                       #gpio-cells = <2>;
                       reg = <0x0 0x400>;
                       resets = <&reset_ahb1 0>;
+                      clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOA)>;
                       st,bank-name = "GPIOA";
               };
        };
@@ -227,6 +229,7 @@ examples:
                       #gpio-cells = <2>;
                       reg = <0x1000 0x400>;
                       resets = <&reset_ahb1 0>;
+                      clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOB)>;
                       st,bank-name = "GPIOB";
                       gpio-ranges = <&pinctrl 0 0 16>;
               };
@@ -236,6 +239,7 @@ examples:
                       #gpio-cells = <2>;
                       reg = <0x2000 0x400>;
                       resets = <&reset_ahb1 0>;
+                      clocks = <&rcc 0 STM32F4_AHB1_CLOCK(GPIOC)>;
                       st,bank-name = "GPIOC";
                       ngpios = <5>;
                       gpio-ranges = <&pinctrl 0 16 3>,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
