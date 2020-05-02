Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C2D1C2540
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 14:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLKyKnLJSHtl7BzuIOiWWfBxH/UrRqnaUkcdvT6v8l4=; b=fbL20co4DKIM+d
	ys0u++lgGFqG8XXNRnOBiRd4y23cPt2caGHA7FVoXGsjSgyynV/xFtdiigLXz0F7zAwXJGVCvWuR4
	jFFPq0eFc4W+60D9HDj8/3OBFJR1EhNJK4DBZqnzTIH/6GQJs4CxI/CybUNriFCTMMYO2q+EUxzIS
	xsazalaLph/BFeqDCb1f+aAuQ8qP4yxhGfpUmcK2XRdkHZgITAuXt6T+yAfBgFSFJtvVma6Hym+md
	VwAxO6U1Qxa+eQ1Va0O2HnJuyX+M8+nZRDBy2Xf1hQATOxjfLXKFnsJYfsO3947NH0BvdvQbJJmFc
	tD8Ot4t8RL6TWkNwoupQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrBT-0006fO-5A; Sat, 02 May 2020 12:23:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrBM-0006dK-K0; Sat, 02 May 2020 12:23:50 +0000
Received: from localhost (unknown [117.99.89.89])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84B612072E;
 Sat,  2 May 2020 12:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588422225;
 bh=VFZRfbxaSvB4UZ1zviOZTlVRbHiO20UoTo/B+qSaaG4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JpJkJ9V2yIOYst2+CnADV6vZYbBSsji5p95E18XUDniryQPcpKFxZB5djNDn5HRTZ
 Q8T87KG0xlmNwr+jnKYaX+rWSjBxosCZnJVea4ZTG0FVprle9Ef/q0v+aarIWkqcuf
 aqSex9O5rdCoke0a5TWf4vvQkTreuuttfb06KRh0=
Date: Sat, 2 May 2020 17:53:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Subject: Re: [PATCH v3 1/1] dma: actions: Fix lockdep splat for owl-dma
Message-ID: <20200502122333.GA1375924@vkoul-mobl>
References: <2f3e665270b8d170ea19cc66c6f0c68bf8fe97ff.1588173497.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f3e665270b8d170ea19cc66c6f0c68bf8fe97ff.1588173497.git.cristian.ciocaltea@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_052348_706704_A9F97183 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On 29-04-20, 18:28, Cristian Ciocaltea wrote:
> When the kernel is built with lockdep support and the owl-dma driver is
> used, the following message is shown:

First the patch title needs upate, we describe the patch in the title
and not the cause. So use correct lock, or use od lock might be better
titles, pls revise.

Second, the susbsystem is named dmaengine:... not dma:.. You can always
check that by using git log on the respective file

Pls do add fixes and further acks received on next iteration.

