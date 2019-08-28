Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E609F7D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 03:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fzjz1Iwgp/jZXTVSeQMgAGTOjEqlJ44f63KknAxIVBg=; b=sV8UUHrRVf6RWmmp/BcL9ayGv
	zr93q/cwRwZBxOdhiPzzm1gd4EcxtEaW+QUX6vNG3rzbjI2MoauoLlktk/kr+x76+8XIYC+9SZb7Y
	4DahW8FX1UQoQC/LWw6kvsx5qCpwoXQ0IF/v0OXI3r/JnugKWL3VMjXqP3mjFYZEBZV58DqKCOqAX
	wpI0LmL4MpbN97YWfF7GzFw4Il95lFai4xXLY7qBaiEQ6/ZTgbiyHlvivbMs0t2k3F5rIOclFvta1
	lkqBtA7+EGs8qvTGnBxxSqk+tyRk+qw5cOx3ad23V647TEo/bOK2GLTSojZuF7CmC3knmk0bP+Gu9
	pqvFyTkbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2mqA-0007rM-1w; Wed, 28 Aug 2019 01:33:38 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2mps-0007qN-BX
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 01:33:21 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 18:33:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="355955307"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2019 18:33:18 -0700
Received: from [10.226.38.21] (vramuthx-mobl1.gar.corp.intel.com
 [10.226.38.21])
 by linux.intel.com (Postfix) with ESMTP id 484585800BD;
 Tue, 27 Aug 2019 18:33:15 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] dt-bindings: mmc: sdhci-of-arasan: Add new
 compatible for Intel LGM eMMC
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20190826072800.38413-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <CAPDyKFpsvZ+LEwY91LiSExgm=4g=BhWNpkkJMniBNff+qch-QA@mail.gmail.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <32e50682-9f5a-e0d2-f2d4-a72d0bb35f17@linux.intel.com>
Date: Wed, 28 Aug 2019 09:33:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFpsvZ+LEwY91LiSExgm=4g=BhWNpkkJMniBNff+qch-QA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_183320_437148_022C6B0C 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
>> From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
>>
>> Add a new compatible to use the sdhc-arasan host controller driver
>> with the eMMC PHY on Intel's Lightning Mountain SoC.
>>
>> Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> Applied for next, thanks!
>
> Kind regards
> Uffe

Thank you so much for review and applied for next.

Best Regards
Vadivel
>
>> ---
>>   Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
>> index 1edbb049cccb..7ca0aa7ccc0b 100644
>> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
>> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
>> @@ -17,6 +17,8 @@ Required Properties:
>>         For this device it is strongly suggested to include arasan,soc-ctl-syscon.
>>       - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
>>          Note: This binding has been deprecated and moved to [5].
>> +    - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
>> +      For this device it is strongly suggested to include arasan,soc-ctl-syscon.
>>
>>     [5] Documentation/devicetree/bindings/mmc/sdhci-am654.txt
>>
>> @@ -80,3 +82,18 @@ Example:
>>                  phy-names = "phy_arasan";
>>                  #clock-cells = <0>;
>>          };
>> +
>> +       emmc: sdhci@ec700000 {
>> +               compatible = "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1";
>> +               reg = <0xec700000 0x300>;
>> +               interrupt-parent = <&ioapic1>;
>> +               interrupts = <44 1>;
>> +               clocks = <&cgu0 LGM_CLK_EMMC5>, <&cgu0 LGM_CLK_NGI>,
>> +                        <&cgu0 LGM_GCLK_EMMC>;
>> +               clock-names = "clk_xin", "clk_ahb", "gate";
>> +               clock-output-names = "emmc_cardclock";
>> +               #clock-cells = <0>;
>> +               phys = <&emmc_phy>;
>> +               phy-names = "phy_arasan";
>> +               arasan,soc-ctl-syscon = <&sysconf>;
>> +       };
>> --
>> 2.11.0
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
