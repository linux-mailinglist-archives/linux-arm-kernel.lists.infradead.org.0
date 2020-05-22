Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1659D1DE48C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rcs5K5eQZbrmjDqH+y9cRbGm3GFIXCH1qNx8Iuokgn4=; b=AkKEBOCu87/DLa
	tFDgS0cByyAEPLVAUiQkS958QsANMhcKrKXLGC+MlbJ+K+eDVg9vA4DSFyIqTSfjhDxb/ONn7nPcA
	Q5nGsS3DZOp2qeva032l0mClEA/+SAGYq11rZgae3jbrUtb57/ZR+cCCrDqdvznGxxlNVcsdoRLXH
	Jsn5iu21AOMF8YKx3VRd9SflRYJcetXTuqqNzBd+BOcZOscDwnrlDptdHN6ohHAio7yTRK069a4dh
	63DX1IKAo+CqOyG+MiLgcDAIwB8+RuPuX/5PL3tYi8AiBTMf7Wz/F0kyuhsFS9xRFBul9BNd9grte
	akHIp6WX0h+O6Fqtukwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc51P-0003Kv-99; Fri, 22 May 2020 10:35:23 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc518-0001ZL-Ea
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:35:08 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MZCvh-1jXSR2151d-00V6J6 for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 12:35:01 +0200
Received: by mail-qk1-f177.google.com with SMTP id s1so10175019qkf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 03:35:00 -0700 (PDT)
X-Gm-Message-State: AOAM533dLAtAhMn8tkkCafxO1srnBL6p9rVKfjFhxiKDCu05gyKka0Ne
 FFcCZRP4CkJX6Xu61/nHNG3hbTi7I2PyHuZ2C/w=
X-Google-Smtp-Source: ABdhPJw02PN89jQLaghKhRZTtfY6WsfKzDAL+DXC4ThLX3EU4DLyXZpzZP+4lu/INdppa9h1Ex+aEXLdggZRZcql5jY=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr14053233qkl.286.1590143699835; 
 Fri, 22 May 2020 03:34:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200505150722.1575-1-geert+renesas@glider.be>
 <20200505150722.1575-7-geert+renesas@glider.be>
 <20200522181118.36de5dd9@xhacker.debian>
In-Reply-To: <20200522181118.36de5dd9@xhacker.debian>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 12:34:43 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1qu-E8XKPiaBF0PqgGfBjNHbcONz-tgby3jt1X1X8Ymw@mail.gmail.com>
Message-ID: <CAK8P3a1qu-E8XKPiaBF0PqgGfBjNHbcONz-tgby3jt1X1X8Ymw@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] ARM: berlin: Drop unneeded select of HAVE_SMP
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
X-Provags-ID: V03:K1:AtbyW8re8cOcURdu7h4x3sM+03v5rfgkRlziVeHoyXIAoDsJRqa
 4rh+mXZ9bLSQcNQMEeJ3695sun0LlnnZp8rAdGEs5dUbipTfcyTAFntby8RGPH4ndUpUCKn
 RHtWbbHbosBGzfPefTC4pZGqNWLTnGkCUDYEiJAW+vhLkglqbUZWKRyUMz9sy5/ZxbLT8KX
 qsPDs7MJk6cydjizLevdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0LYSsEL65t4=:Cg3I0NI1YULV7CPzOvp3bc
 LED7XuCys9yuNVNtMyMUwHGRBn8/hFANE9lBCRc+pkvaA8v3aPyo3+ArkAVfPIdXj0gp8HyOs
 AZCxDLFXbsiZKzoHQJ68HTpNGxN4SnQn5/jPEy1egNJ3AsclM+79Fuindm1kip/60ZDqBNbQM
 JaU/Z/57CUnyL2eS1IwRRD71scf6P0tGKOKPu0vDyrUWurSnTNjB7LBTqS3ISIzQKUAXFcPbC
 1ZIYyEOBuUy4J1tb6TwXyvdhEwQK2Hnz8SHqarLCo6pRdCf97RoObwoUvvR7BrEmWEid9jtkx
 7o1UIcwQwS0UzOSPVYu6ZzhUmkaUEhXC1xlcq+P3TMKvXjWvZr9oOz9oABFmXR7ueJjpbMnwT
 A+m1iEfZjCk6hR3RfQbz7DGVjD3ZPTFs1iHATwpwkAlqje1HqiYQF+SS5IEV323sJrwEfaJ0M
 ziHJWMVtug0lEwGqAwyLKALGcRkIBD/5+e3/Pu5a1ERom0jiu+HhmZCsAUIxgFOuF6yQSAo+t
 uYcqqmlyoWHWlnsmX3Gmk9z/f9Xb1fashJkdHyvzSPPoT6NZN39o5Db15nlcMAo+HCK4fdQmA
 InzkihmpT3I5+ou3ADQ2xhIV3nX1whG8fjdpO4HaqftpIkup02hpiIsL2iSCN057taZ/zFc7G
 Igolifp8B1boNSrNVhAIaKnyS/pW4QuIzQYTh5wUB4C1rx63nWSZrvcwzvET8MCrXChnxe1Na
 WmSP5RLPBlFrjoEqH0lQALNf1eD230+ksQ6D5vSUeG3jHk3HZBkpaNiKeJZGKkz5wsWsEvo8Z
 c2ptLvEJbgn+c8HYbq2XMdyRGf/WmuK87hvS7PRFuyD6oX3nyo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_033506_792209_B211F293 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 12:13 PM Jisheng Zhang
<Jisheng.Zhang@synaptics.com> wrote:
>
> Hi Arnd, Kevin, Olof,
>
> On Tue,  5 May 2020 17:07:13 +0200 Geert Uytterhoeven wrote:
>
> >
> >
> > Support for Marvell Berlin SoCs depends on ARCH_MULTI_V7.
> > As the latter selects HAVE_SMP, there is no need for MACH_BERLIN_BG2 to
> > select HAVE_SMP.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Cc: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> > Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> The patch looks good to me. I want to know what will be the mainline
> path of this series. SoC maintainers take it then send A PR to arm-soc?
> Or each SoC maintainers ack it, arm-soc will take the whole series?
> If later, then
>
> Acked-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
>
>
> This is the first time I see a series touch different SoC platforms.

I have already merged it. The normal way we do this is that platform
maintainers can choose to merge individual patches when they
are happy with them on the early review, or provide an Ack for
them to get merged as a branch.

I picked up v2 of the series as there seemed to be a sufficient
number of Acks and everyone that commented had agreed
in principle.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
