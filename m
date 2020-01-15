Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9D313CC10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hVGAdczUga0u0hQHMQS2XeylWrCxKk8FdT0QU96h3BA=; b=YOMDdiwKg/4MHtfkMQX+LN6Hu
	XtVXCRZ6ama3NiNr8T9HGdqcgu6PnEtfdro/4emiBksVJHfZYT6m3IfAMdD4XYyOqTHkn2jSEHnvH
	ZbDmFBVvM/SPqRUWVxmWLGGcoHZNHu6AzhluKHPol4hoLDmAAoNLOJ7y1fG6j0S/u1kNcTjxKnEam
	YRa2ebyKFgpE4bF3zhEXxPDH9ksZzHN2NOjLDGR+BAPy9/fA7OFTpvVsKzRfcbytu+4G/IUjC+1dD
	5/x4umYxSMWclliRl0cWPnKy+i3lFUPCr9NdQkD23Wd/k/B9g/++LFq8UeXuKvilvUn5H/93VYJud
	ezQxpKwNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnNe-00058u-B1; Wed, 15 Jan 2020 18:27:02 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnNU-00057s-5T
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 18:26:55 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00FIN5FU121958;
 Wed, 15 Jan 2020 18:26:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=F6SQaCFi8PmmmsQylROI5thWFZ79H1A5nXmOx7Fhsqw=;
 b=eq16sBhr1nm2LAd1UoC2Ko1hyhCVTxJGFyyrkdx0g2/3AniqAFOfA2xaW5JZJa7GhOlL
 SjgttsTM7rmQSvWPBch+qegcifOmi15P72fO5zXBuBK3k3i98/fP/S3MLXnM5w1nlamd
 F8GApoOouXEsp1QpiCPTlR7Mxz8Y3BMcYOT+PbfpTI/FwwIM22gvZytazeDIxh8Hf3dG
 a+rUMGoA/TCEbbuG509sLVCn9Dc+8TNwlB5aNI8nAJOVOLR+C+7hBfUH6lbwYZvJ1YPD
 eDWNzm3y8OBkzUG3At4MoHzorh+zc1jWnuFwEO22dqOBGOnen/aMYbul4b0/gDLIqu9B oA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2xf74sdw4p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 18:26:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00FIOOOi072681;
 Wed, 15 Jan 2020 18:26:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xj1aq9drw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jan 2020 18:26:41 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00FIQdkm008377;
 Wed, 15 Jan 2020 18:26:39 GMT
Received: from dhcp-10-159-239-64.vpn.oracle.com (/10.159.239.64)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 15 Jan 2020 10:26:38 -0800
Subject: Re: [PATCH v8 02/18] soc: ti: k3: add navss ringacc driver
To: Vinod Koul <vkoul@kernel.org>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
 <20191223110458.30766-3-peter.ujfalusi@ti.com>
 <6d70686b-a94e-18d1-7b33-ff9df7176089@ti.com>
 <900c2f21-22bf-47f9-5c3c-0a3d95a5d645@oracle.com>
 <ea6a87ae-b978-a786-27eb-db99483a82d9@ti.com>
 <f0230e88-bd9b-cd6d-433d-06d507cafcbd@ti.com>
 <9177657a-71c7-7bd0-a981-3ef1f736d4dc@oracle.com>
 <2c933a6c-37c6-3ef6-7c37-ae36e8c49bf7@ti.com>
 <20200115122440.GI2818@vkoul-mobl>
From: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Organization: Oracle Corporation
Message-ID: <b1dba0ad-f7d6-607b-87f7-d3ca746d19ea@oracle.com>
Date: Wed, 15 Jan 2020 10:26:36 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200115122440.GI2818@vkoul-mobl>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=4
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001150141
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9501
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=4 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001150141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_102652_297250_15438B8A 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, t-kristo@ti.com,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, tony@atomide.com, robh+dt@kernel.org,
 j-keerthy@ti.com, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vinod,

On 1/15/20 4:24 AM, Vinod Koul wrote:
> On 15-01-20, 11:44, Peter Ujfalusi wrote:
>>

>>> I would prefer driver patches to go via driver tree.
>>
>> Not sure what you mean by 'driver patches'...
>> The series to enable DMA support on TI's K3 platform consists:
>> Patch 1-2: Ring Accelerator _driver_ (drivers/soc/ti/)
>> Patch 3-6: DMAengine core patches to add new features needed for k3-udma
>> Patch 7-11: DMA _driver_ patches for K3 (drivers/dma/ti/)
>>
>> Patch 10 depends on the ringacc and the DMAengine core patches
>> Patch 11 depends on patch 10
>>
>> I kept it as a single series in hope that they will go via one subsystem
>> tree to avoid build dependency issues and will have a good amount of
>> time in linux-next for testing.
>>
>>>> Vinod could also perhaps setup an immutable branch based on v5.5-rc1
>>>> with just the drivers/soc/ti parts applied so you can merge that branch
>>>> in case you end up having to send up anything that conflicts.
>>>>
>>> As suggested on other email to Peter, these DMA engine related patches
>>> should be queued up since they don't have any dependency. Based on
>>> the status of that patchset, will take care of pulling in the driver
>>> patches either for this merge window or early part of next merge window.
>>
>> OK, I'll send the two patch for ringacc as a separate series.
>>
>> Vinod: Would it be possible for you to pick up the DMAengine core
>> patches (patch 3-6)?
>> The UDMA driver patches have hard dependency on DMAengine core and
>> ringacc, not sure how they are going to go in...
> 
> Since they have build dependency, the usual method for this is:
> 
[...]
> 
> 2. Santosh picks up ring driver patches, provides a signed immutable tag
> which I will pull in and apply the rest, i.e., dmaengine updates and new
> dmaengine driver
> 
I have pushed the ring driver changes with an immutable tag and also 
pushed out to next. I will know if it breaks anything in a day.
If all good, will send out the pull request to ARM soc folks.
Since its already late, its not guaranteed that driver will get
picked up for 5.6 but will request and copy you on pull request. Based
on the state of the pull request, I suggest you decide to
pull my tag and rest of the dma patches to your tree so that we
can avoid any breakage in linus's tree. Feel free to add my ack
for rest of the DMA patchset.

git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git 
tags/drivers_soc_for_5.6

Let me know if you have any concerns/questions.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
