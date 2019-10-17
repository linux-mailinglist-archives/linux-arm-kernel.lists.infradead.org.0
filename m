Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC0EDA7D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6fe7DOnq1zqvcQ3EY8+h3tlnz4UKEVaoM3ilft+SWU0=; b=riYiyEhEzfqJFT
	Oe4ZFokzPH47zG+0DtoOWZB+4lRj9IdXfi4sPeKdkQhxXgpX9di6IIeCSfy9yM3XWtdhB8IFgnA7K
	jTDAzPU2hO/TgWlJGDVKErk9IamyXIKDMg3n1Z8R/HgOaCasWDfSDyS+BNM+Spr0vjE4lXEgB+EzC
	KPr18Ar4ocZqxDH17Wrl2Uinuu3msqM7WMOxL7iIs2+I9vaJ1n8Mi1WuQ1lnD5ZAhcPRABSD/lJNE
	1yI9SmN7ymrVNEwtij4TVPWrgzUOnv/2GVyU6OLEBKyt3zAS11HCeBimWZkEi+5gqW/ewp1OiW4Rv
	WuJBRJvAlJ+BlucSl96A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1YR-0005hA-8Z; Thu, 17 Oct 2019 08:54:43 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Y5-0005Og-Qg
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:54:23 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4DE2E20014;
 Thu, 17 Oct 2019 08:54:09 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Add a Kizbox2 dtsi and documentation
Date: Thu, 17 Oct 2019 10:54:03 +0200
Message-Id: <20191017085405.12599-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_015421_994001_05D91B8D 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This short serie add a Kizbox2 DSTI file for the Overkiz's
SAMAD31 based boards and add their documentation.

Kamel Bouhara (2):
  dt-bindings: arm: at91: Document Kizbox2 boards binding
  ARM: dts: at91: add a common kizbox2 dtsi file

 .../devicetree/bindings/arm/atmel-at91.yaml   |  35 +++
 arch/arm/boot/dts/Makefile                    |   6 +-
 arch/arm/boot/dts/at91-kizbox.dts             | 173 ++++++------
 arch/arm/boot/dts/at91-kizbox2-0.dts          |  17 ++
 arch/arm/boot/dts/at91-kizbox2-1.dts          |  22 ++
 arch/arm/boot/dts/at91-kizbox2-2.dts          |  26 ++
 arch/arm/boot/dts/at91-kizbox2-3.dts          |  30 ++
 arch/arm/boot/dts/at91-kizbox2-rev2.dts       |  34 +++
 arch/arm/boot/dts/at91-kizbox2.dts            | 244 -----------------
 arch/arm/boot/dts/at91-kizbox2_common.dtsi    | 258 ++++++++++++++++++
 10 files changed, 512 insertions(+), 333 deletions(-)
 create mode 100644 arch/arm/boot/dts/at91-kizbox2-0.dts
 create mode 100644 arch/arm/boot/dts/at91-kizbox2-1.dts
 create mode 100644 arch/arm/boot/dts/at91-kizbox2-2.dts
 create mode 100644 arch/arm/boot/dts/at91-kizbox2-3.dts
 create mode 100644 arch/arm/boot/dts/at91-kizbox2-rev2.dts
 delete mode 100644 arch/arm/boot/dts/at91-kizbox2.dts
 create mode 100644 arch/arm/boot/dts/at91-kizbox2_common.dtsi

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
