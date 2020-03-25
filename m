Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BF4192B9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 15:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=by0xHtqLcUJjxsRjSPIjES3T1/PAG+c1F/JuXk4ptYI=; b=TTE3WX4nPFu2HT
	wbVtzYR0AutyAmVLMOhmpVIpfw6DHW5A/xgf3MYID7xooj9wqfzsQ9IWFNUGA9vpqpVw86lKdCxKg
	3/pmJ1eMXtCjJoDPfPDFr1Ax1jNPjqno6vX894N6JXzUVQMt1miJuLNf5kP/GkFZ9Z1z0wtL8lciY
	yZZX0gsxhj/ZDZDG6Xw4iVHGRlPk9bxqkYNDHA7mnb6TMdOgrO2gi5c/zrPvIkftzAJIzlU0urEeJ
	X70B09z0GpHaD/iwul1FWUJ8neyoGCq/43cK6ovNIRorHWy9vsgTk83uXyTpGG/YzQQASotuJqwzx
	QiEy7arCoNUhnz7MKW2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7TR-0007dh-Ix; Wed, 25 Mar 2020 14:57:41 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7TH-0007cv-7L
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 14:57:32 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MY5wD-1ikq0h0TKn-00YSQh for <linux-arm-kernel@lists.infradead.org>; Wed,
 25 Mar 2020 15:57:26 +0100
Received: by mail-qk1-f174.google.com with SMTP id e11so2787732qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 07:57:25 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0V//AYUluFsTMV0secXSAGozCIYSxHDqFqjOen+erojC8e34IP
 N3SmGR1Zet3tycrvBN2hA1too539LasppBz8ink=
X-Google-Smtp-Source: ADFU+vuBFx+DrJ3HySHZKoMxE/V6Mizt9Ywp8c5Ep/YvQX3uhQp8zLzO0qxWoi2CE7aNDWQ0gsbBYuxtars/NoJ2USw=
X-Received: by 2002:a37:b984:: with SMTP id j126mr3116067qkf.3.1585148244970; 
 Wed, 25 Mar 2020 07:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200124092359.12429-1-peter.ujfalusi@ti.com>
 <20200124200811.ytgs66cg5qpugi5c@localhost>
 <12f40648-fec6-9179-1f62-0a648996ed20@ti.com>
 <CAOesGMiFw2V6fdbGCOfgsVq+WK-4ijdzivDdX3hbS2E=bO4zkg@mail.gmail.com>
 <a81fa6b0-811c-82af-4cf6-e2f4ac3c0ded@ti.com>
