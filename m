Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4574EF2B8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hh49UnuRxZ5vteYflk5zbLXgnw2VxdHEanQUkh1DqV0=; b=QoH7kkGepewIUJ
	dNptpduQBfERMKuSr/nnzKiOtHoD38dfj6xRLMMLWnmD1otkq/0XQibj1+xBySR8bWKQ0BOpF1fQV
	pDrFAP/4SxynCLtnroS1dxHiusDCMMgktp9k/pTXfeyXTGXHliJjhq45j8f3GrZ6w9eUtcAAoCZ+R
	r9ZDTdbNsjfK/92grtrbzg8Q+5d+p6Uad05Wpk55cPLBUF/Lpol4ohvv9dmoSts/xqXJlvy1iRyAH
	xv1j3kae48/2Eq+rEEqy5WdQNyU6RrWkifDCEZHkWQg+rEbFfi3ooE5r5qk0fmwUs4g02VDIdc1id
	ZKgR1W/331iHjV51heXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeV9-0002w0-Jx; Thu, 07 Nov 2019 09:54:51 +0000
Received: from smtprelay0119.hostedemail.com ([216.40.44.119]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeUz-0002sH-U9; Thu, 07 Nov 2019 09:54:43 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id F0F76182CED34;
 Thu,  7 Nov 2019 09:54:36 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 13, 1.2, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3653:3865:3866:3870:3871:3872:3873:3874:4321:5007:6119:6691:7903:10008:10400:10848:11026:11232:11473:11657:11658:11914:12043:12048:12049:12296:12297:12438:12740:12760:12895:13019:13069:13095:13161:13229:13311:13357:13439:14659:14721:21080:21433:21627:30029:30054:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:1:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: ring31_45311ab5a8d41
X-Filterd-Recvd-Size: 1775
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Thu,  7 Nov 2019 09:54:35 +0000 (UTC)
Message-ID: <4c74db2614cefe23f888d0643c2d7c356086745a.camel@perches.com>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
From: Joe Perches <joe@perches.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, hjc@rock-chips.com, 
 heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 07 Nov 2019 01:54:22 -0800
In-Reply-To: <20191107092945.15513-1-wambui.karugax@gmail.com>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015442_038894_FCDED43C 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.119 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
> Replace the use of the dev_err macro with the DRM_DEV_ERROR
> DRM helper macro.

The commit message should show the reason _why_ you are doing
this instead of just stating that you are doing this.

It's not that dev_err is uncommon in drivers/gpu/drm.

$ git grep -w dev_err drivers/gpu/drm | wc -l
1950
$ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
756

> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
[]
> @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  	}
>  
>  	if (!dsi->cdata) {
> -		dev_err(dev, "no dsi-config for %s node\n", np->name);
> +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
>  		return -EINVAL;
>  	}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
