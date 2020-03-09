Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DED17DF26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 12:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdyWzEfqcPJApVbOH/TkyiL1/gvj6KSiecMqPxTajVw=; b=uAIiOaW2FR5zZt
	0AJQ9cfhzupMPb9jts2AHeDFhiom8tsW1UpETg1Xr7V30B/wJsI5yJxsSlnEQYBq8yvEv/qFDYDoZ
	Mtrq07SrCWaHB53KTO0iVMmYXghpWomBludIVzbrEUht7AWcVLI+nZa1NRctk1hXACAjJxqTIPXhN
	PHOWT5eNcXVu6pX2ZCbmusfriH8ynpmMXx53w5junSUDHc3u2JyQ0aJxz6xGahT4QkXS5CVjb0kqh
	bI5gTZKwa6HcY1tupiYxXHSQj3q/34a9lgYZ83r+ytf6T9IgbXiGNxJKODGvdFJCodEFtMZT3fime
	ke24kpr5P7B8CmT+f0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBH2I-0000g8-CE; Mon, 09 Mar 2020 11:57:30 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBH15-00087r-HF; Mon, 09 Mar 2020 11:56:17 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 04:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; d="scan'208";a="235664047"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2020 04:56:11 -0700
Subject: Re: [PATCH v2 06/11] mmc: sdhci: xenon: Use
 sdhci_set_power_and_voltage()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Hu Ziji <huziji@marvell.com>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-7-nsaenzjulienne@suse.de>
 <4e74203a-5444-2b7a-3555-9615cc45aaae@intel.com>
 <06fc4d492f66bfbe7260937efa849f77c7c12b0d.camel@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <eb9cc6e8-0f15-a609-9f99-c8677eb3354f@intel.com>
Date: Mon, 9 Mar 2020 13:55:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <06fc4d492f66bfbe7260937efa849f77c7c12b0d.camel@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_045615_613680_2F47F153 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: stefan.wahren@i2se.com, Ulf Hansson <ulf.hansson@linaro.org>,
 f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/03/20 12:53 pm, Nicolas Saenz Julienne wrote:
> On Mon, 2020-03-09 at 09:20 +0200, Adrian Hunter wrote:
>>> -static void xenon_set_power(struct sdhci_host *host, unsigned char mode,
>>> -		unsigned short vdd)
>>> -{
>>> -	struct mmc_host *mmc = host->mmc;
>>> -	u8 pwr = host->pwr;
>>> -
>>> -	sdhci_set_power_noreg(host, mode, vdd);
>>> -
>>> -	if (host->pwr == pwr)
>>> -		return;
>>> -
>>> -	if (host->pwr == 0)
>>> -		vdd = 0;
>>> -
>>> -	if (!IS_ERR(mmc->supply.vmmc))
>>> -		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
>>> -}
>>
>> This code is different.  The commit message should explain why it is
>> equivalent.  Has it been tested?
> 
> Yes, I should've pointed it out. The rationale behind including sdhci-xenon and
> sdhci-pxav3 is based on xenon's original commit message (99c14fc360dbb):
> 
> 	mmc: sdhci-xenon: add set_power callback
> 
> 	Xenon sdh controller requests proper SD bus voltage select
> 	bits programmed even with vmmc power supply. Any reserved
> 	value(100b-000b) programmed in this field will lead to controller
> 	ignore SD bus power bit and keep its value at zero.
> 	Add set_power callback to handle this.
> 
> I can't test it, but it felt to me as the implementation differences are only
> there as different people wrote the code. Ultimately, I'll be happy to drop
> them from the series if you feel it's too much of an assumption, I can see how
> the controllers could react badly to the ordering change. If not I can send a
> v3 with fixed commit messages.

We can wait a bit and see if anyone provides a Tested-by tag, otherwise
safer to drop it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
