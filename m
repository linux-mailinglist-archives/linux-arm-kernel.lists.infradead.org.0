Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6153D1BC799
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCKjJhWcryB5nFKmhexBulyyn6lmTXhgwMoJCTSrWsk=; b=XmF6ie7LDWJgBt
	4/3+SdDRBd+VbkKoaz0x30pJxfIGPi9VFl6uGvP8anGugfuCP880yegwfusajo0/QNF8N+a5fAYzv
	XRFTfHCfPne2TI3n7gi0BjvBxGg//q/UGNgLc9ubHIeXIvuSbJ0Of6shL7iAfNBM+IaCYXaBwVaJo
	ydAnaeJWP7iDeNus0XxD+covmgVTa+boG/1xaKyDIGG7hZGbZGgztsgcaiOfcvaXlYrNaZ28V0lXU
	BSRyxY3SZjYpFF54DQ7qOjdPojkBH+ExJvdBJUzN363jEKmg19PNVt6N8qt03fkFaanEshj2Rez7k
	yvGmDgdrb40Fn3UDhkKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUhu-0006eG-Me; Tue, 28 Apr 2020 18:11:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUhU-0006Sh-Gu
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:11:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id j1so25814732wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 11:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pNbfrC8rDwAuodGT5ERADsTbO3c/Vh/+yOTx050zhP0=;
 b=K/xclh1S/kFtxc6UOGpZ+ohiaD7ty92e3dKm/xP1/TH0BBWqs7VnN8DfQonVkL4LrR
 z97FnjzTTjTmw1BmsKafAH0wimcnu1ldTfNc3mB2FQuNclCM3RwwVWseZNzd9oAh+MAO
 6tgBEwKFAl6hxYrHB9B2NdEH+SKkXgijB8Jk8ybjaYpm5oRkRB9GPm1iuTD4eNhRp+85
 oA5/VJIqRAFHUjeONw1iWzw6FgB+F6l90cWxxh6M8KO33PgR9eJ4M9RaamZNqwH43GJk
 MIx4kyzg/4MaqEAyVJ/hx0oVqb0wDDxHWOUf6wMSFOOf4AlttB+VNiBZdaLM4Uq68ENB
 c2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pNbfrC8rDwAuodGT5ERADsTbO3c/Vh/+yOTx050zhP0=;
 b=IZaaOIPlyyTVgq+2Yz4rf7WJ5Fpl7g8hTo0FSttRYJ8ZOHH0yPhx4VwQX6kCY3DVbk
 q5n3DijBZPcNKKWuEhnrXTcKdK13cgZEJH5P5Vr8qexhffRvMtE3J+isD5yzSjysnuIi
 Rw9HKhEj01Qou9quS2OyBWFhd5zhGUhK/OyuJuvxy4RiKSCtUmU6gFBgbZOewNnA5rwT
 q03U3AghXk9/d5LTzykEYSRRexDeDH/+HxGvqpmU2gk6tEq2LdQdsIRrETRaYzyT7mGo
 kMdsLADNsgf+PrRL2SWQIBeceqnMAyXIuLbKXn63Dbg5ZDgOz/lW9JUoILElzSPe4z1w
 zSYg==
X-Gm-Message-State: AGi0PuZ/Pubc242r/FQirvj4/oNaR29rMw17RKmVWtkRIjaq50tEJ9IB
 njPbzZ4TUfLouLlmaE4Ac41CFGypEdo=
X-Google-Smtp-Source: APiQypL8UKoMHBWQyl5cCBVbP+wHnMT/zsA5PP+l/BLWEo4jEZLw6EGU/lInIUUUDbEuSCUlfGRsGw==
X-Received: by 2002:a5d:54d0:: with SMTP id x16mr33042294wrv.86.1588097478728; 
 Tue, 28 Apr 2020 11:11:18 -0700 (PDT)
Received: from BV030612LT ([188.24.130.199])
 by smtp.gmail.com with ESMTPSA id h188sm4610830wme.8.2020.04.28.11.11.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 11:11:18 -0700 (PDT)
Date: Tue, 28 Apr 2020 21:11:15 +0300
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/1] dma: actions: Fix lockdep splat for owl-dma
Message-ID: <20200428181115.GB26885@BV030612LT>
References: <7d503c3dcac2b3ef29d4122a74eacfce142a8f98.1588069418.git.cristian.ciocaltea@gmail.com>
 <20200428164921.GC5259@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428164921.GC5259@Mani-XPS-13-9360>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_111120_725009_946D83BE 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 10:19:21PM +0530, Manivannan Sadhasivam wrote:
