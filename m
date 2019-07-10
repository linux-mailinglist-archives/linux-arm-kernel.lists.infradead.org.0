Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD47645D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 13:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrDpM7WYm13WhIl/7yz8GCLzhYWkJolcvZyVAkRGduQ=; b=jmv/6PYaivNIr4
	W9eJRkOFwbBru+/MFU5GefAe0vl2y3N1MbvtPI+w3nhw5jk0ZarYcQX/h/cS7tM6hn1+hly4SyT9l
	xT4l3JueUE7DeNGwVmC0JTV7DJSIScjYPYc0cm3yhWTHnoegSjE0wuSsWA0CTNxbyb4BIlU9LomUr
	qrkhylHJntlHI6LopMsZjscSGNycId85iY1S2p5kfcL4AZKAmWMWoJz1YUDB9d8T09KgOrl9nsbqN
	pvLlX2SXZnGRD6uKvkXoG9gEq2XDFOeoezuLyTJbbBpfrH1Ilzvws5V/g/4xqtuCIWii6h9rZpBgV
	cwZ6m6z4jEkgGQ72HjKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlAsZ-0004LQ-CP; Wed, 10 Jul 2019 11:35:19 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAsS-0004KM-NQ; Wed, 10 Jul 2019 11:35:14 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 04:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="189143865"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2019 04:35:05 -0700
Subject: Re: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
To: Manish Narani <manish.narani@xilinx.com>, ulf.hansson@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de,
 michal.simek@xilinx.com, christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, olof@lixom.net
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <d4a733c4-9760-a790-5752-be3f14c53bec@intel.com>
Date: Wed, 10 Jul 2019 14:33:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_043512_807309_0F59BEDF 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/07/19 8:29 AM, Manish Narani wrote:
> This patch series does the following:
>  - Reorganize the Clock Handling in Arasan SD driver
>  - Adds new sampling clock in Arasan SD driver
>  - Adds support to set Clock Delays in SD Arasan Driver
>  - Add SDIO Tap Delay handling in ZynqMP firmware driver
>  - Add support for ZynqMP Tap Delays setting in Arasan SD driver
> 
> Changes in v2:
> 	- Replaced the deprecated calls to clock framework APIs
> 	- Added support for dev_clk_get() call to work for SD card clock
> 	- Separated the clock data struct
> 	- Fragmented the patch series in smaller patches to make it more
> 	  readable
> 
> This patch series contains a DT patch, which I think should be there to
> maintain the order of commits.
> 
> Manish Narani (11):
>   dt-bindings: mmc: arasan: Update documentation for SD Card Clock
>   arm64: dts: rockchip: Add optional clock property indicating sdcard
>     clock
>   mmc: sdhci-of-arasan: Replace deprecated clk API calls
>   mmc: sdhci-of-arasan: Separate out clk related data to another
>     structure
>   dt-bindings: mmc: arasan: Update Documentation for the input clock
>   mmc: sdhci-of-arasan: Add sampling clock for a phy to use
>   dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
>   mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
>   firmware: xilinx: Add SDIO Tap Delay APIs
>   dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
>   mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup
> 
>  .../devicetree/bindings/mmc/arasan,sdhci.txt       |  49 ++-
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   4 +-
>  drivers/firmware/xilinx/zynqmp.c                   |  48 +++
>  drivers/mmc/host/sdhci-of-arasan.c                 | 453 ++++++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h               |  15 +-
>  5 files changed, 540 insertions(+), 29 deletions(-)
> 

For SDHCI:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
