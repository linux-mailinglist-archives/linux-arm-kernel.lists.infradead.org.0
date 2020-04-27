Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0F81BA0FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 12:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ib8vqg4XiXomLdYjwBSr6IUbDOLts8DNU9mC2BV/ZDQ=; b=MSwFFgOppo5k79tSIVwDhFA78
	41P+vxZDZxXmjsnMnB5A+3MSp36V+pweEZ8TOS07eDbIyp/p1P/7ONIPKhoxZ3HQWOWK6d/J1rmBl
	uMGerbAfHaQHoBwFEC398BZcQCN6zv3oRf7U+qyzR72gZ5iURyvYZBM/vTWkEtnYjIuXXGuWr7Rhp
	moYPxoj1mt0Dk8yr0ZSBAD2dJN3m99v0O82tQKb3a4wlbqA+AusHEsIN76/WoIVP1i4uifNC0uCpg
	CfdSVEb5ffn0UyiVxO3EcK3+yFLs9DcTWWtWwGOrMme+Ch0SaH29fJTL7Z1P2F84CVEwqu9lEowIy
	rxWdUxdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0tI-0004w8-4j; Mon, 27 Apr 2020 10:21:32 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0t9-0004vJ-RZ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 10:21:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RALD0G051252;
 Mon, 27 Apr 2020 05:21:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587982873;
 bh=t1hJLC5kDuKcKibDcEkvU70NnV8yMMsoqioAltNhm5E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jXCx2mGcdqOH+pCxeX2NQcKVCe/0SfWqYzUECFMWb0sQ89mD7KuLjVgd3mxMeN3A7
 +J+6jQm4dfnG9d7smvfAK2Ct8EgtFsza5+VxOIjhgBIb0e+MAY/61JOaD5Pk1UBIaj
 kYypjGqMbypc0Oysqbwq/1rk9qilzeAEydH+naHs=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RALDoY044674
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 05:21:13 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 05:21:13 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 05:21:13 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RALAt8032790;
 Mon, 27 Apr 2020 05:21:10 -0500
Subject: Re: [PATCH v6 0/4] thermal: k3: Add support for bandgap sensors
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "J, KEERTHY"
 <j-keerthy@ti.com>, <rui.zhang@intel.com>, <robh+dt@kernel.org>
References: <20200407055116.16082-1-j-keerthy@ti.com>
 <3c69e3c6-5549-e891-fde6-95a2ecc49f77@linaro.org>
 <0817f9ee-c72f-3e9f-00cf-e8ddaf608020@ti.com>
 <e7dd6470-5992-8d22-5d0c-7532a47a400c@ti.com>
 <3221f241-7118-a586-1789-d427791215c6@linaro.org>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <1ee5ec60-97e9-930e-4bc2-4c10d1a82165@ti.com>
Date: Mon, 27 Apr 2020 13:21:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3221f241-7118-a586-1789-d427791215c6@linaro.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_032123_974363_FDE0D11F 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/04/2020 17:47, Daniel Lezcano wrote:
> On 09/04/2020 16:37, Tero Kristo wrote:
>> On 09/04/2020 17:07, J, KEERTHY wrote:
>>>
>>>
>>> On 4/9/2020 7:19 PM, Daniel Lezcano wrote:
>>>>
>>>> Hi Keerthy,
>>>>
>>>> On 07/04/2020 07:51, Keerthy wrote:
>>>>> Add VTM thermal support. In the Voltage Thermal
>>>>> Management Module(VTM), K3 AM654 supplies a voltage
>>>>> reference and a temperature sensor feature that are gathered in the
>>>>> band
>>>>> gap voltage and temperature sensor (VBGAPTS) module. The band
>>>>> gap provides current and voltage reference for its internal
>>>>> circuits and other analog IP blocks. The analog-to-digital
>>>>> converter (ADC) produces an output value that is proportional
>>>>> to the silicon temperature.
>>>>>
>>>>> Add support for bandgap sensors. Currently reading temperatures
>>>>> is supported.
>>>>
>>>> How do you want to proceed? Shall I take patches 1 & 2 ?
>>>
>>> +Tero
>>>
>>> Hi Tero,
>>>
>>> Can you pull 3 & 4? Or Daniel can take all 4?
>>
>> Let me pull the DT patches, that way we avoid any conflicts in the
>> arm64/dts tree. There has been quite a bit of traffic on that front
>> lately and we did mess up something with the current merge window already.
>>
>> I believe you are picking the driver side changes to 5.8?
> 
> Applied patches 1 & 2

Queued patches 3 & 4 towards 5.8, thanks.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
