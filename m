Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D03C200B38
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3ieN4Fo7jIwAQIfSxlWY8biU2Of8EM7RXz0ID8W1/I=; b=QXOSRajiGims1J
	LJmWM2FXx+bGAfUA0xadRo7/sSWfawh8GawRfIa8J5T4G5MkBs9y/BZZKdH4RuoApOieB65cYHjXJ
	CvCxPDllgYFNl5xBLJWq9TyU88H15JGpo9AoZHvHc4yDOHyD9RvQeG9H12EcvniUoqfIf6JQtIMf/
	dTYBs7yZM9FqdJXn4Ho8VCsD7Ini37U2jlYpaNLhCocpzKHP7EN4oEncZ6tHo3b8UEZ4oIBbRM/G5
	NwKxchfgVdUL7wyyUS7YE0yXI/lQ6AWDbnHF8CazA50yuuEAvFYbA+TncKyR7Z2i5qLlwBVVoCoap
	06/hR2A9RF+YGsUNE89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHsS-0006Am-Vr; Fri, 19 Jun 2020 14:20:20 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHs7-00068u-Kw
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:20:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592576399; x=1624112399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ssnJZWGFbTL4JylYeloFnuSybGj7Ww3CdtIea8ySppc=;
 b=WlYjRz/FJWiyzDsmRGnJwzAllq5wOwg2D62b6WZFVIlbVY21hfgGMqpp
 bJvNmhbXJAfu7a1DdfukMxnlDBaHsTHNU5cE/KJ1V8sBOKr6FPhG/ppyI
 HQ3grFbse8NVocklZT5PmndU6PFyz2xB2R4BsbM353gKoQ0+G0x8t+Viz
 kKEUU7uG4plAqjeDFvcqCwqMsu6u2Vt1RPlsTGPFavToo+Y4fgk38NB6W
 /9K4Io2eUYfLlJgLjq2MuiMdFR6Yq3drIU0RpF5YagdKltM3SePYbudwF
 V/ikkiZjUhqm42Q6k2itdMIZOqCWBhuFyblNDnkZcQi0nbPDNBC7bfPj7 Q==;
IronPort-SDR: /evddRzvNCOLCsEUsCX30VVE8V6o+e2f1tpmPXD5j6RC4BN3K0DHNJCWyOqH83ETytg9LunOaq
 5fD01jEGA44KcGYq6NA839YymrbQOcZtOlLeQAomt2ZJ/5mxGKRTWtOsQsup/pewIP86yZAA6z
 MUsdenslfR4O6yFeFs27xJoINsUpUF7wiZmHy6A+Sac+dvWY5Bk/Hoo5dEYTvw3bpeBKALlYL/
 Z032xpyCvpNgrx5UMYcr1iGDPuVPR1FTYU8/WfxS6W/TZgZM7i5iifuXiYAvE+5WlM6IoEmVcS
 O/U=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="77180733"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 07:19:57 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 07:19:56 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 07:19:32 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [RFC PATCH 1/4] dt-binding: i2c: add generic properties for GPIO bus
 recovery
Date: Fri, 19 Jun 2020 17:19:01 +0300
Message-ID: <20200619141904.910889-2-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619141904.910889-1-codrin.ciubotariu@microchip.com>
References: <20200619141904.910889-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_071959_751703_4AE54199 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 linux@armlinux.org.uk, wsa@kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C GPIO bus recovery properties consist of two GPIOS and one extra
pinctrl state ("gpio" or "recovery"). Not all are mandatory for recovery.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 Documentation/devicetree/bindings/i2c/i2c.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c.txt b/Documentation/devicetree/bindings/i2c/i2c.txt
index 438ae123107e..6a644a24fc1c 100644
--- a/Documentation/devicetree/bindings/i2c/i2c.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c.txt
@@ -77,6 +77,16 @@ wants to support one of the below features, it should adapt these bindings.
 	this information to detect a stalled bus more reliably, for example.
 	Can not be combined with 'multi-master'.
 
+- scl-gpios
+	specify the gpio related to SCL pin. Used for GPIO bus recovery.
+
+- sda-gpios
+	specify the gpio related to SDA pin. Optional for GPIO bus recovery.
+
+- pinctrl
+	add extra pinctrl to configure SCL/SDA pins to GPIO function for bus
+	recovery, call it "gpio" or "recovery" state
+
 Required properties (per child device)
 --------------------------------------
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
