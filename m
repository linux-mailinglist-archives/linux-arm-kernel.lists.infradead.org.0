Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957001E3654
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REaf2Ffvkvv8ZWJAjD8HEtrPeosYAT3CqSoe9j3FoHo=; b=SZIQ4apknoN2DQ
	DDJUhvXdaQvRdAsS3BkNfxvsmG9F6stLRTrPtlkQ30pVtYSntxTZpwBK48miDRw327BFAuOcetSJv
	4K/p8FC7hgHv802cZHTFv84roNVrcFpXN5jFeESwZdW+CuFXmoW7Uf1Al+mr7vVFg0ptW9cO46s3a
	G26hXVTpLiHEx2OjBLmHSIZVR+6ZUTzoD6BmFFi7YlIUVFm1yHZn9G1wn1NUGml4wRxq7KUSSg1kI
	gp27vQdScvQaIl0dECPyLPFvsdVByz467saZY3rVbrdO/+edCCu9cNv4dcOV10m+TXKOlIX/EPEDG
	tv6ZhaLNz8GDjO7eAHzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmXg-0001fc-5p; Wed, 27 May 2020 03:15:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmXY-0001f2-7g; Wed, 27 May 2020 03:15:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so1660161wmj.0;
 Tue, 26 May 2020 20:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VB40ARaiS29BCuNKIs7lZTKGqm7H2XgR6B5F6MValZk=;
 b=MhYvxeamChB/YcB/8djufie2K5LLYHwo/Ggj80hU7372l0mS3PAEj2owaaKzJcEKti
 ynbZdxN4N052QvzcSsJpodC0IJ+rIs6NiiGmzcH6O4HgiS+afTiE4QrdfSkc6C1WfqVM
 Ou5OFmwqu9knRJ0JehDJrHMRXLcgO9SKDRA6vjpujD4inhdn9plxha/+/IYTHlgWRARH
 MO2sPP53ZdAOsyLyXdBDNKtruS/UQZbuL5xV4XdEDs18JXTACAHSbLKb3ZouL1jQ0ls0
 T4VwOGSdkClysZgMjLWzHtFS8Gwsqfs8gpIAxgqoRk34ejsnBYpj06ILoYv131y2qUf3
 dcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VB40ARaiS29BCuNKIs7lZTKGqm7H2XgR6B5F6MValZk=;
 b=ijIOzkO8ySh2WjP5gfEQZdZG6WU+x5IOZeS+nAJSBzZxpSwS5JKRg3P1K0a9q5eTQK
 JnuZs/A6wz5mpKQhdM0Rwcegx1h8VGNfib4R0Mqq2cIzXLv77gfKsGPpYBnB3xSrISQd
 Gy6OGTG4pwLS+totxMgsZpwLcA9SHy7jx6E3NAyTzAPjC48OgHpg2RzhmZw/KaHEyIup
 V7F24TgaK0nVW9OBwIyL7r8NmTmx1sESRdSVxadk9ZMdkZ+1wHJ6PZItaD979pXmoDN8
 PgMDD1sbo9GqHcyK/Bz7szLNlcYF9NjIxPsajPbHgTlXoZfecxZC96jY4xv3KptxUb1T
 IQ9w==
X-Gm-Message-State: AOAM530Hb+Dv96ydsIuypAoruoHbGuOC0stQQTkYOIbOwzhV8apAn3wP
 LXgw7vWsYbRAdluzBW4zn1KgxB+BBGhp1Yg0Bv1wXIOkIQs=
X-Google-Smtp-Source: ABdhPJzFwBaPgOsHEa1S8EcIiQ9EW+QdzrxYp9GJu/lz6pzrRsui+p3EQQ+ILZvNqbIYZpCpH7oOjMkE8HPnA7bD61k=
X-Received: by 2002:a7b:cc92:: with SMTP id p18mr2111876wma.174.1590549332923; 
 Tue, 26 May 2020 20:15:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2QiJJgw0Cm=XBeVvOJ8WnWB0Xfv3JEYKTQUovnwrrDw17w9g@mail.gmail.com>
In-Reply-To: <CAJ2QiJJgw0Cm=XBeVvOJ8WnWB0Xfv3JEYKTQUovnwrrDw17w9g@mail.gmail.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Wed, 27 May 2020 08:44:56 +0530
Message-ID: <CAJ2QiJKbwwsYKjX4xnZ+K4QNXnRO5pKKKkFhqp4gPCuPBs-bSw@mail.gmail.com>
Subject: Re: kdump: Getting "warn_alloc" warning during boot of kdump kernel
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 kexec mailing list <kexec@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_201536_301949_4BE5D3E6 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Kamlakant Patel <kamlakantp@marvell.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

