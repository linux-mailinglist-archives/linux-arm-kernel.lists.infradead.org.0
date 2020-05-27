Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5214A1E3E24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhCZ6gz+LGXuN3qqzUPoPIXxgCAPp9vdaOX20qdUIyo=; b=jfRUGvemtw9l/7
	irEqIMla13qChHYW7XlveBT3N/cn9MSqhHqWpxDdl1GEa+jLjLICyNGnDgNfc+1RBE8agHMqX9KlC
	tGeL7jKwiddZO/wBGpoiKWXC8CT+NxIY4kvb9R7UFpxtAEsWcSmrfnfOvck63hmeDKM9gn5oQrcNM
	J93OkfsUQAmV11Zb/k8jY4EmfACiIjk5lSqFklwRGGWyLyHfNCNjYp/VoImyI7H42O5O08c3HWfrA
	P9wN/F1lttPE2oIqxF32MMyzrDoH745juYKlDgd+eo0WCAblwfyhk8hmwqG/gosbxgkL2WoBAwYiE
	2I8bb1RSMsRNIybtBtJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsmo-0001ze-Om; Wed, 27 May 2020 09:55:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsmb-0001xm-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:55:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DD8F2088E;
 Wed, 27 May 2020 09:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590573333;
 bh=0vEyKxh0OHGJ9gF0R7NIKNktw24Wv6pQ4lvQk1y2efc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B/rHUZhHlceJDTiD9oSe5JYsGHNHGVPib/TpRBweLOk3z0/bdBhib+7ZFEf32KPP3
 67oygptKA6VxdYQ64m5478zeA/FZbiMO8MJbtxCp4YIJQpx+N65PYL/IqAu4jzzltl
 LKaCXNTiKOv8JDw0w780+yxXVfFg7OsjwlyRyaEw=
Date: Wed, 27 May 2020 10:55:29 +0100
From: Will Deacon <will@kernel.org>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200527095528.GC11111@willie-the-truck>
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_025533_857063_2820CDC6 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Kyle Huey <khuey@pernos.co>,
 Oleg Nesterov <oleg@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 24, 2020 at 02:56:35AM -0400, Keno Fischer wrote:
> Just ran into this issue again, with what I think may be most compelling
> example yet why this is problematic:
> 
> The tracee incurred a signal, we PTRACE_SYSEMU'd to the rt_sigreturn,
> which the tracer tried to emulate by applying the state from the signal frame.
> However, the PTRACE_SYSEMU stop is a syscall-stop, so the tracer's write
> to x7 was ignored and x7 retained the value it had in the signal handler,
> which broke the tracee.

Yeah, that sounds like a good justification to add a way to stop this. Could
you send a patch, please?

Interestingly, I *thought* the current behaviour was needed by strace, but I
can't find anything there that seems to require it. Oh well, we're stuck
with it anyway.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
