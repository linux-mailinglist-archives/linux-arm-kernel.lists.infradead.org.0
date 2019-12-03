Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6089510FDCB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:38:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2dx5/ebj+NoJJlU+0xJJ+4XAcSzSonJi7rVQXWo4ZL8=; b=Z5r660POT/i0O026xjJcJiAAZ
	bTj9Uue1bJn7v3nceozBQlc+zFRUtjPX/x9u5/ZW6mfIHAGUSPtrDhAr8H6dvCRehf+ocyw4SKSXI
	+6vwg9/QSI3aKYr9ibtaY7qK/vDq8cgnL75Jm1PcxhoN1B68CG7UfOjPSphI9qw3QML5/rPS9V4NE
	rOrXfgOm9ajsxkiVhP8+68vD7eRK1ydDor1ncbVDWnhBLbiAH6T7XjtqlM0eFiHP++g3GblzuJlCx
	4FHim3tPsyQOav8T4lUhtRt71hUVjcwt8otzUJzUUtS0H3fVPE0k3DbSKuaC+rZjyw78xtXVMyGXe
	S3C1sz+vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7RG-0005e8-K1; Tue, 03 Dec 2019 12:37:58 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7R6-0005Y5-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575376663; x=1577968663;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jbXCQpV7FvlQgb2CVtap1TWP+t2ltFf9/F5qiUvL2S8=;
 b=sXlB1hRTtO3Eceankm2FbSjgJ8qa4Pmw+6YFsgPF5uhkZ6cnxdw9cCXBTFuWdflg
 KTZfXbdzgzdJy8GgX+gek53CTsQ53FAerl8+gsLMr2LoeMt0O6l8qiwHQSdfZsAF
 cUAPSHEsAiOQQSa8i6D2XUaMg+xCo0Oq5Tt6dcOYV2w=;
X-AuditID: c39127d2-e0fff7000000408f-b8-5de657162243
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id AF.F3.16527.61756ED5;
 Tue,  3 Dec 2019 13:37:42 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120313374264-32818 ;
 Tue, 3 Dec 2019 13:37:42 +0100 
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
To: Lucas Stach <l.stach@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
 <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
 <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
 <dc55f52f-c01b-1f9e-4149-740e2c6d9663@phytec.de>
 <20191202145308.7w5pic3fwpq752mz@pengutronix.de>
 <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
 <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
 <895eb269794c200e7c04161188787b3933e3ee0c.camel@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <21bdac21-d5e0-ea84-57b4-5998f64899e9@phytec.de>
Date: Tue, 3 Dec 2019 13:37:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <895eb269794c200e7c04161188787b3933e3ee0c.camel@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 03.12.2019 13:37:42,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 03.12.2019 13:37:42, Serialize complete at 03.12.2019 13:37:42
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrDLMWRmVeSWpSXmKPExsWyRoCBS1cs/FmswckNJhbPbt5is3h41d9i
 1dSdLBYP5t5kstj0+BqrRdevlcwWH3ZdZbZo3XuE3eLFFnEHTo+ds+6yezydMJndY9OqTjaP
 zUvqPTa+28Hk0f/XIIAtissmJTUnsyy1SN8ugSvj0Py3zAWXpCv+T1vJ2MD4X7SLkZNDQsBE
 omvaEuYuRi4OIYGtjBI/W39AOacYJZo+rmMDqRIWCJdYt2YxSxcjB4eIQIDEgSduIGFmgfOM
 EnemykHUT2OR2HSpjR0kwSbgJLH4fAdYL6+AjcTkK7uZQWwWARWJaQeaGEFsUYEIiefbbzBC
 1AhKnJz5hAXE5hTwkbj9uZ8RZKiEQCOTxJc/W9ggThWSOL34LDPEZnmJ7W/nQNlmEvM2P4Sy
 xSVuPZnPNIFRaBaSubOQtMxC0jILScsCRpZVjEK5mcnZqUWZ2XoFGZUlqcl6KambGIExdHii
 +qUdjH1zPA4xMnEwHmKU4GBWEuHdJvE0Vog3JbGyKrUoP76oNCe1+BCjNAeLkjjvBt6SMCGB
 9MSS1OzU1ILUIpgsEwenVAOj3MTmnl335rvWOBxu899/Y82nMw8cmSZM2W+w6cqtNtevP+YZ
 7Nd07NDaeHG3+QH/FewSHAm6WoayvwImnPHIrVTb+yObgeXButcf1xTOqc/eZuG+rq9iXWg2
 x1P12Zf+2j1dpmv48MuE2w9zbugv4FA/mHg5e3loS+OdBf+EBE4nGrhc/Z9hq8RSnJFoqMVc
 VJwIANrob4qPAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043749_017506_EE55CE42 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: festevam@gmail.com, shawnguo@kernel.org, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas, hi Marco,

