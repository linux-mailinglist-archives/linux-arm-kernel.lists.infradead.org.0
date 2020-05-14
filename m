Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6082F1D300B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3vmbiaOEVnKa2PZyie+8yq7W9fFObL6MsvCmiGxQTE=; b=OcJ377BKIEkmfu
	I7sslkhCR/g9R51VKVwKbzy5fHvrK8RDxy0/392M/PTutrgr3Dcf1B2YBm+0AWOhF+X6ffempgkXK
	D2ffkqFcurCOm37kuEBc24duv/qh1Jv4mF44n2tcUW9BxPbLaVPAKIqyUQZhuloniZRbCCyKj6Js1
	02NW7h0Ox5wkcfdMm7JcBGyhWU/X1Q4hteEnWHxtj0eVnQisFLwThmPi8NZmUpA7WWAKmTN2D6luW
	ZPFAvQY/bz1mFZsmSRRJOyCka7tlvnQwTV8OWyOgvNHulL6TXcnhB7Juj0V/6sS858sA4OGQoFhNN
	3rzhMLn1yj3RSl/GOJ/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDBH-0008SV-93; Thu, 14 May 2020 12:41:43 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDB4-0008S4-LX
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:41:32 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MScox-1jfYwL0iiH-00Sv1K for <linux-arm-kernel@lists.infradead.org>; Thu,
 14 May 2020 14:41:28 +0200
Received: by mail-qv1-f49.google.com with SMTP id ep1so1581836qvb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 05:41:27 -0700 (PDT)
X-Gm-Message-State: AOAM532nlHNfogJZjWug45iGDdmg1hT+aozbCyXRX8+LqUZVaV+mpBfh
 l7miVXIwTJQibWAO1IYg80HH7kEBP7hLccM5JuA=
X-Google-Smtp-Source: ABdhPJyJLN74A7lfT/QVAu4V7wp3auPjIATgvDUXKW2U6GfQBe3NIdRtROls/MudNYNcGImA8MxrKcbv83h7QK20dFQ=
X-Received: by 2002:a05:6214:3f0:: with SMTP id
 cf16mr4728066qvb.4.1589460087044; 
 Thu, 14 May 2020 05:41:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a0JW9x-Wk9Ec3+zLjPHbWAvPQx8MF-xe-PnWUgEjRAuTg@mail.gmail.com>
 <20200415135407.GA6553@afzalpc> <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
In-Reply-To: <20200514111755.GA4997@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 14 May 2020 14:41:11 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
Message-ID: <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:PxLBz8QWnWJIA93hX5hDDJXp1M5M9rcUUsMgGvZrCJGISExXwKA
 lFmSTOgmZPE7yo+n8fbv9LPmwdprEnHsOAS5TT927u6+qcP3gtdiFCW3OLRT73G6FXcDgIN
 rMqQQE/sMBkSww/XpJ70xkT5+kMtTKpvzvRpL9rSODWk017bjO75eGEyvyYTBH8zPWTFsdx
 mmMZCMOboUpCRJLEfCcaA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YQtSohYq7Ck=:WP3rXJC42kEz5XwAmZpmJn
 /nNWJjRXiDsSxVxFRxI7ZE3MxjXGx7WGhFURLkfGBT+S4dkPT9gte7PY00XIpHNoqkL8Gvntz
 gCBXmbcL8Z9z0qwJa8HAAUureCPsLbeUD7S8/MLopeIocIYC/0+1Qz3sBS9tI7PnimJR9tN3u
 nZfEl4hRSZ4ClTlvhMBnDOJZ/mm2qss54mDKZuIKytj+SZ/Zg/L24HsnRWSkAlGwrkb6l0j1k
 b1oxsIIA+4nANq+Ez2mHofxCWpgX3m36zhNGDRBN4jD051sdTnVpbenj2b7AzUbP4Y4edryy1
 tDgtVwluqE0/9xUBwyPfLdYsHfAVh1eGFtPX+6qio7EP9mkjSYIW39w4guDhb1lKFRRnkyzRK
 L4xc+OY46h+CIddQCKeD1EcbNWNUpgAP6+oyLvcPM3FZpgYhZ7CbKwdKUsaI4DZq/kxlsetZu
 oMkw43GI9BO/0vQXXkSj8NJOPkpq1oahXi4Vm+5U0Qvg20ubmQ8eRTqSbnZuoJ4h4VopcnhpX
 k4ROravgF4UYP6geLaE4GI5f1XPt1w1ukUB+c+ox4O/M1zCH0Efkms3dMU38qM8fcqI4e8vW0
 hlqv+kuKHHZRbYI2Vw5zDCE4T2z5GrxnrKlkcRPl1ywd4W2WpOYU6mBTvD/96notDsGzJ144W
 8vlVEeWUkzVHBrAEBH58EN4AhLaN/jgzim5VzKeVbGCNemppbaiMQe7oCH4+e936WQuJYugVh
 Z88VbBG/TsENblW+Nx+EtQ9NpmHYhEUZJuq+OmTn8nF9pE4yIwgcAd5BCjpVLm+awvNPWmccc
 MSxl9nS9mkGD/ybR8IMUXOtoj7u5TGZ+u/8pnC70tWPs9Ht3FU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_054130_998986_77CB7A55 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> On Tue, May 12, 2020 at 09:49:59PM +0200, Arnd Bergmann wrote:
