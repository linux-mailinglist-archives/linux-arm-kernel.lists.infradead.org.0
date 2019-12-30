Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0A312CC91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 06:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzlhqURRCZbMNVohmwwOgnTx8fuYaMEc7Ks5VZ5U9QI=; b=nPrz5EhrQTsjJ9
	g5btnpBsIY99RamoNPcxuvLRdj1l28Hmxd28h+pOOZlVEKGsgBg+IkkkEjk+gwpzu7JBS1CwKMHas
	J6x8WNqxezvkkKp/zfJhXa7NZWWOLwS+QL3GjuA802oAvaVntcH7n50vuiM9NoUme0DAmirOAdHS9
	tgZ1jTrtgwOgKh8MSEfHgLrGwuju1UZilN0VFQ+TDzzSXCyH0rtylp205a9MK5v0cCsNeP1/ATKP7
	Py7ck0dE8KhoqIX8Hno1mFkQYxMS3iZdzHtQ6zQ7PSsbpwUqssBgYcccz9KXZ0M6cY2XcfD6p/6Lc
	irpNOaCl6acShVsU0/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilnHx-0006oZ-9f; Mon, 30 Dec 2019 05:08:21 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnHe-0006cL-9V
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 05:08:03 +0000
Received: by mail-io1-xd44.google.com with SMTP id z8so30494860ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 21:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Yx8kyKhmKzH4JISxpidB8QTM2lZzIRz5I7Z21nK62s=;
 b=Wy2iFT+ynpk0ud9htYuiRDlt+bQZLZqBfS5KSWyer8qnQPdIOPz+Z3CcPl6JF+b5N1
 isyjj1qSLpWtoqfdn6jl1Y15EfMzU0U6NugtYIfddrcm2aXzVSAlgpsURYThmUFlHLR6
 GQoGn/Vtl0dQiajPagZKVLviGRG/Z1gkAaDTaOdpEmA0Hu3FwBopRSZtWHbiFhR6hHm8
 ExapJEd1YnjaPY/Lwdiq8rWYfTcMLYz0D6Tf+iZckRb+pibIARyyF7pWhClSgGkLanhV
 HPxKHeSTMfZv/tmqcawHoS/Yz+zt3d43IC/Hp9b/WzFWbjg9u2cY5vkr89gM6YyQBr8u
 7ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Yx8kyKhmKzH4JISxpidB8QTM2lZzIRz5I7Z21nK62s=;
 b=XAya1RBG1ibEjx44Ignsce7qV5nIDIwp9oZZw7R00uV1Mkj6TwsDZ/CJdnfkFe5dCf
 RrG2yKwEps0N1bIrGov47G7D3o43l//BxdM1Ixa00v7BmOW72LQTbucEpNyNqtvZGud8
 jNhKuWkno1zOetEUaLSk+GgdL2hdCZ3PDckQlUIJZfybkh/BjlZr/xis/bHpv6ZE7mpO
 gYoObWM/MW5iJ0YxE6+F2IRZrtQShzs6kRSIRNrBiHXk04A45bZj/NOt+DAtwAbLO3ao
 DoqszYOjmhtLV5x9wQzkgZUbUxwO+eTb6luLmXsJ1tLjlBg1K9lV24t3MMq/R/6WE0hD
 3RuA==
X-Gm-Message-State: APjAAAWv8fym3T0cbP2Hww58j56YAqQ4mLMmLXpRTUnh9eVq1tUdcU3G
 CVqmC0uQ/SGD/GY9cmRvvJqh9sye+UyDv0WGVzGMZb/gN70=
X-Google-Smtp-Source: APXvYqxQR13eojKKMLAPvH2Bb4y26eVIXK1OK5duuhVgHMiwFdB8BxT0FANsVMGJtscrH734vjG1I9oTQqedgvWdB0Q=
X-Received: by 2002:a02:c90a:: with SMTP id t10mr50282354jao.25.1577682481068; 
 Sun, 29 Dec 2019 21:08:01 -0800 (PST)
MIME-Version: 1.0
References: <1577613635-31509-1-git-send-email-poonam.aggrwal@nxp.com>
In-Reply-To: <1577613635-31509-1-git-send-email-poonam.aggrwal@nxp.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 30 Dec 2019 10:37:50 +0530
Message-ID: <CAJ2QiJLGqRHHqrqPUArgHnsK8RNHy9tzDf4GhiUd69mztdBjXA@mail.gmail.com>
Subject: Re: [PATCH] move reservation for elfcorehdr early
To: Poonam Aggrwal <poonam.aggrwal@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_210802_326874_8AEA4A24 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "takahiro.akashi@linaro.org" <takahiro.akashi@linaro.org>,
 Nikhil Gupta <nikhil.gupta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Poonam,

On Sun, Dec 29, 2019 at 9:19 AM Poonam Aggrwal <poonam.aggrwal@nxp.com> wrote:
>
> on some SOCs, elfcorehdr address may overlap with the address of reserved
> memory allocated using early_init_fdt_scan_reserved_mem
>
> Signed-off-by: Poonam Aggrwal <poonam.aggrwal@nxp.com>
> ---
> Overlaps seen on LS1043A SoC:
> [    0.000000] Reserved memory: created DMA memory pool at 0x00000000f7c00000, size 4 MiB
> [    0.000000] OF: reserved mem: initialized node qman-fqd, compatible id shared-dma-pool
> [    0.000000] Reserved memory: created DMA memory pool at 0x00000000f4000000, size 32 MiB
> [    0.000000] OF: reserved mem: initialized node qman-pfdr, compatible id shared-dma-pool
> [    0.000000] Reserved memory: created DMA memory pool at 0x00000000f6000000, size 16 MiB
> [    0.000000] OF: reserved mem: initialized node bman-fbpr, compatible id shared-dma-pool
> [    0.000000] Reserving 1KB of memory at 0xf7fff000 for elfcorehdr
>
> panic in elfcorehdr_read:
> [    0.443984] Unable to handle kernel paging request at virtual address ffff000037fff000
> [    0.451942] Mem abort info:
> [    0.454740]   ESR = 0x96000006
> [    0.457806]   EC = 0x25: DABT (current EL), IL = 32 bits
> [    0.463142]   SET = 0, FnV = 0
> [    0.466202]   EA = 0, S1PTW = 0
> [    0.469353] Data abort info:
> [    0.472243]   ISV = 0, ISS = 0x00000006
> [    0.476094]   CM = 0, WnR = 0
> [    0.479072] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000d9373000
> [    0.485806] [ffff000037fff000] pgd=00000000f7bf7003, pud=00000000f7bf6003, pmd=0000000000000000
> [    0.494553] Internal error: Oops: 96000006 [#1] PREEMPT SMP
> [    0.500146] Modules linked in:
> [    0.503211] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc3-00062-gbf8d1cd #5
> [    0.510725] Hardware name: LS1043A RDB Board (DT)
> [    0.515446] pstate: 80000005 (Nzcv daif -PAN -UAO)
> [    0.520260] pc : __memcpy+0x78/0x180
> [    0.523847] lr : elfcorehdr_read+0x28/0x38
> <snip>
> [    0.611262] Call trace:
> [    0.613713]  __memcpy+0x78/0x180
> [    0.616950]  vmcore_init+0x70/0x534
>  arch/arm64/mm/init.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Please work on subject like arm64: move elfcorehdr reservation early
for crash dump kernel

Rest looks OK. I also tested on Thunder X2 platform with no regression
seen with this patch.

Reviewed-by: Prabhakar Kushwaha <pkushwaha@marvell.com>

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
