Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51022788FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 11:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2ZwIBd9YphpBMs53V1bF/yOOhpRk7Aeitd+RTxZGNw=; b=vDXQZFUIi1O5+P
	4uXx9RKso2ueGSjag4GJEvORjjjSXTkvTUQMzLIRblVOumNEM0JXTrDfsVnxdmI9wiCYUvFgRZFZ4
	/btVqUrk2pKqB0hGezyD/GguzgKpWyGTJFhhrF5VphZ++cUtLnH3aEKnDneHxs1rN5wdlS4mZmwFz
	OW1MiRxM5NHvvOM24WqlYXy+2pCAzMJnJOufSokPyNVMettihXChn1KxaKTN4i8welQ3yk3SjkN82
	8qf0RQ55FRxn2OdRxz/nQtBzqllAAXGt6vO/fWvkLEDQuxiNL1fixgiIK9qhyRqhf6VT8ljCO7Cfn
	Hgp/V5dOXn1HyxLKds6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2Pa-00086q-AL; Mon, 29 Jul 2019 09:57:46 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2PN-000850-EH
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 09:57:34 +0000
Received: by mail-wr1-f68.google.com with SMTP id x4so7952800wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 02:57:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3EgmHLFik/OPgDdGuLMAdfuPiX1r55Htn8ht8rmVprc=;
 b=mJRBHPh6MnpsZaPK10yKm2cCuqYS34hE6hxTifJVc7Mmi6xWZCi0njSeLWbDE9829e
 eWciQuq7PlgSf8TfT/v9cQ+ZTpZDs/Z593xZu7NClgPP0AxeAPpkulOS84oulMDtmmmv
 4VOWztS7X5n2CwGgqQCmTzfGevjufbFCanTPR+VMcc/pxkaZuQzuAhUYk764gFlgq46l
 PrrfTl24hT+Aq28k28hGZX1h1X0DZEfd56/ekxx2aPa6TECR/sHFvN2mN/vUIBwJmpab
 NztjeEUb1hxSDpF+pIoFkldv/8cUmeLhvthZ3ulK2mAKR/iUCHYbQtC6L8aZa3JRsGU5
 fFRQ==
X-Gm-Message-State: APjAAAXpgSNUSyrVtngiojlzS13LibnnSr5N+9q0G8eLGp40gAuTDJmo
 MfnJMz3CkGFcnSJKm8TLD2BTEa3R2NV1mLCSHIY=
X-Google-Smtp-Source: APXvYqwjfJqS4NGp1R7UrJA2JKANbRDFjcVknk63xGwZnvz1sSMLkkUqcYNpnDqWGXG4WZ8w21QgE4NZzRTpKbjjx94=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr35431224wro.213.1564394251709; 
 Mon, 29 Jul 2019 02:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190725063401.29904-1-hch@lst.de>
 <20190725063401.29904-5-hch@lst.de>
In-Reply-To: <20190725063401.29904-5-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jul 2019 11:57:19 +0200
Message-ID: <CAMuHMdUBPj8AVSuDwaBB_4gRD6k7vzo0WAFJEkTUbxSw31bzUg@mail.gmail.com>
Subject: Re: [PATCH 4/5] dma-mapping: provide a better default
 ->get_required_mask
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_025733_483047_3A791BE7 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Thu, Jul 25, 2019 at 8:35 AM Christoph Hellwig <hch@lst.de> wrote:
> Most dma_map_ops instances are IOMMUs that work perfectly fine in 32-bits
> of IOVA space, and the generic direct mapping code already provides its
> own routines that is intelligent based on the amount of memory actually
> present.  Wire up the dma-direct routine for the ARM direct mapping code
> as well, and otherwise default to the constant 32-bit mask.  This way
> we only need to override it for the occasional odd IOMMU that requires
> 64-bit IOVA support, or IOMMU drivers that are more efficient if they
> can fall back to the direct mapping.

As I know you like diving into cans of worms ;-)

Does 64-bit IOVA support actually work in general? Or only on 64-bit
platforms, due to dma_addr_t to unsigned long truncation on 32-bit?

https://lore.kernel.org/linux-renesas-soc/CAMuHMdWkQ918Y61tMJbHEu29AGLEyNwbvZbSBB-RRH7YYUNRcA@mail.gmail.com/

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
