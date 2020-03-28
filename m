Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01B61968DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 20:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tEKap70tv0SD2cRxgEPpklpSzK3cE1yCWwm9k6H66tM=; b=rkOec8xpVozUbl
	nvFPjPXR7isr4180eKZ51yFbI4YYQIxnfHvgebiWBy69RX1RgFQeQjhq4Lvc5tQstX7hU7h4XBxxn
	XgzDUPiV9zaycEbGE7TtU/cpwM1XY0MogBfCBcM7K6dE7EM3HrKCMm4AujTcXP6Eu3uSsMmv8TNkw
	Zixivm60MIOa0JrBk6ZbqEr75dELYJAjINc9QjijC7q7xeds4V3sOW/cl1VI9sG6WtaJhEDu5V1hz
	2WvtZ3UQJPBacdIMJhFgKcghEtATpjqUEbEZ8Juc415lcBkHhniyfgZ3HytElMXy84dNDTBCPNBOY
	HVkTmZ9ZMJfMD+S6HNLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGo1-0000kV-TY; Sat, 28 Mar 2020 19:07:41 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGnt-0000k0-T2
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 19:07:35 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48qSsH2k4Hz1rn32;
 Sat, 28 Mar 2020 20:07:31 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48qSsH24fvz1qv4p;
 Sat, 28 Mar 2020 20:07:31 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id p_Vu8Mwqx3Au; Sat, 28 Mar 2020 20:07:30 +0100 (CET)
X-Auth-Info: lUdezXcNti/4NL4eKD6TAmN5/K425B/qcOQRX3w0ulw=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 28 Mar 2020 20:07:30 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: stm32: Enable HS200 on AV96
Date: Sat, 28 Mar 2020 20:07:25 +0100
Message-Id: <20200328190725.68468-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_120734_087122_725C2E45 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable MMC HS200 mode on AV96. This needs PLL4P to run at 100 MHz,
as the PLL is limited to 130 MHz and the 100 MHz is most suitable
for dividing the clock down both to 50 MHz for DDR52 and 100 MHz
for HS200.

The performance figures are not that different between DDR52 and
HS200 though:

    $ cat /sys/kernel/debug/mmc2/ios
    clock:          52000000 Hz
    actual clock:   50000000 Hz
    vdd:            7 (1.65 - 1.95 V)
    bus mode:       2 (push-pull)
    chip select:    0 (don't care)
    power mode:     2 (on)
    bus width:      3 (8 bits)
    timing spec:    8 (mmc DDR52)
    signal voltage: 1 (1.80 V)
    driver type:    0 (driver type B)
    $ dd if=/dev/mmcblk2 of=/dev/null bs=128M count=16 conv=sync
    16+0 records in
    16+0 records out
    2147483648 bytes (2.1 GB, 2.0 GiB) copied, 26.3924 s, 81.4 MB/s

    $ cat /sys/kernel/debug/mmc2/ios
    clock:          100000000 Hz
    actual clock:   100000000 Hz
    vdd:            7 (1.65 - 1.95 V)
    bus mode:       2 (push-pull)
    chip select:    0 (don't care)
    power mode:     2 (on)
    bus width:      3 (8 bits)
    timing spec:    9 (mmc HS200)
    signal voltage: 1 (1.80 V)
    driver type:    0 (driver type B)
    $ dd if=/dev/mmcblk2 of=/dev/null bs=128M count=16 conv=sync
    16+0 records in
    16+0 records out
    2147483648 bytes (2.1 GB, 2.0 GiB) copied, 25.2144 s, 85.2 MB/s

Note that if there is a way to run the PLL4P at 200 MHz, this HS200
support might be far more interesting.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 5292d746ab0b..f44511abc6ee 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -520,6 +520,7 @@ &sdmmc2 {
 	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
 	bus-width = <8>;
 	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
 	no-sd;
 	no-sdio;
 	non-removable;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
