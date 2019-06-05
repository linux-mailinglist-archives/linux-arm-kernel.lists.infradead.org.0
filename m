Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3FE356FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QOr6VEM8Jbj78sx5ijKpwxvUJz0hGtkWkoFkON88zQA=; b=E7DpcUPL5SwH6Y8Ldani+JyEL
	QzcPwDCItQhhYO6fVh9wghwxfewxprJsjGVYrRs+ut7E+WkMHee1Qdv2yMYS8wz/ozZ2kZFCJvvVc
	1ayfJk1R8Ru18KbcPQnniyN/L8aMFqyk5Q7m/C3VbogG0/AY0d99IirDI7W7/X9r0xUFX1lD6/sWA
	CK04SYjkUx8YZM4vQAupVKzW9hHuoq++sgYiebiUZ++oo0f+g8Y+XFnOoWVGCj72MhUOoFrFRzyHZ
	bok4znfZiSZVcUYjANQ292vsxWcjzdvC04K4FIInN3kgw969tZat1X9ku86ZJKhb15bW6nwX1hx2M
	C3Hoh5+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPRx-0004fs-8z; Wed, 05 Jun 2019 06:31:05 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPRq-0004fF-05
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:30:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x556Uuiw065580;
 Wed, 5 Jun 2019 01:30:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559716256;
 bh=xufq4zsgyRLrZo2MfHTNUdK52WNJg8XUlkPMm4NwCMU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bJNL66q1skwWEDasM7A23VSi9/FGgddAKlsLfy+RLQbx52465XFfLWiAlv45qsdMN
 WH5Uo7Mky2HUuxGYMe1KVkiej4K0vTRmJqwlGohxQ4tCatCXt47XMtq04cuQKDVOLu
 6+L80wogACHV2GEBOyLWdVta9v5SCYgB46WemDRU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x556Uu09089926
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 01:30:56 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 01:30:55 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 01:30:55 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x556UqLj110256;
 Wed, 5 Jun 2019 01:30:53 -0500
Subject: Re: [RFC PATCH 1/3] arm64: dts: ti: am6-wakeup: Add gpio node
To: Lokesh Vutla <lokeshvutla@ti.com>, <t-kristo@ti.com>, <nm@ti.com>,
 <robh+dt@kernel.org>
References: <20190605060846.25314-1-j-keerthy@ti.com>
 <20190605060846.25314-2-j-keerthy@ti.com>
 <e6ec3894-4e3d-e721-c1bc-791263b2d309@ti.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <bac5737a-3924-b59f-1d90-a2a9b3a390f1@ti.com>
Date: Wed, 5 Jun 2019 12:01:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e6ec3894-4e3d-e721-c1bc-791263b2d309@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_233058_122799_BEECC4F9 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/06/19 11:46 AM, Lokesh Vutla wrote:
> 
> 
> On 05/06/19 11:38 AM, Keerthy wrote:
>> Add gpio0 node under wakeup domain. This has 56 gpios
>> and all are capable of generating banked interrupts.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 15 +++++++++++++++
>>   1 file changed, 15 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
>> index f1ca171abdf8..8c6c99e7c6ed 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
>> @@ -74,4 +74,19 @@
>>   		ti,sci-dst-id = <56>;
>>   		ti,sci-rm-range-girq = <0x4>;
>>   	};
>> +
>> +	wkup_gpio0: wkup_gpio0@42110000 {
>> +		compatible = "ti,k2g-gpio", "ti,keystone-gpio";
> 
> This is not k2g. Can you either create a am6 specific compatible or just use
> ti,keystone-gpio.

It seems practice is now to have separate compatible. I will add am6 
specific compatible.

> 
> Thanks and regards,
> Lokesh
> 
>> +		reg = <0x42110000 0x100>;
>> +		gpio-controller;
>> +		#gpio-cells = <2>;
>> +		interrupt-parent = <&intr_wkup_gpio>;
>> +		interrupts = <59 128>, <59 129>, <59 130>, <59 131>;
>> +		interrupt-controller;
>> +		#interrupt-cells = <2>;
>> +		ti,ngpio = <56>;
>> +		ti,davinci-gpio-unbanked = <0>;
>> +		clocks = <&k3_clks 59 0>;
>> +		clock-names = "gpio";
>> +	};
>>   };
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
