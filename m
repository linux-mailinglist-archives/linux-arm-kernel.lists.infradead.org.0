Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FEF1230BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:45:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NKzKherzi0PdBehEU7Fq1KrEf6jftHwucM3XsVj+xE=; b=B4fVf12576U58s
	23OKjSVVyNbHgE6Sx/ZUaZl1f0bUCdpFa5JodP9sEtZUZQ6Y1Yyb9Lx43JUVsgMHPRPOR2hleGcZJ
	eRquDKsFn2YyyK38kfTnOGXV+Vd83+wZ/iyGwR/lenAMM+/qnzx4G1LahMCpe0Pq0+bDPDeEUl0dS
	+Vw4ZADlPkMZkLJmewWsTWyflq5f27hUlTNrR7nNZ6pLmMSYm/VskERZHcb2e94HBQXtLsXbttIob
	6vZjkV+g3pfCCW+enZwep9/ixUNF/Akvv6LusP/CvaThCkDKJ7pS+vNwJdVY5RTGHeUrDDmKYBdcF
	eG/KZ10Q0eMG6sI/67MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihF2f-00052P-G4; Tue, 17 Dec 2019 15:45:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihF2Y-00051p-42
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:45:39 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F21DA2465E;
 Tue, 17 Dec 2019 15:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576597537;
 bh=d7eBLm0I/s6DFoeNSrPqJMhc9kKOaXOaEqRZCmy2Vmo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X4CsLVd0lOXz/T69EzqjaRx4hpxWylyCBLDEOxoWCqpBcgv0AQoJgp/WzvAF0Uv2C
 1oy4/yMfmBWnFF0OYpXtlKw52w3N3F8G42BsTSkH4bxP52b59/nA/4nX81hzQ/gr5b
 a8Dc+Hlb2npc3p/dnY0NONQD2QCl9sMekBmCVMps=
Date: Tue, 17 Dec 2019 16:45:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191217154535.GA3718632@kroah.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_074538_180629_73648621 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 04:30:54PM +0100, Marc Gonzalez wrote:
> Commit a66d972465d15 ("devres: Align data[] to ARCH_KMALLOC_MINALIGN")
> increased the alignment of devres.data unconditionally.
> 
> Some platforms have very strict alignment requirements for DMA-safe
> addresses, e.g. 128 bytes on arm64. There, struct devres amounts to:
> 	3 pointers + pad_to_128 + data + pad_to_256
> i.e. ~220 bytes of padding.
> 
> Let's enforce the alignment only for devm_kmalloc().
> 
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> I had not been aware that dynamic allocation granularity on arm64 was
> 128 bytes. This means there's a lot of waste on small allocations.
> I suppose there's no easy solution, though.
> ---
>  drivers/base/devres.c | 23 +++++++++++++----------
>  1 file changed, 13 insertions(+), 10 deletions(-)

You need to get Alexey to agree with this, he's the one that hit this on
ARC :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
