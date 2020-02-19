Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0830D16402A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:21:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUpRt3vpZvT7F5pV7AoK+GGBBLE/Y3q8aj57l9GreT4=; b=h4FPIpt0Fw5ql4
	AjnYgynrEYGseEe6ccSiVU/8Vx7xfgagii/ySJrabmtUh8oeX+JVIw0FrJhOgmnPI8BvX44Pxu7dO
	N95otoNzbilV34jSKtETVZPxx/puF2eJguEj2BdaBQx0FPVarPHAQdU6mHKt7bxQGosCujulrBKKP
	atcf6emtolvOg0LwzpSJWPHq97laJy5jeJ7oBRk/RKAlinHGMNe47RYW4wyR5R9ScYDZJ+9GlAg9k
	HLFSeOu0xbXeUTzNk1ZoiSg0U7Ida+1KgoyCZaL5gYeyaEM/EaGeDhyJemjfw4CURNpZeTSp8DNop
	u5GiNvm3nhmo9m5DM8AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LXK-00019G-Pq; Wed, 19 Feb 2020 09:20:54 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LXA-00018m-Tn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:20:46 +0000
Received: by mail-oi1-f194.google.com with SMTP id j132so23127413oih.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:20:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhXLvpZBSYA8Zj0oUPmUXLIuO8kszqVuuW2fgCmPK/A=;
 b=XOWyMjoVQOcqxA3ctWqez88SSyD1Li9mOm/eBo2CrOKAJEs68Q8aw0XA1/racOQY5Q
 +hmxJCD9HRXgGZBPkFWuXWXsBIc0rQwxn7l7sdV2B3NgTd4KyZpn5RVMtG2ul6ks7Gsa
 yXaEPOw1XdGHrJqh4zSZgnVjpBmRQ40NHfTKdiqc5T5zq6Xhm9EHTldPzKV5If6bVKyC
 JSgLsfchEn+Xe1JGWdPOCUS/Ahwg1kpYsCQM8qWXxfjw68TwypQnKuuXCgME1sCJ4lcB
 EY5aTZTqf7aoE4aVSANnspwd0kKP5yht2vVFkgD3MjA/JiST+v7BM6b8f3eZHSe1tGJk
 HT1A==
X-Gm-Message-State: APjAAAUYxjKP4kEaV5Rtg7/MOpPudz0YmJFqjyuzxYnaXL9CL29knRb9
 gUpX6QnJZz8O6rF/Ai3gCryLvZCutMGEAC2ZalU=
X-Google-Smtp-Source: APXvYqyKBBPkhMO1S5ZQuoDusKNb5/RLLdPSI8J1vi9UYoroAgoP/6a3l+iAOfRhw8mhL5C3qfBiINLoVXMMGWov78Y=
X-Received: by 2002:aca:b4c3:: with SMTP id d186mr3878584oif.131.1582104043587; 
 Wed, 19 Feb 2020 01:20:43 -0800 (PST)
MIME-Version: 1.0
References: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
 <CAMuHMdWaCqZ_zcHuBetAQu4kmoffNw5jvHM5ciTi29MAxL70bg@mail.gmail.com>
 <20200219091754.GE2618@vkoul-mobl>
In-Reply-To: <20200219091754.GE2618@vkoul-mobl>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Feb 2020 10:20:22 +0100
Message-ID: <CAMuHMdVC_=V6z+8GubgDvWR37zZdr8f3Fqs-KYUYdZ+e=wYCyg@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: coh901318: Fix a double lock bug in
 dma_tc_handle()
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_012044_964160_8D4E7728 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dmaengine <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vinod,

On Wed, Feb 19, 2020 at 10:18 AM Vinod Koul <vkoul@kernel.org> wrote:
> On 17-02-20, 23:24, Geert Uytterhoeven wrote:
> > On Mon, Feb 17, 2020 at 3:41 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > The caller is already holding the lock so this will deadlock.
> > >
> > > Fixes: 0b58828c923e ("DMAENGINE: COH 901 318 remove irq counting")
> > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > > This is the second double lock bug found using static analysis.  The
> > > previous one was commit 627469e4445b ("dmaengine: coh901318: Fix a
> > > double-lock bug").
> > >
> > > The fact that this has been broken for ten years suggests that no one
> > > has the hardware.
> >
> > Or this only runs CONFIG_SMP=n kernels?
> > This seems to be used in arch/arm/boot/dts/ste-u300.dts only, and
> > CONFIG_ARCH_U300 is a ARCH_MULTI_V5 platform, which looks like
> > it doesn't support SMP?
>
> Should we drop the driver then..?

Why? Because spinlocks are no-ops on SMP=n, and spinlock bugs thus don't
affect the single platform using the driver?

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
