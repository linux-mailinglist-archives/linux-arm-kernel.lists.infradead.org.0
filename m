Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E6C193F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 23:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+D+4XlfUrp+IhM3164wscgklQG7w1CiTIZJ1h7pENW0=; b=X6ZH+z/xYsAJ5x9CYgYemhKWbB
	Wn1dhOBGhI/foSQKowgXt6Wei9zeM0vQ1sy/UmRf5qB0yUS+hYTOuvas7nGys6cMxtHFMa4OohIk8
	VipcSyI7lewl9PYOiFnyIT8JUATypFSw+15KgYzsMIIQyHBCRpQQfbnnjxJi6juPxH6liZsPhbGl3
	S8pbPH6qd2gGxVdf9s1fulSAm9LsdEA5p8TsuhOdx4t0R00uYqgjm1h55pjq/88vY+2OALccQLe0d
	Us0ejmEbzZAUV65fKytabpeEnra0jUKPTExUDnA9PPkVggTib1+JkK0enB7UrfOSg6A1q5X7A+TNd
	f/9V4ziA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqAo-0003iZ-A2; Thu, 09 May 2019 21:01:50 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqAN-0003KM-C3; Thu, 09 May 2019 21:01:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id a59so1717014pla.5;
 Thu, 09 May 2019 14:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MSJ4xqUm9vrKGdI4mtkTYOHlvZbHUnqDBUPly/F4wuQ=;
 b=VbXUipzv50tdvMoMxdrUTgpcDcs34w51583wOCbZx5EJFh7Xd77s+q29KSaW/yS7g6
 JNxwi/WnVdjh8pUPCUgV11QhmHxVm80pZh4OVtep3YHZLRd203cfRDrOYRF9BMuAS14J
 /S/EneJHu+RnuRGuDOToccv2aHYe54l5LvbN6f82wjbvn54k2/j8ttYQoS/I4lH6h19e
 38MNG/HClLzYyMxdnOlHOctn9iCYaTi7OqgjmZC72NEVvc+7KKz9DIfDC0GJunFVPh4A
 Kp09m4HYTwdo2j0AZl6EQKr/BAlfL/834LoBlfpc4niflErnXXU/iD8ZowHd/gOVGbf3
 I0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MSJ4xqUm9vrKGdI4mtkTYOHlvZbHUnqDBUPly/F4wuQ=;
 b=CIOhXxR73MCIMMkAxtGjuUZrfVkAl3PiBCUk9XpLnpHQ4i14dRYEd5vDh41iD7idL/
 fnurDvB3XX9Y+sUmHHwEe6XGf1GaBPN3MnD32CLxtbOidDjqqMQTOboAmHnLTHCxcnMf
 qxfsvOC0HTExU1OaAHJ9EqmmuapJNrsCzr0mv9V89BbNE/FVG7DnHE3GSA4Ij57fwLmO
 Ei5OCbrUvsRAkajJ7ZyxULsKZusgubAI8og9fBU2kjEKdrMc1smogD0J3DdOWzgu+DC6
 UK5DSnF3GlFOu5bLhVirXI2pn7nLdFNHcn/ebgoOEDOWCeevKUKiD65hWVEmYzZC4ehN
 ppiA==
X-Gm-Message-State: APjAAAUvRTl9XTgIsxUQD1bm1DjOQl6eDHtHSvvvkc6KoArINnDYIUvI
 jnKo0QHJnp+S2+IcQTtQ1w08+niY
X-Google-Smtp-Source: APXvYqzeZd/pZ43yTx99GwwYFgQ+ou7UuhYXuksIA98japswJFhif//e+t0t5Uj11uv//Zcv5bgqIA==
X-Received: by 2002:a17:902:e091:: with SMTP id
 cb17mr8039710plb.222.1557435682568; 
 Thu, 09 May 2019 14:01:22 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id d15sm10989209pfm.186.2019.05.09.14.01.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 14:01:21 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] pinctrl: bcm: Allow PINCTRL_BCM2835 for ARCH_BRCMSTB
Date: Thu,  9 May 2019 13:59:54 -0700
Message-Id: <20190509205955.27842-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509205955.27842-1-f.fainelli@gmail.com>
References: <20190509205955.27842-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_140123_656563_E2F1FEBB 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Doug Berger <opendmb@gmail.com>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Lukas Wunner <lukas@wunner.de>, Nathan Chancellor <natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Doug Berger <opendmb@gmail.com>

ARCH_BRCMSTB needs to use the BCM2835 pin controller for chips
like BCM7211 which adopted that pin controller for GPIO. This
commit makes the option menu configurable with default enabled
for ARCH_BRCMSTB and ARCH_BCM2835.

Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/bcm/Kconfig | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/bcm/Kconfig b/drivers/pinctrl/bcm/Kconfig
index c8575399d6f7..c57f1d9259d8 100644
--- a/drivers/pinctrl/bcm/Kconfig
+++ b/drivers/pinctrl/bcm/Kconfig
@@ -17,11 +17,15 @@ config PINCTRL_BCM281XX
 	  framework.  GPIO is provided by a separate GPIO driver.
 
 config PINCTRL_BCM2835
-	bool
+	bool "Broadcom BCM2835 GPIO (with PINCONF) driver"
+	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
 	select PINMUX
 	select PINCONF
 	select GENERIC_PINCONF
 	select GPIOLIB_IRQCHIP
+	default ARCH_BCM2835 || ARCH_BRCMSTB
+	help
+	   Say Y here to enable the Broadcom BCM2835 GPIO driver.
 
 config PINCTRL_IPROC_GPIO
 	bool "Broadcom iProc GPIO (with PINCONF) driver"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
