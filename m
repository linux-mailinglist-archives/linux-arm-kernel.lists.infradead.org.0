Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3757CBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:05:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKDcyGJ7Co8/EYawds7QB90zRK5nW5917Ucokt0bHWA=; b=JQxWjAdEdjFwFu
	cJP5Snq3vJcKt0zte7lFqgHlcKEnln/KBCqAyZ5a5yJW91VrjhuGgF0VO1UuJGHMb6uP1bbX/Q8H8
	7NeENZlB0b6jLnrRsbeq9KMFEfX8kZh2qFqpfX1WhoIJC4kacrCPaOmPCTZERXfnl+V2FmRjTQLKw
	lH3GBCFUgL9YHbqtSeBhUEjV+TZqyapk2NwJ3XMOoKdG1g7sJVvIGrk8V4n5XdRmLVyPy3WgV2ZyV
	nM4JZT2deVaujlMgusTR7sfHCecYR6IhbLW8bMv9GBKcLfK2ejFPRWmET90rk+MlT0iEQ6Fa2nioy
	Idhwe8CqKt55syJ4gLCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOTV-0007aR-7c; Thu, 27 Jun 2019 07:05:41 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOT2-00073c-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 07:05:14 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5R74G0p050697;
 Thu, 27 Jun 2019 07:05:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=hRU06uH8360fbw0mabho66WQvlTQhCWmUo1y/p8qPLs=;
 b=0V9EVW5P9eBAIXvdsepxSm1ALI4xXco/EmqlVFVNg/BzDf86KpH7fW7uad/4f8L4vBbn
 PfYO9yt1YVJ62IYcAnCDL6uGcw5dDJinKrILZpq4plxjz7ipIjVRn/mgOFRoOdSBln5P
 xHx8iwnu5broShhSVSymNSSszw5H4fLCNSpfwEjqHh7i6NuskWXQrJKMqsreADxvEmWB
 2PP1ynq4c3Ock9CcykrKZWdIlJf33/6geDPSP2tofmoEdxAIs+7Pr62OwtaOSmPT8gkw
 /IbRk7aFuuqOKezfc/46FwT/eKTrmQM6gE3++v4X4YX3yPgubCAnnnoz8Pk4psMsnHhW lg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t9cyqpbqh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2019 07:05:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5R73SZ3005637;
 Thu, 27 Jun 2019 07:05:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2tat7d76m0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2019 07:05:04 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5R751CF021457;
 Thu, 27 Jun 2019 07:05:02 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 27 Jun 2019 00:05:01 -0700
Date: Thu, 27 Jun 2019 10:04:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH] media: staging/imx: Fix NULL deref in
 find_pipeline_entity()
Message-ID: <20190627070452.GA19308@kadam>
References: <20190626185225.11992-1-slongerbeam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626185225.11992-1-slongerbeam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9300
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906270080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9300
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906270081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_000512_931353_ED4C0F4C 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 11:52:25AM -0700, Steve Longerbeam wrote:
> Fix a cut&paste error in find_pipeline_entity(). The start entity must be
> passed to media_entity_to_video_device() in find_pipeline_entity(), not
> pad->entity. The pad is only put to use later, after determining the start
> entity is not the entity being searched for.
> 
> Fixes: 3ef46bc97ca2 ("media: staging/imx: Improve pipeline searching")
> 
> Reported-by: Colin Ian King <colin.king@canonical.com>
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media-utils.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
> index b5b8a3b7730a..6fb88c22ee27 100644
> --- a/drivers/staging/media/imx/imx-media-utils.c
> +++ b/drivers/staging/media/imx/imx-media-utils.c
> @@ -842,7 +842,7 @@ find_pipeline_entity(struct media_entity *start, u32 grp_id,
>  		if (sd->grp_id & grp_id)
>  			return &sd->entity;
>  	} else if (buftype && is_media_entity_v4l2_video_device(start)) {
> -		vfd = media_entity_to_video_device(pad->entity);
> +		vfd = media_entity_to_video_device(start);

Can we also remove the "pad = NULL" assignment at the start of the
function?  Otherwise static checkers and new versions of GCC will warn
that the assignment isn't used.  Plus removing the initialization will
prevent bugs like this in the future.

regards,
dan carpenter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
