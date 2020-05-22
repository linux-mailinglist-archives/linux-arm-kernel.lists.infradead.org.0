Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 284B31DDDAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NXDKPx0mWC+H/NDKwqbku1K+pZKqHJOxgfBtHsR+TaA=; b=sOZKNkzvVJi5xA
	3R2kqQS+WFPN0nHZwr1tdykkK7jhE3J639ClRetKL8WP5hyBttN/ZpK8Wbrq0TZSnyX0O1qJ6uCd9
	dJyedaGPT0SPtrvipWNIqjne5G457WYDHV7aFXWA5c4I/qJXUdm0hnag2UnIwlfdCqK3nJsqhAVWZ
	co9TcpS95D7ldN5e81hfXEkOpKSqLP9K9ZODMGneWilEqlAUY9eMov2N54ittHcbZx/VgZ8hY8AsH
	Q3DeMqkB0tC3CL0crFnOyLn0L51DpF1R3z/vm7lyZTS9nIjRQJJPWURU3jM4s9oa/LSPHgz0zBPvY
	UKEbF+W0/ztygrw9dLmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jby2w-00068q-Jx; Fri, 22 May 2020 03:08:30 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jby2k-00067A-Bc
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:08:22 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.106233|-1; CH=green; DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.0832929-0.000859812-0.915847;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03307; MF=frank@allwinnertech.com; NM=1; PH=DS;
 RN=15; RT=15; SR=0; TI=SMTPD_---.HbxBGFJ_1590116882; 
Received: from allwinnertech.com(mailfrom:frank@allwinnertech.com
 fp:SMTPD_---.HbxBGFJ_1590116882)
 by smtp.aliyun-inc.com(10.147.41.178);
 Fri, 22 May 2020 11:08:08 +0800
From: Frank Lee <frank@allwinnertech.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org,
 p.zabel@pengutronix.de, frank@allwinnertech.com,
 huangshuosheng@allwinnertech.com, tiny.windzz@gmail.com
Subject: [PATCH 0/4] Allwinner A100 Initial support
Date: Fri, 22 May 2020 11:07:39 +0800
Message-Id: <20200522030743.10204-1-frank@allwinnertech.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_200818_555261_BDC204F6 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds initial support for allwinner a100 soc,
which is a 64-bit tablet chip.

Frank Lee (4):
  clk: sunxi-ng: add support for the Allwinner A100 CCU
  pinctrl: sunxi: add support for the Allwinner A100 pin controller
  arm64: allwinner: A100: add the basical Allwinner A100 DTSI file
  arm64: allwinner: A100: add support for Allwinner Perf1 board

 arch/arm64/boot/dts/allwinner/Makefile        |    1 +
 .../allwinner/sun50i-a100-allwinner-perf1.dts |   27 +
 .../arm64/boot/dts/allwinner/sun50i-a100.dtsi |  173 +++
 drivers/clk/sunxi-ng/Kconfig                  |   10 +
 drivers/clk/sunxi-ng/Makefile                 |    2 +
 drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c      |  206 +++
 drivers/clk/sunxi-ng/ccu-sun50i-a100-r.h      |   14 +
 drivers/clk/sunxi-ng/ccu-sun50i-a100.c        | 1255 +++++++++++++++++
 drivers/clk/sunxi-ng/ccu-sun50i-a100.h        |   14 +
 drivers/pinctrl/sunxi/Kconfig                 |   10 +
 drivers/pinctrl/sunxi/Makefile                |    2 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c |  105 ++
 drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c   |  710 ++++++++++
 include/dt-bindings/clock/sun50i-a100-ccu.h   |  141 ++
 include/dt-bindings/clock/sun50i-a100-r-ccu.h |   25 +
 include/dt-bindings/reset/sun50i-a100-ccu.h   |   68 +
 include/dt-bindings/reset/sun50i-a100-r-ccu.h |   18 +
 17 files changed, 2781 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
 create mode 100644 drivers/clk/sunxi-ng/ccu-sun50i-a100-r.c
 create mode 100644 drivers/clk/sunxi-ng/ccu-sun50i-a100-r.h
 create mode 100644 drivers/clk/sunxi-ng/ccu-sun50i-a100.c
 create mode 100644 drivers/clk/sunxi-ng/ccu-sun50i-a100.h
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
 create mode 100644 include/dt-bindings/clock/sun50i-a100-ccu.h
 create mode 100644 include/dt-bindings/clock/sun50i-a100-r-ccu.h
 create mode 100644 include/dt-bindings/reset/sun50i-a100-ccu.h
 create mode 100644 include/dt-bindings/reset/sun50i-a100-r-ccu.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
