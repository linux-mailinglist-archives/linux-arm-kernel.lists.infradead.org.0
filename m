Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C96D75EAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P65j9obBc8DDj7nbikUIZYZLZog38d3yHs5x9ywKMk0=; b=klcINpD3Bja7UD
	3f9NZdbKyav9gRBH30NxihX9L03E0G50pDE3GwtJdEmHdOJm18FPiSrtkgT8I3GHkhQBGLN+FJabZ
	rqw/McLsFsXPJjauRH7Exs7O5qvpwmR+zJUom8MAzGdj7bwsA9UGtSqFc1esu60Okqx7XRfvHX6Dc
	b65rrVJ9b5teMGDXvzg0bZTBSq/ZeGhaEXmyfK+xqN00SO8Zv7VHkPyIIYpHo/Bdzo4DuFJoPiCwO
	y7ol3tOg1EryUHN/SYTeAQFtrJEpP8VOQFYF+wpzQJtHUpIBVe4oHSsUXE1prfDKS6egYygaNL3T0
	X039COV+5RNnJ52jt96g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqtEj-0004es-9U; Fri, 26 Jul 2019 05:57:49 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqtEQ-0004da-TI
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:57:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 22:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,309,1559545200"; d="scan'208";a="254223291"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by orsmga001.jf.intel.com with ESMTP; 25 Jul 2019 22:57:26 -0700
Subject: Re: [PATCH v2 2/2] mmc: Add support for the ASPEED SD controller
To: Andrew Jeffery <andrew@aj.id.au>, linux-mmc <linux-mmc@vger.kernel.org>
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-3-andrew@aj.id.au>
 <d6f7fdf2-07ed-354a-ca29-f3175623679c@intel.com>
 <7cd30f3d-43fd-42da-9301-091eb2625c65@www.fastmail.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <8a7bfe52-83ca-7601-7d75-e5615da7b5de@intel.com>
Date: Fri, 26 Jul 2019 08:56:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7cd30f3d-43fd-42da-9301-091eb2625c65@www.fastmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_225730_956201_CD40473B 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/07/19 3:52 AM, Andrew Jeffery wrote:
> On Thu, 25 Jul 2019, at 22:49, Adrian Hunter wrote:
>> On 12/07/19 6:32 AM, Andrew Jeffery wrote:
>>> +static int aspeed_sdhci_probe(struct platform_device *pdev)
>>> +{
>>> +	struct sdhci_pltfm_host *pltfm_host;
>>> +	struct aspeed_sdhci *dev;
>>> +	struct sdhci_host *host;
>>> +	struct resource *res;
>>> +	int slot;
>>> +	int ret;
>>> +
>>> +	host = sdhci_pltfm_init(pdev, &aspeed_sdc_pdata, sizeof(*dev));
>>> +	if (IS_ERR(host))
>>> +		return PTR_ERR(host);
>>> +
>>> +	pltfm_host = sdhci_priv(host);
>>> +	dev = sdhci_pltfm_priv(pltfm_host);
>>> +	dev->parent = dev_get_drvdata(pdev->dev.parent);
>>> +
>>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>>> +	slot = aspeed_sdhci_calculate_slot(dev, res);
>>> +	if (slot < 0)
>>> +		return slot;
>>> +	dev_info(&pdev->dev, "Configuring for slot %d\n", slot);
>>> +	dev->width_mask = !slot ? ASPEED_SDC_S0MMC8 : ASPEED_SDC_S1MMC8;
>>
>> That implies that you only support 2 slots which begs the question why
>> you don't validate slot.
> 
> I'm not sure what you mean here, but I'll dig into it.

I just meant, if you only support 2 slots:

	if (slot > 1)
		return -EINVAL;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
