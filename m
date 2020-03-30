Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6858F197D92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UYVgQ523JlQS7AvEmeOLBEp8WrZqBy8rrEf6uLhTHg=; b=cmkvjl0+f5XwOJ
	kGPTYw7p+OWztx98998iJAsH9M6NrSbkAraSgHVKMLKbLbIfpCktIl2elQlmCfU2eYofkJUriAgTn
	3a6wBBOmRy0Nn3FV52ifNa3q7lk9qt2FKN/HvCjQ0jcVJ7dA3Ummjrfkl24V8xVoSsYWWz+aFJk39
	A0I1kRJJ2a+RkdttbqIDAbh2AwVT+9Ow0cQyJP7R6DvmsmRiDvOSA424fLLj2N+V+TAicbYuZI3a1
	8Pa3nyOO1P1NZHUGWijQGWyAVFxWhos8kxweU62NrMCXN2xWlxTc0dgaxBgoy1f9dwY1sSM9SlRho
	80Ykx+cqYJnzYTPuCAUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIuqz-0004eS-Nw; Mon, 30 Mar 2020 13:53:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIuqq-0004e5-1o
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:53:17 +0000
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAC682073B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 13:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585576395;
 bh=ONKwrHl7PRNYbGE3vDjqEA9ngR/ho+h+Qjs3WXBioJg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RwDATGOo24Ug60FYKAe4BLJJhOZNp82vnf51zyUDWRwsgU/zwavJ7EflUnlS1H7bv
 zICNNHGK9tp6ZvBfSF4OX0qjKGQsOlC/7iaq+L2vxLlwEgxavdKKIIqW0sQ5ndwE9m
 jTokLeDbrvwLKDK+s1p4pjgvKdizW8smUWGRykRg=
Received: by mail-io1-f50.google.com with SMTP id h131so17806245iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 06:53:15 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0xSAZnqKZmf8ivMbBKizAf0j98C1JImfvL16JcPa07imBpfy/c
 2OhsLO7O24/wLgusq5Nunm9Q2ZpOCpK+I06gktE=
X-Google-Smtp-Source: ADFU+vud5/bwSP0P8Z4nRqYNPnqG7tW9neq7l6CbvUZRPDpQXWdEc4NhcV2Nge4yz56zQ52JEFc8FRA4SKpa8KSSZJA=
X-Received: by 2002:a6b:f413:: with SMTP id i19mr2031584iog.203.1585576395032; 
 Mon, 30 Mar 2020 06:53:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200329141258.31172-1-ardb@kernel.org>
 <20200330135121.GD10633@willie-the-truck>
In-Reply-To: <20200330135121.GD10633@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Mar 2020 15:53:04 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
Message-ID: <CAMj1kXEZARZ1FYZFt4CZ33b-A64zj1JswR0OAHw-eZdzkxiEOQ@mail.gmail.com>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065316_118175_69B530D0 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 at 15:51, Will Deacon <will@kernel.org> wrote:
>
> On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> > When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> > different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> > etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> > In particular, it permits the segments to be mapped using level 2
> > block entries when using 4k pages, which is expected to result in less
> > TLB pressure.
> >
> > However, the mappings for the bulk of the kernel will use level 2
> > entries anyway, and the misaligned fringes are organized such that they
> > can take advantage of the contiguous bit, and use far fewer level 3
> > entries than would be needed otherwise.
> >
> > This makes the value of this feature dubious at best, and since it is not
> > enabled in defconfig or in the distro configs, it does not appear to be
> > in wide use either. So let's just remove it.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/Kconfig.debug                  | 13 -------------
> >  arch/arm64/include/asm/memory.h           | 12 +-----------
> >  drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
> >  3 files changed, 4 insertions(+), 29 deletions(-)
>
> Acked-by: Will Deacon <will@kernel.org>
>
> But I would really like to go a step further and rip out the block mapping
> support altogether so that we can fix non-coherent DMA aliases:
>
> https://lore.kernel.org/lkml/20200224194446.690816-1-hch@lst.de
>

I'm not sure I follow - is this about mapping parts of the static
kernel Image for non-coherent DMA?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
