Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0CF4F5BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 14:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Keow//VGIB2LZ1xAjDcEcqBc6DWMhijaqsC92DDTFQ=; b=p66FqNNvfz3iob
	txcIq9XiyRPgU9WRGxkCpbRCZGDlkenmRkqhooOt/bTbajNLHo+uB1n+zhgqw5NtsZw8bkBtFerpD
	PwKD1tP5tPy7qDd3Dx4px3lFqKl8hJ8M27KtZl4uNphUMRSF0NJni4l7JXMi/SQgJaiOsKszKAhEL
	KQMT3Eo92ogPTaHd+7LlKYxOgTmlP8xo7oYi6X4E1I4BY2Evko/qYWGQ875byEpMYmW1Og+zPdtJ4
	nosjnzFDLuc0jiJnYkxVp2F04T/PFdkFdcFmBJznoJGxD5wzaiqp1c7HfNi5mXhcJza83E3X78gqT
	yVy6NbkH4eIeWlFZQY4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hefB8-0004jB-EK; Sat, 22 Jun 2019 12:31:34 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hefAx-0004iV-H8; Sat, 22 Jun 2019 12:31:25 +0000
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x5MCV12u019441;
 Sat, 22 Jun 2019 21:31:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x5MCV12u019441
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561206662;
 bh=m54BvUSyNYNL33mmnHMDkq+76aAFKf+BJdGvxLc/WI4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DLHR74rkAqZP3/MBBqZOM/tf+80ugRExZHoXIcUs8aFU5MwfvTFb9w+LUXwbrjihB
 q/xpGGtf6lpk+A2VoHUdvR8SLJDP5/DPGXuLVriD94CBDCH8218GW06mg40rByqkRn
 T33cCAiX23UXjydM3flMYDV2+gMZde4kPAQUXmRUgdJvrkOuPXWeDWCaRx7LkdpvU6
 D1jENLTUNzdTwqT8YpVRWTNl5RwCNzZoezg5CHvf3XZFt/NeVu/MvSPZ5Ax+f5W+f+
 Pq4BQCfOL0IddvlfurF/4Hea9T+jVbfKRjPSFju1HON8ah4S0DXMr8ZDq5CLKxVTUD
 ZakkBFHU9jL8g==
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id b69so1873969vkb.3;
 Sat, 22 Jun 2019 05:31:01 -0700 (PDT)
X-Gm-Message-State: APjAAAVAZJdMqT57OaD6jYQeoqvvxw/cdGsGu+nt7x8XKMwcRrr0J0M7
 JEKAW/0zl7HWDE+/8kYW+Rz4ToH5ekkazcnnMk8=
X-Google-Smtp-Source: APXvYqyBMcX4VGPYKX3tfLIsaz7wkVCv1WB8vYa4Pvt6tJ+QqY3hMQYIWuARG2vUmbyjhfd7TSYdbMhHiQvJhvZdy/E=
X-Received: by 2002:a1f:728b:: with SMTP id n133mr15338535vkc.84.1561206660594; 
 Sat, 22 Jun 2019 05:31:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190621163931.19397-1-yamada.masahiro@socionext.com>
 <20190621175134.GB16409@ravnborg.org>
In-Reply-To: <20190621175134.GB16409@ravnborg.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 22 Jun 2019 21:30:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNATz1iuG0Moab60gMSbVU8PJAmrLn27K8HK_1zQ0qeh26w@mail.gmail.com>
Message-ID: <CAK7LNATz1iuG0Moab60gMSbVU8PJAmrLn27K8HK_1zQ0qeh26w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: compile-test global headers to ensure they are
 self-contained
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_053123_821011_7AEC4F91 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,

On Sat, Jun 22, 2019 at 2:51 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Masahiro.
>
> On Sat, Jun 22, 2019 at 01:39:31AM +0900, Masahiro Yamada wrote:
> > Make as many headers self-contained as possible so that they can be
> > included without relying on a specific include order.
> It is very nice finally to get some infrastructure to validate header
> files.
>
> But to avoid too many conflicts while including more and more headers
> that are selfcontained we really need something that is more
> distributed.
> So for example all header files in include/drm/* could be in one
> Makefile, incl. sub-directories, but the same Makefile would not include
> the files in include/soc/
>
> If you just show how ot do it, others can follow-up with the
> relevant directories.


At first, I tried to split Makefile per directory,
and add header-test-y one by one.

I think you expect they look like this:


include/Makefile:

subdir-y += drm
subdir-y += linux
subdir-y += media


include/drm/Makefile:

header-test-y += drm_cache.h
header-test-y += drm_file.h
header-test-y += drm_util.h
...


include/linux/Makefile:

header-test-y += io.h
header-test-y += list.h
header-test-y += kernel.h
header-test-y += types.h
...



This is a straightforward way,
but I see some disadvantages.

Currently, there are more than 4000 headers
under include/.

So, to cover (almost) all of them, we must
list out 4000 entries.

When somebody adds a new header,
he will be very likely to forget to add
header-test-y for it.
So, newly added headers will always
fall off the coverage.


So, I am trying to take an opposite approach.

Add all headers in include/ by wildcard, then
filter-out one that cannot be self-contained.

In my analysis, 70% of headers are already conf-contained.
After some fixups, 95% of headers can become self-contained.

At this moment, the wildcard only covers some directories
or patterns, but my plan is to extend the wildcard gradually.


Please feel free to suggest alternative ideas.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
