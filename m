Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7736B1D3FC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 23:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSIZdzeZDEG39GlX8ndjq77Hpj4DMcdHGxrvVTzWpHw=; b=jSEX6KXidyEyop
	sh+Ac/xpx2sTudmZ+QLdZugaQTD7nmqEdrkRyxzUkN11e5f1WI9pqcLAJ5hsjfhuXhqK8FQvhPp25
	WgkNsLdKf4F/YLTPK0qYf0nBlPO+oDnjPO5j0BxY8v9Wl2tFlv18e65tcOdy3j8STQ876CxBGs87m
	cSVD0q+67hd1qjOM+qvmaDexiX569fsfoY20pRFmxU6Th2Fl0+eVxZ8/UmLHvylIcOpQ+WjoFwZb2
	SOWI8XPoxi/QqC64e9Y0FOo1zjqE3sBI+EmWgOMyxxO03s37kjaHV4eg4EKje9feIHXxQuePJ2tdy
	FUyyPr4lA2pPI4Jru6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZL9e-00009A-V6; Thu, 14 May 2020 21:12:34 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZL9U-000081-OQ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 21:12:26 +0000
Received: from mail-qv1-f51.google.com ([209.85.219.51]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mhnnc-1ivaXz15pg-00dkhV for <linux-arm-kernel@lists.infradead.org>; Thu,
 14 May 2020 23:12:19 +0200
Received: by mail-qv1-f51.google.com with SMTP id g20so35042qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 14:12:18 -0700 (PDT)
X-Gm-Message-State: AOAM531DRfvY0NsP4m5alwOylpXxeI1UV2BX5lHJCVWhD8iKCA7utvD7
 NmtWLt45yap9zmB/dssw+nQxL3aaJtXa/pIhc1s=
X-Google-Smtp-Source: ABdhPJw+hOXAPKqhss7jyQwmscQ+zLP90XxY8njrxYkgNmAOyzRHjnKyJ1EnZ5pV37wBywYSy8Mi3+xNly2MaNrB+Gw=
X-Received: by 2002:a0c:eb11:: with SMTP id j17mr396214qvp.197.1589490737968; 
 Thu, 14 May 2020 14:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514162535.GP1551@shell.armlinux.org.uk>
In-Reply-To: <20200514162535.GP1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 14 May 2020 23:12:01 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2KR+O5Ua5hsNgzLQV5-V1pat6JH_WM10Es-oUhXO2OgA@mail.gmail.com>
Message-ID: <CAK8P3a2KR+O5Ua5hsNgzLQV5-V1pat6JH_WM10Es-oUhXO2OgA@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:Mugvxjg3ad2WCo0Doze7cfzuCMd8+/7BuaMR2hF8zYiqFaJKOKV
 H0PXsqhkZs84W5d6yfcNUxuYmbT/h/Kj54wqMeXFlLLIJeEK1AhmLo1l17CumZAhv0JX6Ci
 OmRsB0cSIW8covsazYILvW/Uqq571cY3GC+unQR5MWUPi0XmV28dJJPT/U2jx2RT8F70e+J
 DjZ7KYQwPINomRvlv9zXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:beDmUpByIK4=:bmsVn4hJGAgHdV4x7jZE2+
 td9rI5ES5OD4lW3jPIXQpLY6LNSkUpD/LogSnRc2YPM0LBCQDvvBh0uTQvQmQgQwfqIUJXOUD
 zIKJGCc0/Oa3qoYFFtiqPj7ZUjjphR3V0h6SUdOrAWu0bg3boObe9d73JON1NN5GXLfE4vHwR
 ryBJwgrIiUAGE0EW4DIYK3peGBWV60624Ufc+A1MgLcjPAE6AOY2VpNSa49KqhnoGS1VcDHsb
 I1ixbFaD+gCU2EW0VNqazHPgsw1scKzivUjJ4Az1UlX65l8n0zyUZKl/MNlDYyfbjWwbe7HnV
 V1EVPMzN8yKPf0naWnjrJzNJO5BSGrXYqPEhSe6KPb1t0zoa+oWTnY4GYHeAxiSfzVbVWB4dc
 ZciH6C6X6/9rpwN/qr6dcwtFexqWppegkVXht7TVGmDTEc/NfifD4sZRtu9MKeAzeexLe7/c5
 js4Roygb7YHWr2H6pdt6Bd9lJvJGU64TuwuLVOSj7AwfMM6HJzWCHEZuylcL9IOSmufXr1WNH
 T+skbiYwMiFS2fB9NY9NAUN16JIDX/CK9Lm4OyWrZnd3MlTCcJzNRvwnwoAZyned1Qk+v79Sl
 xwKTTSpWWDKExYk3TLbhZp52+aeB9qvbew4MTFs7PQEPWQaSvHHBWqr4HokUeLrr5s03I9w/S
 21k5+XvaHlyW/ryRD9pXD+f9Eh2xbqY1HwtUqvp67gIcgrI8IlEYUsuoTfl4fVhwkmAwZn1AP
 G2LtfKsXZtZqALdIkCLwvsxZRMZqwPv4n5eBoWhXFV2ESoXtksY4toLmqgCoXZK6ZzvnrEO9m
 nM7TYGcYDG8lBXCHKPS3oK09JjEc4ranA/KdI/NLd+kg/X3hBY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_141225_084294_9F54F3E4 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
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
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 6:25 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Thu, May 14, 2020 at 02:41:11PM +0200, Arnd Bergmann wrote:
> > On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

> > It's clearly possible to do something very similar for older chips
> > (v6 or v7 without LPAE, possibly even v5), it just gets harder
> > while providing less benefit.
>
> Forget about doing this for anything without a PIPT cache - or you're
> going to end up having to flush the data cache each time you enter or
> exit the kernel.

Right, let's forget I said anything about v5 or earlier ;-)

I expected the non-aliasing VIPT caches to work the same as PIPT, can
you clarify if there is something to be aware of for those? I see that some
ARMv8 chips and most ARMv6 chips (not OMAP2 and Realview) are
of that kind, and at we clearly don't want to break running on ARMv8 at
least.

Anyway my point was that it's best to only do it for LPAE anyway, everything
else being a distraction, as the only non-LPAE SoCs I could find with
support for over 2GB are some of the higher-end i.MX6 versions and the
original highbank.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
