Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F2416B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQfwI/DKGgANwzAZIkph4R1zDcsIz8t78VYh8MpNN7I=; b=axTOmlxi/nf78YSqQYf92W652
	JwjOTZn71BETuP95oUdadjluU3ErxUR5afw4w1C6or1Cnt8pbHTT/nBm1emAG+cXUC7PP4hH955cC
	y27mJ+3M1pgv6WVIIqMvZgke3/y8AN1YKBYN47A/KO+FK3Yw3N38GJ7hOofNQNDrU17yIIlaCwCpL
	BfvcgIvMjJtE801iu1fAw77DcQU1O+OTXia7TOBtTOFdBP3Ll7G1prL0qU00BIleBtlL59xrBEGFW
	ChLiojWPXzPdFI7BDPWy+5g2Vg1tz4Xf9FBw0kyUCiwkOmoDYS+C5g+yBXaHK34wWb1kVKEstMDRn
	O8rkXJPgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hao3A-0000FM-10; Tue, 11 Jun 2019 21:11:24 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hao2w-0000Eq-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:11:11 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5BL8nZQ041453;
 Tue, 11 Jun 2019 21:10:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=r4oU8QezePFqpSYiESryQs3UL8DYpfD9CLF3sY86YKg=;
 b=W5fommkpxEPMSUSkVfY8pwZefZojBn0xB2CG8mlaX+Xw8Hgm05RcUbft179SKF6cYNWm
 0pxi29x0S8RghwTRE5muCQO1CYvZ+Nw8mYq1yR7wj2gj2ta+Vo7EoHat4vmSwwwi6tiS
 XO95cemCe4QcK4yj0sga3quvQOIEghDLIkT7vKYBl9PL9C6Fdpwm+piz1xSXkEZ7yvYu
 1VHxxYrO5xwWLpsCNzy6MihKOgV0fMtsvHSCfgZs0x19Y+CPtpKS1kuaOeT0STLJhnnl
 jN4nnfQwcVFwy6Hxcrsm8bw9t7gAhpgYG3gxGAPf1jlDSlhaYauB36vDAQyly87SK4YZ Ag== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t05nqqmr4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jun 2019 21:10:53 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5BLApJI032408;
 Tue, 11 Jun 2019 21:10:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2t1jphntch-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jun 2019 21:10:53 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5BLAoEe011760;
 Tue, 11 Jun 2019 21:10:50 GMT
Received: from [10.209.243.59] (/10.209.243.59)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Jun 2019 14:10:50 -0700
Subject: Re: [PATCH] knav_qmss_queue: fix a missing-check bug in
 knav_pool_create()
To: Gen Zhang <blackgod016574@gmail.com>, Marc Zyngier <marc.zyngier@arm.com>
References: <20190530033949.GA8895@zhanggen-UX430UQ>
 <20190611093744.GA9783@ubuntu> <56a08bd2-6b94-457f-99f7-91ef3fca8804@arm.com>
 <20190611100819.GA10185@ubuntu>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <b1e3623f-b908-363c-041c-0b9fb96412d8@oracle.com>
Date: Tue, 11 Jun 2019 14:10:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
 Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190611100819.GA10185@ubuntu>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906110137
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906110137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_141110_260565_057FB731 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: olof@lixom.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssantosh@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/11/19 3:08 AM, Gen Zhang wrote:
> On Tue, Jun 11, 2019 at 10:54:15AM +0100, Marc Zyngier wrote:
>> Hi Gen,
>>
>> No idea why I'm being cc'd on this but hey... ;-)
> I copied email address ftom thid commit:-)
> https://github.com/torvalds/linux/commit/832ad0e3da4510fd17f98804abe512ea9a747035#diff-f2a24befc247191f4b81af93e9336785
>>
>> On 11/06/2019 10:37, Gen Zhang wrote:
>>> On Thu, May 30, 2019 at 11:39:49AM +0800, Gen Zhang wrote:
>>>> In knav_pool_create(), 'pool->name' is allocated by kstrndup(). It
>>>> returns NULL when fails. So 'pool->name' should be checked. And free
>>>> 'pool' when error.
>>>>
>>>> Signed-off-by: Gen Zhang <blackgod016574@gmail.com>
>>>> ---
>>>> diff --git a/drivers/soc/ti/knav_qmss_queue.c b/drivers/soc/ti/knav_qmss_queue.c
>>>> index 8b41837..0f8cb28 100644
>>>> --- a/drivers/soc/ti/knav_qmss_queue.c
>>>> +++ b/drivers/soc/ti/knav_qmss_queue.c
>>>> @@ -814,6 +814,12 @@ void *knav_pool_create(const char *name,
>>>>   	}
>>>>   
>>>>   	pool->name = kstrndup(name, KNAV_NAME_SIZE - 1, GFP_KERNEL);
>>>> +	if (!pool->name) {
>>>> +		dev_err(kdev->dev, "failed to duplicate for pool(%s)\n",
>>>> +			name);
>>
>> There is no need to output anything, the kernel will be loud enough if
>> you run out of memory.
> Thanks for your comments.
>>
>>>> +		ret = -ENOMEM;
>>>> +		goto err_name;
>>>> +	}
>>>>   	pool->kdev = kdev;
>>>>   	pool->dev = kdev->dev;
>>>>   
>>>> @@ -864,6 +870,7 @@ void *knav_pool_create(const char *name,
>>>>   	mutex_unlock(&knav_dev_lock);
>>>>   err:
>>>>   	kfree(pool->name);
>>>> +err_name:
>>
>> kfree(NULL) is perfectly valid, there is no need to create a second
>> label. Just branch to the existing error label.
> Sure, better not to add redundant codes.
>>
>>>>   	devm_kfree(kdev->dev, pool);
>>>>   	return ERR_PTR(ret);
>>>>   }
>>> Can anyone look into this patch?
>>>
>>> Thanks
>>> Gen
>>>
>>
>> The real question is whether this is actually an error at all.
>> pool->name doesn't seem to be used for anything but debug information,
>> and the printing code can perfectly accommodate a NULL pointer.
> That sounds reasonable. This patch just fixes a *theoretical* bug.
> 
Not even theoretical bug.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
