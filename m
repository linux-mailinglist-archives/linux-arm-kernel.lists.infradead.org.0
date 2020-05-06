Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B381C79F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qaw6u7KxnP7eGDUxXC3evec9ylWApr/4H77d3yQKFFY=; b=YupLJa10AhRYpl9aOlHU4wpNp
	RJfjV7kjGJcoB0X9z+bG4VhZJnFV6D8p+8cy1n1FFo3KbZorgDfcSwBE7tm5UnHJaa4vnk9bsNqpH
	3cOVPsAtklnXRoiTm0GHgOg+xSN381gdintMfWFmqFq+AslwjVNSxrwmwzSy/Aa2AI0vAXsqTV8ug
	CfxpBwYvP9X0l/m/QeZ8EEQZ99RD0TJQjRYgOU0rkNapy5v33xSs1qoN9ILBlvjwEjbPrfq9Qo45U
	kuOlmwgwUaS9ItGiTg/C9QNQKqlcO/nWAJXreyBPR2WPdpk7c/OrIwSgr2ZBNnOLFxhaw2C+J3pEc
	7E6v2dqUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWPRK-0001z3-Fw; Wed, 06 May 2020 19:10:42 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWPRB-0001yb-5j
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:10:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046JATR1025746;
 Wed, 6 May 2020 14:10:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588792229;
 bh=y91BBsQ57bVF9REySvrUgz895w+ukgRT8Z+er1kUntc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=c5USd9SijAl0GB88Xk18IuhI9Z+ZmZFrqv2RsPq+Psc4dNDeXEXiR5RJYFdflZAVL
 e+yWnTkj0Rqjjk3Ic2O/f0/yVJVprZAguuDDVkEpIit9QSKUCp1vJddtnU5xbWZsdF
 uj2xHCnRvHBdbmOXudFt9tR+Wui8Oc/S5xRLWPE8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046JATcE086681
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 14:10:29 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 14:10:29 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 14:10:29 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046JAOLR036216;
 Wed, 6 May 2020 14:10:25 -0500
Subject: Re: [PATCH net-next 1/7] dt-binding: ti: am65x: document common
 platform time sync cpts module
To: Rob Herring <robh@kernel.org>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-2-grygorii.strashko@ti.com>
 <20200505040419.GA8509@bogus> <b8bb1076-e345-5146-62d3-e1da1d35da4f@ti.com>
 <CAL_Jsq+P_OEFDBbAsvyCCOKZnQuAUYYnyDDwm7aNudN3pRK78g@mail.gmail.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <c401b0fe-c946-af11-9b1d-fcc28cc8ee19@ti.com>
Date: Wed, 6 May 2020 22:10:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+P_OEFDBbAsvyCCOKZnQuAUYYnyDDwm7aNudN3pRK78g@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_121033_301549_394CBC2D 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/05/2020 22:07, Rob Herring wrote:
> On Tue, May 5, 2020 at 10:01 AM Grygorii Strashko
> <grygorii.strashko@ti.com> wrote:
>>
>>
>>
>> On 05/05/2020 07:04, Rob Herring wrote:
>>> On Fri, May 01, 2020 at 11:50:05PM +0300, Grygorii Strashko wrote:
>>>> Document device tree bindings for TI AM654/J721E SoC The Common Platform
>>>> Time Sync (CPTS) module. The CPTS module is used to facilitate host control
>>>> of time sync operations. Main features of CPTS module are:
>>>>     - selection of multiple external clock sources
>>>>     - 64-bit timestamp mode in ns with ppm and nudge adjustment.
>>>>     - control of time sync events via interrupt or polling
>>>>     - hardware timestamp of ext. events (HWx_TS_PUSH)
>>>>     - periodic generator function outputs (TS_GENFx)
>>>>     - PPS in combination with timesync router
>>>>     - Depending on integration it enables compliance with the IEEE 1588-2008
>>>> standard for a precision clock synchronization protocol, Ethernet Enhanced
>>>> Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
>>>> Measurement (PTM).
>>>>
>>>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>>> ---
>>>>    .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |   7 +
>>>>    .../bindings/net/ti,k3-am654-cpts.yaml        | 152 ++++++++++++++++++
>>>>    2 files changed, 159 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>>>> index 78bf511e2892..0f3fde45e200 100644
>>>> --- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>>>> +++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
>>>> @@ -144,6 +144,13 @@ patternProperties:
>>>>        description:
>>>>          CPSW MDIO bus.
>>>>
>>>> +  "^cpts$":
>>
>> ok
>>
>>>
>>> Fixed strings go under 'properties'.
>>>
>>>> +    type: object
>>>> +    allOf:
>>>> +      - $ref: "ti,am654-cpts.yaml#"
>>>> +    description:
>>>> +      CPSW Common Platform Time Sync (CPTS) module.
>>>> +
>>>>    required:
>>>>      - compatible
>>>>      - reg
>>>> diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>>>> new file mode 100644
>>>> index 000000000000..1b535d41e5c6
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
>>>> @@ -0,0 +1,152 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/net/ti,am654-cpts.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: The TI AM654x/J721E Common Platform Time Sync (CPTS) module Device Tree Bindings
>>>> +
>>>> +maintainers:
>>>> +  - Grygorii Strashko <grygorii.strashko@ti.com>
>>>> +  - Sekhar Nori <nsekhar@ti.com>
>>>> +
>>>> +description: |+
>>>> +  The TI AM654x/J721E CPTS module is used to facilitate host control of time
>>>> +  sync operations.
>>>> +  Main features of CPTS module are
>>>> +  - selection of multiple external clock sources
>>>> +  - Software control of time sync events via interrupt or polling
>>>> +  - 64-bit timestamp mode in ns with PPM and nudge adjustment.
>>>> +  - hardware timestamp push inputs (HWx_TS_PUSH)
>>>> +  - timestamp counter compare output (TS_COMP)
>>>> +  - timestamp counter bit output (TS_SYNC)
>>>> +  - periodic Generator function outputs (TS_GENFx)
>>>> +  - Ethernet Enhanced Scheduled Traffic Operations (CPTS_ESTFn) (TSN)
>>>> +  - external hardware timestamp push inputs (HWx_TS_PUSH) timestamping
>>>> +
>>>> +   Depending on integration it enables compliance with the IEEE 1588-2008
>>>> +   standard for a precision clock synchronization protocol, Ethernet Enhanced
>>>> +   Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
>>>> +   Measurement (PTM).
>>>> +
>>>> +  TI AM654x/J721E SoCs has several similar CPTS modules integrated into the
>>>> +  different parts of the system which could be synchronized with each other
>>>> +  - Main CPTS
>>>> +  - MCU CPSW CPTS with IEEE 1588-2008 support
>>>> +  - PCIe subsystem CPTS for PTM support
>>>> +
>>>> +  Depending on CPTS module integration and when CPTS is integral part of
>>>> +  another module (MCU CPSW for example) "compatible" and "reg" can
>>>> +  be omitted - parent module is fully responsible for CPTS enabling and
>>>> +  configuration.
>>>
>>> That's fine, but you should still have compatible and reg.
>>
>> I'll add reg as below. But compatible is an issue, because
>> k3-am654-cpsw-nuss call of_platform_populate() to create mdio device.
>> But for CPTS I do not want to create device as k3-am654-cpsw-nuss uses direct
>> function calls to CPTS.
>>
>> Will it be correct to switch to of_platform_device_create() instead of
>> of_platform_populate()?
> 
> That should be fine I think.

Thanks. I've sent follow up patches.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
