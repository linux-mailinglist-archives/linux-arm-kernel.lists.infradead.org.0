Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A08BB482F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 09:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B44pOSedp71oXcS3Z+LAPW4ZwkHAHFXDWwuRJA7OOlI=; b=rpC1g0RJagmdWUmAMP5oKjCki
	lCfKivfv/iGxQsPti/xW1CSEnVXo9gLEqfhCRAxsk/mHQO186GR8isvb3VMSnOPX8yip+WzRX9Fva
	e08wZDmfx3GIwNoJ9IK8Qb2aBnlD15L8mwLalSFslrzvfLF1lBq2dx67XnqNfRIFKCBrCpFdI2KEh
	E7j+tKD9IdIyYINsmiZyCsoeyLA6oA1lpUX/4cSVYFJvZtUb67UvwsN8d8nl1brVUurz7o7dbykKf
	8Ad/GMt50iOzsUYXq6iFpojNtvCypPr+St+JvLSj6Klc16TzyjohVZMVbF/w1crkSBYFpbQItCst+
	pUnFBCIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7oC-0004Xh-EX; Tue, 17 Sep 2019 07:21:56 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7nr-0004XL-SA
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 07:21:37 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8H7LUSd076245;
 Tue, 17 Sep 2019 02:21:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568704890;
 bh=RAkpzZsEDglibwdEPo3aXr82N6h6m4WxV5LdwMT3tDg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vSF/uH2HJmxWPAdhsiTMNCbwSA02mNRXIKlej8yUg+9MlQP3rjzZehkOjmBXCOMnc
 sfZYAiNtuK/svlYTf2jH+jtZhjzN4/IbNVRzPWAG9ko4Gvdu1x2R+eDKjlsK69tT7Q
 WtXpkhbGqcpQ6TDcRoSBWmtr1ArkzSNF3itNIQi4=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8H7LUAH093699
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 17 Sep 2019 02:21:30 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 17
 Sep 2019 02:21:27 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 17 Sep 2019 02:21:27 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8H7LQZi109183;
 Tue, 17 Sep 2019 02:21:26 -0500
Subject: Re: [PATCH 5/8] ARM: dts: Drop bogus ahclkr clocks for dra7 mcasp 3
 to 8
To: Tony Lindgren <tony@atomide.com>, Suman Anna <s-anna@ti.com>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-6-tony@atomide.com>
 <2c750847-700e-c835-ee53-a656b363c36c@ti.com>
 <20190724064758.GU5447@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <931eb0e1-8024-3003-1fb3-6f6ad8b74bf9@ti.com>
Date: Tue, 17 Sep 2019 10:21:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724064758.GU5447@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_002135_996977_7E2FAE3F 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/07/2019 09:47, Tony Lindgren wrote:
> * Suman Anna <s-anna@ti.com> [190723 21:02]:
>> Hi Tony,
>>
>> On 7/23/19 6:28 AM, Tony Lindgren wrote:
>>> The ahclkr clkctrl clock bit 28 only exists for mcasp 1 and 2 on dra7.
>>> Otherwise we get the following warning on beagle-x15:
> ...
>>> @@ -2962,9 +2958,8 @@
>>>   					<SYSC_IDLE_SMART>;
>>>   			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
>>>   			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 0>,
>>> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>,
>>> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 28>;
>>> -			clock-names = "fck", "ahclkx", "ahclkr";
>>> +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>;
>>> +			clock-names = "fck", "ahclkx";
>>
>> The equivalent change to MCASP8 is missing.
> 
> Thanks for spotting it, probably should be set up the same way as
> MCASP4 too looking at the TRM.
> 
> Tero, care to check the dra7 mcasp clocks we have defined?

Sorry, missed this earlier.

> 
> $ grep MCASP drivers/clk/ti/clk-7xx.c
>          { DRA7_IPU_MCASP1_CLKCTRL, dra7_mcasp1_bit_data, CLKF_SW_SUP, "ipu-clkctrl:0000:22" },
>          { DRA7_L4PER2_MCASP2_CLKCTRL, dra7_mcasp2_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:0154:22" },
>          { DRA7_L4PER2_MCASP3_CLKCTRL, dra7_mcasp3_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:015c:22" },
>          { DRA7_L4PER2_MCASP5_CLKCTRL, dra7_mcasp5_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:016c:22" },
>          { DRA7_L4PER2_MCASP8_CLKCTRL, dra7_mcasp8_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:0184:24" },
>          { DRA7_L4PER2_MCASP4_CLKCTRL, dra7_mcasp4_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:018c:22" },
>          { DRA7_L4PER2_MCASP6_CLKCTRL, dra7_mcasp6_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:01f8:22" },
>          { DRA7_L4PER2_MCASP7_CLKCTRL, dra7_mcasp7_bit_data, CLKF_SW_SUP, "l4per2-clkctrl:01fc:22" },
> 
> Is bit 24 above correct for MCASP8 or should it too be 22 like
> adjacent MCASP4 in the TRM?

So yeah, mcasp8 is wrong here, should be 22 as rest of them. I did fix 
mcasp8 clocks partially when doing the conversion but missed the 
parenting here; it was completely broken before.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
