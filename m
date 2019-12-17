Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38273121FAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/UEdbhgT14lr2HT/bRoMIwNxInz8jS2REOlsUXG60Q=; b=VTGjS0Qp/lIq6Q
	6gEQZLdULpOBFblzy6DIO9i1I4t5UzUe3+7TcyGy4Qgwiu1V/JGvV7ltclBVZP02v9pbzZNMkD+r0
	lj4O6FRc6EcO60+axT7BaaIX/99yR2pyxOwoClBy5vGsvChWSr+OL+tzl4A9zaKbx7vzMs6bionCG
	aOmXJUpVC9hrONtlZGOtcCX8HhSx9SGnb4cQ2DpWh5LzcD0r6W903t7e6RAo7ocVjAoQZEjzHmbmJ
	nZ5taimgl239fRyuocDYPO5bFuEUq2M7BTiOJwkkHU6HueYlBHqSGvcoPJFg7XY9jmGjeEXksU2zk
	ccnlnbW4O+UAMyrdIfEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0i2-0007uZ-1e; Tue, 17 Dec 2019 00:27:30 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0hr-0007u9-VX
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:27:21 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C046B810D;
 Tue, 17 Dec 2019 00:27:58 +0000 (UTC)
Date: Mon, 16 Dec 2019 16:27:16 -0800
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: Re: [PATCH 12/14] dmaengine: ti: omap-dma: Use cpu notifier to block
 idle for omap2
Message-ID: <20191217002716.GT35479@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
 <20191217001925.44558-13-tony@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217001925.44558-13-tony@atomide.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_162720_051687_E02EB2E2 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [191217 00:20]:
> diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
> --- a/drivers/dma/ti/omap-dma.c
> +++ b/drivers/dma/ti/omap-dma.c
> +	case CPU_CLUSTER_PM_ENTER:
> +		while (1) {
> +			lch = find_next_bit(od->lch_bitmap, od->lch_count,
> +					    lch + 1);
> +			if (lch >= od->lch_count)
> +				break;
> +			c = od->lch_map[lch];
> +			if (!c)
> +				continue;
> +			if (omap_dma_chan_read(c, CCR) & CCR_ENABLE) {
> +				pr_info("XXX %s: lch%i busy\n", __func__, lch);
> +				return NOTIFY_BAD;

Oops the pr_info line here can be dropped :)

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
