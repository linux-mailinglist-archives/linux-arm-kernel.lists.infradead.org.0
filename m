Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F3AF8814
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:37:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzFd5MGKN7eVr5Ce2aQmABpWQtZTmWa4N4vjDJjCgpM=; b=hEw+BP4oICG1Su
	B5P/Vh7hSuLYi4Vi5kuOLZjOrSHe10mc7bL6wcCE59pENSl1Y2Euv3BiQXREXUm+7Zbouz6sa/Z8R
	xaHY/xH/tMY5Z9jCL7qGWLoBbD45o21A3v7+XKZz4JGY6uXDTTqpRS+DK9UbweSr5njuR4/VMFzqZ
	CwS7EZdfkQ2Qlr9+lOmDG0HSdfx+rsT4UwvfZBBW4nIXf5CV+Ac79v/oMPJnJI7NpBxjKH9y4sj7P
	3BsZGKM6aaKorLMHmJriM/JwmPWPPEcHJd3Nk2yngl/LzlEwpV++8blXCbldFU1I/Pn2pZ7R1cFtJ
	YKsNmBBpJ2sqDnjzER4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUOrK-0007yC-FY; Tue, 12 Nov 2019 05:36:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUOqo-0007ig-JD
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 05:36:28 +0000
Received: from localhost (unknown [122.167.70.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6960321783;
 Tue, 12 Nov 2019 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573536986;
 bh=YDjjnafho2uCvMpxMXlnLJhhfTeoSuyoFzfDVXn7/m4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sP/sZWa6JWAiI7hq87AEWqr9AfSulRdI9YTrCKxSrQ9hoL4y7OXcCBvFDo6lhJO0f
 FeJ/Vqsm9SzcuKMOUI1LrLDl4Fp3KOIMDqB1bOIZf5z1Xn5+3hQ0ld7AfxnpvhMfIT
 NS+jfbiH+eK3W0HryxKa7RJk06UWxK51nrET6tF0=
Date: Tue, 12 Nov 2019 11:06:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 12/15] dmaengine: ti: New driver for K3 UDMA -
 split#4: dma_device callbacks 1
Message-ID: <20191112053621.GW952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-13-peter.ujfalusi@ti.com>
 <20191111060943.GQ952516@vkoul-mobl>
 <6d73f6e1-6d85-d468-2e69-47d36ed75807@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d73f6e1-6d85-d468-2e69-47d36ed75807@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_213626_723158_70191412 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.167.70.123 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-11-19, 12:29, Peter Ujfalusi wrote:
> On 11/11/2019 8.09, Vinod Koul wrote:
> > On 01-11-19, 10:41, Peter Ujfalusi wrote:

> >> +static enum dma_status udma_tx_status(struct dma_chan *chan,
> >> +				      dma_cookie_t cookie,
> >> +				      struct dma_tx_state *txstate)
> >> +{
> >> +	struct udma_chan *uc = to_udma_chan(chan);
> >> +	enum dma_status ret;
> >> +	unsigned long flags;
> >> +
> >> +	spin_lock_irqsave(&uc->vc.lock, flags);
> >> +
> >> +	ret = dma_cookie_status(chan, cookie, txstate);
> >> +
> >> +	if (!udma_is_chan_running(uc))
> >> +		ret = DMA_COMPLETE;
> > 
> > so a paused channel will result in dma complete status?
> 
> The channel is still enabled (running), the pause only sets a bit in the
> channel's real time control register.

Okay and which cases will channel not be running i.e., you return
DMA_COMPLETE above?

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
