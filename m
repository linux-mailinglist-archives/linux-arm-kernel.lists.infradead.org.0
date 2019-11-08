Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0041FF582F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 21:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zu9yV45ltJgp3DkxVHS2sHt3efK6fWzvETcXx3H++vk=; b=FrecnR8d09cm6f2XVxEpAlhzi
	BhrzSUnqQH6oLJmZjQ2sxTUFpDgqhz+ZIkxTBfVk0rJZrJ1wPrwtYGscBxeNymysf2ZC98BjK8ntH
	KvrcXxWi73lCu4K0nodWABimiAtr59/h0x/GoxBcEmyu6x9y61W67n7JmCUxe1rW6Y6Ciyv2u0Wa+
	Puhlp2vrZLvVu+KKIIUZYjBzV+lIx13mU3GCCGtbFrCjQC4ibhaFnI6xYQ0z0AFTpQ9EZaT/we257
	FShu8uhiCIX6Z+5RxXFwjONyMMMFixaSasO89jMBKKRP5FTvgERy1t4YXhIQMoQqq2vJWa2PY6UJ7
	yAB7FMAog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTB1A-0003jV-6U; Fri, 08 Nov 2019 20:38:04 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTB0z-0003il-RG
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 20:37:55 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xA8KXPHA137890; Fri, 8 Nov 2019 15:37:45 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2w5c3yppjr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 15:37:45 -0500
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id xA8KXeYo139026;
 Fri, 8 Nov 2019 15:37:44 -0500
Received: from ppma02dal.us.ibm.com (a.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.10])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2w5c3yppj9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 15:37:44 -0500
Received: from pps.filterd (ppma02dal.us.ibm.com [127.0.0.1])
 by ppma02dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xA8KTvBB014679;
 Fri, 8 Nov 2019 20:37:43 GMT
Received: from b01cxnp22034.gho.pok.ibm.com (b01cxnp22034.gho.pok.ibm.com
 [9.57.198.24]) by ppma02dal.us.ibm.com with ESMTP id 2w41ukaka9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 20:37:43 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com
 [9.57.199.111])
 by b01cxnp22034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xA8Kbgb140436058
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 8 Nov 2019 20:37:43 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C8809AC05F;
 Fri,  8 Nov 2019 20:37:42 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D1E43AC05E;
 Fri,  8 Nov 2019 20:37:41 +0000 (GMT)
Received: from [9.41.103.158] (unknown [9.41.103.158])
 by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
 Fri,  8 Nov 2019 20:37:41 +0000 (GMT)
Subject: Re: [PATCH v3] media: aspeed-video: Fix memory leaks in
 aspeed_video_probe
To: Navid Emamdoost <navid.emamdoost@gmail.com>, jae.hyun.yoo@linux.intel.com
References: <da959329-aa40-b6e7-dcc9-48183a8da716@linux.intel.com>
 <20191028171838.28533-1-navid.emamdoost@gmail.com>
From: Eddie James <eajames@linux.vnet.ibm.com>
Message-ID: <6de50e1a-cb05-8d81-d043-00ed25eda845@linux.vnet.ibm.com>
Date: Fri, 8 Nov 2019 14:37:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191028171838.28533-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-08_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911080198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_123754_005217_CF1F7490 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 kjlu@umn.edu, openbmc@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
 linux-kernel@vger.kernel.org, emamd001@umn.edu, smccaman@umn.edu,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/28/19 12:18 PM, Navid Emamdoost wrote:
> In the implementation of aspeed_video_probe() the allocated memory for
> video should be released if either devm_ioremap_resource()
> or aspeed_video_init() or aspeed_video_setup_video() fails. Replace
> kzalloc() with devm_kzalloc to avoid explicit release for video.


Thanks,

Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Fixes: d2b4387f3bdf ("media: platform: Add Aspeed Video Engine driver")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
> Changes in v3:
> 	-- fix call to devm_kzalloc()
> ---
>   drivers/media/platform/aspeed-video.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> index eb12f3793062..70797b41447c 100644
> --- a/drivers/media/platform/aspeed-video.c
> +++ b/drivers/media/platform/aspeed-video.c
> @@ -1646,7 +1646,8 @@ static int aspeed_video_probe(struct platform_device *pdev)
>   {
>   	int rc;
>   	struct resource *res;
> -	struct aspeed_video *video = kzalloc(sizeof(*video), GFP_KERNEL);
> +	struct aspeed_video *video =
> +		devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);
>   
>   	if (!video)
>   		return -ENOMEM;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