On 03.12.19 12:44, Lucas Stach wrote:
> On Di, 2019-12-03 at 09:33 +0100, Marco Felsch wrote:
> [...]
>>>> Please check the following structs:
>>>>
>>>>    - static const struct da9062_regulator_info local_da9061_regulator_info[]
>>>>    - static const struct da9062_regulator_info local_da9062_regulator_info[]
>>>>
>>>> There you have the min_uV, uV_step, n_voltages so the core can validate
>>>> if the dt-value is within the range.
>>>
>>> Thanks, that makes more sense.
>>>
>>>>> The regulator bindings state:
>>>>> - regulator-min-microvolt: smallest voltage consumers may set
>>>>>
>>>>> - regulator-max-microvolt: largest voltage consumers may set
>>>>
>>>> Yes and according the datasheet I mentionied the current values aren't
>>>> correct.
>>>>
>>>>> For me that is device depended and not design depended.
>>>>>
>>>>> What is the scenario you're thinking about which would cause the SOC, as a
>>>>> consumer, to request a lower voltage as it needs?
>>>>
>>>> The thing is that the DT abstracts the HW and these values are not
>>>> correct. As mentioned in my commit message the values should meet
>>>> the datasheet restrictions and this isn't the case yet.
>>>
>>> I don't agree. The datasheet you mention is the i.MX 6 datasheet and thus
>>> the limitation should reside in the i.MX 6 regulators and not in the PMIC's.
>>> This limitation is not just valid in combination with that PMIC but for all
>>> i.MX 6.
>>
>> The datasheet tells you which voltage should be applied to the imx6 and
>> so you have to set this here. What happens if the internally ldo
>> request a voltage value below 0.9V? Then the value will be applied
>> because we specified 0.73V and the system don't work anymore or did you
>> verified that case?
> 
> The DT constraints are supposed to reflect absolute maximum ratings of
> the board design. The regulator driver already knows the limits of the
> PMIC chip, so there is no point in duplicating this information in the
> DT.
> 
> The DT constraints are there to make sure the regulator core can
> constrain the voltage setting to something safe for the specific
> design. A consumer driver bug must never be able to set a voltage that
> is outside of the absolute maximum ratings of _all_ consumers of this
> specific power rail. I know that a lot of DTs get this detail wrong,
> but we shouldn't block patches to fix this. :)

Thanks for the clarification and the example. I got it now and will keep it 
in mind for the future.

> 
>>> If I have this wrong and the maintainers agree with you could you please
>>> make sure to account for the bypass mode as well since these values from the
>>> datasheet are valid too?
>>
>> As I said, the bypass mode isn't supported by the driver and all imx6
>> based devicetrees follow that case. So we don't have to take that into
>> account. Also we can't meet both contraints with one dt and futhermore
>> the bypass mode decrease your imx6 lifetime due the the increased ripple
>> on the arm-core supply. So I think no one wants this setup in the near
>> future.
> 
> As a violation of the minimum voltage setting is very unlikely to cause
> any permanent damage to the design (expect if you got reverse voltage
> flows somewhere) I think it is safe to include the LDO bypass supply
> limits as the lower bound in the DT constraints, even if this mode
> isn't currently used anywhere.

Sounds good to me.

Regards,
Stefan

> 
> Regards,
> Lucas
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
