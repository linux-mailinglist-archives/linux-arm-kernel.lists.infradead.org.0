Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D632132F35
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JZT6rE993husiPr+yXfo/7PeULAEao2CUKM1SyFwe70=; b=E6ArSw8mOWpb5SxJwFfK8pfN+
	cIArLvJOPi4qeWMcj4kEDBgiRiBu2PSGkf/Iu1z1b7HRWT4T9gv3tmPTJ6dEV9Kse8+gQBBB+Yh3w
	89/Wsibm2joemW/qiRhfqxX5TSnbLE/INFD8CapwRkHM9c4wuC9Q48a1fRdDWbpvqoYJyNlH03Hr1
	Gz5rfZCTn4NYGYejfff5PZymPQHPMCtmMXhPS+WcLyXG9dvfPA9ThXAGDKQluMA+9XCIBalGkSKKq
	Z/YXSZGJAkncuX0X0wgc0NXPMXTvJgAVh+dxJxSo7XtO/F0TAva2xjdhE4QdvjQL063R4P81ZfdV3
	JAaD9VyGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouLt-0004ZO-L4; Tue, 07 Jan 2020 19:17:17 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouLm-0004Yh-Lo
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:17:11 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007JH39b027071; Tue, 7 Jan 2020 14:17:04 -0500
Received: from ppma01dal.us.ibm.com (83.d6.3fa9.ip4.static.sl-reverse.com
 [169.63.214.131])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2xb925u3yr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 14:17:03 -0500
Received: from pps.filterd (ppma01dal.us.ibm.com [127.0.0.1])
 by ppma01dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 007JF3HH013079;
 Tue, 7 Jan 2020 19:16:59 GMT
Received: from b03cxnp08028.gho.boulder.ibm.com
 (b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
 by ppma01dal.us.ibm.com with ESMTP id 2xajb6n4nq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 19:16:59 +0000
Received: from b03ledav001.gho.boulder.ibm.com
 (b03ledav001.gho.boulder.ibm.com [9.17.130.232])
 by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 007JGwek63046138
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jan 2020 19:16:58 GMT
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1090B6E04E;
 Tue,  7 Jan 2020 19:16:58 +0000 (GMT)
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A76E96E04C;
 Tue,  7 Jan 2020 19:16:57 +0000 (GMT)
Received: from [9.163.26.112] (unknown [9.163.26.112])
 by b03ledav001.gho.boulder.ibm.com (Postfix) with ESMTP;
 Tue,  7 Jan 2020 19:16:57 +0000 (GMT)
Subject: Re: [PATCH 1/3] media: aspeed: Rework memory mapping in probe
To: Joel Stanley <joel@jms.id.au>, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200107034324.38073-1-joel@jms.id.au>
 <20200107034324.38073-2-joel@jms.id.au>
From: Eddie James <eajames@linux.ibm.com>
Message-ID: <3237d298-066c-60f0-9912-b32f5bdecfd0@linux.ibm.com>
Date: Tue, 7 Jan 2020 13:16:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200107034324.38073-2-joel@jms.id.au>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-07_06:2020-01-07,
 2020-01-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0
 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0 mlxscore=0
 mlxlogscore=999 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001070152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_111710_719563_978638CE 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/6/20 9:43 PM, Joel Stanley wrote:
> Use the recently introduced function devm_platform_ioremap_resource to
> save a few lines of code. This makes the driver match common platform
> device probe patterns.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


Thanks Joel!


>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>   drivers/media/platform/aspeed-video.c | 16 ++++++----------
>   1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> index d8593cb2ae84..8f849d9866af 100644
> --- a/drivers/media/platform/aspeed-video.c
> +++ b/drivers/media/platform/aspeed-video.c
> @@ -1655,14 +1655,17 @@ static int aspeed_video_init(struct aspeed_video *video)
>   
>   static int aspeed_video_probe(struct platform_device *pdev)
>   {
> +	struct aspeed_video *video;
>   	int rc;
> -	struct resource *res;
> -	struct aspeed_video *video =
> -		devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);
>   
> +	video = devm_kzalloc(&pdev->dev, sizeof(*video), GFP_KERNEL);
>   	if (!video)
>   		return -ENOMEM;
>   
> +	video->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(video->base))
> +		return PTR_ERR(video->base);
> +
>   	video->frame_rate = 30;
>   	video->dev = &pdev->dev;
>   	spin_lock_init(&video->lock);
> @@ -1671,13 +1674,6 @@ static int aspeed_video_probe(struct platform_device *pdev)
>   	INIT_DELAYED_WORK(&video->res_work, aspeed_video_resolution_work);
>   	INIT_LIST_HEAD(&video->buffers);
>   
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -
> -	video->base = devm_ioremap_resource(video->dev, res);
> -
> -	if (IS_ERR(video->base))
> -		return PTR_ERR(video->base);
> -
>   	rc = aspeed_video_init(video);
>   	if (rc)
>   		return rc;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
