Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2374B18CA58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tvwhu2ZP7H8jWjr96AOyAMEhNcQ6kXXauQoPrmLBpDc=; b=hqKx2GYljdNwQd
	6/UGABUJmArvy4DCO+trzQnEYRvOw/a2V9fAWTJ4L3ZmWGuRdxmInyRCzKqTGkpScqD1dJV+I7Iv3
	gxeg5jmE2Flhf1U7OJk+e5koYdvmBOzG9d4gg7Spr6WW0+hvvJ+aaixruev3MbZAJCLAHyfOgsAll
	4ZtVPpZ2EV+yzFWDhWZHFvcpwWwW1MXYhH8Va0lzk+ffcMOttHeixkZrPy2c+xzwfGYk+cPDPyfFM
	kMosZzACorlV/jwA1+heRvin4yIP+6ZFTrR1gkkxUQxNc9NuMKq0/q/fN+1dwL26Gh7EFvguQ/sVt
	g14rcuJcqa9H+aWTuvqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDvl-0007T1-Ho; Fri, 20 Mar 2020 09:27:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDvb-0007RW-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:26:58 +0000
Received: by mail-lj1-x241.google.com with SMTP id a2so5641958ljk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xb2+TkejQMyeRgV2FN7crNaJyjiX8rMU6p7e/O+WXs0=;
 b=tbq+fbIOQCPDoIaCZyKPTLUNOGRkJRUrZkJZAQgonMZpLrWXjWX7Qtc+As8KQ5LXdG
 sTWgnaH15HiCIBzv4PNxsm/oEkGNFwjnF3FFhpvXSm2a0Cxoxbi+DZihSyN5j3+h8RZA
 UJfIbNdNm5vzWcpNFnkp8nIYwubgVmtCTwheuBGl5A1KEQZR2w4QGAul1X4jx6ilWgqq
 e7W+zpYkxhoss0ivMVNoGTH87T4HRNDcMqQ9J+tvCiQOWHZa8Eiqjd0kgx0tQ864WYn9
 jAXVKp5AI3xJmdEDtOJgME9RmxQvtjMvVByhDfeX3DY3a7HmxlcC82UHbIwmjWXnUIH0
 Y5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xb2+TkejQMyeRgV2FN7crNaJyjiX8rMU6p7e/O+WXs0=;
 b=fXVQuSt1YurgTOHufsW4zWyZKJcSvsrsBYdHi5Ir7P7poKrNt5bQOmu+BSYcS9NTDV
 B73++v/3R1W/kXdQJRSH2HM4KucEKWxqwhho5o9O4BtdT+lK2UQ8ITvpUYPEAL3ScNq3
 z/DMIAkF2v3jypxpb63M3Jyr4hGItANiBXVu4A/CmvjVgmOzr7GdeCHUrCA0hj8IKujF
 ElSx1HYgA/0yYSOOVV5WkPQ9Gx5yBVUU8TTfd7J1GhyFtePwFHa5xer8K8o4cV6OesOK
 dSeT1aBUq3+qi4OeNdh38TyUh6Usi7g5JnmaRHiouUWsxFBNoOkEPEmDtDwRnaR7fIP7
 ErWg==
X-Gm-Message-State: ANhLgQ2KCUUQ7D1f7uLCQ9mhkPrwUkYUYdlYHu78GPOoYF67j7BRoDRL
 4zEH6lw8jro1u9PzfzUvJIToITlUJQa4O3rfLaxB/g==
X-Google-Smtp-Source: ADFU+vtuJ0t8Nqq40yxEBdJE/UuZY+X1aSolICR4o1I8kWzUt2hZ40fB2rvEyc9S2cEgGGbq33gRugkfewIJCU8F73I=
X-Received: by 2002:a2e:8ecf:: with SMTP id e15mr4982788ljl.223.1584696412508; 
 Fri, 20 Mar 2020 02:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20191114181243.q37rxoo3seds6oxy@pengutronix.de>
 <7322163f-e08e-a6b7-b143-e9d59917ee5b@gmail.com>
 <20191115070842.2x7psp243nfo76co@pengutronix.de>
 <20191115114416.ba6lmwb7q4gmepzc@pengutronix.de>
 <60bda4a9-f4f8-3641-2612-17fab3173b29@gmail.com>
 <CACRpkdYJR3gQCb4WXwF4tGzk+tT7jMcV9=nDK0PFkeh+0G11bA@mail.gmail.com>
 <2639dfb0-9e48-cc0f-27e5-34308f790293@gmail.com>
 <CACRpkdZ8JA=DXOxzYwyvBxCMd2Q5uzLTn87AVK7wdrxHFo5ydQ@mail.gmail.com>
 <20200305094328.sizz4vm4wamywdct@pengutronix.de>
In-Reply-To: <20200305094328.sizz4vm4wamywdct@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Mar 2020 10:26:40 +0100
Message-ID: <CACRpkdYzSZY0r=YYiosvi2CA7mia5oiXAWUkbYSqjU1PZ_6w=g@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_022656_278913_ED301323 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Hocko <mhocko@suse.com>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, Rob Landley <rob@landley.net>,
 Jonathan Corbet <corbet@lwn.net>, Abbott Liu <liuwenliang@huawei.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, kasan-dev <kasan-dev@googlegroups.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, drjones@redhat.com,
 Vladimir Murzin <vladimir.murzin@arm.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, philip@cog.systems,
 Jinbum Park <jinb.park7@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dmitry Vyukov <dvyukov@google.com>, Nicolas Pitre <nico@fluxnic.net>,
 Greg KH <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Garnier <thgarnie@google.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 10:44 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
> On 20-03-05 09:43, Linus Walleij wrote:
> > Hi Florian,
> >
> > On Fri, Jan 17, 2020 at 8:55 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >
> > > Let me submit and rebase v7 get the auto builders some days to see if it
> > > exposes a new build issue and then we toss it to RMK's patch tracker and
> > > fix bugs from there?
> >
> > Sorry for hammering, can we get some initial patches going into
> > Russell's patch tracker here? I can sign them off and put them in
> > if you don't have time.
>
> I've tested the branch on several imx6 based boards with different
> toolchains. Some boards booting normal and some of them are lost in
> space... I didn't debugged it yet just wanted to inform you.

Hm. I will bring up the KASan stack on more boards.

If the system is anywhere close to being low on memory they
will naturally crash, this is an unavoidable side effect of KASan
or anything else that just chew of a big chunk of memory, that I ran into,
as I was booting from initramfs on very memory
constrained systems.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
