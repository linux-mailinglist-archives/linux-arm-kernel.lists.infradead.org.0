Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBA59F7DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 03:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VO0qbO2lpn4yBHwyvu9wOiKUDagr7kMSSpHRP2CE81g=; b=cWO6ZCxfve/oBrjT74L4UEtz8
	x8X/cfz1d4fxNzgGxR2uGudbuHNU0wYaM0v03Cg1qgGqaCCEguIUglBu63M8//IbS79VNmz49VVx1
	wincyhkXmzY6iZkwLjgpeRIXtaxLMCNSJe0e1fz7JAp7pWvUUiIOtYDxWrtsU1+kvFTwEcZCo/RQ5
	4W0nru41nY/w8kNRVLvcq2XoLL7XhtA7ETaxcn7GEhQYAzj/N0vjsiwXnOwSOLbpAs0q+fvuj1fzk
	S6pFKLYeUkNb7PHKMBMsZ+xUpB7qsHz8NPaCdyekDpF7bB699r4c4mFg2Tn89W4jZMGruPkG+cs2J
	YWBbewOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2mr6-00085t-R3; Wed, 28 Aug 2019 01:34:37 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2mqr-00085R-F5
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 01:34:22 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 18:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="209956217"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 18:34:19 -0700
Received: from [10.226.38.21] (vramuthx-mobl1.gar.corp.intel.com
 [10.226.38.21])
 by linux.intel.com (Postfix) with ESMTP id 90C1E580375;
 Tue, 27 Aug 2019 18:34:16 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] mmc: sdhci-of-arasan: Add Support for Intel LGM
 eMMC
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20190826072800.38413-2-vadivel.muruganx.ramuthevar@linux.intel.com>
 <CAPDyKFrPoPqnh3_23P=wGO+QrUE9ogJzC6xgzy+0QeyuyeO=HQ@mail.gmail.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <373e55ab-c76b-7657-bd47-1a5efc75a062@linux.intel.com>
Date: Wed, 28 Aug 2019 09:34:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFrPoPqnh3_23P=wGO+QrUE9ogJzC6xgzy+0QeyuyeO=HQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_183421_519229_A266C598 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 qi-ming.wu@intel.com, andriy.shevchenko@intel.com, cheol.yong.kim@intel.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On 27/8/2019 9:49 PM, Ulf Hansson wrote:
> On Mon, 26 Aug 2019 at 09:28, Ramuthevar,Vadivel MuruganX
> <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
>> From: Ramuthevar Vadivel Muruganx <vadivel.muruganx.ramuthevar@linux.intel.com>
>>
>> The current arasan sdhci PHY configuration isn't compatible
>> with the PHY on Intel's LGM(Lightning Mountain) SoC devices.
>>
>> Therefore, add a new compatible, to adapt the Intel's LGM
>> eMMC PHY with arasan-sdhc controller to configure the PHY.
>>
>> Signed-off-by: Ramuthevar Vadivel Muruganx <vadivel.muruganx.ramuthevar@linux.intel.com>
>
> Applied for next, thanks!
>
> Kind regards
> Uffe
>
Thank you so much for review and applied for next.

Best Regards
Vadivel
>> ---
>>   drivers/mmc/host/sdhci-of-arasan.c | 15 +++++++++++++++
>>   1 file changed, 15 insertions(+)
>>
>> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
>> index b12abf9b15f2..7023cbec4017 100644
>> --- a/drivers/mmc/host/sdhci-of-arasan.c
>> +++ b/drivers/mmc/host/sdhci-of-arasan.c
>> @@ -114,6 +114,12 @@ static const struct sdhci_arasan_soc_ctl_map rk3399_soc_ctl_map = {
>>          .hiword_update = true,
>>   };
>>
>> +static const struct sdhci_arasan_soc_ctl_map intel_lgm_emmc_soc_ctl_map = {
>> +       .baseclkfreq = { .reg = 0xa0, .width = 8, .shift = 2 },
>> +       .clockmultiplier = { .reg = 0, .width = -1, .shift = -1 },
>> +       .hiword_update = false,
>> +};
>> +
>>   /**
>>    * sdhci_arasan_syscon_write - Write to a field in soc_ctl registers
>>    *
>> @@ -373,6 +379,11 @@ static struct sdhci_arasan_of_data sdhci_arasan_rk3399_data = {
>>          .pdata = &sdhci_arasan_cqe_pdata,
>>   };
>>
>> +static struct sdhci_arasan_of_data intel_lgm_emmc_data = {
>> +       .soc_ctl_map = &intel_lgm_emmc_soc_ctl_map,
>> +       .pdata = &sdhci_arasan_cqe_pdata,
>> +};
>> +
>>   #ifdef CONFIG_PM_SLEEP
>>   /**
>>    * sdhci_arasan_suspend - Suspend method for the driver
>> @@ -474,6 +485,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>>                  .compatible = "rockchip,rk3399-sdhci-5.1",
>>                  .data = &sdhci_arasan_rk3399_data,
>>          },
>> +       {
>> +               .compatible = "intel,lgm-sdhci-5.1-emmc",
>> +               .data = &intel_lgm_emmc_data,
>> +       },
>>          /* Generic compatible below here */
>>          {
>>                  .compatible = "arasan,sdhci-8.9a",
>> --
>> 2.11.0
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
