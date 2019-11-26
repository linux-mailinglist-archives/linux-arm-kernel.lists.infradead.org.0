Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4FD1098E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 06:37:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DiaMOlNGlQiWGquNVgLx3AYqrypcvagjDAQFV3k5j3Y=; b=qH4Nqkv6LVK8mP
	e6eC9MX1tvbKc//jPPAneXKz88GXNdRllAJUIB4BTCEH/Ws3f2VwVwxl+TzKTDe4bZCJmBtDY1nFy
	NNFdN7u0woBzjo2bulg9ynqdBvSkAqSCbO6Nn6kY/bA+SkP7kfooe1RLXj7AfE4zgjuEtBUglL9ta
	CwmCDhvRZ4inEN7r0WJt87B0NiDX+AvAafJYwAXEmBw/xz/B817T+eWGY7phVJbVieSeELCMJ5GCg
	8fnUIV0HcjvZzv6wq1jrZd0/KXeNmjYkNKyLXTYMC5hzyP6cwAmZjxlNqD64/G5eI2lOU1NRn6bqH
	HWrnIHbr+yhyhxn4CYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZTXP-0004Cq-Oq; Tue, 26 Nov 2019 05:37:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZTX9-000478-8p; Tue, 26 Nov 2019 05:37:09 +0000
X-UUID: bafad12b4c3a4a3684387fc4ec8e28f1-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=PGHAjeNFj61JuQZqzPm0qOjVOVPlbCv9F5NL4JCmFUs=; 
 b=FhlbflNrqT0mPEQx/nAIsSi4t5cEhAjHxVUiphH/Q9tVgKiRK+nxjIA6po2ShhyWbVfh/BzqXob0gnEEOMz7ikLoTN9iWkABemf/FxOVoI0Klo0EfCAxLqvKhTlY7EEo+whpsDlheONn/9gY1FRCMPsJUfw1O2ruqdxkZJzJHBM=;
X-UUID: bafad12b4c3a4a3684387fc4ec8e28f1-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <freddy.hsin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1163091736; Mon, 25 Nov 2019 21:36:48 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 21:35:02 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 13:34:50 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 13:34:34 +0800
From: <freddy.hsin@mediatek.com>
To: <sre@kernel.org>, <linux-pm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 0/4] Support MTK reboot mode driver 
Date: Tue, 26 Nov 2019 13:34:46 +0800
Message-ID: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_213707_320009_9252C79F 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Chang-An.Chen@mediatek.com, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This driver parses the reboot commands like "reboot bootloader"
 and "reboot recovery" to get a boot mode described in the
 device tree , then call the write interfae to store the boot
 mode in mtk RGU (reset generation unit) non-volatile register,
 which can be read by the bootloader after system reboot, then
 the bootloader can take different action according to the mode
 stored.
 
 Freddy Hsin (4):
  power: reset: add reboot mode driver
  watchdog: populate reboot mode node in toprgu node of MTK RGU (Reset
    Generation Unit)
  soc: mediatek: add reboot-mode header
  dt-binding: power: reset: Add documentation for MTK RGU (Reset
    Gernation Unit) reboot driver

 .../devicetree/bindings/power/reset/mtk-reboot.txt |   30 +++++
 drivers/power/reset/Kconfig                        |   11 ++
 drivers/power/reset/Makefile                       |    1 +
 drivers/power/reset/mtk-reboot.c                   |  116 ++++++++++++++++++++
 drivers/watchdog/mtk_wdt.c                         |    3 +
 include/dt-bindings/soc/mediatek,boot-mode.h       |   17 +++
 6 files changed, 178 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mtk-reboot.txt
 create mode 100644 drivers/power/reset/mtk-reboot.c
 create mode 100644 include/dt-bindings/soc/mediatek,boot-mode.h
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
