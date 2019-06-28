Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929A6594DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DnC098DbiZJVScy3FVTK7GU3vEP2+Nmx4gjJmP/T0c=; b=EpRbYMRHteeiw1
	iW0+JTyxHKm/cgklObuDw7imoKyMsCiIX39w8xzEBVSTOyzO1apJmHpHAGaLlrzENt17CkQESvDUP
	SHuztuliRr4ZzSsC5oFSBI/J43fP4b3us9265h4VGYjXMGvlssreh7DpXICZcU6IIYeqhG6jpAXzS
	6lItwBMW2ZkBgIGDTQLN9U8+Wk/AYMwn3R2cqtmULYaBwyRNFDGfIDP8plHUZGy3Sh9vzZvvzBOoH
	lI9aG9MJt1NBvvTGf8p0+fCcSaN8aneBCZYm3EyKWP59yd/Sjca3gG/XxoWEgID7L4Io4GeWobKPN
	eQ55ZIhQfIdcPWDKqIpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglJy-00021L-N5; Fri, 28 Jun 2019 07:29:22 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglJj-00020G-9n; Fri, 28 Jun 2019 07:29:08 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S7NpPT082922;
 Fri, 28 Jun 2019 07:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=eVp0fj2a3CahJv1vtl/9w4CV52CUJKAT7WbuznAHrjU=;
 b=z0NzqCAF+XcgQrMDawTZaxENcIXaVUAtO8SuL0lJ/LsoodFnFt2SmvAgpr9d0Rq12nC2
 tV3XDOuHZ5iG4wte5EcWSB9D9wnsP8CRP1vNTD3/vuFCyaehSlwGkCNNxnVLKNNm9Yyt
 n+zMBdhsAWbY9TvojHNUmSynRqWBoMSCUL8ejzMUwK4pdW5p4eSlCYjFGIkRQpt7kq3G
 JvvKEfCewVrExB9qjLRsx49eupODpFNjS+zI3fSBZEWgjQpi4uHhW6prheNd/YO5MJBy
 yj4St6qLV9/8aI3QE45Dm324IrksfJycOG3PwwlnC2mCduMM3Mzfs6wnzKSVzgh5w+dm KQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2t9c9q436f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 07:28:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S7Rlxp161109;
 Fri, 28 Jun 2019 07:28:45 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tat7dt0n2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 07:28:45 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5S7ShQB015527;
 Fri, 28 Jun 2019 07:28:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Jun 2019 00:28:43 -0700
Date: Fri, 28 Jun 2019 10:28:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
Message-ID: <20190628072834.GE19015@kadam>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=863
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906280085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=915 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906280084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_002907_433552_CE3BE54A 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Hans Verkuil <hverkuil@xs4all.nl>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 08:55:58PM +0200, Stefan Wahren wrote:
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> index 2b5679e..09273b0 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> @@ -90,6 +90,8 @@ struct bm2835_mmal_dev {
>  		s64         vc_start_timestamp;
>  		/* Kernel start timestamp for streaming */
>  		ktime_t kernel_start_ts;
> +		/* Timestamp of last frame */
> +		u64		last_timestamp;

Not directly related to this patch but the indenting in this .h file is
all higgle-piggledy.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
