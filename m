Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15B512927A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4SEgmLjy8v7Q2jVO7JaSGOdE7d8lPWbZDzcqz4B5yI=; b=ubpfHE5ge0FaTE
	TGo2Xt1G+ERkPJqboBZBi2hMD5fU79M4vlaGecSykY6NU6JSAKpN5O5/+VAfmvpenMX4FtscO5Eu+
	zXHaut09stsOKLfyF4XW0fg1B890qof2VAF243ToFq1mLFKinzeibtyWuep1YqbcfYcWJA8Uj6I8P
	xeBHvofO6GilskrO30iwUweNlGrv+5h9w1ylcP3VM3VKK4JZ1HwgBne0mAZ/nv5wPocDAldnKMq+3
	NOc1vDzrfjbTJ2+gwPV2XVP1bOWBQrVUgLeKZZf04vy8/7YGQ0HLxFJmW8IysW7MmUnMJzi7hT8XC
	MhLv6B7RtTZvqwKvlq4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijIRW-0005bO-SL; Mon, 23 Dec 2019 07:47:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijIRJ-0005YS-0U
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 07:47:42 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7FD920709;
 Mon, 23 Dec 2019 07:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577087260;
 bh=4xIpyul81ZB6jziSHYOg8wZLR7P2OO3hPO/6T4WzP9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sj264GW4NWW558WLPO7JhumGISP1AW3mT83azNaMc30GCm41ZkGCwn45FLST/eDPC
 qNag4qDsVEKOArRkvFq+0kXd2rzcZk2F7XDS6PkGixRFhdcuexZ0vPylIC/DYLaxHS
 6IXXYXTNrWOAsQSIEGGu23cAyHBKsBi1glCbuHvs=
Date: Mon, 23 Dec 2019 13:17:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [PATCH 12/14] dmaengine: ti: omap-dma: Use cpu notifier to block
 idle for omap2
Message-ID: <20191223074736.GB2536@vkoul-mobl>
References: <20191217001925.44558-1-tony@atomide.com>
 <20191217001925.44558-13-tony@atomide.com>
 <20191217002716.GT35479@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217002716.GT35479@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_234741_073862_8B239C42 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-12-19, 16:27, Tony Lindgren wrote:
> * Tony Lindgren <tony@atomide.com> [191217 00:20]:
> > diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
> > --- a/drivers/dma/ti/omap-dma.c
> > +++ b/drivers/dma/ti/omap-dma.c
> > +	case CPU_CLUSTER_PM_ENTER:
> > +		while (1) {
> > +			lch = find_next_bit(od->lch_bitmap, od->lch_count,
> > +					    lch + 1);
> > +			if (lch >= od->lch_count)
> > +				break;
> > +			c = od->lch_map[lch];
> > +			if (!c)
> > +				continue;
> > +			if (omap_dma_chan_read(c, CCR) & CCR_ENABLE) {
> > +				pr_info("XXX %s: lch%i busy\n", __func__, lch);
> > +				return NOTIFY_BAD;
> 
> Oops the pr_info line here can be dropped :)

feel free to add my after after fixing :)

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