In-Reply-To: <a81fa6b0-811c-82af-4cf6-e2f4ac3c0ded@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 25 Mar 2020 15:57:08 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Y2LAGPT8qtk51MxbsXjf8nHBbA7E1CvWcSgNi8UNNEA@mail.gmail.com>
Message-ID: <CAK8P3a0Y2LAGPT8qtk51MxbsXjf8nHBbA7E1CvWcSgNi8UNNEA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable Texas Instruments UDMA driver
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-Provags-ID: V03:K1:9SNlCr7W+LpFGocYRaO/x/UvPtO1yx910UEvDKwyGgIyzqrgElw
 xoSAkNbmVUmMEYD4rR1kFSOVgJsUDgaAQpYKPq9IentKuPfyb9IIgQfqoyHArszTQ4l1KX+
 zjYpkWUQINgDswt9KNSuQQS/uhXtz+bvlTwVR2ayBGaDFOjpyxLIDZS64ow4xujhBQj3bod
 FyjJkPyHNb5qPPGYDvolg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e7Xgg6Cs5II=:y170d/bx3tmrhuFoYucViG
 beikv4rGgkxa1Jr2EaVYNE5KSqjdW9BjOzG3WfNdzA1hfRncZhH+N42T+E6mPDkwRKMc7gQSo
 Oufd2xMacq8Y2khbQQONBBJFViYtZarMMvc3FSduwBB5on8n+E07L8EVSOnHo+uraa7QYEoqb
 I9zau9qbvQCA34SQmSZDpyGRQqzhX++NXXiILt6/KYod7cy+S64Y7P6tcHOoqCtRugrrgCt/9
 CPqc/a0zKotNbZeILCz0t/R6WUGbgGa1iw5IrkvKPUL0Pp+9sNEbMM3/65g6ALuxt8Gct+dkV
 b+BhE3uT5E7is3n4V7cH3kLC7Xdcq51zIljExwkyGYdW2eQaArUgX5eloaFHnXI6+wwUKQFq+
 XwwBwpBm6vQve+pqkkxHz6Y6+7ZliS1sKtTS7tXqC78sxcX7KCeGHdoaPN52/WYKVa650xsL7
 cVnOnVnOpKCOTxHVmfHJmjLODdWA7hOA6xM+JxPBFTZzQnL+Jkq8Kn8IwknwYQNE3/8dI5H+9
 ffe0hRr2cUG4g/Z57Hd/ZuZQdLBpYgP+RDBO6OKi+yRpYAXgA7e1QfTaNOnlN/Q83ndwaASIe
 El/zKZsHN6JHhlwL5Gx8KcRanxYqqIG4xJ0fwBfvG9PMkkvLRsYTwZVXiHv2HlZe+jp29Ks2a
 RBkp0K2TaIyDOrLHW5Vrie1DAapK3HOKb6nKFf9GnLlAl7W447k5VoOisVqVHVyXc9rIPzCCa
 c3EjL+QB3c2dTaRSCOR+CxTMrYyEI5FAdRHUf+n2T4/HQbZlWgcgB+HeQjLrQoYHLno3VPNZ0
 h4Vj9t4NvPFG7wVjjBvAf9dzsuVgSbvT/DNTsmnpEi0Y+o0g6k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_075731_561143_C6831BE9 
X-CRM114-Status: GOOD (  26.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 SoC Team <soc@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Will Deacon <will@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 9:20 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> On 27/01/2020 17.30, Olof Johansson wrote:
> >>> I also see that this is statically enabling this driver -- we try to keep as
> >>> many drivers as possible as modules to avoid the static kernel from growing too
> >>> large. Would that be a suitable approach here, or is the driver needed to reach
> >>> rootfs for further module loading?
> >>
> >> We would need built in DMA for nfs rootfs, SD/MMC has it's own buit-in
> >> ADMA. We do not have network drivers upstream as they depend on the DMA.
> >
> > Ok, so that can either be turned into a ramdisk argument, or into a
> > "we really want to enable non-ramdisk rootfs boots on this hardware
> > because it's a common use case".
>
> SD/MMC does not need slave DMA, it is self containing with it's own
> built-in DMA.
> I'm not sure if it is enabled in defconfig. It is not enabled at all in
> defconfig atm.
>
> Normally I would use nfs rootfs, but we don't have network drivers
> upstream for K3 platform.
>
> I think having the UDMA stack as module should be fine when I have the
> dependencies in to be able to build them as modules.

Picking up this thread as I noticed the patch is still marked as 'New'
in patchwork.

I see no problem making this driver built-in at all if you want to
respin it.

> > but this particular driver is probably
> > OK (it's also not large).
>
> Well, it depends how you look at it ;)
>
> UDMA stack is not enabled in defconfig (w/o this patch):
> $ size vmlinux
> text      data     bss     dec       hex      filename
> 17853717  9221872  469288  27544877  1a44d2d  vmlinux
>
> UDMA stack is enabled in defconfig (w this patch):
> $ size vmlinux
> text      data     bss     dec       hex      filename
> 17890970  9237544  469288  27597802  1a51bea  vmlinux
>
> It would be nice for other driver to enable the DMA if it is acceptable
> to have it built in for start and when I can build it as module we can
> switch it to module?

In general, I'd prefer to avoid listing references to other drivers
in Kconfig when those are only runtime dependencies rather than
compile-time.

If the network driver just uses the generic dma slave API, then
I would not add a 'depends on' or 'select' for the particular DMA
engine that it uses, unless it relies on nonstandard exported
functions from that driver. Just enable both as modules and have
the runtime module loading along with deferred probe figure out
runtime dependency.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
