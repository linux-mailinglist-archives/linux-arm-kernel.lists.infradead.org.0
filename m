Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF211697A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FZBs80C7r3YkQTRG93CY7/BOlSxzu53V81j59AbYTHM=; b=Vcj9C61aIyJN3Y
	fMZLspH+9tnby+65AQYAwzDwjSVY5le/Fxh5Ck80nMSAJNgL7FHJHSaqamO9x0PpMqYjVZ3/XL7Xi
	WaL3Xln2WhybyzOWZkRnS5jUKO1FcxYrRYvvcs6AwviSeGHsdzdXUBLOo+4hZ/OB8phgezaKl4aBp
	EZBCzdG0pxB3pKY4z63llPlox+tgU7pjIgcdB6/h6ameOPuoJczPE8YWFkgUZbRi3+1xtjsaO99yA
	6RrnORVofLV0n3wQn+SZgT19u+EjTaq0cHmwFOFrO0OidZfnNoFJbwdIiWdJQP37lFJnvtpPos0+P
	7gs7Jd4A1yqgkqshknvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5r6V-0005dx-5s; Sun, 23 Feb 2020 13:15:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5r5v-00049I-ID
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 13:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582463688; bh=7u5RcG9coKsFNhS7jd0YQxz5uywiYal8+aKSaymmgCs=;
 h=From:To:Cc:Subject:Date:From;
 b=X2KI36Vnmx99OdMgF7wGS1IBvl6b+VOpvnu1QvmrwBfUFfuTUlzpAEeCN7KXqK5qk
 k1jiQkZY4u6kewOrR7rOOqIMAEvyMNIzbFq3sc5sEmUQkK0Sdg1QaxeT1QAnoQya/Y
 f0pUPdzycHCQ5dgFIf8tq4fuxs0U5NY/6Kpshii8=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 0/4] Add support for charger LED for AXP813 and TBS A711 Tablet
Date: Sun, 23 Feb 2020 14:14:31 +0100
Message-Id: <20200223131435.681620-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_051451_942355_9BBB9569 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tablet has a charger LED exposed on the top. This LED is controlled
by AXP813 PMIC. Add support for enabling the LED and using it either
for charging indication (handled by PMIC automatically) or for other uses
via user control.

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (4):
  dt-bindings: leds: Add a binding for AXP813 charger led
  leds: axp20x: Support charger LED on AXP20x like PMICs
  ARM: dts: axp813: Add charger LED
  ARM: dts: sun8i-a83t-tbs-a711: Enable charging LED

 .../devicetree/bindings/leds/leds-axp20x.yaml |  24 ++
 arch/arm/boot/dts/axp81x.dtsi                 |   5 +
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts     |   4 +
 drivers/leds/Kconfig                          |   7 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-axp20x.c                    | 240 ++++++++++++++++++
 drivers/mfd/axp20x.c                          |   3 +
 7 files changed, 284 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/leds-axp20x.yaml
 create mode 100644 drivers/leds/leds-axp20x.c

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
