Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3239E193CC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SQ2SzZkXViWWESPI9yys3wVh3BnbrhCzPg6SGsLeiQ=; b=I3EDJmigShxeC2
	ghjWYZ4ba3EW7HShQVkEBVRSoBkBWoHRrt9bCdcTohIauGg5p1LAhLBY8x3aENrqMbsmavSyHqSZt
	cjGRChcfxtWwDIwiiM0u1V1egt4eynXXbjJcLmZV1MJSojvZxUOISE2Yv+aSNBOMxAFqKdh6bdEPa
	jCa8OBsypwTqtwRXVRwYSlYZuZAzuR50R3WaSFoxnoTy2gU0q6JHTDCfOqDoqhjs+ec5kqk4SzShF
	Bnk0NonlDS+7998XaJpm1A9vR+qgvlKKsYx/3qhJmVWW9zRuxkRDkyA46Sjtf7PFjTZNEbhPg0t7k
	cWcdO2g9uECOIPumhcZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPWQ-0003Rs-9G; Thu, 26 Mar 2020 10:13:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPWF-0003R1-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:13:49 +0000
Received: by mail-oi1-f196.google.com with SMTP id p125so4948043oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 03:13:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KySq9vbRqSVaUMQfJYnT/cg7WphNRu+W69gTqNBjRGw=;
 b=c2THFRIu6miLvIZZh7xLAHs/RKwTTajPjJL828pQM8doY2LAxw0mQ9IBRMovj/lIps
 TSK5JpLrQAlunf7iyJStcobHm8aR9bhWQkPfXkMmqOv/Pr0j1/5qo3IPHrmW5s6Xt4aP
 7MH1YY1k4XjoCAovp3z5JHPmvL5ddlXTqyNH7oGLg5Ckxq+lE2tj7mFbWbgbHirexx2S
 vi+hKsUAe9mcGq7Nmffp81m3JtVpG8tivlR6N7AK+L7EbPxkYpee3DLdLYuLHRNHaYn4
 zjWiiKWSOyPCWqFeGyM4WERKR81L1z4SdNuFwk6JHAxypjd0oMy1pDNsXKjhRWq9CJsm
 UBVw==
X-Gm-Message-State: ANhLgQ2lLySfODkZre9L2riTxeJOMm4Ep0+yPYG9mQlKpDDveqHfmSxy
 WlPMskEFbExTkm8gh6YZSXC5pK8hMlOxgR3tw+I=
X-Google-Smtp-Source: ADFU+vuwkSL3YLUNjEl230qgAOyjrsI3Ea64++0TBk6yds46R859Jr71wp2CbhwqgI9v1S15Z50ms4LbGIcP2KOpVNI=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr1168268oig.153.1585217625245; 
 Thu, 26 Mar 2020 03:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200320144348.12865-1-geert+renesas@glider.be>
 <CAKv+Gu8q2bAVMRLSc-Ae=hxhg3sbvpfuaMJ_nx4FZFvegNZ+9w@mail.gmail.com>
In-Reply-To: <CAKv+Gu8q2bAVMRLSc-Ae=hxhg3sbvpfuaMJ_nx4FZFvegNZ+9w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Mar 2020 11:13:34 +0100
Message-ID: <CAMuHMdVLA6aEzyudPkR=RP5MV9R4eiRUngAj9wymMv1hJ+uTuA@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: boot: Obtain start of physical memory from DTB
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_031347_695606_C3C6618B 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Wed, Mar 25, 2020 at 5:40 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Fri, 20 Mar 2020 at 15:43, Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > Currently, the start address of physical memory is obtained by masking
> > the program counter with a fixed mask of 0xf8000000.  This mask value
> > was chosen as a balance between the requirements of different platforms.
> > However, this does require that the start address of physical memory is
> > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > requirement is not fulfilled.
> >
> > Fix this limitation by obtaining the start address from the DTB instead,
> > if available (either explicitly passed, or appended to the kernel).
> > Fall back to the traditional method when needed.
> >
> > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > i.e. not at a multiple of 128 MiB.
> >
> > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> > Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > ---
> > v4:
> >   - Fix stack location after commit 184bf653a7a452c1 ("ARM:
> >     decompressor: factor out routine to obtain the inflated image
> >     size"),
> >
>
> Apologies for the breakage. I was aware of the existence of this
> patch, but I didn't realize it was accessing LC0 early on to find the
> stack pointer value.

No problem, you sent your PR on the same day I posted v2, which was
the first version to access LC0.

> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

Thanks!

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
