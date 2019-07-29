Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BAE78666
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcnrYWb6tp1Nk8z9X2gErXiQOCkAzw6AoFIDELCbNKQ=; b=F8LpE9wfqZooO7
	RXw7T6G/KZRnOHm7DDPZbjHhrKc+X+DVLjU6+ksuVX2r9s70QjW3Vlew3O6Ufd1/2vd7EKKagZ5FF
	u6tQIIgL6BIxtC6y44kE2hExlVB/iot2+gS6dSF/xzv+to+fIKfeM/RozOdau8O0OMmE0udxQsN86
	GAeQjtqOOO2nN2YKuZp94aIR4yjXJ8hWgkwCGHB+hlQneAPMDNDkBKNJcOBFe8IGo8+TW/qi6sbip
	kqdgzDZ+1TG8w4Q3n0nqylknBCUXLwZ+RYI+RRz1wMlYXyaGhW23/a9nOwVeT8iGl9D0MvUFQAR82
	yZiKcSlicwwJBPZkjkfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0BF-00043M-Ib; Mon, 29 Jul 2019 07:34:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0Ay-00042m-Ji
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:34:33 +0000
Received: from localhost (unknown [122.178.221.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11F62216C8;
 Mon, 29 Jul 2019 07:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564385671;
 bh=t9LsxbTH4MpBJFWH0d4fER/3hJuiJvavkL6v8Hy/LVs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gDCAi84qIn4/Ux74deqn5LHJcGwjCrnLKaVJpn7EYNWaU92guoMzx37Vcdua72l7v
 9KHbGzFgTN5M7Yj41gOsKfTma6DngePMAHQAliKx4QBoRnelDRdfvV/B5jPyEUjFLy
 KNTqe09gJWMBo/SIcTdKS3+dLAx55mY37Jj/IEkg=
Date: Mon, 29 Jul 2019 13:03:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v5 0/3] dmaengine: ti: edma: Polled completion support
Message-ID: <20190729073319.GK12733@vkoul-mobl.Dlink>
References: <20190716082655.1620-1-peter.ujfalusi@ti.com>
 <20190729064209.GF12733@vkoul-mobl.Dlink>
 <fe201b5b-916d-1889-31b0-dcac20733b65@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe201b5b-916d-1889-31b0-dcac20733b65@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_003432_667916_B62676E4 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-07-19, 10:24, Peter Ujfalusi wrote:
> Vinod,
> 
> On 29/07/2019 9.42, Vinod Koul wrote:
> > On 16-07-19, 11:26, Peter Ujfalusi wrote:
> >> Hi,
> >>
> >> Changes since v4:
> >> - Split the DMA_COMPLETE and !txstate check as Vinod suggested
> >>
> >> Change since v3:
> >> - fix DMA pointer tracking for memcpy
> >> - completion polling is only done when it is asked by not providing
> >>   DMA_PREP_INTERRUPT for memcpy
> >>
> >> Changes since v2:
> >> - Fix typo in the comment for patch 0
> >>
> >> Changes since v1:
> >> - Cleanup patch for the array register handling
> >> - typo fixed in patch2 commit message
> >>
> >> The code around the array register access was pretty confusing for the first
> >> look, so clean them up first then use the cleaner way in the polled handling.
> >>
> >> When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
> >> does not want to use interrupts for DMA completion or because it can not
> >> rely on DMA interrupts due to executing the memcpy when interrupts are
> >> disabled it will poll the status of the transfer.
> >>
> >> Since we can not tell from any EDMA register that the transfer is
> >> completed, we can only know that the paRAM set has been sent to TPTC for
> >> processing we need to check the residue of the transfer, if it is 0 then
> >> the transfer is completed.
> >>
> >> The polled completion can bve tested by applying:
> >> https://patchwork.kernel.org/patch/10966499/
> 
> Should I resend this patch so the polled mode can be tested in upstream?

Yes sure

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
