Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B5716405A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:28:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ost01iuzs6rG3ZdCC7N25DlyLBv6BrZFBWJ4ta3WpaU=; b=NsrFkCxBOcsM8V
	mrHGY/8LhsBQjpjTaANHuvEZC40nLl+kMpEAzKfLym6tR25HFrHxOsV9xUwvb7mEnJCuIEkbQZcTp
	xUNuOnJhZVwWW5ytjQDjWKRSNxJ3WGdzGqjZKdKdGg0fI9zqsuDjUez93QOKDfX+3d39DMpkg0UTu
	4bhlfdst274en+nb4NDtre//VFuaxGhEb2Ix55vaISSh5IeS5yh7iKFhW5BbZH1u0LNwoWDODcNAN
	mmmg/buyELJXzXBUmJGSspZlJ39clQml6XCufs5woYKJ/rEOAIJ/Vd3Yhrm9w6p9b1r2ZvWebkeO0
	LpDPrGfpBu80h/biEK4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LeG-0003qm-7G; Wed, 19 Feb 2020 09:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Le7-0003qK-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:27:57 +0000
Received: from localhost (unknown [106.201.32.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 849AA2064C;
 Wed, 19 Feb 2020 09:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582104475;
 bh=9kyEssX5GEbwlVExA9JUPsMK72bF0lQACS2bjDvlqvE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ps8pNHJpu5H+1dtWXtP1nZ/vMn+PISHycpZFQKHsacq25au3EysOMbcLKDHH3BAd2
 y73T6NuhAIbWZ8PVVOg4Zm8zeE8VZvgaMlmRXAXSZpaYiONEGAhq11oUnKgpObKaGa
 nfYJZdekeW4qPjWgALR9BhLDf5iJ6mdLxnWo5SC4=
Date: Wed, 19 Feb 2020 14:57:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] dmaengine: coh901318: Fix a double lock bug in
 dma_tc_handle()
Message-ID: <20200219092751.GH2618@vkoul-mobl>
References: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
 <CAMuHMdWaCqZ_zcHuBetAQu4kmoffNw5jvHM5ciTi29MAxL70bg@mail.gmail.com>
 <20200219091754.GE2618@vkoul-mobl>
 <CAMuHMdVC_=V6z+8GubgDvWR37zZdr8f3Fqs-KYUYdZ+e=wYCyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVC_=V6z+8GubgDvWR37zZdr8f3Fqs-KYUYdZ+e=wYCyg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_012755_830214_8D69B83B 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dmaengine <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-02-20, 10:20, Geert Uytterhoeven wrote:
> Hi Vinod,
> 
> On Wed, Feb 19, 2020 at 10:18 AM Vinod Koul <vkoul@kernel.org> wrote:
> > On 17-02-20, 23:24, Geert Uytterhoeven wrote:
> > > On Mon, Feb 17, 2020 at 3:41 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > > The caller is already holding the lock so this will deadlock.
> > > >
> > > > Fixes: 0b58828c923e ("DMAENGINE: COH 901 318 remove irq counting")
> > > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > ---
> > > > This is the second double lock bug found using static analysis.  The
> > > > previous one was commit 627469e4445b ("dmaengine: coh901318: Fix a
> > > > double-lock bug").
> > > >
> > > > The fact that this has been broken for ten years suggests that no one
> > > > has the hardware.
> > >
> > > Or this only runs CONFIG_SMP=n kernels?
> > > This seems to be used in arch/arm/boot/dts/ste-u300.dts only, and
> > > CONFIG_ARCH_U300 is a ARCH_MULTI_V5 platform, which looks like
> > > it doesn't support SMP?
> >
> > Should we drop the driver then..?
> 
> Why? Because spinlocks are no-ops on SMP=n, and spinlock bugs thus don't
> affect the single platform using the driver?

That doesn't answer the question if anyone has a hardware and we have
users :)

Sorry I should have written better about hardware and testing
rather than cryptic reply which may have suggested about SMP :)

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