On Fri, May 15, 2020 at 4:28 PM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Hi All,
>
> We are getting "warn_alloc" warning during boot of kdump kernel. This
> warning is observed with latest upstream tag (v5.7-rc5).
>
> Primary/1st Kernel
> ----------------------------
> # dmesg | grep crash
> [    0.000000] crashkernel reserved: 0x00000000d6000000 -
> 0x00000000f6000000 (512 MB)
> [    0.000000] Kernel command line:
> BOOT_IMAGE=(hd8,gpt2)/vmlinuz-5.7.0-rc5
> root=UUID=c4050f17-526f-48a8-9804-c6b35cbb584c ro crashkernel=512M
> earlycon console=ttyAMA0
>
> # cat /proc/iomem | grep -i crash
>   d6000000 - f6000000 : Crash kernel
>
> Logs from Kdump/crash kernel with warnings & dump_stack
> ------------------------------------------------------------------------
>
> [    0.239360] swapper/0: page allocation failure: order:2,
> mode:0x1(GFP_DMA), nodemask=(null),cpuset=/,mems_allowed=0
> [    0.249917] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc5 #44
> [    0.256246] Hardware name: To be filled by O.E.M. Saber/Saber, BIOS
> 0ACKL027 07/01/2019
> [    0.264333] Call trace:
> [    0.266797]  dump_backtrace+0x0/0x1f8
> [    0.270490]  show_stack+0x20/0x30
> [    0.273833]  dump_stack+0xc0/0x10c
> [    0.277263]  warn_alloc+0x10c/0x178
> [    0.280781]  __alloc_pages_slowpath.constprop.112+0xaec/0xb28
> [    0.286584]  __alloc_pages_nodemask+0x2b4/0x300
> [    0.291156]  alloc_page_interleave+0x24/0xa0
> [    0.295464]  alloc_pages_current+0xe4/0x108
> [    0.299686]  dma_atomic_pool_init+0x44/0x1a4
> [    0.303995]  do_one_initcall+0x54/0x228
> [    0.307864]  kernel_init_freeable+0x228/0x2cc
> [    0.312263]  kernel_init+0x1c/0x110
> [    0.315781]  ret_from_fork+0x10/0x18
>
> We did some debugging.
> As per commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> . DMA zone has been re-defined.
> here, ZONE_DMA has a fixed range of 0x802f0000 - 0xbfffffff and
> ZONE_DMA32 has range from 0xc0000000-0xfffffffff.
>
> When bootargs is defined with "crashkernel= X" for 1st/primary kernel.
> Than X amount of memory is reserved in First kernel. This reserved
> memory is used to boot kdump/crash kernel and represented as "Crash
> kernel" in cat /prom/iomem.
>
> If some region of reserved memory(Crash kernel) **does not** fall in
> ZONE_DMA region i.e. 0x802f0000 - 0xbfffffff, this warning is
> observed.
> Other drivers like scsi_register_driver [1] also fail. We also see
> other kinds of error [2].
>
> Considering DMA_ZONE has requirement of 0x802f0000 - 0xbfffffff.
> Can we enforce "Crash kernel" to always reserved between 0x0000_0000
> to 0xc000_0000 in reserve_crashkernel() -->memblock_find_in_range()
> or
> what could be best possible solution.
>

I saw similar error https://lkml.org/lkml/2020/2/24/746 with no
solution mentioned or Luckily next time reserve fell in address range
of DMA_ZONE,
This error  was mentioned in context of patch series "support
reserving crashkernel above 4G on arm64 kdump. Link
https://lkml.org/lkml/2019/12/23/411"
But this error is observable without the mentioned patch series.

As mentioned in previous mail, can we consider enforcing "Crash
kernel" to be always reserved between 0x0000_0000 - 0xc000_0000.
or any other best possible solution.

Please suggest..

--pk



>
> [1]
> ------------------------------------------------------------
> [   21.509239]  dump_backtrace+0x0/0x1f8
> [   21.516592]  show_stack+0x20/0x30
> [   21.523248]  dump_stack+0xc0/0x10c
> [   21.530087]  warn_alloc+0x10c/0x178
> [   21.537090]  __alloc_pages_slowpath.constprop.112+0xaec/0xb28
> [   21.548644]  __alloc_pages_nodemask+0x2b4/0x300
> [   21.557750]  alloc_pages_current+0x90/0x108
> [   21.566155]  alloc_slab_page+0x184/0x340
> [   21.574030]  new_slab+0x420/0x4c8
> [   21.580681]  ___slab_alloc+0x354/0x4e8
> [   21.588207]  __slab_alloc+0x28/0x58
> [   21.595210]  kmem_cache_alloc_trace+0x230/0x250
> [   21.604316]  sr_probe+0x250/0x618 [sr_mod]
> [   21.612555]  really_probe+0xe4/0x448
> [   21.619733]  driver_probe_device+0xe8/0x140
> [   21.628136]  device_driver_attach+0x7c/0x88
> [   21.636536]  __driver_attach+0xac/0x178
> [   21.644239]  bus_for_each_dev+0x7c/0xd0
> [   21.651943]  driver_attach+0x2c/0x38
> [   21.659119]  bus_add_driver+0x1a8/0x240
> [   21.666823]  driver_register+0x6c/0x128
> [   21.674533]  scsi_register_driver+0x28/0x38
> [   21.682939]  init_sr+0x40/0x10000 [sr_mod]
>
> [2]
> -------------------------------------------------------------------
> [   21.450571] systemd-udevd: page allocation failure: order:0,
> mode:0xcc1(GFP_KERNEL|GFP_DMA),
> nodemask=(null),cpuset=/,mems_allowed=0^M
> [   21.450571] systemd-udevd: page allocation failure: order:0,
> mode:0xcc1(GFP_KERNEL|GFP_DMA),
> nodemask=(null),cpuset=/,mems_allowed=0^M

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
