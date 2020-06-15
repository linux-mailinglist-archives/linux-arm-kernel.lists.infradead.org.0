Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571351F954A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 13:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0uXD+g6m7H7zAJTrTISSvEjUOoWXJToqho8CQiNtj8=; b=gbT2qEUXkJsopJ
	1Y8fQjiADr+1Tg4/FJ3bpk+repF9q7WcLBUlgs0Q4mYqVhPlTRHrL+03CZ8OjSRmr1SI/wl8/5uUr
	/bhHQNyVixIqXy1J/ZLhMiavZThqMw2FguqksB7ZQpvYu0byLrffzTfvax/Ng8hdovKY599Tvoyhz
	uz0geLm9jV+nvF71vTO6GX9w+NtNl4jwbcWMRuBigDxQGf5E9MwytOuo3PH68JGMSu0mzYwgAMqnB
	GbZTxY6GufJ5Ag/KSaYeA2/46RTM5UG+yKUTCK+KQKFBB1zckPwaFIefdCkLw5i4uqc+G6RPXnO0V
	IQ0MvqIihywITdhYb4dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknFh-0001Wp-NO; Mon, 15 Jun 2020 11:26:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknFT-0001Vb-Jt
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 11:25:57 +0000
Received: from localhost (unknown [171.61.66.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C58E20663;
 Mon, 15 Jun 2020 11:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592220355;
 bh=hheBwTSFc6iwBWB8MsUTDTdzd+3OLaOnprLkDFHzJZ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m8rK1weuyASMxJgo3gsh7sPxRrQAYD12kwRU1DXbJp57frQ+XcatZNTgVFVlxrzQI
 HOg/s3WpJX7CJxde07iTNDrw+n3kKCCoA2P+oBdHx2M9cBJqLd2p4ITInuMOO2Twgz
 poRfTxYiKMbsrXKoOOM3hCXA5vN9EbhrexQch/hA=
Date: Mon, 15 Jun 2020 16:55:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200615112549.GL1393454@vkoul-mobl>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615071931.GK1393454@vkoul-mobl>
 <VE1PR04MB6638959679C644C76B4D3D3A899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB6638959679C644C76B4D3D3A899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_042555_695473_EB53E628 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 15-06-20, 08:59, Robin Gong wrote:
> On 2020/06/15 15:20 Vinod Koul <vkoul@kernel.org> wrote:

> > > Yes, but both assume spi controller driver could detect such dma
> > > failure before dmaengine_prep_*(). Let's wait Vinod's comment for that
> > > if dmaengine_slave_config could keep direction.
> > 
> > The direction is already in the prep_ call, so sending in dmaengine_slave_config
> > is not required, pls pass it in the prep_ call
> Hi Vinod,
> 	Is there any way to let the device driver to know dma controller is ready
> (in sdma case is sdma firmware loaded or not)before prep_call? Hence, spi core
> could map dma buffer or not. Prep_call is too late for spi core since the buffers
> have been already mapped. 

Can you use .device_alloc_chan_resources for that? This is where all
the resource allocation for a channel should happen...

> 	From my view, seems dmaengine_slave_config is the only one...Further,
> sdma need direction in dmaengine_slave_config phase, because currently
> what's the tx/rx script used on sdma channel is decided not only peripheral_type
> but also direction. For example, spi tx dma is running ram script to workaround
> ecspi ERR009165 while rx dma is running rom script, so only spi tx dma channel
> depends on sdma firmware loaded(now that could be detect by ' load_address
> < 0' in sdma_load_context() and prep_ call finally).
>    I knew direction is deprecated in dmaengine_slave_config, but that's really
> very useful for sdma to check if firmware loaded and spi core could get it earlier
> before prep_call(fallback to PIO if dma is not ready).

I think that is wrong expectation, dmaengine_slave_config should pass
the slave_config to driver and nothing else. The relevant action should
be taken in respective prep_ calls here, so that should be fixed as well

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
