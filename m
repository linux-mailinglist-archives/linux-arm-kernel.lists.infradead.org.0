Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912F8872DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoReJ7vuQ8Sf6QUEFwBWKPosBzHTf+MuplB+1T+E4po=; b=DOfz+cRnYKIPE1
	XP+8A3Vdfog/0EPBkcb8JkpDugvj4y3DApowbIsIYaXon/XpQ3B5OUUhA8S2XPHhUpfpQbOeoU3vA
	ngStWy2wj7bEeB0QAToz8wQ2WuKkWAmZQdU6gMTuKd3KHm1+G8+CIr00Udt3EUcLnv/5ZN6afNKEm
	ycqCCfa69ade+1nWcUo31NTx0IxnInnciUuTqY+sRQ9YrO47zWu0ijPLDt7dc/Cn/v6Xzsak0G8sT
	NcnABJfjSEj47dkwy5o9WJu4jOdIxDzYrxqwYG3xkbKoWJ1JAg0BAxmXbuxcXpDW9Et9ye31XjFBZ
	1ImOVUi1UNWjyedX/jyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzDl-00020o-Ki; Fri, 09 Aug 2019 07:21:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzDY-000206-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:21:42 +0000
Received: by mail-ot1-f68.google.com with SMTP id n5so129122295otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 00:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A7mCF4lTq2gFXOvcmY2h+y2/MZQDfsM2+XB9S0QJ6k4=;
 b=l5iD7cfvgsB5Dh8DyOYR/l6wHzhEMNfUFrA/ZFO0QOzTL3ywHrfHRwySZL2t4eLlRq
 VZrvgbF/sC2TaKa5UjKuJZUA0l+ysiQcsgLvBSHCLkmlZKKhgXzjlH8iCod6CISsVyih
 Cb9kLvZxA+mRxIuRvF5VtwszkapUhpJbfBdk5B4vNCBp0qLWSRsa83+/ATG2kWue92Kw
 XvLhmI6z5n6Memy1IVMFe+/SrrCklm9fYt8dOkQa7XM8rfmXFH5yBdROYwD5fWfmfp+V
 wp4TUds5MfAI/9i5L1or+/hWsKTRzAZa0D1/u3KFy+wfJkjZPtErQ1+S/64YCnjP7y7A
 99hg==
X-Gm-Message-State: APjAAAUcrvheLeDJr7a3n5zmHiS0WZ2hd+S0pWjMCLlEXOjkMCTjFohj
 /qq4JB2ru/z8DdAUTls11SJ9ALt8RGlYVzxxZPE=
X-Google-Smtp-Source: APXvYqyBXPOK98jaQhUmqtFlEEGP/W76NVu4RQ2ZHS+SsKdevOL3KYGUiRHhF15E80P339HCx6FddAsKPmlukbGoIK8=
X-Received: by 2002:a9d:7a90:: with SMTP id l16mr17247630otn.297.1565335299510; 
 Fri, 09 Aug 2019 00:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190808160005.10325-1-hch@lst.de>
 <20190808160005.10325-9-hch@lst.de>
In-Reply-To: <20190808160005.10325-9-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Aug 2019 09:21:28 +0200
Message-ID: <CAMuHMdV0JfZ_K2V7W0FQkobE_zLwe4Uez-EWzMMdTfVffpAWtA@mail.gmail.com>
Subject: Re: [PATCH 8/8] dma-mapping: remove CONFIG_ARCH_NO_COHERENT_DMA_MMAP
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_002140_760973_08630470 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Helge Deller <deller@gmx.de>,
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

On Thu, Aug 8, 2019 at 6:01 PM Christoph Hellwig <hch@lst.de> wrote:
> CONFIG_ARCH_NO_COHERENT_DMA_MMAP is now functionally identical to
> !CONFIG_MMU, so remove the separate symbol.  The only difference is that
> arm did not set it for !CONFIG_MMU, but arm uses a separate dma mapping
> implementation including its own mmap method, which is handled by moving
> the CONFIG_MMU check in dma_can_mmap so that is only applies to the
> dma-direct case, just as the other ifdefs for it.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

>  arch/m68k/Kconfig       |  1 -

For m68k:
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
