Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2405316AB84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq/gxs1jq6SlR08Q7vVMu2GpAMRGQOuGfvjxrTBS+Qk=; b=gdPuLwCjT6uAcg
	qF4dlsivZZLw+R25wzqENJ3HLk/SSFTO3l2b4+qK6N8A0T7cWehQe8DD+8wNTQerb2Bhd7I2oIUYC
	eC7zS685T0faXbEUmds7AlFa7HfOYQKSPZOavKYLgoEVzmlcDpIP6am0yacVZHtbH7cUPeB5NmHw/
	OXcbPIwUYLWGCt3AodmbwnM3b41UC627PHgcMZx31Dp7liG8uykgIV75ucmmpNV5xQWoSIj6scDj6
	cUKR3TUoBBcg/SlhBztpFLN3VpAGXfQOKKYQixCQ6roHthiVlgaQX2QZ8kvCipW/yq3uDwmXisXMC
	NBOr6jKNkNrqrnwzOSPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Gd2-00034W-U4; Mon, 24 Feb 2020 16:30:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gcr-00033C-26
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:30:34 +0000
Received: from localhost (unknown [122.182.199.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A71C2080D;
 Mon, 24 Feb 2020 16:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582561832;
 bh=bWGcTJqlEjn5g6u4zNf52Tgw+7hzPPuuxO1718WofvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WOuUHmVuhUlHGACL8h761/MJUQrCsP7cItrYsH/EPFN5/CWTX/WD7k/gQIcfsYprC
 THqF5EMHw5Z/GPl8lOWySVsfqFUx1EDyJ8ughC2WyxFvU0X8Q70HSqqBtxGuaUOMGD
 LqdhIX6GEGVPCDYY4X0NXiFUHLN8GllBbgKZTpDA=
Date: Mon, 24 Feb 2020 22:00:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] dmaengine: coh901318: Fix a double lock bug in
 dma_tc_handle()
Message-ID: <20200224163025.GX2618@vkoul-mobl>
References: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
 <CAMuHMdWaCqZ_zcHuBetAQu4kmoffNw5jvHM5ciTi29MAxL70bg@mail.gmail.com>
 <20200219091754.GE2618@vkoul-mobl>
 <CACRpkdZ94VYtADCP9VXbNPsRkCacGFOYedd9dwXQw0Jve1HRjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZ94VYtADCP9VXbNPsRkCacGFOYedd9dwXQw0Jve1HRjw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_083033_122603_9BB55965 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-janitors@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dmaengine <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-02-20, 15:50, Linus Walleij wrote:
> On Wed, Feb 19, 2020 at 10:17 AM Vinod Koul <vkoul@kernel.org> wrote:
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
> I still have the hardware and it still works if that is the question :D

Thanks for confirming :)
> 
> And yeah it only has one CPU, but still has a DMA engine.
> 
> The patch is fine to apply because it fixes a bug, should the same
> hardware block be used on SMP.

Applied now.

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
