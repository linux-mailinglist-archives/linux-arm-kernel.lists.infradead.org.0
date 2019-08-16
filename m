Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26FD8FCA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKmHmy6cZXZMuFa+QxLhZJtBPEJ0eNic2x0zL4XzGWw=; b=Qass6xeI+ilUWd
	jj1lU3jNyBR6IGHM1oq2YZGmM7gzywjSgDvdW/T9XwPQTHrzagQCPy9XOJ2U15pYtF4n1+wzv0uZF
	i37jgeRNLwZ29l2tpBQidWO8wHJnmhGQF39SKT/BAfqGybbgYb7R6aAEVpQkwEkNieL4/xhpIYr6D
	lXBhrIWlWHsZyjt+qapznpmoIb2NH14jGO6YUmeG80qNjxNvA2kmmDXVABG5/rbO6jh6+fW0QsFaS
	NeNWI3nFio8qiJzB6/EWAWWBIKuu4M7r4aSs9v/NSWKqwfWZL7p5PlDF/RclaNpQc6ZnbkzmM3bnU
	ZjYeuS6YWCSnkNjH4vHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWu4-0002X4-Lt; Fri, 16 Aug 2019 07:44:05 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWts-0002Wk-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 07:43:53 +0000
Received: by mail-oi1-f193.google.com with SMTP id y8so4168142oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 00:43:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bvAyBsUlIJF0bF+3UmDVqzcZaxe3TRuVyFQ4SKm03Ag=;
 b=hWfMTlkOn9iBvx8mmjk6zrH2lzJl0mt7R8j2/pleKlY6GMHqQAEpG4wPeyAlXrR3ki
 GULsw6vAEl1wmAcbWfZ94/iSe0MAL/sBd+r+EhgBgGzsbhrbEE3R8UXjYhRfP4pwN9jr
 Sn4pFoKYWH4n3V3E5jAPINQsqVtF+Wezja05w7RlQ70mYg6mMIjcCwKy6YZ4q4srJwO8
 Mo5R4XOC4+fcq0kQWRFgyUXD0yGyOR0qzzGVLdHpEfJ8OxMF88/DzDeKie7wdYoDrMwS
 zOr6Rss05C7uFTNHEtpfbhUP8nKPsze0yskPXwju1s7RFwg4j3sMzquhxirUZ3W4h3cI
 66cw==
X-Gm-Message-State: APjAAAUsjcHZS82BMnsxTca4VSArsGhWRRVISU48p+1te0kqhrA5ZRhq
 E3qVsz3zTWUNK6fTzV5BQSTtaF91KWm8tusk6sc=
X-Google-Smtp-Source: APXvYqxDhwWwhe23FnPOhfwBJdvvv1RZQ4uxY4zTeFQQdGxuUoRdT5WMzdETbuNlDvSjEY17/b21joZDSXi2Bi1nfwg=
X-Received: by 2002:a54:478d:: with SMTP id o13mr4253177oic.54.1565941431065; 
 Fri, 16 Aug 2019 00:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190816070754.15653-1-hch@lst.de>
 <20190816070754.15653-5-hch@lst.de>
In-Reply-To: <20190816070754.15653-5-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 16 Aug 2019 09:43:40 +0200
Message-ID: <CAMuHMdVk3LZk3Ro3PYn9aOZ6NRUr5AOp+NwSNiaq2hBTS0-BtQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] dma-mapping: remove arch_dma_mmap_pgprot
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_004352_245178_6ECFD578 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Shawn Anastasio <shawn@anastas.io>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, Will Deacon <will@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Paul Burton <paul.burton@mips.com>, Catalin Marinas <catalin.marinas@arm.com>,
 James Hogan <jhogan@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 9:19 AM Christoph Hellwig <hch@lst.de> wrote:
> arch_dma_mmap_pgprot is used for two things:
>
>  1) to override the "normal" uncached page attributes for mapping
>     memory coherent to devices that can't snoop the CPU caches
>  2) to provide the special DMA_ATTR_WRITE_COMBINE semantics on older
>     arm systems
>
> Replace one with the pgprot_dmacoherent macro that is already provided
> by arm and much simpler to use, and lift the DMA_ATTR_WRITE_COMBINE
> handling to common code with an explicit arch opt-in.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

>  arch/m68k/Kconfig                  |  1 -
>  arch/m68k/include/asm/pgtable_mm.h |  3 +++
>  arch/m68k/kernel/dma.c             |  3 +--

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
