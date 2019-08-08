Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAF386272
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UDPE+IWjrHu2M7o0xDWwW4Fa/1TES3w6DTW5mH/U/6s=; b=oRhxFyGrNH3VEZKunPtLKc1W9U
	vTwtrdGEf9BNlfGI6e1oRuX86MF8xufj4K7Oh2IfJYlB+4qern5R9kN6NTPoeWet+i8vrlIvaoc6O
	pUXzJD4rOPHap+F7XRdbDYeYr3lvWPV2wE+i9gSuESgyDsAD/aEOgM8b4pMLxY1Cs08MrRltRrbpl
	MORpNE6lnPg8s+U9pOM8NrBN8/9u/ObH1GzoKgNyynpJaUJP6+hKVO9jBEg0JcavF2fd+WHEhFO3H
	5GgDmPmFsWQnFFFuV2RGIcVk9r0QYFmEJG5D7DTZ6E7tuzjoHaSCjcncDnaE2wNQEnN348VGQKILu
	kyCvddPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvi0I-00069M-9H; Thu, 08 Aug 2019 12:58:50 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvi07-00068s-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:58:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 05:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="182585442"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Aug 2019 05:58:36 -0700
Subject: Re: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
 <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
Date: Thu, 8 Aug 2019 15:57:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_055839_899513_8844365E 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/08/19 3:42 PM, Ludovic Desroches wrote:
> On Thu, Aug 08, 2019 at 10:35:43AM +0200, Eugen Hristev - M18282 wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Add mmc capabilities for SDMMC0 for this board.
>> With this enabled, eMMC connected card is detected as:
>>
>> mmc0: new DDR MMC card at address 0001
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> 
> I am interested to have the some insights about the use of sd-uhs-*
> properties.
> 
> Our IP can't deal with 1V8 by itself. It has a 1V8SEL signal which can
> be used as the logic control input of a mux. So even if the IP claims
> to support UHS modes, it depends on the board.
> 
> Are the sd-uhs-* properties a way to deal with this? I tend to think no
> as sdhci_setup_host() will set the caps depending on the content of the
> capabilities register. Do we have to use the SDHCI_QUIRK_MISSING_CAPS
> quirk or sdhci-caps/sdhci-caps-mask?

There is "no-1-8-v" which it looks like sdhci-of-at91.c already supports:

  sdhci_at91_probe() -> sdhci_get_of_property() -> sdhci_get_property()

    	if (device_property_present(dev, "no-1-8-v"))
		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;


> 
> Regards
> 
> Ludovic
> 
>> ---
>>  arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
>> index 149e539..194b3a3 100644
>> --- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
>> +++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
>> @@ -54,6 +54,7 @@
>>  
>>  		sdmmc0: sdio-host@a0000000 {
>>  			bus-width = <8>;
>> +			mmc-ddr-3_3v;
>>  			pinctrl-names = "default";
>>  			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>>  			status = "okay";
>> -- 
>> 2.7.4
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
