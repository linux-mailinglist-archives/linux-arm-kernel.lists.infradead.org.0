Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7140812B3A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 10:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f8u1Wld9NoFf3krBIRfUDSs9C1OPtuwy5FduoTS7U+g=; b=ZK7Uy2cV43E9Ao
	pHhTt760o1NEoHS2iYvErCJDMIDUPgRFjQXixeyUuKkQYDR5ipzBtv/FrMPjLFOs1uJGNWhqxdUTl
	hwBh/Nn6S49oWPdcyloeV1Uzo51hn5KAqMSBu5yg+nppKg+Bpcj1sx91SWHeZganoBd2CGJp/t2Rf
	sTpz/dodajB9mx1wNBZ7QLtqHbuGiDBCCcWRhjXV2Q9VnRAK+dgHJ+icbo+V21wK/GIhaDiVC9ma0
	0q9dLMwNxJxcj/PKzg6+KJAa2WOfiaCzyS35j4rW7hy1RzNCgwyxW05NIsUgNROT/I9X7prPwsmzv
	ZQzVina41/jeyy2fL/xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikmCc-0002nq-Pj; Fri, 27 Dec 2019 09:46:38 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikmCP-0002mi-Hb; Fri, 27 Dec 2019 09:46:27 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 27 Dec 2019
 17:46:27 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v5 0/5] add Amlogic A1 clock controller driver
Date: Fri, 27 Dec 2019 17:46:01 +0800
Message-ID: <20191227094606.143637-1-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_014625_583083_6A28B2D3 
X-CRM114-Status: GOOD (  10.11  )
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add support for Amlogic A1 clock driver, the clock includes 
three parts: peripheral clocks, pll clocks, CPU clocks.
sys pll and CPU clocks will be sent in next patch.

Changes since v4 at [5]:
- change yaml GPL
- drop meson-eeclk.c patch, add probe function in each driver
- add CLK_IS_CRITICAL for sys_clk clock, drop the flag for sys_a and sys_b
- add new parm for pll, add protection for rst parm
- drop flag for a1_fixed_pll
- remove the same comment for fclk_div, add "refer to"
- add critical flag for a1_sys_clk
- remove rtc table
- rename a1_dspa_en_dspa and a1_dspb_en_dspb
- remove useless comment

Changes since v3 at [3]:
-fix reparenting orphan failed, it depends on jerome's patch [4]
-fix changelist in v3 about reparenting orphan
-remove the dts patch 

Changes since v2 at [2]:
-add probe function for A1
-seperate the clock driver into two patch
-change some clock flags and ops
-add support for a1 PLL ops
-add A1 clock node
-fix reparenting orphan clock failed, registering xtal_fixpll
 and xtal_hifipll after the provider registration, it is not
 a best way.

Changes since v1 at [1]:
-place A1 config alphabetically
-add actual reason for RO ops, CLK_IS_CRITICAL, CLK_IGNORE_UNUSED
-separate the driver into two driver: peripheral and pll driver
-delete CLK_IGNORE_UNUSED flag for pwm b/c/d/e/f clock, dsp clock
-delete the change in Kconfig.platforms, address to Kevin alone
-remove the useless comments
-modify the meson pll driver to support A1 PLLs

[1] https://lkml.kernel.org/r/1569411888-98116-1-git-send-email-jian.hu@amlogic.com
[2] https://lkml.kernel.org/r/1571382865-41978-1-git-send-email-jian.hu@amlogic.com
[3] https://lkml.kernel.org/r/20191129144605.182774-1-jian.hu@amlogic.com
[4] https://lkml.kernel.org/r/20191203080805.104628-1-jbrunet@baylibre.com
[5] https://lkml.kernel.org/r/20191206074052.15557-1-jian.hu@amlogic.com

Jian Hu (5):
  dt-bindings: clock: meson: add A1 PLL clock controller bindings
  clk: meson: add support for A1 PLL clock ops
  clk: meson: a1: add support for Amlogic A1 PLL clock driver
  dt-bindings: clock: meson: add A1 peripheral clock controller bindings
  clk: meson: a1: add support for Amlogic A1 Peripheral clock driver

 .../bindings/clock/amlogic,a1-clkc.yaml       |   67 +
 .../bindings/clock/amlogic,a1-pll-clkc.yaml   |   54 +
 drivers/clk/meson/Kconfig                     |   18 +
 drivers/clk/meson/Makefile                    |    2 +
 drivers/clk/meson/a1-pll.c                    |  374 +++
 drivers/clk/meson/a1-pll.h                    |   56 +
 drivers/clk/meson/a1.c                        | 2263 +++++++++++++++++
 drivers/clk/meson/a1.h                        |  120 +
 drivers/clk/meson/clk-pll.c                   |   40 +-
 drivers/clk/meson/clk-pll.h                   |    2 +
 include/dt-bindings/clock/a1-clkc.h           |   98 +
 include/dt-bindings/clock/a1-pll-clkc.h       |   16 +
 12 files changed, 3105 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
 create mode 100644 drivers/clk/meson/a1-pll.c
 create mode 100644 drivers/clk/meson/a1-pll.h
 create mode 100644 drivers/clk/meson/a1.c
 create mode 100644 drivers/clk/meson/a1.h
 create mode 100644 include/dt-bindings/clock/a1-clkc.h
 create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
