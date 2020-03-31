Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB6198938
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 02:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=11aeqCd+gvC0AA8aaS2BRSB2DmTWDX58GKVYsw4CeHA=; b=ASSciyqc+lnBGm
	EVAZhpYF53TQ63yq2BOmd3Dryke23ZLOvqZAWqYlg1gocab+7ecTeZ7+0d0tYbYKQtcwRPqkWaxwa
	ygziixda/8Yf5nSS4qdxLDnZrS3VwmeNK2gOgVIBkjoIksc1BgTEwrK5HzfgeS1mEqRQd3U8bUkNs
	098Sy4M1aDscfJdROqeG8xgfa20tDCU861NSGzaG2+f9dzctOdQ5loHk0WT2DLCNjLhro1P4WvH7H
	lSeOjibPXvii9a7mRSPh1hB4ltVoyLS/BQq9AbcH0EOAy+R4cMNxOxh5J9iXyPV3Wda8g/eeFFlS3
	449V0lCivLLs1STrRSng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ5E6-0003ft-4V; Tue, 31 Mar 2020 00:57:58 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ5Dk-0003eJ-EM
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 00:57:38 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48rrX96dvJz1qrGG;
 Tue, 31 Mar 2020 02:57:29 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48rrX9621kz1r0cK;
 Tue, 31 Mar 2020 02:57:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id HuYhLRn7TH_T; Tue, 31 Mar 2020 02:57:28 +0200 (CEST)
X-Auth-Info: lYd3tf1OByz0YyGRUq7xLhcKT5AG8G1a3ZIg9bFfoig=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 02:57:28 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 00/22] ARM: dts: stm32: Repair AV96 board
Date: Tue, 31 Mar 2020 02:56:39 +0200
Message-Id: <20200331005701.283998-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_175736_636392_B5ED6900 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AV96 board device tree is completely broken and does not match the
hardware. This series fixes it up.

Marek Vasut (22):
  ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
  ARM: dts: stm32: Repair ethernet operation on AV96
  ARM: dts: stm32: Add missing ethernet PHY reset on AV96
  ARM: dts: stm32: Add missing ethernet PHY skews on AV96
  ARM: dts: stm32: Add alternate pinmux for SDMMC1 direction pins
  ARM: dts: stm32: Repair SDMMC1 operation on AV96
  ARM: dts: stm32: Add alternate pinmux for SDMMC2 pins 4-7
  ARM: dts: stm32: Add eMMC attached to SDMMC2 on AV96
  ARM: dts: stm32: Repair PMIC configuration on AV96
  ARM: dts: stm32: Repair PMIC interrupt on AV96
  ARM: dts: stm32: Add QSPI NOR on AV96
  ARM: dts: stm32: Add configuration EEPROM on AV96
  ARM: dts: stm32: Enable GPU on AV96
  ARM: dts: stm32: Add alternate pinmux for SDMMC3 pins
  ARM: dts: stm32: Enable WiFi on AV96
  ARM: dts: stm32: Add alternate pinmux for USART2 pins
  ARM: dts: stm32: Enable Bluetooth on AV96
  ARM: dts: stm32: Add alternate pinmux for LTDC pins
  ARM: dts: stm32: Add bindings for HDMI video on AV96
  ARM: dts: stm32: Add bindings for audio on AV96
  ARM: dts: stm32: Add bindings for USB on AV96
  ARM: dts: stm32: Rename LEDs to match silkscreen on AV96

 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi    | 248 +++++++++++++++
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 328 ++++++++++++++++++--
 2 files changed, 543 insertions(+), 33 deletions(-)

Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
