Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEB011503C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 13:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UTq7c05BXAzd5saHhWlqWHlv2WOJm14+6Lx1F78j7y0=; b=NWGr0mn3PmvXRU
	8AnDCTt1NaTXOQpaO/wyYcy4/ft2CJCwQ4npNLGTUQlG+GW6/BJhS1IMFJ1md6z/di/SYz0cbqoOf
	1TpdnumtJ2Ewi4gjC2f7u92LcP7oe0XU45+GLVKKkRDuln048WxtYJtiQWjndIOd61pJGhhiRP0i5
	hK2E/Fjfowqj+RBVe73rYhBfHjyibF4ZuIJLqX6z2VLJCwDmMZPppK7jsl0J70jXeBSVpUkJRqLit
	RV4TAfYjiBNC6HXdq5oOp+G82oqeuAL2Wa2Z2wcuEhlpgiICEB5NnfKHvWFDm/yVpy6EpPMDIBR9/
	SvRnvzIUEQCFVtpxxxew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idCY7-0007he-WE; Fri, 06 Dec 2019 12:17:32 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCXz-0007h2-B8; Fri, 06 Dec 2019 12:17:24 +0000
Received: from localhost.localdomain (10.28.8.19) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 6 Dec 2019
 20:17:50 +0800
From: Qianggui Song <qianggui.song@amlogic.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 0/4] irqchip/meson-gpio: Add support for Meson-A1 SoC
Date: Fri, 6 Dec 2019 20:17:09 +0800
Message-ID: <20191206121714.14579-1-qianggui.song@amlogic.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Originating-IP: [10.28.8.19]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_041723_381784_A727A8D3 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support for GPIO interrupt controller of Meson-A1 SoC
which use new reigster layout, two main things are done in the patchset
1. rework current driver
2. add a1 support

Qianggui Song (4):
  dt-bindings: interrupt-controller: New binding for Meson-A1 SoCs
  irqchip/meson-gpio: rework meson irqchip driver to support meson-A1
    SoCs
  irqchip/meson-gpio: Add support for meson a1 SoCs
  arm64: dts: meson: a1: add gpio interrupt controller support

 .../amlogic,meson-gpio-intc.txt               |   1 +
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi     |   9 ++
 drivers/irqchip/irq-meson-gpio.c              | 126 +++++++++++++++---
 3 files changed, 117 insertions(+), 19 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
