Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0390FD6DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:21:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzB2VIpNy+vpnSegJ2PO/BsByos860NDv3gTK8ml4cA=; b=EIw5aqnAW7CrDQ
	+jTH2yxnc6nzC9N5es/0UnHNztcTy+wD0iv10rCV5iIG0Ri6jyeaEHA7kxe7Den3fjrXE5uoF5Ogl
	S1IJvIZWjUkLwcwHXiyvKc4qByqD7le8DnFhQX4I0ONPFewNr1f8osIqlVAwA+gg6KiaSFRZoHru5
	jjb4o37nXla95DlxL5XkQYyZCDVy+XoxSa0ACqDJ6UKTDuZmBpFpLddn4l0s8kGC5uuHuRvA9OW0e
	TeyaR0lAPiY1FQmh8vfLmut339a22LC9AfXhsRuam21HJFDbdOfdkDLxvnIHlVFymgpIt8BbbjVLo
	eRluGYT0a9mtNdtrlsKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVVvO-0000uD-F9; Fri, 15 Nov 2019 07:21:46 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVvG-0000tE-4R
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:21:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 23:21:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,307,1569308400"; d="scan'208";a="235980233"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.197])
 ([10.237.72.197])
 by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2019 23:21:31 -0800
Subject: Re: [PATCH v2 2/2] mmc: sdhci-of-aspeed: add inversion
 sighttps://elixir.bootlin.com/linux/v4.6/ident/sdhci_opsnal presence
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
References: <20191114125435.27756-1-i.mikhaylov@yadro.com>
 <20191114125435.27756-3-i.mikhaylov@yadro.com>
 <fcb5f8b5-40b9-6497-b24d-0b73e2525949@intel.com>
 <b443738f5e2a3c7ba96b329a8347374f7f934483.camel@yadro.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <d177ef37-643e-442d-d536-750e0bb5e86d@intel.com>
Date: Fri, 15 Nov 2019 09:20:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b443738f5e2a3c7ba96b329a8347374f7f934483.camel@yadro.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_232138_218468_33F7281D 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/11/19 7:19 PM, Ivan Mikhaylov wrote:
> On Thu, 2019-11-14 at 15:10 +0200, Adrian Hunter wrote:
>> On 14/11/19 2:54 PM, Ivan Mikhaylov wrote:
>>> Change the default .get_cd callback. Add inverted signal card detection
>>> check.
>>>
>>> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
>>>
>>> diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-
>>> aspeed.c
>>> index 8962f6664381..186559ee8fcc 100644
>>> --- a/drivers/mmc/host/sdhci-of-aspeed.c
>>> +++ b/drivers/mmc/host/sdhci-of-aspeed.c
>>> @@ -143,6 +143,19 @@ static inline int aspeed_sdhci_calculate_slot(struct
>>> aspeed_sdhci *dev,
>>>  	return (delta / 0x100) - 1;
>>>  }
>>>  
>>> +static int aspeed_get_cd(struct mmc_host *mmc)
>>> +{
>>> +	struct sdhci_host *host = mmc_priv(mmc);
>>> +
>>> +	int present = !!(sdhci_readl(host, SDHCI_PRESENT_STATE)
>>> +			 & SDHCI_CARD_PRESENT);
>>> +
>>> +	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
>>> +		present = !present;
>>
>> Perhaps safer to flip the bit using CONFIG_MMC_SDHCI_IO_ACCESSORS and
>> ->readl() callback
>>
> 
> Sorry, don't quite understand what you're saying. You want to instantiate
> '.read_l' callback instead of '.get_cd' in sdhci_ops and substitute the real
> value?
> 
> res = readl(base, reg);
> if (reg == SDHCI_PRESENT_STATE)
> 	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
> 		return !res;

Presumably just flip the SDHCI_CARD_PRESENT bit i.e.

		return res ^ SDHCI_CARD_PRESENT;

> return res;
> 
> Something like this?

Yes

> 
>>  
>>> +	host->mmc_host_ops.get_cd = aspeed_get_cd;
>>> +	if (of_property_read_bool(pdev->dev.of_node, "cd-inverted"))
>>> +		dev_info(&pdev->dev, "aspeed: sdhci: presence signal inversion
>>> enabled\n");
>>
>> Is this print really needed?
>>
> I can remove it if you think it's redundant.
> 
> Thanks.
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
