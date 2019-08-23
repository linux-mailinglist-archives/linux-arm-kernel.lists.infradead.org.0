Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEAD9AE18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gI/ABuA67IxcGwY4iuYHDcpanD2CoqR4atbSczaJIrE=; b=uU3MN0OzOV81pZgREzCm/Ti+4
	FJSk4nKH7M9B8rVCvdM0hMKkhMWeKWofQ39ZyGdJPA5fR0T0qvDU0cTswi+EiJpnLFBzMXYAr52rG
	NxJjEy4hpkx9y8tYg8dxZVWSw12BxfAls4FUwzM5NohsPg5e9A53qjSWVeSx7mHkao9lg9GVM9ozt
	pK7qP1P2fqzR2HQO5YsYeAUkO1Kh33AZM5tqPVp7P+YsSbBXl6ekne5ek2ZEg943dKQcTXKX7UChT
	r2tnpmpilvDr4Q+VnF0kcouLssBbTAFF3HMRq3eUSR/QD10fVwLj+s6KpxMymveBI2EMDRjIlxLYb
	gIuudftuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17iu-00054o-5e; Fri, 23 Aug 2019 11:27:16 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17in-000542-5P
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:27:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7NBR44J081200;
 Fri, 23 Aug 2019 06:27:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566559624;
 bh=XdJh+FhIzu3AefhTsdN/t5wLDtXJYWUH44JZ32qDJMI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=n2JEhRYFNbgYjDFhzPj4XgWRF7HjJ2Te2QGRU82hNoalMmTsBoOiXkWOiPI9dI3gW
 jWkzcvsybqPK0J1Y9BCngZerbo/RGW5CJSk/QVogUziCLOzEai4NyVQSAwHRFAZJ8e
 SNaEWaby7otptx4uBJi8Pq0kzONUBWkXeSMoYa+A=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7NBR4Nw106320
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 23 Aug 2019 06:27:04 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 23
 Aug 2019 06:27:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 23 Aug 2019 06:27:03 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7NBR1WN117322;
 Fri, 23 Aug 2019 06:27:01 -0500
Subject: Re: [PATCH 2/8] soc: ti: add initial PRM driver with reset control
 support
To: Philipp Zabel <p.zabel@pengutronix.de>, Suman Anna <s-anna@ti.com>,
 Keerthy <j-keerthy@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-3-git-send-email-t-kristo@ti.com>
 <3b76f0e0-7530-e7b5-09df-2de9956f30ee@ti.com>
 <59709a2d-f13a-bd55-8aba-864c1cf2f19e@ti.com>
 <9372957c-9ab9-b0dd-fe07-815eb2cb2f16@ti.com>
 <0f335aec-bfdf-345a-8dfb-dad70aef1af6@ti.com>
 <a4196b73-63a0-f9d8-1c43-e6c4d1c1d6a4@ti.com>
 <1566400237.4193.15.camel@pengutronix.de>
 <5e82199f-2f75-ee05-ba65-1595d0526572@ti.com>
 <e75eed22-1bed-4c8a-930d-e05890d58c47@ti.com>
 <1566550205.3023.4.camel@pengutronix.de>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <11f3c842-d90c-6923-2adf-0635d9e780bd@ti.com>
Date: Fri, 23 Aug 2019 14:27:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566550205.3023.4.camel@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_042709_335078_002FD015 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23.8.2019 11.50, Philipp Zabel wrote:
> On Wed, 2019-08-21 at 21:15 +0300, Tero Kristo wrote:
>> On 21.8.2019 18.45, Suman Anna wrote:
>>> On 8/21/19 10:10 AM, Philipp Zabel wrote:
> [...]
>>>> In general, assuming the device tree contains no errors, this should not
>>>> matter much, but I think it is nice if the reset driver, even with a
>>>> misconfigured device tree, can't write into arbitrary bit fields.
>>>
>>> Tero,
>>> Can you add a check for this if possible?
>>
>> Well, I can enforce the usage of reset bit mapping, which I have already
>> implemented for some SoCs like am33xx. If the specific ID is not found,
>> I can bail out. So, basically in this example requesting reset at index
>> 3 would succeed, but it would fail for any other ID; this would be
>> direct HW bit mapping.
> 
> That should be fine.

Ok, I am re-working it like this locally right now.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