> 
> [    2.496939] INFO: trying to register non-static key.
> [    2.501889] the code is fine but needs lockdep annotation.
> [    2.507357] turning off the locking correctness validator.
> [    2.512834] CPU: 0 PID: 12 Comm: kworker/0:1 Not tainted 5.6.3+ #15
> [    2.519084] Hardware name: Generic DT based system
> [    2.523878] Workqueue: events_freezable mmc_rescan
> [    2.528681] [<801127f0>] (unwind_backtrace) from [<8010da58>] (show_stack+0x10/0x14)
> [    2.536420] [<8010da58>] (show_stack) from [<8080fbe8>] (dump_stack+0xb4/0xe0)
> [    2.543645] [<8080fbe8>] (dump_stack) from [<8017efa4>] (register_lock_class+0x6f0/0x718)
> [    2.551816] [<8017efa4>] (register_lock_class) from [<8017b7d0>] (__lock_acquire+0x78/0x25f0)
> [    2.560330] [<8017b7d0>] (__lock_acquire) from [<8017e5e4>] (lock_acquire+0xd8/0x1f4)
> [    2.568159] [<8017e5e4>] (lock_acquire) from [<80831fb0>] (_raw_spin_lock_irqsave+0x3c/0x50)
> [    2.576589] [<80831fb0>] (_raw_spin_lock_irqsave) from [<8051b5fc>] (owl_dma_issue_pending+0xbc/0x120)
> [    2.585884] [<8051b5fc>] (owl_dma_issue_pending) from [<80668cbc>] (owl_mmc_request+0x1b0/0x390)
> [    2.594655] [<80668cbc>] (owl_mmc_request) from [<80650ce0>] (mmc_start_request+0x94/0xbc)
> [    2.602906] [<80650ce0>] (mmc_start_request) from [<80650ec0>] (mmc_wait_for_req+0x64/0xd0)
> [    2.611245] [<80650ec0>] (mmc_wait_for_req) from [<8065aa10>] (mmc_app_send_scr+0x10c/0x144)
> [    2.619669] [<8065aa10>] (mmc_app_send_scr) from [<80659b3c>] (mmc_sd_setup_card+0x4c/0x318)
> [    2.628092] [<80659b3c>] (mmc_sd_setup_card) from [<80659f0c>] (mmc_sd_init_card+0x104/0x430)
> [    2.636601] [<80659f0c>] (mmc_sd_init_card) from [<8065a3e0>] (mmc_attach_sd+0xcc/0x16c)
> [    2.644678] [<8065a3e0>] (mmc_attach_sd) from [<8065301c>] (mmc_rescan+0x3ac/0x40c)
> [    2.652332] [<8065301c>] (mmc_rescan) from [<80143244>] (process_one_work+0x2d8/0x780)
> [    2.660239] [<80143244>] (process_one_work) from [<80143730>] (worker_thread+0x44/0x598)
> [    2.668323] [<80143730>] (worker_thread) from [<8014b5f8>] (kthread+0x148/0x150)
> [    2.675708] [<8014b5f8>] (kthread) from [<801010b4>] (ret_from_fork+0x14/0x20)
> [    2.682912] Exception stack(0xee8fdfb0 to 0xee8fdff8)
> [    2.687954] dfa0:                                     00000000 00000000 00000000 00000000
> [    2.696118] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> [    2.704277] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
> 
> The obvious fix would be to use 'spin_lock_init()' on 'pchan->lock'
> before attempting to call 'spin_lock_irqsave()' in 'owl_dma_get_pchan()'.
> 
> However, according to Manivannan Sadhasivam, 'pchan->lock' was supposed
> to only protect 'pchan->vchan' while 'od->lock' does a similar job in
> 'owl_dma_terminate_pchan'.
> 
> Therefore, this patch will simply substitute 'pchan->lock' with 'od->lock'
> and removes the 'lock' attribute in 'owl_dma_pchan' struct.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
> Changes in v3:
> * Get rid of the kerneldoc comment for the removed struct attribute
> * Add the Reviewed-by tag in the commit message
> 
> Changes in v2:
> * Improve the fix as suggested by Manivannan Sadhasivam: substitute
>   'pchan->lock' with 'od->lock' and get rid of the 'lock' attribute in
>   'owl_dma_pchan' struct
> * Update the commit message to reflect the changes
> 
>  drivers/dma/owl-dma.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
> index c683051257fd..66ef70b00ec0 100644
> --- a/drivers/dma/owl-dma.c
> +++ b/drivers/dma/owl-dma.c
> @@ -175,13 +175,11 @@ struct owl_dma_txd {
>   * @id: physical index to this channel
>   * @base: virtual memory base for the dma channel
>   * @vchan: the virtual channel currently being served by this physical channel
> - * @lock: a lock to use when altering an instance of this struct
>   */
>  struct owl_dma_pchan {
>  	u32			id;
>  	void __iomem		*base;
>  	struct owl_dma_vchan	*vchan;
> -	spinlock_t		lock;
>  };
>  
>  /**
> @@ -437,14 +435,14 @@ static struct owl_dma_pchan *owl_dma_get_pchan(struct owl_dma *od,
>  	for (i = 0; i < od->nr_pchans; i++) {
>  		pchan = &od->pchans[i];
>  
> -		spin_lock_irqsave(&pchan->lock, flags);
> +		spin_lock_irqsave(&od->lock, flags);
>  		if (!pchan->vchan) {
>  			pchan->vchan = vchan;
> -			spin_unlock_irqrestore(&pchan->lock, flags);
> +			spin_unlock_irqrestore(&od->lock, flags);
>  			break;
>  		}
>  
> -		spin_unlock_irqrestore(&pchan->lock, flags);
> +		spin_unlock_irqrestore(&od->lock, flags);
>  	}
>  
>  	return pchan;
> -- 
> 2.26.2

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
