Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3D41BC5C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1smOXOR3g4pBf7J0fSLq8/rgHfvU2KR2vxFK6YIgKY=; b=CgI1CibLSMoa/9
	pqTGmT/DeQQylHmCLcnDBrNBxIiUrj3/lKFG1X0umoxiuSCwgZ2AX/Ig4ZPGpUa4i7AF0iZbfSxD8
	WK/fMPV20yey8fAhI/JTbGH8QNSo4YTWFch6I6D6LFUCJuezAUXubp5+EwlMSW9Cl9f9QrFoBFry1
	HKcX7RlJlv8k0n3DYSGQNmks4ANbgvkOf2rgBJVJxH/lQdhOuDx+zjNdkJs/ncRKgDGSKOyF7Rkh6
	q1d+0EVTSFZzkPoY11YiSiAtMOOgH6CeWIPC/NjzuCmCLkbPqdmyECxzcq/zKHEa4y0/GNe70W8F7
	41wXFgSzUVB0zYESmPRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTSH-0008WD-JZ; Tue, 28 Apr 2020 16:51:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTQM-0004IW-Ei
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:49:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id d17so10630514pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 09:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w47+wwXq2T9RyghfnMb2QNKSpZQ9CL9XUTaJOrmsBpo=;
 b=WXBM5NKO9X5bPLC1D+OfZXXJyFw71V204M9ainecCJlPaNcqviV/3cEKRvjZXSZ27w
 M73KXupzSHxgmiK5UvweahRh/Njh40PfI69iI2+XRrpJupcMjNYxpZepks7jSnVVnoxi
 +X9IX3nYQ+LKggjjJBttHS23e7YGOHAOyK/cMEn1FRkUF3/jxKsli3JQbNibkKuOGm7G
 tCGAUP7kExbtTVAsdmeOd1/F6ajN/C/st4dKHIyNpU0aqFw92VwofXjb7LDAUlXWsVH7
 92tHH3p7SfA2mUJq8ok1QVwyuGqvyvUfs/YZ8SpqT0NdMn1vtpdPpm2BYvMkEdDvANwy
 szFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w47+wwXq2T9RyghfnMb2QNKSpZQ9CL9XUTaJOrmsBpo=;
 b=RTiFcZQODzvZSOsBX4lI7C//U0xL3ytk88xTfxFWMhH8nIR7tURbL1v4fykceNQS7/
 MxFi9zU+CNPbIqv2uGxMyKYUSNdAyFBDXvPwKjpisD0+Qwe75e3OXBJidEKIL3CbmDWa
 yr8tTuOPntAYhVyhQB30TFod64Fi85uiXT81OMmE4lidY/E+r16C3sg8IjC3WOaPGMOz
 EBbJ5qrvkfNz+Cgo4nRq6scovlRQcL7O1n08yftKXcqsQkVKir3MIHjp145GpPKJXaFc
 rZHtDEW/n2uA7S2qv/h+4g1871OwY1VQehdo0hfu7O2RuOfaflmSpa6KC9naS10YkyB/
 dCcg==
X-Gm-Message-State: AGi0Pubny7TCQmv5rdq1rJGw3MGLyvI+QlXB5kZ5Rz4FwQOScL9W5suh
 inIZkZeXjEQWfF5XicARmmmA
X-Google-Smtp-Source: APiQypLZFvag0gbPG45uzNt8Nknov7FWpyvMGfJ1ArN6r7wP1uxFGcxF/8kXPcDfcj/1NsOLj6AISw==
X-Received: by 2002:a63:d804:: with SMTP id b4mr28591854pgh.127.1588092573141; 
 Tue, 28 Apr 2020 09:49:33 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:816:a859:6d8a:8338:74e:a3d1])
 by smtp.gmail.com with ESMTPSA id x63sm15827381pfc.56.2020.04.28.09.49.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 Apr 2020 09:49:31 -0700 (PDT)
Date: Tue, 28 Apr 2020 22:19:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Subject: Re: [PATCH 1/1] dma: actions: Fix lockdep splat for owl-dma
Message-ID: <20200428164921.GC5259@Mani-XPS-13-9360>
References: <7d503c3dcac2b3ef29d4122a74eacfce142a8f98.1588069418.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d503c3dcac2b3ef29d4122a74eacfce142a8f98.1588069418.git.cristian.ciocaltea@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094934_513243_CEDFE18C 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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

Hi,

On Tue, Apr 28, 2020 at 01:56:12PM +0300, Cristian Ciocaltea wrote:
> When the kernel is build with lockdep support and the owl-dma driver is
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
> The required fix is to use spin_lock_init() on the pchan lock before
> attempting to call any spin_lock_irqsave() in owl_dma_get_pchan().
> 

Right, this is a bug. But while looking at the code now, I feel that we don't
need 'pchan->lock'. The idea was to protect 'pchan->vchan', but I think
'od->lock' is the better candidate for that since it already protects it in
'owl_dma_terminate_pchan'.

So I'd be happy if you remove the lock from 'pchan' and just directly use the
one in 'od'.

Out of curiosity, on which platform you're testing this?

Thanks,
Mani

> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> ---
>  drivers/dma/owl-dma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
> index c683051257fd..d9d0f0488e70 100644
> --- a/drivers/dma/owl-dma.c
> +++ b/drivers/dma/owl-dma.c
> @@ -1131,6 +1131,7 @@ static int owl_dma_probe(struct platform_device *pdev)
>  
>  		pchan->id = i;
>  		pchan->base = od->base + OWL_DMA_CHAN_BASE(i);
> +		spin_lock_init(&pchan->lock);
>  	}
>  
>  	/* Init virtual channel */
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