> Hi,
> 
> On Tue, Apr 28, 2020 at 01:56:12PM +0300, Cristian Ciocaltea wrote:
> > When the kernel is build with lockdep support and the owl-dma driver is
> > used, the following message is shown:
> > 
> > [    2.496939] INFO: trying to register non-static key.
> > [    2.501889] the code is fine but needs lockdep annotation.
> > [    2.507357] turning off the locking correctness validator.
> > [    2.512834] CPU: 0 PID: 12 Comm: kworker/0:1 Not tainted 5.6.3+ #15
> > [    2.519084] Hardware name: Generic DT based system
> > [    2.523878] Workqueue: events_freezable mmc_rescan
> > [    2.528681] [<801127f0>] (unwind_backtrace) from [<8010da58>] (show_stack+0x10/0x14)
> > [    2.536420] [<8010da58>] (show_stack) from [<8080fbe8>] (dump_stack+0xb4/0xe0)
> > [    2.543645] [<8080fbe8>] (dump_stack) from [<8017efa4>] (register_lock_class+0x6f0/0x718)
> > [    2.551816] [<8017efa4>] (register_lock_class) from [<8017b7d0>] (__lock_acquire+0x78/0x25f0)
> > [    2.560330] [<8017b7d0>] (__lock_acquire) from [<8017e5e4>] (lock_acquire+0xd8/0x1f4)
> > [    2.568159] [<8017e5e4>] (lock_acquire) from [<80831fb0>] (_raw_spin_lock_irqsave+0x3c/0x50)
> > [    2.576589] [<80831fb0>] (_raw_spin_lock_irqsave) from [<8051b5fc>] (owl_dma_issue_pending+0xbc/0x120)
> > [    2.585884] [<8051b5fc>] (owl_dma_issue_pending) from [<80668cbc>] (owl_mmc_request+0x1b0/0x390)
> > [    2.594655] [<80668cbc>] (owl_mmc_request) from [<80650ce0>] (mmc_start_request+0x94/0xbc)
> > [    2.602906] [<80650ce0>] (mmc_start_request) from [<80650ec0>] (mmc_wait_for_req+0x64/0xd0)
> > [    2.611245] [<80650ec0>] (mmc_wait_for_req) from [<8065aa10>] (mmc_app_send_scr+0x10c/0x144)
> > [    2.619669] [<8065aa10>] (mmc_app_send_scr) from [<80659b3c>] (mmc_sd_setup_card+0x4c/0x318)
> > [    2.628092] [<80659b3c>] (mmc_sd_setup_card) from [<80659f0c>] (mmc_sd_init_card+0x104/0x430)
> > [    2.636601] [<80659f0c>] (mmc_sd_init_card) from [<8065a3e0>] (mmc_attach_sd+0xcc/0x16c)
> > [    2.644678] [<8065a3e0>] (mmc_attach_sd) from [<8065301c>] (mmc_rescan+0x3ac/0x40c)
> > [    2.652332] [<8065301c>] (mmc_rescan) from [<80143244>] (process_one_work+0x2d8/0x780)
> > [    2.660239] [<80143244>] (process_one_work) from [<80143730>] (worker_thread+0x44/0x598)
> > [    2.668323] [<80143730>] (worker_thread) from [<8014b5f8>] (kthread+0x148/0x150)
> > [    2.675708] [<8014b5f8>] (kthread) from [<801010b4>] (ret_from_fork+0x14/0x20)
> > [    2.682912] Exception stack(0xee8fdfb0 to 0xee8fdff8)
> > [    2.687954] dfa0:                                     00000000 00000000 00000000 00000000
> > [    2.696118] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> > [    2.704277] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
> > 
> > The required fix is to use spin_lock_init() on the pchan lock before
> > attempting to call any spin_lock_irqsave() in owl_dma_get_pchan().
> > 
> 
> Right, this is a bug. But while looking at the code now, I feel that we don't
> need 'pchan->lock'. The idea was to protect 'pchan->vchan', but I think
> 'od->lock' is the better candidate for that since it already protects it in
> 'owl_dma_terminate_pchan'.
> 
> So I'd be happy if you remove the lock from 'pchan' and just directly use the
> one in 'od'.
> 
> Out of curiosity, on which platform you're testing this?
> 
> Thanks,
> Mani
> 

Hi Mani,

Totally agree, I will send a new patch revision as soon as I do some
more testing.

I'm currently experimenting on an Actions S500 based board (Roseapple Pi)
trying to extend, if possible, the existing mainline support for those
SoCs. I don't have much progress so far, since I started quite recently
and I also lack experience in the kernel development area, but I do my
best to come back with more patches once I get a consistent functionality.

Thanks a lot for your support,
Cristi

> > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> > ---
> >  drivers/dma/owl-dma.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
> > index c683051257fd..d9d0f0488e70 100644
> > --- a/drivers/dma/owl-dma.c
> > +++ b/drivers/dma/owl-dma.c
> > @@ -1131,6 +1131,7 @@ static int owl_dma_probe(struct platform_device *pdev)
> >  
> >  		pchan->id = i;
> >  		pchan->base = od->base + OWL_DMA_CHAN_BASE(i);
> > +		spin_lock_init(&pchan->lock);
> >  	}
> >  
> >  	/* Init virtual channel */
> > -- 
> > 2.26.2
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
