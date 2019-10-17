Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F026CDA889
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=94L+ITM5kaqLzcR8OCAtzrEqxActDESEHGiBlliK+AY=; b=KeitWCiHbTE5BS
	rF8I42TRY86iH6j2OUbcNIUCReORW+XTWqrftdfYVixECPPEwUS18BgKj/kYNbqZSboTdd96rtQnK
	cBo7nuyK0Y9FA/vJvrAEFMpKyclhb9AM8w0mgzbv23M/yb/Oq/28I9X8vT1T1Q+zMwTCTAgb/AIHI
	L/4qNKUgWYo/3WRzaSFZGrI7hSfcuyUtXO36EujJOjmDVGo0Dgx4qy23uws+woxFnyAN7sSrRDuA7
	k28H1RBIPU2WZyX+MyOCBfgZDirT5Xkpv5OO+7lFUGbuVSfqCqxq7tatAJ3gi97KcFCodLfsEP5Sq
	FRlMBB4Fad7MKoxzOuaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2H2-0008Vx-QI; Thu, 17 Oct 2019 09:40:48 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Gs-0008Uu-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:40:39 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id B1C25200010;
 Thu, 17 Oct 2019 09:40:29 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Add Kizboxmini boards support
Date: Thu, 17 Oct 2019 11:40:26 +0200
Message-Id: <20191017094028.14259-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024038_279147_23333FBA 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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

Add support for the Overkiz's SAM9G25 based boards and document them.

Kamel Bouhara (2):
  dt-bindings: arm: at91: Document Kizboxmini boards binding
  ARM: dts: at91: add a common kizboxmini dtsi file

 .../devicetree/bindings/arm/atmel-at91.yaml   |  14 ++
 arch/arm/boot/dts/Makefile                    |   2 +
 arch/arm/boot/dts/at91-kizboxmini-mb.dts      |  38 ++++
 arch/arm/boot/dts/at91-kizboxmini-rd.dts      |  54 ++++++
 arch/arm/boot/dts/at91-kizboxmini_common.dtsi | 166 ++++++++++++++++++
 5 files changed, 274 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91-kizboxmini-mb.dts
 create mode 100644 arch/arm/boot/dts/at91-kizboxmini-rd.dts
 create mode 100644 arch/arm/boot/dts/at91-kizboxmini_common.dtsi

--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
