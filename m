Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45E41BDD74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDLqSnV7GDsrql2uP4wF/plTMpuZsFrsY1KlHyzV+ik=; b=MAGcwdUByBXm0E
	R1qIoXc4tkW1SlWMIZ8E2YZoeIjl5jFRtL9hCR+c/1vPy/eT0zrb285gjSOpVW/pewmn+1F2s/S+t
	gUbEkwlKoRGEhC4pfO29fDwVajuygesxoO2ezrjKxQ5kHV7Ml396MuIWE7HfXth8aXExKhovrSX8Z
	rLHjp9ctN1t45ka4ZkO7LkDb/W96Us3fgU2rTeohIO+X5VybADOouMfi8lLCVuLoTaP4fEXaahiEe
	/gAL86D3x8uP05OaY8Pf23DgpQ6PmlfEjC3jCb3chbu4u+Pkc40HIZ6ejahTVqcalhdrKtzSZecYp
	tveKiPzoyn9ZV0RlRAaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmg5-0002fi-I1; Wed, 29 Apr 2020 13:23:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmft-0002dq-Ag
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:22:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id f7so1061088pfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 06:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s693fQ+pEhcw75d9miqzRLRmbxwYH2lCZ/LTdUZaWj0=;
 b=sJNdDpyktRNw47bxpfLtkY9Et/4ZKTb+JLeg+drVntVgN7dSOkQrfGmJlLPzIScKq7
 plSwcufg3/lrM5wEx0SYwtcSie8T2GOWofxVxRxxxkrqRccybMCtOhgDW7TqRp6D5fag
 c3x18EHN0ALI714YdESqwazdHpgafcSRP7MWqXUu6tdMc4JqB90/m+ZuITxcIcfdHe9l
 NEJhflDYl9xYEWufeTeYfARZG0Ur5YFHAo2Fhu4sX7uyXHU1J5zoOIIJP8/YHa3207pZ
 nuRz+L1h9Off/1CABvRD223xFWh2/yoS+mPERWScTM+7jouR/anNNMo9ccg216tZ4aIX
 jI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s693fQ+pEhcw75d9miqzRLRmbxwYH2lCZ/LTdUZaWj0=;
 b=nUINFRSRQAp6sS9J3r4kBKA6x3+9BosLIY/Ccx1P549UXLRLwDXG5lKprPw5hnvyjJ
 w8kN4uyIMMjBhYw+ap459MoittKszsPnZcD0KXPzLMxIOEessRwCohAs550rRxELN+XO
 GVHACGjq4GXUkLjfTltbQAxLpaWyDSq3dPGzjQAx1r7B7YIMUyDYFz+aW3uTK/EBBsCZ
 ykWl0ZlR/k0iTBurVW/QQk1rDWoEn7zxoKCSjUNlVCuWIOGle+LZj/YJBGl+DH8zlD3v
 A1nUTsqgCX4EYkx5NvuCM+ThtCT4o/3tlVkXFCNwnxtZoXB+/xNBtvKHLTsYyU+NwlVo
 rIQQ==
X-Gm-Message-State: AGi0PuYaQr3nPKvPCsw3wp7xPe7ckzmn57aH5BZeAUF/K3qcU5GX+t7P
 hZjuaBxHhUumZojBS2xIt8e7
X-Google-Smtp-Source: APiQypJ9ziGSv9fU2yas0f4ThlVIZQiRlRHltCoLAuIF7GVcKTuKVxh+kbT/FSQOdxZzlEIX5CNFKg==
X-Received: by 2002:a63:1705:: with SMTP id x5mr33600590pgl.12.1588166572335; 
 Wed, 29 Apr 2020 06:22:52 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6114:a3cc:cde9:1262:3f57:5dd])
 by smtp.gmail.com with ESMTPSA id g6sm4606286pjx.48.2020.04.29.06.22.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 06:22:51 -0700 (PDT)
Date: Wed, 29 Apr 2020 18:52:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Subject: Re: [PATCH v2 1/1] dma: actions: Fix lockdep splat for owl-dma
Message-ID: <20200429132244.GE6443@Mani-XPS-13-9360>
References: <1d77970a82cf9b7cdf9f4731439b1e58c37ca3fb.1588156137.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d77970a82cf9b7cdf9f4731439b1e58c37ca3fb.1588156137.git.cristian.ciocaltea@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_062253_398621_1DD9D9F3 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 02:01:54PM +0300, Cristian Ciocaltea wrote:
> When the kernel is built with lockdep support and the owl-dma driver is
> used, the following message is shown:
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

Just one minor thing below, other than that,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks for doing this!

> ---
> Changes in v2:
> * Improve the fix as suggested by Manivannan Sadhasivam: substitute 
>   'pchan->lock' with 'od->lock' and get rid of the 'lock' attribute in
>   'owl_dma_pchan' struct
> * Update the commit message to reflect the changes
> 
>  drivers/dma/owl-dma.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
> index c683051257fd..5b1c715a56c8 100644
> --- a/drivers/dma/owl-dma.c
> +++ b/drivers/dma/owl-dma.c
> @@ -181,7 +181,6 @@ struct owl_dma_pchan {
>  	u32			id;
>  	void __iomem		*base;
>  	struct owl_dma_vchan	*vchan;
> -	spinlock_t		lock;

You should also remove the kerneldoc comment for this lock.

Regards,
Mani

>  };
>  
>  /**
> @@ -437,14 +436,14 @@ static struct owl_dma_pchan *owl_dma_get_pchan(struct owl_dma *od,
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
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
