Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E83292728
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJCO94tQDylsjR/KebulJHwPPdE1kpPBHvFQl+fiTtg=; b=a7Am9Iex9aP9Ea
	Qtd+kMzYTf4P11lGojbSmK5iTHTQBpKsctqiHt3pdyI4Wt5bBsMiOZgeYRxrSZxPcUFTYiTDfkZ6w
	oocmxXe8Ktgg6/CRMbCOV4Eh+w8lYDt94I8R0LbDTzMtVOLoCAmnsJnbu8+O61DoG9VIghXEbQ5Bi
	jHV+Jz8Z2DPiXVuWbu16CO7AoUss7+ay7JPh+BT54wbezPpsMnbrn3+Nv1N+jrevgKAYw9SN6ocv4
	xGzOVeqRbhgMiGJ8/Y+7qfKSFd3ttQal+PBnduyyU80CQUSOETPb25Lpsty+pCXeHUfZ28UsCkbMB
	GM/wPcTKGpN04Xg7ynHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzip7-000536-8I; Mon, 19 Aug 2019 14:39:53 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziou-00052E-Nh
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:39:42 +0000
Received: by mail-io1-xd42.google.com with SMTP id j4so4732098iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 07:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uihSuMZgomyGZANDE8KD/f274IaYbI03Q2f2KOfxM+I=;
 b=G1P7027eiopfDNG6P5YZ9VLMsznbA4z4vedgr8lIVKSFnae2VedRHZ6nX8k5yHQCUK
 KT2VGNI0tUXnWAj13PW27yUJ1Je5CbSjrJc4637U4Q++6YLy84df+X0IxMvBMxp8Ga5J
 gsL2kdXf74WAqz9w/dKETVrKY5fhbOpIzd3+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uihSuMZgomyGZANDE8KD/f274IaYbI03Q2f2KOfxM+I=;
 b=NQW2MJ3PiBlUZMxXwXldXzg9niUH3UOjlprc0trr4mhpe3ywlvOwN3jOESgn/53Wk+
 ElK7wGD30BiMCVXwpTytdlMDe0JqIZRnwAqMcttsZ+jeUJY49zEUDruJj2tBsj6qVEPh
 ajWuPfhRtTapz2hPRKFvVH23UJ4amqN5Xucj/Z8jNVSkjy10kqrJ4t51jsCbCxq5+npM
 iQ9NMKHOUV/d3j1Y904DpOmD5fr/2CxC/KvvZwA4RqAkjiUuPvNxZWRpTh6c3InPPdey
 tCiBut1j1nvyMikr1u044eqen8zdT/Qse33K7XbMStI4miKA9Fh0rCLyKvbz6c/cxZtz
 YB2A==
X-Gm-Message-State: APjAAAXbB3qokOmqjm8yY+4+wMY0Ec32nQgGTLLXHssUoIim34CtHPsA
 FRlOsP+rw6MEty/QfMVHiQOWWZ5pua13gCFyEKC0UQ==
X-Google-Smtp-Source: APXvYqz6Nv2dbwOe9HSAvOxPraz8WQBelvTJmAdxSGjJxMIvJwbUVb+lNapnG//etYvf72f9eR76xtLaC0ncZuslMFg=
X-Received: by 2002:a02:495:: with SMTP id 143mr26534114jab.94.1566225579086; 
 Mon, 19 Aug 2019 07:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190814220011.26934-1-robdclark@gmail.com>
 <20190815065117.GA23761@lst.de>
 <CAJs_Fx4bS64s7+xQqsead3N80ZQpofqegFQu+tT=b3wcGd_2pA@mail.gmail.com>
 <20190815175346.GA19839@lst.de>
 <CAJs_Fx6am7TeDFSG=CcTT=4KwhqrZX_jnn56NaWcDkGVizuakg@mail.gmail.com>
 <20190819052337.GA16622@lst.de>
In-Reply-To: <20190819052337.GA16622@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Mon, 19 Aug 2019 07:39:28 -0700
Message-ID: <CAJs_Fx4YfU8iqN+t-h-HxsWRd-KAasHcQaV-9p4Wz=A--5Epew@mail.gmail.com>
Subject: Re: [PATCH 0/6] drm+dma: cache support for arm, etc
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_073940_911230_8EE4425C 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Imre Deak <imre.deak@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Emil Velikov <emil.velikov@collabora.com>,
 Deepak Sharma <deepak.sharma@amd.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <jroedel@suse.de>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Jesper Dangaard Brouer <brouer@redhat.com>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 10:23 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Fri, Aug 16, 2019 at 02:04:35PM -0700, Rob Clark wrote:
> > I don't disagree about needing an API to get uncached memory (or
> > ideally just something outside of the linear map).  But I think this
> > is a separate problem.
> >
> > What I was hoping for, for v5.4, is a way to stop abusing dma_map/sync
> > for cache ops to get rid of the hack I had to make for v5.3.  And also
> > to fix vgem on non-x86.  (Unfortunately changing vgem to used cached
> > mappings breaks x86 CI, but fixes CI on arm/arm64..)  We can do that
> > without any changes in allocation.  There is still the possibility for
> > problems due to cached alias, but that has been a problem this whole
> > time, it isn't something new.
>
> But that just means we start exposing random low-level APIs that
> people will quickly abuse..  In fact even your simple plan to some
> extent already is an abuse of the intent of these functions, and
> it also requires a lot of knowledge in the driver that in the normal
> cases drivers can't know (e.g. is the device dma coherent or not).

I can agree that most drivers should use the higher level APIs.. but
not that we must prevent *all* drivers from using them.  Most of what
DMA API is trying to solve doesn't apply to a driver like drm/msm..
which is how we ended up with hacks to try and misuse the high level
API to accomplish what we need.

Perhaps we can protect the prototypes with #ifdef LOWLEVEL_DMA_API /
#endif type thing to make it more obvious to other drivers that it
probably isn't the API they should use?

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
