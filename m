Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74BD75B6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 01:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EImpxSNHeuv5epDquyVLZ1AScCtpLUxqVTRt3Bn8H6I=; b=d11fedfulZP6Um
	iJeWUR2/hFH5n9kiphwdwgWM2sm4P6GZdNf5/A025t0Fh+3YsgFtzsw+s1QUErFxTAODb7TYDvnjM
	pE0jyFN7zE7WXer/CXviTn/cewS6KkS4dX9Z0xSrBYVx4loJB077rMVL5Y+bH9cs1dGAXNy4lSzLC
	F698ISzc6HwsRV4uifNc0c5agJB4CCf0qu8Di/+wQQTYeNSlI54MpJZM/fDJRoseCf6fgXKAcHQqr
	JnzQjcEWPnka9kfGU0G7n6x/RcL2S9wyKNsYsGNexv5Bc28Fl4wWpz/BYGSUT7ZTEn7dvHuq4RYNn
	OswK012A5EUbhQBTuhfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnNV-0002BA-43; Thu, 25 Jul 2019 23:42:29 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnNB-0002A2-2w
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 23:42:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id az7so23980415plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 16:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=2GAKwzMUlP3WmD+pUyDwl1ISawmBP4193MDBqvqYky4=;
 b=nhlQMRV4GLFqDHbvHEVj927TPmOUDzCmyQAOPAhADKYhtD4vUWzxIqr2aX9vAbeZzl
 6UNddx7i8te7kDOGI5lPrVNTDf5YKgXxjfn1frBGFdt59mmme7SyfyGbK4g6Qbfh59Rh
 dmZb7w4twDQA8h23OhYaze90zTj09s1Gqf9xIO6OUAV+6aT34cWLmOPpQvXbwdaj8XQ4
 tpB/rgQ7VXgWieBv8a2/tHguSg58j0XsFK1hiG8GKVx6CcYqBM4/iV2C/SdVAS0GDYgt
 bnVF4Ag/VVGXD4jSolHNLGwZp5VjyCP1+flcLEs62i30q2ztxQUfHQqyQiuUDaEJ8zjF
 nrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=2GAKwzMUlP3WmD+pUyDwl1ISawmBP4193MDBqvqYky4=;
 b=qrQWRgGWp/LwvCuJEh4r6MUd7EfMcMLkFjQ2XACSYVG6IjBfRPk9eHNwlj18uBZ5fi
 nIAdLKKVSiCZMfXEFnBDTa5Z1Gb2Bt3Wl4Gvm3Znp3iLr6gzdAxWMtTMwfT4dzpq1zeP
 v8bIaoKRvvRPhHRwfjOS8RjMnlJP11LGSHSyEpTIF+3X4IaimbdP3AnjK/7AQ6yuwF1P
 fYFkSC6lnH09JFd1i3+LKGtXGH9kWwQasckBh84b25e/zfbneuK596b1gQvvh7y8gGHi
 SpV65oQ1rlbQI87qm8aZRDV6H+rGF0nks9b4utu8AmBOoO7mthXZYqqrHMZEolF7CAX4
 jy9w==
X-Gm-Message-State: APjAAAUi2D1lLskHp7b8yyjj9VVwwS9ub3btF9IYekFZMYXGi4VqJtuM
 E9eDmVvLlPwGOx7bw5JlVDQ=
X-Google-Smtp-Source: APXvYqxmi/FzQIP8qaoABUPm3Xq2BFl14gHU3e414MTPj/K/JgQlbCdKyJCGGx3VBOTmJzmUKQDrtQ==
X-Received: by 2002:a17:902:20ec:: with SMTP id
 v41mr88146472plg.142.1564098128158; 
 Thu, 25 Jul 2019 16:42:08 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id u3sm44695365pjn.5.2019.07.25.16.42.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 16:42:07 -0700 (PDT)
Date: Thu, 25 Jul 2019 16:42:51 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 1/2] dma-contiguous: Abstract
 dma_{alloc,free}_contiguous()
Message-ID: <20190725234250.GA15714@Asurada-Nvidia.nvidia.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190524040633.16854-2-nicoleotsuka@gmail.com>
 <CAAEAJfA+edVLfZzEZe98249Y7NZQFht9185JH21pV10Bq9Wk3w@mail.gmail.com>
 <20190725165015.GA31961@Asurada-Nvidia.nvidia.com>
 <1564075865.2339.6.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564075865.2339.6.camel@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_164209_131413_ABCADAE2 
