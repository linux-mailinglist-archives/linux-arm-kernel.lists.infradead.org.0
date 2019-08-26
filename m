Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3F9C717
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 03:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8P4BOkwu9SH7tNqILXGSjbsrECIwEEidx+GoHZewS74=; b=b0Bew+MPelJbUm
	pLlVJUL45pOvmbS05zESlP6pmNce29rPTVZWhExlejZ/vuBb5PdXuvaJofXkGsEgQ5jkocd6fiTVV
	NC6vdEX2MdCpOOdyybI/Jz9NAq586ARCZP/mrNbZc3zYsn2HwN1aLDP5XpklHvTkHM67XKqQqOf5G
	YBfsnucu1JJUZTxHqxf2eA8EOUxmMoStydZju0yKi9wdRMGOPTqKtLQoO13LpxbpKvLndmgxi55//
	FapZKZrX2zghVoX/T5D5BfXjXUzosyR71w+5yRy4dX7XjcHZy4PEwNrzXqdYdbJbwnx14h9x5mVHM
	15wvoMl5YfbB/nkn0JMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i24GC-0000Qm-3s; Mon, 26 Aug 2019 01:57:32 +0000
Received: from conssluserg-06.nifty.com ([210.131.2.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i24Fy-0000PT-CJ
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 01:57:20 +0000
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id x7Q1uofa028779
 for <linux-arm-kernel@lists.infradead.org>; Mon, 26 Aug 2019 10:56:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x7Q1uofa028779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566784611;
 bh=Xw+wxYvXUGE3fRV+Doiiivavq+mUL1vvPgjRzYtJ358=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qEUlffBnvbyTRi4uQhlTUH+vofgwb9EaW33590XA9MrcgGTzxogl/oHgBozFk3o+y
 dDlDvn619VpEhOGIcZgbOvezBV8e15WgO5j2bPZ28u3/T/xFnG5AOVo5mk810x4yEM
 hPG3ps/8mTkGsS7Ausrg+7oLoD7S3YiOiXO29Td/QYtpKKwu+Fhng5kKhl2oZkwM4/
 iRmVXEldM/JCjJ6jK5WNJnJvlxl15g04T9dnVvHJx23jf8JpaPIChkW9rW3jLhmaqd
 J1gED6X+yT42OJUiAqwnDzEYTGFglAWCWfTMtLWmwVP/gFZuJtP31z/wrkRKZiYIg7
 QgLFwkXGrp+gA==
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id m23so5178516uaq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 18:56:51 -0700 (PDT)
X-Gm-Message-State: APjAAAXF4Vn8JN71S/jn30ErqJvOkroc7LXoApsoRVVUPdOvidw5je4y
 m4C/Xwdd24DJ97EORgeJRqxp+ieD3aWCkpvqhEU=
X-Google-Smtp-Source: APXvYqzdRMKAVamOOE+1e4sp/Bzd54Y2ifvgVrHPozgaBDgPJcD9G9g8zSB4pXJdG2r6CZRzYRRos2G+z4U8cxBoK20=
X-Received: by 2002:ab0:4261:: with SMTP id i88mr7473666uai.95.1566784610044; 
 Sun, 25 Aug 2019 18:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
 <20190506223334.1834-3-nicoleotsuka@gmail.com>
 <CAK7LNARacEorb38mVBw_V-Zvz-znWgBma1AP1-z_5B_xZU4ogg@mail.gmail.com>
 <20190823221103.GA3604@Asurada-Nvidia.nvidia.com>
In-Reply-To: <20190823221103.GA3604@Asurada-Nvidia.nvidia.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 26 Aug 2019 10:56:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNARrCviBr5j=2Lridh+MfbN1CFPU51cbpKDxNG6XKeQgdw@mail.gmail.com>
Message-ID: <CAK7LNARrCviBr5j=2Lridh+MfbN1CFPU51cbpKDxNG6XKeQgdw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
To: Nicolin Chen <nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_185718_629784_ED0164F3 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.91 listed in list.dnswl.org]
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
Cc: Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Joerg Roedel <joro@8bytes.org>,
 Russell King <linux@armlinux.org.uk>, Thierry Reding <treding@nvidia.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, iamjoonsoo.kim@lge.com,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolin,

On Sat, Aug 24, 2019 at 7:10 AM Nicolin Chen <nicoleotsuka@gmail.com> wrote:
>
> On Fri, Aug 23, 2019 at 09:49:46PM +0900, Masahiro Yamada wrote:

> >
> > Reverting this commit fixed the problem.
>
> We are having another problem with the new API and Christoph
> submitted a patch at: https://lkml.org/lkml/2019/8/20/86
>
> Would it be possible for you to test to see if it can fix?


It is included in 5.3-rc6

I tested 5.3-rc6 in on my board,
but I still see the same DMA fauilure.


Masahiro





> We can revert my fallback change after all, if Christoph's
> patch doesn't work for you either.
>
> Thanks
> Nicolin



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
