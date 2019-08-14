Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE948CD7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJpIYUaU8EcCvvZJXgCDDVXdDRCGqCeObIqDwfW/KnU=; b=Uxx15zTd5hed80
	WER02HYPaMjxUdFD8IbaPoKEcQlu6ruj9CExra8z1tDjPBf5XNezWvHbiGZihLzprfKln9LgT2upA
	k/hvd9gTr88Fiez4EoO4AMKQOJ9w29yjfuI2AFbgeK9M/yQ8bdC2sQA8YvdYqlNE61NCJHn7Vwh++
	3htpPZxtPjGs2NjKVvpzf0IHa8WJR3KwUEF1MCos9NcNp3ajOE++sqqzCpKH+YG3CWsWVpEXDxoWH
	xSWI9rrBYeGCGjYl3TFTd9JVl0QOErzqcu2HJHu0rJY+u3DVYmY2pTECZ5hxC/Dqq6y3/EfqUjkEw
	PvHlk4qcFtn2lXolW60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoEi-0001XA-Oi; Wed, 14 Aug 2019 08:02:24 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoET-0001Wi-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:02:10 +0000
Received: by mail-ot1-f66.google.com with SMTP id g17so29337326otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 01:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zSuJzD8umYXn0IIBBnnNKod2o3AaDfv/ajhWktxIh1k=;
 b=V2Y71HaaOtnpxPSgsJ6etoQYnIeRW859E3GnZrzhODD8O0mSFLLAW5dFzzxNmVFg9i
 GSrsCte6ifGGCyVu48wMOLH8RpQ2+CsXMaajHoy8ICfgFqbAoH+qzgAPgf4gfUrf40dx
 Z3+IFl9tB+LIDZpP0DT2nvS19nLiImb2w11yMGhtNcHQWRiLt66kiSaIDDsKgspyTYev
 LwMhUd5FJVx0I9KHlvGUkivDvdlcyQhoSSMFGhtNnWM5/N2NHvqiuGulZ6pPVCMnpkVV
 Wox4V1BVO0ZyVe9gE89r8AbUP9fi9q1WdZa7/B8zplxRFqyfIQtgxUzSoRZFSr+GUEyn
 HzqQ==
X-Gm-Message-State: APjAAAVyGT3m5nVTc9Ry8IQ0MPmsuGgk4s4TswjBKtb6YynAbf+kDhXA
 ATc6dtwDANSCrYIic7bSRM4GzxXijSxl+gffj+k=
X-Google-Smtp-Source: APXvYqy5mqwitlEa+VFoIekcOPkPGw2ezkc3aURzd4TR3WGAn3r+K4v0elusm+p1errgljgC3rvH2tesdE3IoVIUyNM=
X-Received: by 2002:a9d:459d:: with SMTP id x29mr23996052ote.39.1565769727508; 
 Wed, 14 Aug 2019 01:02:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190813170149.26037-1-will@kernel.org>
In-Reply-To: <20190813170149.26037-1-will@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Aug 2019 10:01:56 +0200
Message-ID: <CAMuHMdV-7G9OpGcuPK3iEPzyD_ZyEBW=DsCuDYdUCRmiKkuXBg@mail.gmail.com>
Subject: Re: [PATCH 0/8] Fix issues with 52-bit kernel virtual addressing
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_010209_078811_9D568234 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Tue, Aug 13, 2019 at 7:01 PM Will Deacon <will@kernel.org> wrote:
> This patch series addresses some issues with 52-bit kernel VAs reported
> by Qian Cai and Geert. It's all confined to asm/memory.h and I got a bit
> carried away cleaning that thing up so the patches get more worthless
> as you go through the series. Still, I'd like to queue this on top of
> the 52-bit VA stuff currently sitting in -next.
>
> Although Geert and Steve tested my initial hacks, I dropped the tags
> because I've split things up and could've easily broken things again.

Thanks, this fixes the problem I was seeing, so
Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

> Will Deacon (8):
>   arm64: memory: Fix virt_addr_valid() using __is_lm_address()
>   arm64: memory: Ensure address tag is masked in conversion macros
>   arm64: memory: Rewrite default page_to_virt()/virt_to_page()
>   arm64: memory: Simplify virt_to_page() implementation
>   arm64: memory: Simplify _VA_START and _PAGE_OFFSET definitions
>   arm64: memory: Implement __tag_set() as common function
>   arm64: memory: Add comments to end of non-trivial #ifdef blocks
>   arm64: memory: Cosmetic cleanups
>
>  arch/arm64/include/asm/memory.h | 89 ++++++++++++++++++++---------------------
>  1 file changed, 44 insertions(+), 45 deletions(-)

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
