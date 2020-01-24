Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1539E148147
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:18:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UfFXQElWMEpNDdh2AzscRF5M8sPH54VQdVUdzTxB+mA=; b=JSZ5LnqG4A1WcpwfKR1/RTMUAJ
	h1n9Of4s++MublJ7qguFDZjTEzuCCCuTOEaI5exest/ur0g1dbzz0hmcW19bkP49nLIqr5FAjZrRn
	LvF+ZHCM2y07gRQcN3/AKCp/1TdwkLqLO8AvlkNGaMjRZwmD1M3BXWf0repAJLt+FXvqcCH5uafxe
	19jcqxKAO+ZreI3a4pfKTPjseOLSiQ9ETvBSnBvttJrjd1XDYT0dgGNmtQ/Dcv+adu56yxO+vZSVM
	jpSq7kKUpkLbUlag9NwMU37pzMBjm3sAhXG6uSfKMv9j/zgE+c88GplzD1SUSA/KzPPBn/ulEw7Sx
	a8QZmAfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuwz2-0008QW-GL; Fri, 24 Jan 2020 11:18:40 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuwyv-0008Pm-OK
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:18:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00OBIVN0103667;
 Fri, 24 Jan 2020 05:18:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579864711;
 bh=a+QM+6rZ7FOqqStWcOuK6m+Fjti4y6kTBjQN3u19NEU=;
 h=From:Subject:To:CC:Date;
 b=cMK1jb9qVRexWlCJTbFCWM9DiHDYs0aC1PhtpfZzcskAEYOzEO7Yyt8kjzGYIeyrl
 TboNZdb0ut/cpKAob52oRaiON4zK9P4dgS0BFbNk+xDlcOW+LI2NA3zdJHTcsE1P79
 vZG5beE7UjBjIMPnCIjFwcbXLPdr/o/qqcTEEZlU=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OBIVDD054782;
 Fri, 24 Jan 2020 05:18:31 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 24
 Jan 2020 05:18:30 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 24 Jan 2020 05:18:30 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00OBISxh116961;
 Fri, 24 Jan 2020 05:18:29 -0600
From: Tero Kristo <t-kristo@ti.com>
Subject: [GIT PULL] arm64: dts: TI K3 SoC changes for v5.6 (part 2)
To: <soc@kernel.org>, <arm@kernel.org>
Message-ID: <83546942-6215-9c3a-16cd-be7e7c000c0e@ti.com>
Date: Fri, 24 Jan 2020 13:18:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_031833_866622_0C510514 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Arnd, Olof,

Please pull these additional TI K3 SoC DTS changes towards v5.6. This is 
based on top of the pull I sent last week. The main feature provided in 
this is DMA support which is blocking plenty of upstreaming activities 
for TI K3 family of SoCs.

-Tero

----

The following changes since commit 3f03a58b25753843ce9e4511e9e246c51bd11011:

   arm64: dts: ti: k3-j721e-main: Add missing power-domains for smmu 
(2020-01-17 10:19:51 +0200)

are available in the Git repository at:

   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux 
tags/ti-k3-soc-for-v5.6-part2

for you to fetch changes up to be28d4da7c73f51d4ccd5c3f9cd215d0858bc8c8:

   arm64: dts: ti: k3-am654-base-board: Add CSI2 OV5640 camera 
(2020-01-24 13:13:23 +0200)

----------------------------------------------------------------
Texas Instruments K3 SoC family changes for 5.6, part 2.

- Add DMA nodes for am65x and j721e
- Add McASP nodes for am65x and j721e, showcasing the DMA usage
- Add CAL node for am65x
- Add OV5640 camera support for am65x

----------------------------------------------------------------
Benoit Parrot (2):
       arm64: dts: ti: k3-am65-main Add CAL node
       arm64: dts: ti: k3-am654-base-board: Add CSI2 OV5640 camera

Peter Ujfalusi (9):
       arm64: dts: ti: k3-am65-main: Correct main NAVSS representation
       arm64: dts: ti: k3-am65-main: Move secure proxy under 
cbass_main_navss
       arm64: dts: ti: k3-am65: DMA support
       arm64: dts: ti: k3-j721e: Correct the address for MAIN NAVSS
       arm64: dts: ti: k3-j721e-main: Correct main NAVSS representation
       arm64: dts: ti: k3-j721e-main: Move secure proxy and smmu under 
main_navss
       arm64: dts: ti: k3-j721e: DMA support
       arm64: dts: ti: k3-am654-main: Add McASP nodes
       arm64: dts: ti: k3-j721e-main: Add McASP nodes

  arch/arm64/boot/dts/ti/k3-am65-main.dtsi        | 144 ++++++++++-
  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         |  46 ++++
  arch/arm64/boot/dts/ti/k3-am654-base-board.dts  |  31 +++
  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi       | 313 
++++++++++++++++++++++--
  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi |  45 ++++
  arch/arm64/boot/dts/ti/k3-j721e.dtsi            |   2 +-
  6 files changed, 544 insertions(+), 37 deletions(-)
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
