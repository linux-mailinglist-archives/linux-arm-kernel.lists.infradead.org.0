Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB13C98C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a41BqPzsMwNxglYTetQKqNQ1s0+aW1wRWl/zN+b3zQ=; b=rEM1BoJcMjhuc7
	79ppT3p58BHmtvGiuu59aRWrd94tKTBzViYihPim+hYxUoj3KwFPI5oiNrqKeCSHpxyyYKVFOOOYq
	9T/NKqk8do8dZXWROESnAAcWdUOe71mwQBxHwWldQkBc4rCbQSYz/swWzw61+qPm8M6lCPpycPWhg
	O18fDQcqwcHZhMMwk1lHj3vMNhAakB3FQSL5O+nBFsYlwgPWhukvw9BEhaGiC0jezbWjxNmrX2n6v
	3F69MIgIM3Rg6NQJz/ogcvVtrQ7tcNtvUcx67/ym6hU6jtTinAbxjKnyVisgylVWmp6LwrvtNswof
	SHJCpW7EP0h40UxAuG2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFv9D-00054m-N7; Thu, 03 Oct 2019 07:03:35 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFv95-000542-D6
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:03:28 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 00:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="275615191"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.66])
 ([10.237.72.66])
 by orsmga001.jf.intel.com with ESMTP; 03 Oct 2019 00:03:22 -0700
Subject: Re: [PATCH v1 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 SDXC
To: "Ramuthevar,Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org
References: <20191003040032.37696-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20191003040032.37696-3-vadivel.muruganx.ramuthevar@linux.intel.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <329a38b4-4fba-eb6e-0d40-c241cfa28e25@intel.com>
Date: Thu, 3 Oct 2019 10:02:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191003040032.37696-3-vadivel.muruganx.ramuthevar@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_000327_483218_1C1BA05B 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, robh+dt@kernel.org,
 qi-ming.wu@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/10/19 7:00 AM, Ramuthevar,Vadivel MuruganX wrote:
> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> 
> The current arasan sdhci PHY configuration isn't compatible
> with the PHY on Intel's LGM(Lightning Mountain) SoC devices.
> 
> Therefore, add a new compatible, to adapt the Intel's LGM
> SDXC PHY with arasan-sdhc controller to configure the PHY.
> 
> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

Aren't these patches already in v5.4-rc1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
