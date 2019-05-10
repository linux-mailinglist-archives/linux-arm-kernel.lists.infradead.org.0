Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E091A0DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 18:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTONyskWw8HA19Oy7YsMrEoKAreAk3/f10zgQZgjK+g=; b=emsww7izPj0BqK
	qkl7Dsm63bv43CaY1+h8l8zoAoALvuxSXBq/O3X/+fe3pHeMXbQ0bGDCj0LUXigBlnZE/+rD0TLUX
	EvzsU/erZeE6HJcG+zAbzohvqN/F0fmwPfdowq80VvVCNTkJhOV9v8UNSWO7wj50dFlNvTjBb56K6
	l8DDhKWtGMXctaBHY2jcozh4jC4N/lIkX7cwAmUkmzugC0jcvAAn6ehUULZCmPbHZ0IRv5JhmRAn3
	Wvs/oSvN+fStRfAgmxlB/wbDLEBJZbAx8eNErvBT6i3m3Dg6w/PJjw4htj5z5zhVkCLcYhxfRUCjq
	qvlpnEDQ0fFX6Dpsv+Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7wY-00033c-9F; Fri, 10 May 2019 16:00:18 +0000
Received: from smtprelay0042.hostedemail.com ([216.40.44.42]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7wR-0002Wf-M5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 16:00:13 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 426E0181D396A;
 Fri, 10 May 2019 15:59:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::::,
 RULES_HIT:41:355:379:599:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:2904:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3874:4321:5007:6691:10004:10400:10848:11026:11232:11657:11658:11914:12043:12048:12296:12679:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21433:21627:30054:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: plot02_906f77e1ab355
X-Filterd-Recvd-Size: 1887
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Fri, 10 May 2019 15:59:52 +0000 (UTC)
Message-ID: <82974f50ad02342abd59b800a802f7adecabc0b9.camel@perches.com>
Subject: Re: [PATCH] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
From: Joe Perches <joe@perches.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Felipe Balbi
 <balbi@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Fri, 10 May 2019 08:59:51 -0700
In-Reply-To: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
References: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_090011_800033_63D23EDF 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.42 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-usb@vger.kernel.org, James Grant <james.grant@jci.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-10 at 14:42 +0200, Alexandre Belloni wrote:
> Gadget drivers may queue request in interrupt context. This would lead to
> a descriptor allocation in that context. In that case we would hit
> BUG_ON(in_interrupt()) in __get_vm_area_node.
[]
> diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
[]
> @@ -938,7 +938,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
>  	struct lpc32xx_usbd_dd_gad	*dd;
>  
>  	dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
> -			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
> +			udc->dd_cache, (GFP_ATOMIC | GFP_DMA), &dma);

trivia:

This could fit nicely on a single line without the
unnecessary cast and the unnecessary parentheses
around the GFP_ types.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
