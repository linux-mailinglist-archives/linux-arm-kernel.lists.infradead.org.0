Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6D51DE50B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 13:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcuG/xwM2ySrdYR3YmZsLzy+q6pQJXVP7DKlbz3ZIUE=; b=oCDbnX8JQacS1p
	W1EiNsWK0cJtYvQmd/eGJWdlc4xIdwXfq66UwKSXqH8HTbOtvJqJ89uZaOyp3OKvzDtrAxW+7xNOM
	9eMlhoumbqkpt6P3bjA5AFijrBAemdwJRLWRgxEXv7DFlqpxJVdOx5WsSeuFviQKvfy0FHHRYqq5n
	Y8wXDgyKukV/TCmQPtLTkpBF4aiGgub++7/VHDgZpT8sI+QyKyBMSqLmXDZ4gWNGn+TpMVv04dfEY
	+9oyoJqGau6y6RHRLc+G8zcMOpUWB65tQHG7Fqd8KHzjLNMGUzoFXeJ2xXDalWR1Z+AUCnd6RHtUZ
	6TdlQNbvHg7nYJhuv4sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5Vs-0007Rl-R4; Fri, 22 May 2020 11:06:52 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5Vi-0007RG-6V; Fri, 22 May 2020 11:06:44 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04MAvWxd051474;
 Fri, 22 May 2020 11:06:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=h+IhCi8QC7aiB6PiDJQfHb4bxl8n8/F15j3Q6LkLP+I=;
 b=tLWSc+oUFd4uWsuo+lM/HJquZ33VFhTJYIWFrNsnMwOQVFlAeRjOSGVjx9M2hmikH+TC
 acdf+ONyST5Ky0EkQV5P1cpZ3WnHst6Wjprk8+ndVxcPV2SNuwpfwHX22mYTDKCenlZn
 nFLhHJLj5Mn1tWLFlDWlKfn+zh239YJ/pZ+AvBGExVN/Xrp/9PhOp5OiuZgU8yoaTPdD
 mZbTRBVHQFHXfYtUaRMZ22fBi47Pt5UMLe4T08PDOKxUxU0DkyhUpv+yToTi3dOqgVWf
 YhM6Re4gOs8/PUj9t52D5MwIodrqAVbeue8MOTYJfxlI5S98Dj1lYeQkEyXwOLlAKy4R lg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 31501rkq8n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 22 May 2020 11:06:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04MB2jmR094300;
 Fri, 22 May 2020 11:06:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 313gj79sxf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 May 2020 11:06:34 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04MB6Wfu000538;
 Fri, 22 May 2020 11:06:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 May 2020 04:06:31 -0700
Date: Fri, 22 May 2020 14:06:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mitchell Tasman <tasman@leaflabs.com>
Subject: Re: [PATCH] staging: vchiq_arm: cast with __force as needed
Message-ID: <20200522110623.GL30374@kadam>
References: <20200519004531.33158-1-tasman@leaflabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519004531.33158-1-tasman@leaflabs.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9628
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005220091
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9628
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 mlxlogscore=999 clxscore=1011 priorityscore=1501 cotscore=-2147483648
 impostorscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_040642_369378_5294861F 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 08:45:31PM -0400, Mitchell Tasman wrote:
> In several cases where a pointer marked as __user is
> (intentionally) assigned or passed to a non-marked target,
> cast to the target pointer type with a __force directive
> to quiet warnings from sparse.
> 
> Signed-off-by: Mitchell Tasman <tasman@leaflabs.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c     | 7 ++++---
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 4 +++-
>  2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index c18c6ca0b6c0..38a13e4618a8 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -371,14 +371,15 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
>  	pagelistinfo->scatterlist = scatterlist;
>  	pagelistinfo->scatterlist_mapped = 0;
>  
> -	if (is_vmalloc_addr(buf)) {
> +	if (is_vmalloc_addr((void __force *)buf)) {

Am I reading this correctly???

This is actually a user controlled pointer that comes from the
vchiq_ioctl() when we do VCHIQ_IOC_QUEUE_BULK_TRANSMIT/RECEIVE.  So we
take random pointer from user space and if it happens to point to kernel
space then we trust it and presumably start BULK_TRANSMITing data to
it???

LOL....  This doesn't seem safe at all.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
