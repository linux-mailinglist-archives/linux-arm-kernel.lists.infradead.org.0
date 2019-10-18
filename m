Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6E9DC009
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LE79Dt/Ib0dWmZ66B27//S2V4DPnmsi81chbYn3+Hr4=; b=esnNLEOCDwhFO3
	OTidWbAZMLRVt95hz/7MN4NBUO+WkCMOaus2lQ5Y+gqyjPn3Gd3FI8Qt6EW3JwDB+VsUZ/8iHsaVm
	4I4NrXIwDQ7N7PNexAH43vtKG0Z8rcY5oepyIctE65QDdtFIch8V6ZhI7+dAScQ/5UuZeU9czqnLE
	MHj/kL/GMFchmXEh4NA5rkaxBeNpMPmL64hfqbsnTgHhRS1ZE0AquC5u6nkIDGg6GiR0xz1DP7NYz
	GOlCu2AzqB8jaey1kXQdB95OHI90ZrSjCSG26SdZVPHES43NZgOgC3/meRH+lGcU2lgoF9tR5JJEb
	oVfMWJCLQA28KDOd3m/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNiB-0000Us-Pa; Fri, 18 Oct 2019 08:34:15 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNhw-0000ST-M1; Fri, 18 Oct 2019 08:34:02 +0000
Received: from droid12-sz.software.amlogic (10.28.8.22) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10;
 Fri, 18 Oct 2019 16:33:53 +0800
From: Xingyu Chen <xingyu.chen@amlogic.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Kevin Hilman <khilman@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v2 0/4] add meson secure watchdog driver
Date: Fri, 18 Oct 2019 16:33:37 +0800
Message-ID: <1571387622-35132-1-git-send-email-xingyu.chen@amlogic.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.28.8.22]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_013400_887608_C4215C11 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The watchdog controller on the Meson-A/C series SoCs is moved to secure world,
We have to call SMC instruction to trap the ATF for watchdog operation. These
operations are different from previous SoCs, so we introduce a new watchdog
driver to support this kind of SoCs.

Changes since v1 at [0]:
- add a new dependency in Kconfig
- simplify/add the return operation
- remove useless ping operation when setting the timeout
- fix some return values
- fix the license statement

[0]:https://lore.kernel.org/linux-amlogic/1570874721-36077-1-git-send-email-xingyu.chen@amlogic.com

Xingyu Chen (4):
  firmware: meson_sm: add new SMC ID support for accessing secure
    watchdog
  dt-bindings: watchdog: add new binding for meson secure watchdog
  watchdog: add meson secure watchdog driver
  arm64: dts: a1: add secure watchdog controller

 .../bindings/watchdog/amlogic,meson-sec-wdt.yaml   |  34 ++++
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi          |   6 +
 drivers/firmware/meson/meson_sm.c                  |   1 +
 drivers/watchdog/Kconfig                           |  17 ++
 drivers/watchdog/Makefile                          |   1 +
 drivers/watchdog/meson_sec_wdt.c                   | 187 +++++++++++++++++++++
 include/linux/firmware/meson/meson_sm.h            |   1 +
 7 files changed, 247 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/amlogic,meson-sec-wdt.yaml
 create mode 100644 drivers/watchdog/meson_sec_wdt.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
