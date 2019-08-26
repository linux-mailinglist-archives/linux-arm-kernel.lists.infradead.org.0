Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865DE9C71D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 04:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sn45oDAS3dODd7xbTloL7urkkygOYEYtSasML66aOeA=; b=JjkXjRZ1RPSQqC
	DaJsoeXRKGoo6E4AAPPlyZvumHHGGdljQ0t5QT6K3oEnjs3Nxv7xc4kKsj5GjcSw4Hr76j8WdSg4T
	/MEtDg3ir/yFiIjgMl1zeTJTAwsijPvNZqRwu9zfV991zD8l1btkMxWGr8D3gR48Xy7dkSLLXl+2k
	Q6z8SuwZCql2lkZk+cX0yJpnp2pz6Xb68ct5AqegHiP8fa2DZStxCWB+G89iGL4Q0bM/hXhmezrQ0
	DpunHN8Jvl1IseHeeY6JYvgsB5Oe/lOh+B47Fu98XFRRwfZLKTVwjOMp0RjxHzi7AKAsb0sqicECH
	yv95Z5weEurM1LWvCqdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i24Oe-0003Ux-8X; Mon, 26 Aug 2019 02:06:16 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i24OT-0003UG-IS
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 02:06:07 +0000
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x7Q25aLQ023598
 for <linux-arm-kernel@lists.infradead.org>; Mon, 26 Aug 2019 11:05:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x7Q25aLQ023598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566785138;
 bh=Y6CSk1yG6UDaWDZc7YQfg16zRcI7iqnK0vjwzjH84CE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HlDVXApQJeqCASixrhojuW15nWeQKG/b7hMjdNZda/cmyuZxv+3t8UR0Ca6JpcyWP
 9LCxrDSsal0l/bwFSN1/POqAIsyKHp9lrBRnGhkqGX0unc+w0vAQTdFPyLa2f8pVAx
 e4Kg/wFqgXUqqAE5S88ZYvoK4bt8cMHtT/QomTtqKxLvol6HE6z51sO2OSdFX/e5eK
 yjRfQCHxDe+12O+JuZOWS5G0X5mv4iqgEjB4NwStZvN20TU0h0gnlOzo/XNI5a00e2
 Fpor8TyphVLqrvSFkArvbCYf7XiAN7MZrk/5l15wOdIufExGAWeGpB1El0zTlpqBJp
 Vfi3CKBbLrf/Q==
X-Nifty-SrcIP: [209.85.222.45]
Received: by mail-ua1-f45.google.com with SMTP id g13so5203116uap.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 19:05:37 -0700 (PDT)
X-Gm-Message-State: APjAAAXC1jc7Xkp4r0ivM5re+X7jsPkZSgfh147MiVa0eeMRLdhY30S+
 4K+Pr9Osoww9lpjRb2W7ButLAk2Hn6ZvcUy4HPE=
X-Google-Smtp-Source: APXvYqxTTMLLHvl8ZQ3KknXXOxUMTC3Y3hppkNTfIGAtnJsgB3ydviER0RL9pfJ3r191gBIB66pQqdIW5M4t3FT5soQ=
X-Received: by 2002:ab0:442:: with SMTP id 60mr1079956uav.109.1566785136210;
 Sun, 25 Aug 2019 19:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-3-nicoleotsuka@gmail.com>
 <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
 <CAK7LNAQfYBCoChMV=MOwcUyVoqRkrPWs7DaWdzDqjBe18gGiAQ@mail.gmail.com>
 <20190825011025.GA23410@lst.de>
In-Reply-To: <20190825011025.GA23410@lst.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 26 Aug 2019 11:05:00 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQb1ZHr=DiHLNeNRaQExMuXdDOV4sFghoGbco_Q=Qzb8g@mail.gmail.com>
Message-ID: <CAK7LNAQb1ZHr=DiHLNeNRaQExMuXdDOV4sFghoGbco_Q=Qzb8g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_190605_860250_06D9E6B3 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Joerg Roedel <joro@8bytes.org>,
 Russell King <linux@armlinux.org.uk>, Thierry Reding <treding@nvidia.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Nicolin Chen <nicoleotsuka@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christoph,

On Sun, Aug 25, 2019 at 10:10 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Fri, Aug 23, 2019 at 09:56:52PM +0900, Masahiro Yamada wrote:
> > + linux-mmc, Ulf Hansson, Adrian Hunter,
> >
> >
> > ADMA of SDHCI is not working
> > since bd2e75633c8012fc8a7431c82fda66237133bf7e
>
> Does it work for you with this commit:
>
> http://git.infradead.org/users/hch/dma-mapping.git/commitdiff/90ae409f9eb3bcaf38688f9ec22375816053a08e


This is included in v5.3-rc6
so I tested it.

No, it did not fix the problem.


--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
