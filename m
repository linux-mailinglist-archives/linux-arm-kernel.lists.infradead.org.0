Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102C4427E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/1N10JT4lv+6P19whJIbajhx6HVBGaISU/lPOixaAc=; b=GnvQ4D/qs9JoJR
	x/c/C/iOLrHYM+r7Y0qopmWlHUgrXLcMYZyDiet42WJFkBleeMTA6WTql1+npe+V+nl51z/pcWvR+
	3Uqkp7PNzBcm2HQaTp39TvTKRt/bu9Cj6YHG4q0+hx8u5RhN4mQMRsMlGgzztd83ZnkYsu37kqAKu
	yNp92yDUfTbpiJ/Q6IvK9tLMBlMRq6VsawZdJWxtCupR2AnOaZ5G7nK0yc/RTw/Av4S66YjBfVdzH
	5yE/xQdE0ipJrosA/iZB0RDgjUd5SyMJSfnHKr+BRDvohqBxcppyvOpvqqA8YSMXolu5R9uOyAd60
	NkTVI6O/5A3Z1Kif7vmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3YI-0002nI-TJ; Wed, 12 Jun 2019 13:44:34 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3YA-0002mi-Vi
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:44:28 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5CDdtcW012666;
 Wed, 12 Jun 2019 13:43:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=13DeyiWWSqICag3GrfQje4UwUYiMYyzOrQqvgi39M/E=;
 b=Vh37hBIFFlGpA/8AuwCaEWRjxeLeqx7U7spMuUekaayQADjONbYSQTVzPub6mQygmEIn
 gVGj8dAwEwOjhcBTWaAcJn/dWVYTdKnlhCfV0TC3PgxZi9wV8gwnM9a5fQHxLwtui2qu
 ji4sd/v7Xv/JY+9MxeVDXjJtneaB0QjiQPQi5KvfyvL0BfC/ksjQqnF7FPNdP2BlyOZG
 XfpV/suOY0UWbeGh+DfN9mU1cgSV/93TtfLrvToLPcAjfNkLDMvqPCufclFdtmgREuN9
 EtgAgncGquhPEY44UQImslS+rAgz3Vd7JRWyT6R4fkio4EBFrQLzAridR46UT7yCLm40 Ng== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2t02heumw7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 13:43:11 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5CDeB0N038051;
 Wed, 12 Jun 2019 13:41:11 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2t0p9rvenc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 13:41:11 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5CDf64d025367;
 Wed, 12 Jun 2019 13:41:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 06:41:06 -0700
Date: Wed, 12 Jun 2019 16:40:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] drm/mcde: Fix uninitialized variable
Message-ID: <20190612134057.GE1893@kadam>
References: <20190612133038.5522-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612133038.5522-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906120093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906120093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_064427_111104_3AEF66E3 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 03:30:38PM +0200, Linus Walleij wrote:
> We need to handle the case when of_drm_find_bridge() returns
> NULL.
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/mcde/mcde_drv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
> index baf63fb6850a..bc11c446e594 100644
> --- a/drivers/gpu/drm/mcde/mcde_drv.c
> +++ b/drivers/gpu/drm/mcde/mcde_drv.c
> @@ -319,7 +319,7 @@ static int mcde_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct drm_device *drm;
>  	struct mcde *mcde;
> -	struct component_match *match;
> +	struct component_match *match = NULL;
>  	struct resource *res;
>  	u32 pid;
>  	u32 val;
> @@ -485,7 +485,7 @@ static int mcde_probe(struct platform_device *pdev)
>  		}
>  		put_device(p);
>  	}
> -	if (IS_ERR(match)) {
> +	if (IS_ERR_OR_NULL(match)) {
>  		dev_err(dev, "could not create component match\n");
>  		ret = PTR_ERR(match);

This doesn't work.  If "match" is NULL then "ret" is zero which is
success.

>  		goto clk_disable;

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
