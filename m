Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B606098A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6VJ2x8Mp1rOtS7Y/IJqYuHPktlxRTBxm30O6OmdQvE=; b=KLFoovJBAu680w
	/Ib6J+EcIL25U+A/raUq72n8xh4pepvh+EcxIxzmXBYTz3WSsP3d6eASWwCW/nSKP5xtuAubwSTvu
	+Hs5Y1pMx37wiUbzmSPV9awbh6El6l+4XpdVEHBLWeerfW6LDSnnwxL9NH6J5rIifUEwQUGpkdJ+C
	cz2xsg5AAl9/x8hHDG8qwq6J9DCtJTz5Q4WgZ9T1tFsAZdAFhpsq9rJp78aFZKO/UYr8/UaWj/+Nt
	GA8k6C0xe2UgPjWkSr2zD1IvxJILwONim1EDlp4O3KWZi1k2UFX6jo+zxNwy7ZO5ZMXkxawuT5xJk
	ZffX3YK5aagoxGXA2sbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQP2-00088o-Js; Fri, 05 Jul 2019 15:45:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNH-0005QR-A8
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jnSEXlc9JN7dVSK7THjj8RImyxhqQnyvpJ3As+yrb0g=; b=Ldt7dEASGmcAh8yazYAP7bJpp
 x4Sk7GWWmAd5Z7S4VRvGkLblvT9uLvdPtQPeUxleUTMOEF6ha4CMN060WfJ7Nr+/e8idoRfv3LDhh
 Q6tPo5B828GjACiAi+NGi5NMHgTSDgedGVKukPAegGfMAYtTIIIlXtH877974q/OUb61ACMA1H6oq
 rIU2Wlu87WN+ElvnGL6ntVb2v7CpGs2DdF/FyYbkQY+nfYpF3jAiGQvFKFP0ZivD+dLS6A+9Vupe1
 rUNpOSCFc9xrAtSQFS4oQ+RSydPXBLer2SuABBeu3rJEhDttoagUHVJfF8diRs/VVovMCHU+xxy61
 l9fC59t4Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIyz-0000Kj-7X
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:50:14 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05FEF218A3;
 Fri,  5 Jul 2019 07:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562312980;
 bh=nbUdxjVXdeGRh1ae5O8KsM/oe6+kZ/hnblt7BvODiQs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rEpSjo2aPJ7I1Pk7pXNwW0tbQRyOrO3vHMUD16ysrCTHZsSdWk0z/2hdRSCG1zm/7
 facLWarRUcEU7134axoOzgtpBqSskyyxT3o8cGSd6phbIKvMgcxcvgLc44hg7LCyFJ
 Ui5X+yfVKfTATY1LdxtU6YEWv2vsq50BijvQ+rxI=
Date: Fri, 5 Jul 2019 13:16:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v2] dmaengine: imx-sdma: remove BD_INTR for channel0
Message-ID: <20190705074626.GB2911@vkoul-mobl>
References: <20190621082306.34415-1-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621082306.34415-1-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: thesven73@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 stable@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, m.olbrich@pengutronix.de, festevam@gmail.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-06-19, 16:23, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> It is possible for an irq triggered by channel0 to be received later
> after clks are disabled once firmware loaded during sdma probe. If
> that happens then clearing them by writing to SDMA_H_INTR won't work
> and the kernel will hang processing infinite interrupts. Actually,
> don't need interrupt triggered on channel0 since it's pollling
> SDMA_H_STATSTOP to know channel0 done rather than interrupt in
> current code, just clear BD_INTR to disable channel0 interrupt to
> avoid the above case.
> This issue was brought by commit 1d069bfa3c78 ("dmaengine: imx-sdma:
> ack channel 0 IRQ in the interrupt handler") which didn't take care
> the above case.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
