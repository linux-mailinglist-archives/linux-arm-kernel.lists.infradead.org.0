Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF51D54EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trEWpwbk60H2jmze90qxiV6bKwsrJjlQL4mkbjTyza4=; b=nfK01OXUp41jAM
	4zNvOQ6LUjSpGnci/+BpIUA0Vp05fOoT8bTE8AWc1VG6M27OFtcVQRuNgROKcUiu8+IKE+aFiR3tv
	gNkvDJA0rWOjO2S5GrW3ARcOGwnLP5dr74fvXbmj6mBsNfMEKG+xXzQYxLmK2ZCO9ICiJPFmTU9Jp
	47ghS8Qmmi1IpIXbaF6FKaFR7+8qWiVbeT/ohxAs1a6Gwhm8X6XmhazSRZA5DEoq8An5xSxeeCBUq
	iZaaxVJRmH1/eNV9N8GNr5gcrHzc4d7MjuPS1m3IzCvsoF7qlBC4cmLCwvnCvWztf8Ec/1gKhl6SI
	tKFVdnAMKoQgcmc1rO2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcTQ-0001vf-Vc; Fri, 15 May 2020 15:42:08 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcTF-0001nD-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:42:02 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MPK73-1jjqGd48p3-00PfsX for <linux-arm-kernel@lists.infradead.org>; Fri,
 15 May 2020 17:41:55 +0200
Received: by mail-qt1-f181.google.com with SMTP id x12so2289466qts.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 08:41:54 -0700 (PDT)
X-Gm-Message-State: AOAM530rFsr6LG9g0jfDEgrIE7NUU+zQiWzMmMutwUBUnSEnD8amfWz3
 gjg1/FDa+FR3D0sDs+LRDsbMUhFkk7o729PIPE0=
X-Google-Smtp-Source: ABdhPJxngKHQcZz6BOs80Mu+bi2GH34RwxwzAb1hl7FEp7WA2xsYcLcb/mH4UlISlur28rnQ6tqBJjB5C0UeyiMg16A=
X-Received: by 2002:ac8:518f:: with SMTP id c15mr4010468qtn.142.1589557313823; 
 Fri, 15 May 2020 08:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514162535.GP1551@shell.armlinux.org.uk>
 <CAK8P3a2KR+O5Ua5hsNgzLQV5-V1pat6JH_WM10Es-oUhXO2OgA@mail.gmail.com>
 <20200514234013.GQ1551@shell.armlinux.org.uk>
In-Reply-To: <20200514234013.GQ1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 15 May 2020 17:41:37 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1d-9B86uXxkZnDGf7u-2Vf9fCrUgWQ9HGNEcf3--Yg5w@mail.gmail.com>
Message-ID: <CAK8P3a1d-9B86uXxkZnDGf7u-2Vf9fCrUgWQ9HGNEcf3--Yg5w@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:rdyKvz0cMsu6hcggQMfWHKGaIE0MrqUumc2SEb6Q+Hhjtd1keE2
 tLfrtLuZMLfgy51ztFE4R8HbC3ClpVxibnhSfEI0MWfV1RLMPSdZ3PdmucSEFe5OmueerbS
 DylfSHid06XXRrqAC9pALVPX/+XbI7OJfXqUYAOuEJECVCaflL/1NCKVYx9WmIhSfJhzNn3
 hdLQb2FubdyeYJc3Q/Fvw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yZ9YUw3NF/c=:KwRe4SIapnRIv5bbIg2VZ5
 PygbJPnXz+A7g403TFPlMpJtNiytmQi5mnUAISFTXEN2oJYqar73qBhStWDJKzL/91GVZhSva
 cptvbtb0hVCkXdy9H8K7FuPU3ziscJN92C+9txGI9SEfUKhp05vdQXY93B9D2irBF3/zRroOu
 4yZpBGiVM+fjy6EOrMMknTVuRVJKyrw5lK8gyHa7FuxGzZ4VpBe56Zl4NAESfAZto2ziGtwH/
 +urVqeVIJ015dRcuAzl2D25eTIWHOd91XDGeU8m+gKY6KgKJS22SqTbO4tHkkCCDZXAL+QR5Y
 PyiWGUz8+W/yY0bNa4bn2qXOOmkLTaixi4B2dUU82CRggBXXjOaJpOs7ucARPzFXzWdeK0SKg
 q//dskvzlzxMXBP0rMQD3kz83J8tUJA3/vf2pfGC0ARKuXSpao8FrxTzBiJe3n7J8i9EH7qWC
 zUg0y3zQJlLz7OHucYykb83OCvx6RKspv2Yze6bnF1FbJiDxUWupLuLg0n3QWeX3tPAIjc2at
 gjcjwG4iFv/8Cyp9bOOigKrDmZ03+B2X/hj79X5A+yWv8QB9lXZJN1Ywc27YBYfdCRueqwqgi
 EiozmDPxZUIspuRdVBV14MSOp62oVkTHb8MSVCx/sDOimclO7EC5BhSe2NG0vLNjCT6v/Fp7o
 vJ+VI3Mdl2UvFc+3Hq+W06UFknYnNSRi4nDucISs90QlvSeawShCEa+eVMFd8WHT++mFiXqLu
 2F4dpk889R5Z95kHAIsA1lgC6Q8jZ7MjmSDnT9C6CcApaJ73ZYcYiUR6Q21v6gyWvjWmMw15A
 nwOwSZOvc582v0pcaCOZqQT9oQJZ+6unjJ04X42DVHoMV9w69E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_084157_832861_3AF0AEEC 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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

On Fri, May 15, 2020 at 1:40 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Thu, May 14, 2020 at 11:12:01PM +0200, Arnd Bergmann wrote:
> > On Thu, May 14, 2020 at 6:25 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Thu, May 14, 2020 at 02:41:11PM +0200, Arnd Bergmann wrote:
> > > > On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> > I expected the non-aliasing VIPT caches to work the same as PIPT, can
> > you clarify if there is something to be aware of for those? I see that some
> > ARMv8 chips and most ARMv6 chips (not OMAP2 and Realview) are
> > of that kind, and at we clearly don't want to break running on ARMv8 at
> > least.
>
> There are some aliasing VIPT implementations on ARMv6, but I don't
> remember how common.

I thought it was only realview-pb and omap2, but it seems there
are more, at least ast2500 is an important example.

I could not find information about integrator-cp and picoxcell.
For reference, this is a list of the arm11 chips we currently support,
with the aliasing dcache ones marked '*':

* ast2500: armv6k, arm1176, ??KB aliasing VIPT
  bcm2835: armv6k, arm1176, 16KB non-aliasing VIPT
  cns3xxx: armv6k, arm11mpcore, 32kb PIPT
  imx3: armv6, arm1136r0, 16kb non-aliasing VIPT
  integrator CM1136JF-S core module: arm1136r?, 16kb non-aliasing VIPT
? integrator CTB36 core tile: arm1136r?, ???
  ox820: armv6k, arm11mpcore, ??KB PIPT
* omap2: armv6, arm1136r0, 32kb aliasing VIPT
? picoxcell: armv6k, arm11??
* realview-pb1176: armv6k, arm1176, 32kb aliasing VIPT
  realview-eb with 1176 core tile: armv6k, 16kb non-aliasing VIPT
  realview-eb with 11mpcore core tile: armv6k, 32kb PIPT
  s3c64xx: armv6k, arm1176, 16kb non-aliasing VIPT
  wm8750: armv6k, arm1176: 16kb non-aliasing VIPT

           Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
