Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EB01D918C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ehSOL03+ED2taPdryMl44/EieCE3kJHUE6G3eFvQYw=; b=KZu55JZisysLW4
	rh6gUPCQHPTLg3Sd1EbOMo2w3Fz+32+/qiOuf2ZKu64e4I5MuNuil7wOLKX/LJmyJEMG6+MiHqi9z
	vzV96Fy8E8Us8xGYDvlHlSQlcYBEi6d7/nlAD6nTTXYGkZCgg82G0GEyrmAJy/Wb+yPVacSFS6o1D
	rBPgGUlsxmIkH/1TqaJW/pM4jN85vaeYUDOo0dROFn2/f9qHL2hGmOsd27vWzyJ7TCuYBSmHaYk7c
	NQHPbn/aTan0stPgeULY5pgRvEJ/wzUPR5xtWM+SLFqILfzSY7M9s1a2Xycsd0TPJXlKTe0z+NPmF
	QTR8Au3CY3eR8wDgOH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxAj-0002Mw-J6; Tue, 19 May 2020 08:00:21 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxAX-0001Yh-Kg
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:00:11 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N8G6I-1ixIzW3q0u-014Ber for <linux-arm-kernel@lists.infradead.org>; Tue,
 19 May 2020 10:00:07 +0200
Received: by mail-qt1-f174.google.com with SMTP id i68so10419318qtb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 01:00:05 -0700 (PDT)
X-Gm-Message-State: AOAM533HL6IDE1TX3y267/bGg+D/+dU336LzKZcoB91b5HuFdHh0oQlq
 8n5x+dsbhWi+tFekpcYhiWmcFDTiT0lynO7U0RQ=
X-Google-Smtp-Source: ABdhPJwiTNr89UFu5uJljnUwOduwhR7IrLz+lxMf7oX/lqzFF10vCsQETPPVwPS3L2eoaTqGpxMQi0VQTZBCmkJBQHE=
X-Received: by 2002:ac8:518f:: with SMTP id c15mr20029704qtn.142.1589875204389; 
 Tue, 19 May 2020 01:00:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
In-Reply-To: <20200518194533.GD1059226@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 19 May 2020 09:59:48 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
Message-ID: <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
To: Mike Rapoport <rppt@linux.ibm.com>
X-Provags-ID: V03:K1:4ODHS/C/DXnifb2E9+EeEbERpH6A0HWB0aG7lC0QwdGKBNF3N1U
 cwNJ3DYl7ROcKqNfzB7PpDiv+uaXJkvKtLjpkvgU4FJ+9EuCjs3vU4Q9jhibaRujEk0KRB7
 0s3xsDVFBXdYParIjoVT77SGCQvde1monnQCwpp7zHnorDFuuIq6ShHIjhVxeZ4w2V1S3Hg
 XoOM+YEj/YKjHPgTUrrOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4OCn98gepNg=:1MfPQll9b4EJkv1IpTnqig
 qzi7YuEi8AsxRvlmSPw0gqL3cE/lFEU5nK+8Ur3xlVccxILV7pH5P0GTLgX7xm0UeGJMPMMiG
 yJrxppJxCxNz92KSxPgwfguk14VmZ+C4AwHn64tqSlIUHcjAVKQQvvqP66CIgd2pjihAuPMlT
 Mfpgdz5icruKZn/b/RXn8hGftW3kq+uJ3hC49EdEXbRH/vZMRuPgz8PjCDexcrczk6t1erhGu
 DX8KHzSL/MH/Z5NbnpbzspmXsBioOXVAAkZkPdVGCsSgSmcOg4Gmg5cRvGqo16nCKcJHgJTAh
 RssSrRlWth8PFaunyj3yBuNI008WftWV9pDSPjgE8/9Rw/wPj5Xp2llYJzCchAxpyr8rkT1ie
 DvV9+VOEqAAtpqdCIYcSeQFmGVD5gpdh8s47yAw08W/V7nsndceY1fdbr5fr+0Y2ocdgAh7TW
 cKm9pAdVGtcnu9I6eSQRlk+si69cjQI9EsVNRrj8Tre49MBHPS+ni/UBB+Ajp0qK9S6dLk6pO
 Qxu8M0DVoLVOlYOXR6qjTl1Qxhus5wvle1I23/KVgw9vGK8HpwaVn0hFeJtxJfwl2+xig0PPV
 iK6Q8JL3TTPi+oIrkTlNVvsA81AqpWfOdxdFZ6IvM+tw1Wr9FwVkMeshRppVFh0sLgAge9Dc5
 cmU42mIXCweVdPUOdLfNjtuQqCvE+l2FbNU9wiKyu5T/pJrIBKrphRT04vNyKrWRCKpiyLkOx
 RXjGwP2TFByM+xDlQn1JbsU6GvpY16d0zA0mZLrWl47NpvjoxugaVgGpxn6tPJWJ+QNtKpr+a
 +3JI1dZeI3hLbYDbTrVyOAmVyW7U8kXh/uQ0z5UxjAlTYlFdfM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_010009_987726_F0002634 
