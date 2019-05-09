Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91041193EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 23:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g9BVCB6kuynl6vxuuK3mtCE2ODbsCrRM43k7TQPFOE4=; b=hif
	wWZpbKQrKh3On9gaeI0e2mtr4gdmNZXm3MewpPP6g2qjgsZoettsfpjmeMshCmkL7pEEB4+wcTFzv
	W6p5xByyv2FilLu3t3eIgLQwk/q/+GGiosKxDxV6bdrZedjpeM6bpmYmdpiuKrZ8WqLI2DWIzsMx9
	iFqxP3hdEOgbMMXaB92FWzzfFts/wMM8hS9CDFaD/m6olwpHl2D4PIC4PPp+WkD3wpa7GD946B9Mf
	GbU6q6fkPRKakARpeXKegcIZetn01glMTd/LQSslle4xxeqYkgPuBF2/1AXjG/lt1zACB+YxG5ANe
	xiFwrHu7B5BC5mVi3eby532yoItWuaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqAR-0003JA-8Y; Thu, 09 May 2019 21:01:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqAJ-0003IM-Uv; Thu, 09 May 2019 21:01:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id g5so1722587plt.2;
 Thu, 09 May 2019 14:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HiuXIyYLdmsAYU6zvL+k+NRqP/Z17rWpYIQBydjoiww=;
 b=p5q8KobLVi5edHgQ6CguPyLD2oE0Vj0uuNMeT13IKga4CeJPBxJ045FvYlbPdKgkVG
 KNRVHGuossb5kf4g3Cqi9vTFc7+/1DdhVZJoc5aD41kJ0xsLXFVk1jwl1hGKvKh9aR3V
 oHBwjetUfosixvCiPwkjEA4T9cN0IxGJCWz8qqWcfz3GJx0n+ICGyyE1HLPDlTKTwy0a
 c31mCmHqfpTGU9ASAKA7ithdmMuD1aIOhwebdXG70EZ1ru9obYde2uI6pESM00RYPvN3
 8LSrDi0XTbk0KcEDWOP63SAkWJPVlhDR6ZgwRW3xoeTzghmFs1zSXobjmSvTY5HmGs1t
 8oog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HiuXIyYLdmsAYU6zvL+k+NRqP/Z17rWpYIQBydjoiww=;
 b=dOEf9uih+ayqWU4Zhcknmpp/lx/eyJPMT/wDJ4cpvwOv5RvX9mjyAdzmoC3hcoLdQp
 YY+Ud6aH3LLpe6xnH886fXSXrvyRf1pXl3zpvVoncgLVz06O9osQd+LJK63YlDrrBv8E
 8yw9N3QXJgtPtFSE+SCAOBMToPCde8ZafqaqeQLZj3UNSHaJ6AKLJhHQA/Weo/qxxiuH
 kkydoVxZYnuGsYj0e/eD98Yt2Rc92DpuYZHtgiqn8HJz4lACCvm/Icu2u33SMRygr1Nn
 gIo//jPlHMzoMpgScdGHddcIVwn4wU9Z8x3xjC0eMCpNkUrSpbA36PJyRfskxnbMPKVb
 lRcw==
X-Gm-Message-State: APjAAAVBtH9hZTaBgLzf9j99MGY9oZnDLuS5SodehI+owclkLvooSC3E
 +h3oirhU8ei7w/AeY1REJwjyZAie
X-Google-Smtp-Source: APXvYqwPPVJPZR7Ngz7iUDd5Xh+3EilFjMx5Kc5mIo1MpJqawPOja005npdCY5gWF1YEA35rO2073Q==
X-Received: by 2002:a17:902:bd86:: with SMTP id
 q6mr8273799pls.152.1557435678642; 
 Thu, 09 May 2019 14:01:18 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id d15sm10989209pfm.186.2019.05.09.14.01.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 14:01:17 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] pinctrl: bcm: Allow PINCTRL_BCM2835 for ARCH_BRCMSTB
Date: Thu,  9 May 2019 13:59:52 -0700
Message-Id: <20190509205955.27842-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_140120_020652_5F71E521 
X-CRM114-Status: GOOD (  11.65  )
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
 Lukas Wunner <lukas@wunner.de>, open list <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Doug Berger <opendmb@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

This patch series allows making use of the pinctrl-bcm2835 driver on
ARCH_BRCMSTB where it is also used. Binding document is updated, and
then the Kconfig language is updated to allow selecting this driver with
ARCH_BRCMSTB, finally, Al updates the logic to account for the
additional registers that were added on 7211.

Thanks!

Al Cooper (1):
  pinctrl: bcm2835: bcm7211: Add support for 7211 pull-up functionality

Doug Berger (1):
  pinctrl: bcm: Allow PINCTRL_BCM2835 for ARCH_BRCMSTB

Florian Fainelli (1):
  dt-bindings: pinctrl: bcm2835-gpio: Document BCM7211 compatible

 .../bindings/pinctrl/brcm,bcm2835-gpio.txt    |  3 +
 drivers/pinctrl/bcm/Kconfig                   |  6 +-
 drivers/pinctrl/bcm/pinctrl-bcm2835.c         | 85 +++++++++++++++++--
 3 files changed, 88 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
