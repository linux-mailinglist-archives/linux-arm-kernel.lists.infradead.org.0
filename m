Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DF134453
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBWlXrrOlKyaVZJIg31LSiKqr8doUifMeaBGmErbSkI=; b=EgQs4hsNxdgy2E
	1NxRdIeE5VIk7ZJB+oSgajtt1cWOKhpCISwzm/yln4Lh6CQUONt4aVNMKma+xiqgnAkOEaUA8cnDc
	QKw6nAJdrEbGkE/egcz6EF8s1W1jJfqJrg18wRQcTqIQtbHx4kOaVq/eeAEXzBh7LzMWecyz9JpWH
	KlzRT3d3GAKGCL/oDpb+rNxfOyi1b/kBhTOACUkOMq8UrY3LYAvlnKCF342biXJ9QfsuXZtT+IwaR
	2ThZMJneMt8G3oUlvHxWDa1ZiIeNm71yEEY1rp87QBO9P5cJiyHp9BfcDVX1i3cTc+TNKJz9/b1ni
	gdQhsLF4wS5VBQVrH68Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6bi-0007DK-MM; Tue, 04 Jun 2019 10:23:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6ba-0007Ck-N6
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:23:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54ANjK3049512;
 Tue, 4 Jun 2019 05:23:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559643825;
 bh=EM7BHXVqWsTF//Ik3/UfVhSIKF1ajjpwgG280gpzwKU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ASkGqmtmG8uKzK5GKFBP2sG5UhOtYRut3PYDCUn43l/BJhKpaDqELblgyRZNZRQ3T
 hUVbvoVbyWTEAN+vr/yVVWhxVfBvUPpyOqDk2Ulw1J0lI7eCtCeZqf6uZ/+h7ykocQ
 8k0A5INIYBEVaC4VfSKXGxJCh0wKNPC+hQi3icl0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54ANjpF079209
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:23:45 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:23:44 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:23:44 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54ANdx7029032;
 Tue, 4 Jun 2019 05:23:42 -0500
Subject: Re: [PATCH] firmware: ti_sci: Parse all resource ranges even if some
 is not available
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>
References: <20190604101000.6741-1-peter.ujfalusi@ti.com>
 <4ff3a042-41a2-62d3-c899-7a62406ad6a4@ti.com>
 <685f477a-65fe-36ae-0081-a329554714a9@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <b7608cee-68fd-3406-9390-b94f53aaac8b@ti.com>
Date: Tue, 4 Jun 2019 15:53:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <685f477a-65fe-36ae-0081-a329554714a9@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_032346_835148_D08C90E8 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/06/19 3:51 PM, Peter Ujfalusi wrote:
> 
> 
> On 04/06/2019 13.13, Lokesh Vutla wrote:
>>
>>
>> On 04/06/19 3:40 PM, Peter Ujfalusi wrote:
>>> Do not fail if any of the requested subtypes are not availabe, but set the
>>> number of resources to 0 and continue parsing the resource ranges.
>>>
>>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>> ---
>>>  drivers/firmware/ti_sci.c | 11 +++++++++--
>>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
>>> index af3ebcdeab18..5d13ed724ff0 100644
>>> --- a/drivers/firmware/ti_sci.c
>>> +++ b/drivers/firmware/ti_sci.c
>>> @@ -2783,6 +2783,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>>>  	struct ti_sci_resource *res;
>>>  	u32 resource_subtype;
>>>  	int i, ret;
>>> +	bool valid_set = false;
>>
>> Minor nit: Can you maintain the reverse Christmas tree here? It looks good :) No
>> strong feelings though
> 
> bool no_valid_sets = true;
> 
> and when we have at least one valid set flip it to false? That's equally
> twisted if not worst. imho

No no. I mean to add the change like below instead of adding the declaration at
the end.


--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2383,6 +2383,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle
*handle,
 			    struct device *dev, u32 dev_id, char *of_prop)
 {
 	struct ti_sci_resource *res;
+	bool valid_set = false;
 	u32 resource_subtype;
 	int i, ret;

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
