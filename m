Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF37142575
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq9KY6irWlkNXFsc71XLwt/XJLD9MrrqUlik/89qrPk=; b=mly89tL3Synoou
	YDTug6jhExmz4XOYXgJHRLy72ZZlT+Wq2A3Ue0BZwh9W8sjs5e/Lu0nQnNtQrYjlRc8KSL+9rgfoi
	qdrRRc9lpfCBJtzM1RwUx1SkvRLSFB0l29SunjxmAuH86vBARqs1DjVIDTwrZi3tv+19jX95YFTSg
	mOxZ2eZsWEFdugk7DlLzILw/LvJ6RrUpsxAo18FG29wWeCAOm1094f1yVv1grzUa1ORzF0QQaV9cB
	nilMwu9mIRrGONMCJ6xAaaOw72nBl14nnGfgRbQjconKMuPjYeEQ3EoRKMsQ8l2uqS80sgJKCN4Rv
	5z0IWlhecCUDiBBQhkSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSPE-0002Q4-QB; Mon, 20 Jan 2020 08:27:32 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSOz-0002Om-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:27:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 00:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; d="scan'208";a="274952626"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2020 00:27:09 -0800
Subject: Re: [PATCH 0/6] mmc: sdhci-brcmstb: Driver updates
To: Al Cooper <alcooperx@gmail.com>, linux-kernel@vger.kernel.org
References: <20200113210706.11972-1-alcooperx@gmail.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <8f0734fd-8ffb-75af-7e70-55453cd01923@intel.com>
Date: Mon, 20 Jan 2020 10:26:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_002717_376209_896D35CE 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Andrew Jeffery <andrew@aj.id.au>, YueHaibing <yuehaibing@huawei.com>,
 Takao Orito <orito.takao@socionext.com>, linux-mmc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Faiz Abbas <faiz_abbas@ti.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/01/20 11:07 pm, Al Cooper wrote:
> The latest BRCMSTB SoC's now use a new Arasan controller along
> with a custom Broadcom PHY that supports HS200, HS400, SDR104,
> HS400E-ES and CQE. This series of commits adds support for these
> new features along with a few bug fixes. The 7216 is the first
> SoC to have this new hardware.
> 
> Al Cooper (6):
>   dt-bindings: mmc: brcm,sdhci-brcmstb: Add support for 7216b0
>   mmc: sdhci-brcmstb: Add ability to use HS400ES transfer mode
>   mmc: sdhci-brcmstb: Fix driver to defer on clk_get defer
>   mmc: sdhci-brcmstb: Add shutdown callback
>   mmc: sdhci-brcmstb: Add support for Command Queuing (CQE)
>   mmc: sdhci-brcmstb: Fix incorrect switch to HS mode

For patches 2-5

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> 
>  .../bindings/mmc/brcm,sdhci-brcmstb.txt       |  41 ++-
>  drivers/mmc/host/Kconfig                      |   1 +
>  drivers/mmc/host/sdhci-brcmstb.c              | 270 +++++++++++++++++-
>  3 files changed, 284 insertions(+), 28 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