X-CRM114-Status: GOOD (  40.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, jcmvbkbc@gmail.com, hch@lst.de,
 Marek Szyprowski <m.szyprowski@samsung.com>, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org,
 Russell King <linux@armlinux.org.uk>, hans.verkuil@cisco.com,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, treding@nvidia.com,
 linux-media@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 keescook@chromium.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, chris@zankel.net,
 wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, iamjoonsoo.kim@lge.com,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 07:31:05PM +0200, Dafna Hirschfeld wrote:
> On Thu, 2019-07-25 at 09:50 -0700, Nicolin Chen wrote:
> > On Thu, Jul 25, 2019 at 01:06:42PM -0300, Ezequiel Garcia wrote:
> > > I can't find a way to forward-redirect from Gmail, so I'm Ccing Dafna
> > > who found a regression caused by this commit. Dafna, can you give all
> > > the details, including the log and how you are reproducing it?
> > =

> > I saw the conversation there. Sorry for not replying yet.
> > May we discuss there since there are full logs available?
> > =

> > Thanks
> > Nicolin
> > =

> =

> Hi,
> I compiled vivid as built-in into the kernel (not as a separate module) f=
or nitrogen8m device (imx8) and
> set it to use contig dma for mem_ops by adding the kernel param
> vivid.allocators=3D1,1,...
> =

> I use this devicetree patch for the dtb file: https://lkml.org/lkml/2019/=
7/24/789. Although it should
> be the same on any Aarch64 platform.
> =

> Then, on the board I run the command:
> =

> v4l2-ctl -d3 -v width=3D2592,height=3D1944,pixelformat=3DUYVY,bytesperlin=
e=3D5184 --stream-mmap --stream-to video.UYVY
> =

> In every run there is a different crash. Here is one of them: https://pas=
tebin.com/xXgbXMAN

This probably should be a fix: https://lkml.org/lkml/2019/7/25/1432

I also sent it to you. Would it be possible for you to test it?

Thanks
Nicolin

> =

> Dafna
> > > =

> > > =

> > > > > On Fri, 24 May 2019 at 01:08, Nicolin Chen <nicoleotsuka@gmail.co=
m> wrote:
> > > > =

> > > > Both dma_alloc_from_contiguous() and dma_release_from_contiguous()
> > > > are very simply implemented, but requiring callers to pass certain
> > > > parameters like count and align, and taking a boolean parameter to
> > > > check __GFP_NOWARN in the allocation flags. So every function call
> > > > duplicates similar work:
> > > > =A0 /* A piece of example */
> > > > =A0 unsigned long order =3D get_order(size);
> > > > =A0 size_t count =3D size >> PAGE_SHIFT;
> > > > =A0 page =3D dma_alloc_from_contiguous(dev, count, order, gfp & __G=
FP_NOWARN);
> > > > =A0 [...]
> > > > =A0 dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
> > > > =

> > > > Additionally, as CMA can be used only in the context which permits
> > > > sleeping, most of callers do a gfpflags_allow_blocking() check and
> > > > a corresponding fallback allocation of normal pages upon any false
> > > > result:
> > > > =A0 /* A piece of example */
> > > > =A0 if (gfpflags_allow_blocking(flag))
> > > > =A0=A0=A0=A0=A0=A0page =3D dma_alloc_from_contiguous();
> > > > =A0 if (!page)
> > > > =A0=A0=A0=A0=A0=A0page =3D alloc_pages();
> > > > =A0 [...]
> > > > =A0 if (!dma_release_from_contiguous(dev, page, count))
> > > > =A0=A0=A0=A0=A0=A0__free_pages(page, get_order(size));
> > > > =

> > > > So this patch simplifies those function calls by abstracting these
> > > > operations into the two new functions: dma_{alloc,free}_contiguous.
> > > > =

> > > > As some callers of dma_{alloc,release}_from_contiguous() might be
> > > > complicated, this patch just implements these two new functions to
> > > > kernel/dma/direct.c only as an initial step.
> > > > =

> > > > > > > Suggested-by: Christoph Hellwig <hch@lst.de>
> > > > > > > Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
> > > > ---
> > > > Changelog
> > > > v2->v3:
> > > > =A0* Added missing "static inline" in header file to fix build erro=
r.
> > > > v1->v2:
> > > > =A0* Added new functions beside the old ones so we can replace call=
ers
> > > > =A0=A0=A0one by one later.
> > > > =A0* Applied new functions to dma/direct.c only, because it's the b=
est
> > > > =A0=A0=A0example caller to apply and should be safe with the new fu=
nctions.
> > > > =

> > > > =A0include/linux/dma-contiguous.h | 11 ++++++++
> > > > =A0kernel/dma/contiguous.c=A0=A0=A0=A0=A0=A0=A0=A0| 48 ++++++++++++=
++++++++++++++++++++++
> > > > =A0kernel/dma/direct.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0| 24 +++-=
-------------
> > > > =A03 files changed, 63 insertions(+), 20 deletions(-)
> > > > =

> > > > diff --git a/include/linux/dma-contiguous.h b/include/linux/dma-con=
tiguous.h
> > > > index f247e8aa5e3d..00a370c1c140 100644
> > > > --- a/include/linux/dma-contiguous.h
> > > > +++ b/include/linux/dma-contiguous.h
> > > > @@ -115,6 +115,8 @@ struct page *dma_alloc_from_contiguous(struct d=
evice *dev, size_t count,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0unsigned int order, bool=
 no_warn);
> > > > =A0bool dma_release_from_contiguous(struct device *dev, struct page=
 *pages,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0int count);
> > > > +struct page *dma_alloc_contiguous(struct device *dev, size_t size,=
 gfp_t gfp);
> > > > +void dma_free_contiguous(struct device *dev, struct page *page, si=
ze_t size);
> > > > =

> > > > =A0#else
> > > > =

> > > > @@ -157,6 +159,15 @@ bool dma_release_from_contiguous(struct device=
 *dev, struct page *pages,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0return false;
> > > > =A0}
> > > > =

> > > > +static inline
> > > > +struct page *dma_alloc_contiguous(struct device *dev, size_t size,=
 gfp_t gfp)
> > > > +{
> > > > +=A0=A0=A0=A0=A0=A0=A0return NULL;
> > > > +}
> > > > +
> > > > +static inline
> > > > +void dma_free_contiguous(struct device *dev, struct page *page, si=
ze_t size) { }
> > > > +
> > > > =A0#endif
> > > > =

> > > > =A0#endif
> > > > diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> > > > index b2a87905846d..21f39a6cb04f 100644
> > > > --- a/kernel/dma/contiguous.c
> > > > +++ b/kernel/dma/contiguous.c
> > > > @@ -214,6 +214,54 @@ bool dma_release_from_contiguous(struct device=
 *dev, struct page *pages,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0return cma_release(dev_get_cma_area(dev), p=
ages, count);
> > > > =A0}
> > > > =

> > > > +/**
> > > > + * dma_alloc_contiguous() - allocate contiguous pages
> > > > + * @dev:=A0=A0=A0Pointer to device for which the allocation is per=
formed.
> > > > + * @size:=A0=A0Requested allocation size.
> > > > + * @gfp:=A0=A0=A0Allocation flags.
> > > > + *
> > > > + * This function allocates contiguous memory buffer for specified =
device. It
> > > > + * first tries to use device specific contiguous memory area if av=
ailable or
> > > > + * the default global one, then tries a fallback allocation of nor=
mal pages.
> > > > + */
> > > > +struct page *dma_alloc_contiguous(struct device *dev, size_t size,=
 gfp_t gfp)
> > > > +{
> > > > +=A0=A0=A0=A0=A0=A0=A0int node =3D dev ? dev_to_node(dev) : NUMA_NO=
_NODE;
> > > > +=A0=A0=A0=A0=A0=A0=A0size_t count =3D PAGE_ALIGN(size) >> PAGE_SHI=
FT;
> > > > +=A0=A0=A0=A0=A0=A0=A0size_t align =3D get_order(PAGE_ALIGN(size));
> > > > +=A0=A0=A0=A0=A0=A0=A0struct cma *cma =3D dev_get_cma_area(dev);
> > > > +=A0=A0=A0=A0=A0=A0=A0struct page *page =3D NULL;
> > > > +
> > > > +=A0=A0=A0=A0=A0=A0=A0/* CMA can be used only in the context which =
permits sleeping */
> > > > +=A0=A0=A0=A0=A0=A0=A0if (cma && gfpflags_allow_blocking(gfp)) {
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0align =3D min_t(size_=
t, align, CONFIG_CMA_ALIGNMENT);
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0page =3D cma_alloc(cm=
a, count, align, gfp & __GFP_NOWARN);
> > > > +=A0=A0=A0=A0=A0=A0=A0}
> > > > +
> > > > +=A0=A0=A0=A0=A0=A0=A0/* Fallback allocation of normal pages */
> > > > +=A0=A0=A0=A0=A0=A0=A0if (!page)
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0page =3D alloc_pages_=
node(node, gfp, align);
> > > > +
> > > > +=A0=A0=A0=A0=A0=A0=A0return page;
> > > > +}
> > > > +
> > > > +/**
> > > > + * dma_free_contiguous() - release allocated pages
> > > > + * @dev:=A0=A0=A0Pointer to device for which the pages were alloca=
ted.
> > > > + * @page:=A0=A0Pointer to the allocated pages.
> > > > + * @size:=A0=A0Size of allocated pages.
> > > > + *
> > > > + * This function releases memory allocated by dma_alloc_contiguous=
(). As the
> > > > + * cma_release returns false when provided pages do not belong to =
contiguous
> > > > + * area and true otherwise, this function then does a fallback __f=
ree_pages()
> > > > + * upon a false-return.
> > > > + */
> > > > +void dma_free_contiguous(struct device *dev, struct page *page, si=
ze_t size)
> > > > +{
> > > > +=A0=A0=A0=A0=A0=A0=A0if (!cma_release(dev_get_cma_area(dev), page,=
 size >> PAGE_SHIFT))
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0__free_pages(page, ge=
t_order(size));
> > > > +}
> > > > +
> > > > =A0/*
> > > > =A0 * Support for reserved memory regions defined in device tree
> > > > =A0 */
> > > > diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> > > > index 2c2772e9702a..0816c1e8b05a 100644
> > > > --- a/kernel/dma/direct.c
> > > > +++ b/kernel/dma/direct.c
> > > > @@ -96,8 +96,6 @@ static bool dma_coherent_ok(struct device *dev, p=
hys_addr_t phys, size_t size)
> > > > =A0struct page *__dma_direct_alloc_pages(struct device *dev, size_t=
 size,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dma_addr_t *dma_han=
dle, gfp_t gfp, unsigned long attrs)
> > > > =A0{
> > > > -=A0=A0=A0=A0=A0=A0=A0unsigned int count =3D PAGE_ALIGN(size) >> PA=
GE_SHIFT;
> > > > -=A0=A0=A0=A0=A0=A0=A0int page_order =3D get_order(size);
> > > > =A0=A0=A0=A0=A0=A0=A0=A0struct page *page =3D NULL;
> > > > =A0=A0=A0=A0=A0=A0=A0=A0u64 phys_mask;
> > > > =

> > > > @@ -109,20 +107,9 @@ struct page *__dma_direct_alloc_pages(struct d=
evice *dev, size_t size,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0gfp |=3D __dma_direct_optimal_gfp_mask(dev,=
 dev->coherent_dma_mask,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0&phys_mask);
> > > > =A0again:
> > > > -=A0=A0=A0=A0=A0=A0=A0/* CMA can be used only in the context which =
permits sleeping */
> > > > -=A0=A0=A0=A0=A0=A0=A0if (gfpflags_allow_blocking(gfp)) {
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0page =3D dma_alloc_fr=
om_contiguous(dev, count, page_order,
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0gfp & __GFP_NOWARN);
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (page && !dma_cohe=
rent_ok(dev, page_to_phys(page), size)) {
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0dma_release_from_contiguous(dev, page, count);
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0page =3D NULL;
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0}
> > > > -=A0=A0=A0=A0=A0=A0=A0}
> > > > -=A0=A0=A0=A0=A0=A0=A0if (!page)
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0page =3D alloc_pages_=
node(dev_to_node(dev), gfp, page_order);
> > > > -
> > > > +=A0=A0=A0=A0=A0=A0=A0page =3D dma_alloc_contiguous(dev, size, gfp);
> > > > =A0=A0=A0=A0=A0=A0=A0=A0if (page && !dma_coherent_ok(dev, page_to_p=
hys(page), size)) {
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0__free_pages(page, pa=
ge_order);
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0dma_free_contiguous(d=
ev, page, size);
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0page =3D NULL;
> > > > =

> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (IS_ENABLED(CONF=
IG_ZONE_DMA32) &&
> > > > @@ -154,7 +141,7 @@ void *dma_direct_alloc_pages(struct device *dev=
, size_t size,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0if (PageHighMem(page)) {
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0/*
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0* Depending on t=
he cma=3D arguments and per-arch setup
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0* dma_alloc_from_c=
ontiguous could return highmem pages.
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0* dma_alloc_contig=
uous could return highmem pages.
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0* Without remapp=
ing there is no way to return them here,
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0* so log an erro=
r and fail.
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0*/
> > > > @@ -176,10 +163,7 @@ void *dma_direct_alloc_pages(struct device *de=
v, size_t size,
> > > > =

> > > > =A0void __dma_direct_free_pages(struct device *dev, size_t size, st=
ruct page *page)
> > > > =A0{
> > > > -=A0=A0=A0=A0=A0=A0=A0unsigned int count =3D PAGE_ALIGN(size) >> PA=
GE_SHIFT;
> > > > -
> > > > -=A0=A0=A0=A0=A0=A0=A0if (!dma_release_from_contiguous(dev, page, c=
ount))
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0__free_pages(page, ge=
t_order(size));
> > > > +=A0=A0=A0=A0=A0=A0=A0dma_free_contiguous(dev, page, size);
> > > > =A0}
> > > > =

> > > > =A0void dma_direct_free_pages(struct device *dev, size_t size, void=
 *cpu_addr,
> > > > --
> > > > 2.17.1
> > > > =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
