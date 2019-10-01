Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A5DC43FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 00:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ID6/9ch6C+owFxN707VbdsVk7PI9Pf478rpA3mIVz98=; b=pxn3IeWBJ83SN0vyg0NDi8xd3K
	tvkp2/tZzLJS/l7jOLFrXDRl48P96QIUDcab2f/BIswWAWhT4HxKSXypkodzzS5/Lsi3bfDWhzvwo
	cw8pj5FC+v4fnLoMk5Tst05p3T3p9zXZHQG2NQfpUyee6jQsv6fCq6GnfxCQe92WsiE7Revr3+yBB
	JLglAWS4GSwMWmyJ/JV8mhF87Axzpl3q8l42qB2jH76ywrjdQDYAjqGVsUMygrE8q/+0W35GIo/9r
	NPmKdh7b2CN3Hu3aymePlKg18VOuXcbZSw82hC3OIBNXgTxWlTCHgMhz0/QcoBVYfnEM2zdDUa41U
	kEw5gWuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFQxN-0005Pr-5D; Tue, 01 Oct 2019 22:49:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFQwz-0005DR-3j; Tue, 01 Oct 2019 22:48:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id x10so10739458pgi.5;
 Tue, 01 Oct 2019 15:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ALVvzcJj6X8VNDYYs+4cy0jFFvB8QV8WJEiVVo2kQGE=;
 b=Be6D+3c9ngOyzkSxFr7ojqi52yfdOwgEJdriPspA445qZMJiG98tDcsXJ2FcjO3pNE
 QqEAfCieC7lT8RjG4ucuTsHaayjP8GGjVwKQ0BlYEX2zDx6ujad0NsvvroYxnkPr5aGR
 ELiN8QgLY73XXCEcXqI/ZSQbXHk9qrxiCtd9LBn/6oc0rSl9sReRqii6+h7kFIf8kcEj
 WWM6yXfye/v3I2hmTD5Z5zJ7xdhEBy5Dp8iaznVMnC4t0m8FduyCLYyECaAbC/9CAelv
 OojhsNSODLxSAKyJpm89xw3uo1cFrEY0JqvBX3h2qEfU+Gr/o/BvbP6KnmRXo8Ks70AY
 g3/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ALVvzcJj6X8VNDYYs+4cy0jFFvB8QV8WJEiVVo2kQGE=;
 b=JYP+1iN7ctPJljL3Y7XrBbHidRCQocYaABs2T3uiW8CoHmETWCVptF0UHGzHs6rVQ8
 BDHHa5hmTviJWMImr1gO7qRrLAE38gW0wMYcZJivKd1ya6Kq9rxYVQX+PNTcKFTKN4o7
 bAEphK3lCsCbKW+AFNw+uU1IAvVObn9cLufg5z4DEUZ3xJd7BrZqWhovVYQvp/29t5sh
 R8Uwh1Ljs3NHZE/Dv02K4D7sB37PmvdP/gxCo9sAg9yfxK5X8zlcVwUxlus1qtV8jnnh
 gWgcOGgLCyOmULSUrPQHMFFi5cswpH62TgGNISMpqZzCXKnrbzjD9+VljQ9Yv29JAd5Q
 LP8A==
X-Gm-Message-State: APjAAAXvjhye7n9YtH6owgeuG7oUOJ0cnoMjoieRmKNaamXebOtssiIT
 nf/+/iyC7G8qZaAOr7gJpQ8mvdWe
X-Google-Smtp-Source: APXvYqzJ0GLUmIOTnwatqSEh6qohHVG2F/73wfU8+xRyEwS3DswKWK4sHNJrNfPODg3CYN48PtCR5w==
X-Received: by 2002:a17:90a:266c:: with SMTP id
 l99mr643655pje.93.1569970136511; 
 Tue, 01 Oct 2019 15:48:56 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c128sm20913506pfc.166.2019.10.01.15.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 15:48:55 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] irqchip: Introduce Kconfig symbol to build irq-bcm283x.c
Date: Tue,  1 Oct 2019 15:48:36 -0700
Message-Id: <20191001224842.9382-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001224842.9382-1-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_154857_151881_168E7C6A 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both irq-bcm2835.c and irq-bcm2836.c are currently used with
ARCH_BCM2835 but are soon going to be used with ARCH_BRCMSTB, introduce
a Kconfig symbol to make that those drivers selected/built by other
platforms.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/irqchip/Kconfig  | 5 +++++
 drivers/irqchip/Makefile | 4 ++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 80e10f4e213a..d1bb20d23d27 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -113,6 +113,11 @@ config I8259
 	bool
 	select IRQ_DOMAIN
 
+config BCM283X_IRQ
+	bool
+	select IRQ_DOMAIN
+	default ARCH_BCM2835
+
 config BCM6345_L1_IRQ
 	bool
 	select GENERIC_IRQ_CHIP
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 8d0fcec6ab23..9cf14c7945f6 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -5,8 +5,8 @@ obj-$(CONFIG_AL_FIC)			+= irq-al-fic.o
 obj-$(CONFIG_ALPINE_MSI)		+= irq-alpine-msi.o
 obj-$(CONFIG_ATH79)			+= irq-ath79-cpu.o
 obj-$(CONFIG_ATH79)			+= irq-ath79-misc.o
-obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2835.o
-obj-$(CONFIG_ARCH_BCM2835)		+= irq-bcm2836.o
+obj-$(CONFIG_BCM283X_IRQ)		+= irq-bcm2835.o
+obj-$(CONFIG_BCM283X_IRQ)		+= irq-bcm2836.o
 obj-$(CONFIG_DAVINCI_AINTC)		+= irq-davinci-aintc.o
 obj-$(CONFIG_DAVINCI_CP_INTC)		+= irq-davinci-cp-intc.o
 obj-$(CONFIG_ARCH_EXYNOS)		+= exynos-combiner.o
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
