Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09569169E87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+1qcAXTQIWUssTxltquUbIQ56oOfqfVomKS9Fgsk+Y=; b=ZDoCxuOAVGhJ0r
	nxrSBtsOXmlV0sPYh8vtNP4/y5mI54ntO4V4nwUc+KSVX0qUxJXd1WoF4XYTO4Nc531ydeQvItkso
	sDxl/ojwqKSVyDINeQ4GwTWykq56NsMSDgU3dodSl2DIdVR6GCuyUbZ+WN4M4HA1KUFUudwt2Fyp/
	lkaYfxLCE7Ulfq8R0MgramACUyF6mmXnBSlOG+petFv2uiVhN+/05LXtTEezijdlaP3IO4zYRkHz2
	l+N0iY2Y3pmP+KbL15kF9iUi9rsVda706qX7CikU8R4LIwmepXV0c8UkSlazrRQ5Va6m2hGXCuoXt
	K/RIuYTsPd3F1f2BuWwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67Lf-0000Xr-9W; Mon, 24 Feb 2020 06:36:11 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67LW-0000XG-EY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:36:04 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01O6ZCQB148301;
 Mon, 24 Feb 2020 06:35:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=qvvE/QeaFeeWvi/ZddnrDx5vkFAlwi415cDHF7+KM3Q=;
 b=T94v3JSljCelxXlRsVLe9P13vnGTez4Pmixsn20wAhCZGBwBYR+iOXCiP6SH3RlxdRlA
 3pkUrkI+xBYuSn6yF08lfauBBShUfIW4PuQPoVad9kb9qlcqUcRZV3RtZuFumrgiS/bZ
 cr4z0BoxeqG65NviRh0/muLrZvJeOeTL8Vr5Qp3UieerOSYeMLgEtIQWLpLmWFLM2QG8
 AR8NOstuLywh+PpJectwnUQOqb4TXpc6KMKD1rlXVcx1lOCHUoufXeIvTpMxhpyK4cTr
 fSO4z4eoEdsoGpXYbWatayLl+LiGNet61SR2ll4lgymBvIS8FWcUIXPCU2X+BMPSQKtN gw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2yavxrd616-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 06:35:51 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01O6W4U5038129;
 Mon, 24 Feb 2020 06:35:51 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2ybdsfvyb1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 06:35:51 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01O6Ze0E008125;
 Mon, 24 Feb 2020 06:35:40 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 23 Feb 2020 22:35:39 -0800
Date: Mon, 24 Feb 2020 09:35:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] soc: fsl: dpio: fix dereference of pointer p
 before null check
Message-ID: <20200224063529.GA3286@kadam>
References: <20200221231143.30131-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221231143.30131-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9540
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002240056
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9540
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 lowpriorityscore=0
 spamscore=0 clxscore=1011 suspectscore=0 bulkscore=0 mlxlogscore=999
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002240056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_223602_532047_C8BB49D3 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Roy Pledge <Roy.Pledge@nxp.com>,
 kernel-janitors@vger.kernel.org, Youri Querry <youri.querry_1@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 11:11:43PM +0000, Colin King wrote:
> ---
>  drivers/soc/fsl/dpio/qbman-portal.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
> index 740ee0d19582..d1f49caa5b13 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.c
> +++ b/drivers/soc/fsl/dpio/qbman-portal.c
> @@ -249,10 +249,11 @@ struct qbman_swp *qbman_swp_init(const struct qbman_swp_desc *d)
>  	u32 mask_size;
>  	u32 eqcr_pi;
>  
> -	spin_lock_init(&p->access_spinlock);
> -
>  	if (!p)
>  		return NULL;
> +
> +	spin_lock_init(&p->access_spinlock);

Allocations in the declaration blog are not super common in the kernel,
but they're more bug prone.  Generally, it's not beautiful to call a
function which can fail in the allocation block.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