X-CRM114-Status: GOOD (  26.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Doug Berger <opendmb@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Cernekee <cernekee@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 9:45 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> On Mon, May 18, 2020 at 08:58:36AM -0700, Florian Fainelli wrote:
> > On 5/7/2020 1:11 PM, Florian Fainelli wrote:
> > > On 5/7/2020 12:27 AM, Mike Rapoport wrote:
> > >> On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
> > >>> From: Gregory Fong <gregory.0xf0@gmail.com>
> > >>>
> > >>> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
> > >>> system memory can be located deep in the 36-bit address space.  Allow
> > >>> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
> > >>> the default.
> > >>>
> > >>> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
> > >>> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
> > >>> commit message text above.  As Arnd pointed out at [2] there doesn't
> > >>> seem to be any reason to tie this specifically to ARMv7, so this has
> > >>> been changed to apply to all multiplatform kernels.
> > >>>
> > >>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
> > >>> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
> > >>>
> > >>> Cc: Kevin Cernekee <cernekee@gmail.com>
> > >>> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
> > >>> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
> > >>> Signed-off-by: Doug Berger <opendmb@gmail.com>
> > >>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > >>> ---
> > >>>  arch/arm/Kconfig | 5 +++++
> > >>>  1 file changed, 5 insertions(+)
> > >>>
> > >>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > >>> index 5986277296c3..7bb5264a9c3a 100644
> > >>> --- a/arch/arm/Kconfig
> > >>> +++ b/arch/arm/Kconfig
> > >>> @@ -312,6 +312,8 @@ choice
> > >>>  config ARCH_MULTIPLATFORM
> > >>>   bool "Allow multiple platforms to be selected"
> > >>>   depends on MMU
> > >>> + select ARCH_FLATMEM_ENABLE
> > >>> + select ARCH_SPARSEMEM_ENABLE
> > >>
> > >> The logic in mm/Kconfig is quite convoluted, so selecting
> > >> ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.
> > >>
> > >> On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
> > >> something like:
> > >
> > > Yes indeed, thanks that does allow me to select between flatmem and
> > > sparsemem from menuconfig correctly now.
> >
> > Mike, do you want to make a formal submission to Russell's patch
> > tracker? If so, feel free to add:
>
> I actually hoped to hear from people what do they think about switching
> over to SPARSEMEM for the multiplatform builds. I think at least v7 CPUs
> it would make sense.

It seems that at least s5p/exynos and clps711x (armv4) used to default to
sparsemem, and that got lost in the multiplatform conversion.

I also see discontiguous memory ranges in multiple broadcom chips,
on TI dm8168, ecx-2000 and imx.

> Russel, Arnd, can you comment please?

I see no problem with giving users the choice for all multiplatform
builds. No idea on what the default should be really, i.e. whether
only v7 configurations should make it the default, or rather none of
them or all of them.

Maybe lets leave the default unchanged with flatmem but enable it
in multi_v7_defconfig and the configurations for chips that are known
to have discontiguous memory (clps, bcm, imx, exynos, ...).

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
