Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173001512B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 00:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+c4uYmefjATAd3XxgBvh+iXHBEgy1VvorqEYN0vEJ3Q=; b=loh03eYDLLJ/8A
	4Xg5WLlvMEH0p5JAcWDZKOGjz9Lg1XDpUDhm2muAfSY5zQzgGl5A71yAuHNVz6C7vrf39KO2Il249
	bbow3Di4zEoB+Z/zpZI4R5MebUZ+VMf3rqStPRCVm84XNOdVJxaBJK8iA11djGp9HWDNHHEP0KFj7
	NGVYkILxRZCHR9Y9FNOca8MmoibeKCo/S9NKZTd1eww5YIA58G/pEqqFsw1rmzxVOxcI0Hc+tiFuA
	GT6/qhXgGN7kozjNpn4x/XwRhKcnt0WtJa+ZSKVGSvAZIygpdWlQN3iakD2VRUPOeXJXnePfN8IaG
	i8N4fwT7aRAKjoIhmJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iykmH-0001DI-Pg; Mon, 03 Feb 2020 23:05:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iykm3-0001CY-0S
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 23:05:00 +0000
Received: from cakuba.hsd1.ca.comcast.net (unknown [199.201.64.133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45CC120674;
 Mon,  3 Feb 2020 23:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580771095;
 bh=vzyez2WIfsTNn3tKO6gcRBw5UeiKLIVBY41eTtjUVsU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2FueImXvEyyZitLXHJBvvGyOWtS4YDUn5n2hYwUS03ovEeuXiU8uhlsqj97bmJb1N
 Aw4bDeZ1I3S75w0P0LlcqpMUno7HDbfCwM/pBNSjEQt9TKySfagHSIhZ1No+5sBY/f
 LMPTPgEBH9w8kRhXgNkoX7K7Ij/wUzPKbW5ysSS4=
Date: Mon, 3 Feb 2020 15:04:54 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH] net: stmmac: Delete txtimer in suspend()
Message-ID: <20200203150454.2938960b@cakuba.hsd1.ca.comcast.net>
In-Reply-To: <20200201020124.5989-1-nicoleotsuka@gmail.com>
References: <20200201020124.5989-1-nicoleotsuka@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_150459_071628_950CABE8 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 31 Jan 2020 18:01:24 -0800, Nicolin Chen wrote:
> When running v5.5 with a rootfs on NFS, memory abort may happen in
> the system resume stage:
>  Unable to handle kernel paging request at virtual address dead00000000012a
>  [dead00000000012a] address between user and kernel address ranges
>  pc : run_timer_softirq+0x334/0x3d8
>  lr : run_timer_softirq+0x244/0x3d8
>  x1 : ffff800011cafe80 x0 : dead000000000122
>  Call trace:
>   run_timer_softirq+0x334/0x3d8
>   efi_header_end+0x114/0x234
>   irq_exit+0xd0/0xd8
>   __handle_domain_irq+0x60/0xb0
>   gic_handle_irq+0x58/0xa8
>   el1_irq+0xb8/0x180
>   arch_cpu_idle+0x10/0x18
>   do_idle+0x1d8/0x2b0
>   cpu_startup_entry+0x24/0x40
>   secondary_start_kernel+0x1b4/0x208
>  Code: f9000693 a9400660 f9000020 b4000040 (f9000401)
>  ---[ end trace bb83ceeb4c482071 ]---
>  Kernel panic - not syncing: Fatal exception in interrupt
>  SMP: stopping secondary CPUs
>  SMP: failed to stop secondary CPUs 2-3
>  Kernel Offset: disabled
>  CPU features: 0x00002,2300aa30
>  Memory Limit: none
>  ---[ end Kernel panic - not syncing: Fatal exception in interrupt ]---
> 
> It's found that stmmac_xmit() and stmmac_resume() sometimes might
> run concurrently, possibly resulting in a race condition between
> mod_timer() and setup_timer(), being called by stmmac_xmit() and
> stmmac_resume() respectively.
> 
> Since the resume() runs setup_timer() every time, it'd be safer to
> have del_timer_sync() in the suspend() as the counterpart.
> 
> Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>

Applied, and queued for stable, thank you!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