>
> > Any idea which bit you want to try next?
>
> My plan has been to next post patches for the static kernel migration
> to vmalloc space (currently the code is rigid, taking easy route
> wherever possible & not of high quality) as that feature has an
> independent existence & adds value by itself.  And then start working
> on other steps towards VMSPLIT_4G_4G.
>
> Now that you mentioned about other things, i will slowly start those
> as well.

Sounds good.

> > Creating a raw_copy_{from,to}_user()
> > based on get_user_pages()/kmap_atomic()/memcpy() is probably a good
> > next thing to do. I think it can be done one page at a time with only
> > checking for
> > get_fs(), access_ok(), and page permissions, while get_user()/put_user()
> > need to handle a few more corner cases.
>
> Before starting w/ other things, i would like to align on the high
> level design,
>
> My understanding (mostly based on your comments) as follows,
> (i currently do not have a firm grip over these things, hope to have
> it once started w/ the implementation)
>
> 1. SoC w/ LPAE
> 2. TTBR1 (top 256MB) for static kernel, modules, io mappings, vmalloc,
>         kmap, fixmap & vectors

Right, these kind of go together because pre-LPAE cannot do the
same TTBR1 split, and they more frequently have conflicting
static mappings.

It's clearly possible to do something very similar for older chips
(v6 or v7 without LPAE, possibly even v5), it just gets harder
while providing less benefit.

> 3. TTBR0 (low 3768MB) for user space & lowmem (kernel lowmem to have
>         separate ASID)

Right. This could in theory become a boot-time decision, using
a larger TTBR1 on machines that want more vmalloc space, but a
hardcoded 3840/256 split is likely the best compromise of all the
constraints.

> 4. for user space to/from copy
>  a. pin user pages
>  b. kmap user page (can't corresponding lowmem be used instead ?)
>  c. copy

Right, this is probably the simplest and most generic implementation,
it can even be in an architecture-independent lib/uaccess-generic
file.

These are the trade-offs I see:

- we can have optimizations for get_user/put_user or small copy_from_user
  based on ttbr0 switching, but large copies should probably use the pinned
  page approach anyway, and it's easier to only have one method to
  start with, and then measure the overhead before starting to optimize.

- In the long run, there is no need for kmap()/kmap_atomic() after
  highmem gets removed from the kernel, but for the next few years
  we should still assume that highmem can be used, in order to support
  systems like the 8GB highbank, armadaxp, keystone2 or virtual
  machines. For lowmem pages (i.e. all pages when highmem is
  disabled), kmap_atomic() falls back to page_address() anyway,
  so there is no much overhead.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
