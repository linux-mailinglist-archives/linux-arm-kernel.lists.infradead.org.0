Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E11D9D261
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Twd9edINvQhYwX7r7FdbdqGNJ4pD+r2M6h21LQB57K4=; b=LkRkiS7SMieQ69vrci8zTA40E
	qrtyP42rdFy9fvxFwhlpMXtrd6+KGQlgUPmIUlyI+HrqViG/vbCPgRpRiulqDI0081403YjDGnCaO
	WsKQyr/R0a0fX37UxJ8bJ02U1wELKR2/7D5fnEXohM7XguNvwU7GRM+xqX2DOWuZI9vXONzh1b7hL
	0I9WcbTvEqC1aoTkATT7hRAnUPJDYcmvF2iqHJwnDDGJSiFHnsbaPllMvp05BB1YFhjnuL83OyIIC
	cXKuuAzcblouDs5Beudhbug03TZboKo9Z41gdP/fdDUIws8pqaLC1ndPyC81Txe1JnB/DN8lG4qo9
	iapBQNf4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2GgH-0000Lx-8g; Mon, 26 Aug 2019 15:13:17 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Gg4-0000LI-HK
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:13:05 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7QF6wUB089934; Mon, 26 Aug 2019 11:12:50 -0400
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
 [169.53.41.122])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2umggp3tqc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 11:12:50 -0400
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
 by ppma04dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x7QFAdhV028102;
 Mon, 26 Aug 2019 15:12:49 GMT
Received: from b01cxnp23034.gho.pok.ibm.com (b01cxnp23034.gho.pok.ibm.com
 [9.57.198.29]) by ppma04dal.us.ibm.com with ESMTP id 2ujvv6gwhw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 15:12:49 +0000
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com
 [9.57.199.109])
 by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7QFCmRg51904774
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 26 Aug 2019 15:12:48 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 783C0112066;
 Mon, 26 Aug 2019 15:12:48 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CFAD6112062;
 Mon, 26 Aug 2019 15:12:47 +0000 (GMT)
Received: from [9.41.179.222] (unknown [9.41.179.222])
 by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 26 Aug 2019 15:12:47 +0000 (GMT)
Subject: Re: [PATCH 3/7] media: aspeed-video: address a protential usage of an
 unit var
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <4a411ba155eb062b6575aba0824123c840806c0b.1566502743.git.mchehab+samsung@kernel.org>
 <7c85f7dc159927a7316dc13f52697f157fb6e2bd.1566502743.git.mchehab+samsung@kernel.org>
From: Eddie James <eajames@linux.vnet.ibm.com>
Message-ID: <64b90f55-2d8d-718d-0562-528063f3edab@linux.vnet.ibm.com>
Date: Mon, 26 Aug 2019 10:12:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7c85f7dc159927a7316dc13f52697f157fb6e2bd.1566502743.git.mchehab+samsung@kernel.org>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908260158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_081304_699109_D44CEB71 
X-CRM114-Status: GOOD (  22.96  )
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
 openbmc@lists.ozlabs.org, Eddie James <eajames@linux.ibm.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 8/22/19 2:39 PM, Mauro Carvalho Chehab wrote:
> While this might not occur in practice, if the device is doing
> the right thing, it would be teoretically be possible to have
> both hsync_counter and vsync_counter negatives.
>
> If this ever happen, ctrl will be undefined, but the driver
> will still call:
>
> 	aspeed_video_update(video, VE_CTRL, 0, ctrl);
>
> Change the code to prevent this to happen.
>
> This was warned by cppcheck:
>
> 	[drivers/media/platform/aspeed-video.c:653]: (error) Uninitialized variable: ctrl


Thanks Mauro.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>   drivers/media/platform/aspeed-video.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> index f899ac3b4a61..4ef37cfc8446 100644
> --- a/drivers/media/platform/aspeed-video.c
> +++ b/drivers/media/platform/aspeed-video.c
> @@ -630,7 +630,7 @@ static void aspeed_video_check_and_set_polarity(struct aspeed_video *video)
>   	}
>   
>   	if (hsync_counter < 0 || vsync_counter < 0) {
> -		u32 ctrl;
> +		u32 ctrl = 0;
>   
>   		if (hsync_counter < 0) {
>   			ctrl = VE_CTRL_HSYNC_POL;
> @@ -650,7 +650,8 @@ static void aspeed_video_check_and_set_polarity(struct aspeed_video *video)
>   				V4L2_DV_VSYNC_POS_POL;
>   		}
>   
> -		aspeed_video_update(video, VE_CTRL, 0, ctrl);
> +		if (ctrl)
> +			aspeed_video_update(video, VE_CTRL, 0, ctrl);
>   	}
>   }
>   

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
