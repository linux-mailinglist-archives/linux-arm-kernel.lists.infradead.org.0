Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E029F3A15A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VnnLt7Rx8UKOa5iF8KY79zWh/K6CuDV+i8kE3XlkTlU=; b=i2uwwZzB+a90BY
	i7grJo0cXKBeHPKJCY5zL+dEJk0HZeNAKoTqJKTx+xlNEg4Tw9TUJfSwus44WVj/FQY1W1UmoPt1+
	CJJEG3EJ2423SKdt6gYNZJpsgxnRLeSqDvw73gMENHJx+u1jZ9ezeL2jQm9W1vteLHV3zwB7xxhVk
	AER2HBNLjb0ItCzXKbyASttCcmdrwrCY4J53+h4AwEkRSuszCow12avYmQcVDz7x08sXtmExMXtmd
	DRVyNcgJK6XDNEa8QwPVp7WYqvZasFcBWc2HScgogdlnEHTFurMookuVZs+WCmipZHVk8H9IV8GTP
	gBr1LnCMOUMVbT0i6BlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZgdl-0006hS-SK; Sat, 08 Jun 2019 19:04:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZgdW-0006f0-UB; Sat, 08 Jun 2019 19:04:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so2631340wrt.6;
 Sat, 08 Jun 2019 12:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9jXFcak2cBpexQk8XYN9VwrCjw1WZmHd35NHcnWvlUM=;
 b=eIjUllelamnWeZcriXf4pecRr643goyySvVh2oJM0Dhb5G7lrmEbCequZfHbZbaCmN
 g/qHrO6fzfqlK0ycFPOnUio+yrz8dc0qLpiCnfuXN7M6474V4gNYjCk3aJ+QH4uU++P5
 FrZ92j96kXDKox9o6FBdjE3XYWlEJB/hELgeaW+vykoT3GVOA7Od8zmFN1LBaUoVyBuW
 8+mBMqYndQxBlqJfVE8dgEcuXDIeqqMRcmPZc7WnYlQo/ch83e8I7DUQPQyigBLHu/WU
 9Y2cAe1hPF3l0f5elho+4et2FsznVRtBCpcnT9Y9b/OLWllASSjSaJA7lwm7tQB7KyIq
 VnAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9jXFcak2cBpexQk8XYN9VwrCjw1WZmHd35NHcnWvlUM=;
 b=ZjfwbbzEXxWcZvGjaUzFjuYd3NfI+YfZ+ce9IB9sKnZEyfkctqsex9cOlZfEUTuG2d
 NRsZBZ3hN8M38OKloDYBJ9oD2bWaHBMcQ8IBkRdYvAteBuC3eL77pCmKv22kamnH5Myt
 OcCIeYyu+V36m6e13tV88x6VQJZRN/GvZYbdi7vzWMlxPofEi1/rgZyNHArpKA42rhvR
 vHPsUmlUxxKG0HTh/Gt4Pt8SyZ/wPUaZr4BQJwAEiZSXrHARlTj6DPkv+MXoM4E1Demp
 KvomvPvUIhG15gTJE0lIPrV9pK596Q7863ywdAVMfuBxjzNNZZmSBlbbrBmAnewdbSMU
 /Qbg==
X-Gm-Message-State: APjAAAWHj4mAJM2b1dwT6/dzh4RXvTjI8WKneBQplWLjDb6/oGZAY/tO
 /MIRD4HH+GcfxfRVamV6tZA=
X-Google-Smtp-Source: APXvYqwG28JNmUgm1CsQro+958rHZ/hNNfAHUq1Xkkz1MmrE6sJADMNYtPLldhD5c8SSB7LZxxUWJA==
X-Received: by 2002:a5d:43d0:: with SMTP id v16mr36679469wrr.252.1560020657104; 
 Sat, 08 Jun 2019 12:04:17 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id t6sm5655062wmb.29.2019.06.08.12.04.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 12:04:16 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 tglx@linutronix.de, jason@lakedaemon.net, marc.zyngier@arm.com,
 robh+dt@kernel.org, mark.rutland@arm.com, khilman@baylibre.com
Subject: [PATCH v3 0/3] meson-gpio-irqc: Add support for the Meson-G12A SoC
Date: Sat,  8 Jun 2019 21:04:08 +0200
Message-Id: <20190608190411.14018-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_120418_975055_87CA2E53 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This series adds GPIO interrupt controller support for Meson-G12A SoCs.
Although the total number of pins is the same as the Meson-AXG SoC, the
GPIO banks and IRQ numbers are different. Add a new compatible string
to avoid confusion when using it.

I am re-sending this update because v2 looked good in my opinion (Xingyu
Chen did good work here) but it never made it into mainline.


Changes since v1 at [1]:
- share the device data with Meson-AXG

Changes since v2 at [2]:
- dropped "Change-Id" from patch #2
- added .dts patch #3 - this should go through Kevin's linux-amlogic
  tree. if required I can re-send it in a separate series


[1] https://lore.kernel.org/lkml/20181203061324.36248-1-xingyu.chen@amlogic.com
[2] https://lore.kernel.org/patchwork/cover/1021232/


Martin Blumenstingl (1):
  arm64: dts: meson: g12a: add the GPIO interrupt controller

Xingyu Chen (2):
  dt-bindings: interrupt-controller: New binding for Meson-G12A SoC
  irqchip/meson-gpio: Add support for Meson-G12A SoC

 .../interrupt-controller/amlogic,meson-gpio-intc.txt     | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi              | 9 +++++++++
 drivers/irqchip/irq-meson-gpio.c                         | 1 +
 3 files changed, 11 insertions(+)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
