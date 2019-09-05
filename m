Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29FEA9AD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfHh243/Fbj4m8aqeWA3GoDBX6JHsGU4FD0U79dQLyo=; b=aWpNWEdBMn361P
	VkCu1M1g68pgh3zAZNoANqoOwenE38IAgklWdjxYaz7abA3hL/c218nSd/LWrPUIpFgylWgN+nAcF
	YlWJoIHW0noEJ0EvAN8atmk2uRtqvEQ+qceJrdfhtSvcxHz9zD6ro0L6trLIgVch2L9wdkq8q4Y24
	3mYd7PrI18czuzfy7Uei4uXX0yyanfJPBHAKM0Z8YBuVDYfm4HDuQr4m2xtkPnzzsDDeyIgtrlbAG
	9fpKJEcXstAu+5MLPH9RNfXgljU3pXbYXsR5n558IukIP5TkmeeRBiyRfV+v9OsUFEwse3rP2k+RN
	aUI7vwz2DR6P/uqFqx2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lWM-0003zy-KD; Thu, 05 Sep 2019 06:45:30 +0000
Received: from 6.mo177.mail-out.ovh.net ([46.105.51.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lWA-0003zM-43
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:45:19 +0000
Received: from player738.ha.ovh.net (unknown [10.109.160.244])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id 8A2F4107958
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  5 Sep 2019 08:45:13 +0200 (CEST)
Received: from kaod.org (lfbn-1-2240-157.w90-76.abo.wanadoo.fr [90.76.60.157])
 (Authenticated sender: clg@kaod.org)
 by player738.ha.ovh.net (Postfix) with ESMTPSA id AF0039946597;
 Thu,  5 Sep 2019 06:45:07 +0000 (UTC)
Subject: Re: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
To: Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>
References: <20190905000221.31445-1-joel@jms.id.au>
 <d9805fa2-db79-457b-a166-7c84e1608128@www.fastmail.com>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <6348d0f1-6e2e-cae6-7f76-996825de0527@kaod.org>
Date: Thu, 5 Sep 2019 08:45:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d9805fa2-db79-457b-a166-7c84e1608128@www.fastmail.com>
Content-Language: en-US
X-Ovh-Tracer-Id: 12608108633323375469
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejiedguddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_234518_318077_E44B82EE 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.51.249 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/09/2019 02:33, Andrew Jeffery wrote:
> 
> 
> On Thu, 5 Sep 2019, at 09:32, Joel Stanley wrote:
>> The FMC supports five chip selects, so describe the five possible flash
>> chips.
>>
>> Signed-off-by: Joel Stanley <joel@jms.id.au>
>> ---
>>  arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
>> index e465cda40fe7..dffb595d30e4 100644
>> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
>> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
>> @@ -67,6 +67,26 @@
>>  				compatible = "jedec,spi-nor";
>>  				status = "disabled";
>>  			};
>> +			flash@1 {
>> +				reg = < 1 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
>> +			flash@2 {
>> +				reg = < 2 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
>> +			flash@3 {
>> +				reg = < 3 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
>> +			flash@4 {
>> +				reg = < 4 >;
>> +				compatible = "jedec,spi-nor";
>> +				status = "disabled";
>> +			};
> 
> The FMC supports parallel NOR and NAND interfaces too, but so far no-one has
> cared for these options, so if they ever do we'll fix it then.

New Aspeed SoCs only have SPI support. So I don't think the other interfaces
were ever used.

C. 
 
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
