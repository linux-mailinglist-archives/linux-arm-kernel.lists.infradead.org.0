Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEF81A3165
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSCamSjs0SrB9gzAspKHwTOPZrOXnmyvjNiyTpaP+C8=; b=mlhQjjDz197TkZ
	EK0ysEPpu2FI0rv0hIgPw2qwbBidPSbzxuhTJiTQmbvoqmNykRdlR/4f5TkM4wiIoY8XqnjX5cEBB
	xaa1ea6ix2t4d4k4QTH4UBTogKlithIBbAiEivXmZRooZI+xVzPKOrKv73Ghq5CnnNN5RxAk/zhco
	j+kmu+K+Qsrksx/SU2ncxRP9cemDuuEV1zna1z8iGp3ejSR/OtrHL9PAp/iT0yViOkvBKcAaNaA/5
	0WhDFd1Q+CchP9eIGnOp9ziI7fclL/ZZnyfhKxw6rs3S2rwBTD8p/69Zc9Y82K/DGi0IHj0srf+1j
	GySVoUPz23CzDEHRq3Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMT1c-0006z1-Th; Thu, 09 Apr 2020 08:59:04 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMT1U-0006yd-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:58:57 +0000
Received: from mail-qt1-f181.google.com ([209.85.160.181]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MpDRp-1iwkSX1csR-00qfhQ for <linux-arm-kernel@lists.infradead.org>; Thu,
 09 Apr 2020 10:58:54 +0200
Received: by mail-qt1-f181.google.com with SMTP id 13so2179292qtt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 01:58:54 -0700 (PDT)
X-Gm-Message-State: AGi0PuaAQTvspev2kSXRPdaWd8iNix1kz8pPsB7VSwUe1RXp3tU80fND
 3RXbd70PdyLFUyMbbJCnJ8o0iSm+c6H9Qj/YmXs=
X-Google-Smtp-Source: APiQypJGQnSKvwEmA3Uxqr21N7C28AlJ4H4USNdYjJ7jBa7oUXIlp/5GQn3RknUCUlZR5y4GP5LLx3U/KPQi69ASHsQ=
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr10854453qte.18.1586422733282; 
 Thu, 09 Apr 2020 01:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200409064416.83340-1-sboyd@kernel.org>
In-Reply-To: <20200409064416.83340-1-sboyd@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 9 Apr 2020 10:58:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1mOS4bVs+FQNcWPXuAdXpB-rKAuRE-at-Pr0m=43D68g@mail.gmail.com>
Message-ID: <CAK8P3a1mOS4bVs+FQNcWPXuAdXpB-rKAuRE-at-Pr0m=43D68g@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Allow COMMON_CLK to be selectable
To: Stephen Boyd <sboyd@kernel.org>
X-Provags-ID: V03:K1:rlO5QZFNG/WnK39ukFr3WyrZl/xl8gnQCdQAwBeHYx/sCKdBpwb
 a1olA+IJz6FlKVBFqccHc1/zSm80VhAARsmSR7o1ZMXUBZAy5TGS9Lh1SexfTEve4C8WTFn
 mLLZVpSvra9waqjipyuNw+MAZSifRwAAcHTuRlD8Y0S+36FxNEHEjcduzP7fmf3/ZkmMJGW
 h8VCM03XhT/YxjM7zVNZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5ys664IrDVk=:UIUMBaG7PLagGGACOuzldi
 13YKEb5unNT2mX4tI9jSw+Y6ZbvtcvCY41iyiYTQfhbxdU2wUXl/jATvpP4cEssbecCe+4EJU
 Vs276UbLwCg5bFML2u4pC86d+63HQhOCWGt2WFmRLjkNOZPp2ED1ewb7x5GW+Tu3p85RMhw6V
 gGUdLhTBJGLAu8AhajcDWT/lDiYTB1aN7IzrbKZHOynxWAJfA8vOrzv6i6R5wfIB0ydZNFxrD
 nUkM6Jcam96IqeQI+h+abWgOQq3cI8A2gN0fPgIfYkmJrOmZY7gxkEs/8mP/UOfIjMYlOoKg7
 Ysibvjg+koeJgxwl7BumOwZtndEzIPvOsasAt4bAQn/9yp41mjOdCKNz+fXvD9LunlU/eJFEo
 cdQw7LdnanTwp6/vxfJ+V3uEmuHnSi+tFWNo288w65ehQxJvdAfPVk2gyeFOG0Fzpo6f9SxY1
 fp3HlEffC54q2cmeaM2XUqFSvDXowzp9Yapv4F0qIvcS2dmzP+xQX52CMWKK2Cm2Cv33cpNDH
 0apHzxwQMC+SuPIXQnMWnf71CZpCBW2fAyJBG+Qn5afD5XeWyw+Iu5m724xBY5VkuMZoFUfjY
 6+7uj7/a23Yg4W6g76e7e3ySnrSPh/TZYEPv01nsmxUXMy3f/ZZnInoZUsL0/VYqJPPIbb9Pb
 DhDYxflL/ZBsTtuakU/c5ufY3VVoCoUsJTIyFyp38QOUQE/FwoOBpty7S0l3oq3n4V3PwzW4L
 RieqZVCnXR3XhkeA1wLGpZf5Jc8PqIgz0bXPnhJU0W0IjR543nHNogz+X2iqHMaFF8HbcmVdh
 0B/FyjXHZcL0XCs2g/siR+Q7MtoWl+dQJK880Rs19lg1Pgoe4Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_015856_654724_B058D4E4 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rich Felker <dalias@libc.org>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Huacai Chen <chenhc@lemote.com>, Will Deacon <will@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Alexander Shiyan <shc_work@mail.ru>, Neil Armstrong <narmstrong@baylibre.com>,
 Russell King <linux@armlinux.org.uk>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Thierry Reding <treding@nvidia.com>,
 "moderated list:H8/300 ARCHITECTURE" <uclinux-h8-devel@lists.sourceforge.jp>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Lubomir Rintel <lkundrak@v3.sk>, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Mark Brown <broonie@kernel.org>, Guan Xuetao <gxt@pku.edu.cn>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Paul Walmsley <paul@pwsan.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tony Prisk <linux@prisktech.co.nz>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 8:44 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> This patch series cleans up a handful of selects that were redundant and
> deletes presumably dead code with the goal of making it possible to add
> kunit tests for the CCF in the future. To do that, we introduce a
> "legacy" clk Kconfig option to mark code that hasn't migrated to the
> common clk framework and then make the COMMON_CLK config option visible
> in the menuconfig as long as that legacy option isn't enabled. I've also
> included a couple patches at the end that may be more controversial but
> helped me consolidate all this logic/code.
>
> I haven't done more than compile test a few configs for arm, arm64,
> h8300, and mips. More testing is welcome.
>
> The plan is that I'll just merge the whole pile through the clk tree. If
> the first five patches or the last three patches are better going
> through another tree like arm-soc or architecture trees that's fine too,
> but there are potential conflicts between trees so maybe it's better to
> just leave it all in one tree.
>
> Changes from v1:
>  * Fixed MIPS ralink build problem pointed out by Arnd
>  * Fixed meson mx sdio build due to bad Kconfig exposed by this change
>  * Picked up acks

Whole series

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I also made a patch to completely remove the private clk implementation
for mips/loongson2f, but it obviously clashes with your series at the moment.

I'll send you what I have today and you can decide if you want to
add it to your series after it gets an Ack from the maintainers, or I'll
send it separately later.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
