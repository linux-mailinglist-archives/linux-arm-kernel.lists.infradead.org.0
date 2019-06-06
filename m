Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEC436B68
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 07:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lao8UfivEhsd4KY+rsUf0c4n+hW0UcGlmP6TWZITP4=; b=V5LMuuEOAWhXPV
	yO/aHGPZu1/jWNMR3a3SranDtezvTt4ABYKycdiw6GWWR2YByhj9bNe7RAsIUsMxmTmGXnFeluBoz
	fjjRIsl4zy2uH9NvIJuFpdeSM7tD5CgPeUBl5LAlE3U2mIjfFA8eYWrKmswZk/P4BjugfHsSGdSEx
	gKA2q1iIrmxhspO8G9rmt2R6HBQ46ZNYW0vzmWa5tE9Sx00sZHGUMtpV5faBjKd/70hmupQnJtZqd
	Bi7vpWtrqo9fqTqmHqt23jECp+Gb0DffHgMRYQIPPeUCdlh0OsuAHjwGNiiL3rCTf+YfkzROHfN2C
	4VO3ZmFTcghr7/YcM9Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYkkV-0001s3-L5; Thu, 06 Jun 2019 05:15:39 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYkkO-0001rk-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 05:15:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x565FUiG005265;
 Thu, 6 Jun 2019 00:15:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559798130;
 bh=k7NuenukIeKWTpg2h0PMzzOI7x7TPWhM02vhvuDO7Ns=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hgYaPvJ8Cj1HXUrKxmqjmy0P06JHg6jYjecQs/P9H8RBkZvdijmjSNwCcK9DvbKS1
 1VNUt+MhqIKLOe5upmc73KVko0d42T5RGoGe//gtzZchBZoy5rSqPxXTLLSprWfAgn
 AXbN7DXXkcqWxO/b+lTI4F3AC39slTVBtauVijnc=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x565FUGY111154
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 00:15:30 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 00:15:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 00:15:30 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x565FQbC017664;
 Thu, 6 Jun 2019 00:15:27 -0500
Subject: Re: [PATCH v2] firmware: ti_sci: Parse all resource ranges even if
 some is not available
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>
References: <20190604102823.10166-1-peter.ujfalusi@ti.com>
 <f4679746-00eb-ae59-0acb-0f20f6d2fa44@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <67b7604b-dda6-4907-25a6-a59ef622a7ee@ti.com>
Date: Thu, 6 Jun 2019 10:44:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <f4679746-00eb-ae59-0acb-0f20f6d2fa44@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_221533_156887_711CEB5B 
X-CRM114-Status: GOOD (  15.05  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



On 05/06/19 12:15 AM, Peter Ujfalusi wrote:
> 
> 
> On 6/4/19 1:28 PM, Peter Ujfalusi wrote:
>> Do not fail if any of the requested subtypes are not availabe, but set the
>> number of resources to 0 and continue parsing the resource ranges.
>>
>> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>> ---
>> Hi,
>>
>> Changes since v1:
>> - moved the 'bool valid_set = false;' to avoid 'reverse Christmas tree'
>> - Added Reviewed-by from Lokesh
>>
>> Regards,
>> Peter
>>
>>  drivers/firmware/ti_sci.c | 11 +++++++++--
>>  1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
>> index ef93406ace1b..191939476d64 100644
>> --- a/drivers/firmware/ti_sci.c
>> +++ b/drivers/firmware/ti_sci.c
>> @@ -2342,6 +2342,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>>  			    struct device *dev, u32 dev_id, char *of_prop)
>>  {
>>  	struct ti_sci_resource *res;
>> +	bool valid_set = false;
>>  	u32 resource_subtype;
>>  	int i, ret;
>>  
>> @@ -2374,13 +2375,16 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>>  		if (ret) {
>>  			dev_err(dev, "dev = %d subtype %d not allocated for this host\n",
>>  				dev_id, resource_subtype);
> 
> Should we change dev_err() to dev_dbg() as this is no longer a failure?

Valid point. Please make it dev_dbg.


Thanks and regards,
Lokesh

> 
>> -			return ERR_PTR(ret);
>> +			res->desc[i].start = 0;
>> +			res->desc[i].num = 0;
>> +			continue;
>>  		}
>>  
>>  		dev_dbg(dev, "dev = %d, subtype = %d, start = %d, num = %d\n",
>>  			dev_id, resource_subtype, res->desc[i].start,
>>  			res->desc[i].num);
>>  
>> +		valid_set = true;
>>  		res->desc[i].res_map =
>>  			devm_kzalloc(dev, BITS_TO_LONGS(res->desc[i].num) *
>>  				     sizeof(*res->desc[i].res_map), GFP_KERNEL);
>> @@ -2389,7 +2393,10 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
>>  	}
>>  	raw_spin_lock_init(&res->lock);
>>  
>> -	return res;
>> +	if (valid_set)
>> +		return res;
>> +
>> +	return ERR_PTR(-EINVAL);
>>  }
>>  
>>  static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
>>
> 
> - Peter
> 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
