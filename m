Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB451407B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsbhycA3r5ZkzcK7DXXhV52a4ANNr2T1nbfjPAARYWQ=; b=g90dIyGkY93hbi
	P22yz8d962KzR6o9/eLIZc5YDYi/u+Pg8NxuDBz6AwuANbxCmqL9UAzPTmdVHo2BPfyihJ4CTamu2
	qwktDoaaNy2lpQ248C641L31Myn7uFizWVBuQFrafjn46pMJ5Bq+Xni145Hjx2BCFUTxLNXNpWwNU
	+ENqYY6G1NPMVQdkDfrvmuDD0TgLtfl5fSQv04wIrFXGhaNuCltv5lYcjKWt7jw6xekW0jyTQ1W4w
	/E6RSXGK0iOqGoAafPfXa/H5lNocZLl1VS84FaXcQSA1Nu0qqkgEkVwVNqA829PgIQHKcOydwhkdU
	bVvYvyGsmEZmXTzmakag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOdX-0008Pz-7w; Fri, 17 Jan 2020 10:13:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOdL-0008P1-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 10:13:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so25910396ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 02:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Jhg4+UAB/mfmS/kvRrF2GKzyf6Tn27Jkcr+2SRy5OE=;
 b=JZtAPVZYG36wekyZYFjYNz63EBXhO9thOFOWavIBZaF6brqIuhH4QmJ/RyadxDwpF0
 tqgFwvmRZU0d+6gq48nDYrfnWBrIl3KOTVFbOF61H5AArNOBt1AibiaQIjhbyQC/WHxx
 sOODAD9I5mWn8l27u+y/scXSDEhjqTKzIRFMwxzcYLbaMMGOccVWGfbBWhocsqUwR6oq
 RemQe435CNyIhBtHlQ7mcxMtfEMn3o1ymJjbc7YMxccJ5nsZwkBdmzi7ZDN+5mhbKkSN
 TwPEwzfhUp+wIdlP/gLVlMTVYunVs+iJ2ljt5qt6juxEuO8jex7ENFPo0JSlG56g2Aiz
 uy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Jhg4+UAB/mfmS/kvRrF2GKzyf6Tn27Jkcr+2SRy5OE=;
 b=ex1kzyqLy5zHIcqmctz3cZIATIN6fHGjBrILlJRWCe5K1A6sZq6uJq+jeT14Q1SctT
 zidy8VjpCkeSM/eryzvUCNmpPmL5ERlL5ANxbqDHx5HS4gVSBvRrGoIJ7IqqL+Q+hvdC
 x05ukzRsJzKo/dBFFBLCmUwVCMlIksjqcOWnYryQKAExBYYlYL/K3PNGra2WKGeI85SM
 ABLmLZ2C8WhIqpwd/qVDl/Sn58TI85X4VA9hbWtWuuWhyCF69BXOyeeNBk53sq28feY3
 +y6zS9XirBtRAXiRknlVDSCjGzfbKB+cVhiCo4fj1lsi/eI1mXnhBr5Et7LomW+/ZS3O
 766Q==
X-Gm-Message-State: APjAAAWAWiVw+fwU3DIGZuYtwm5/7ByVNlZ7oK56IPC3xc5DQnAA5xi+
 wxOZGIWMv/fOizyduMWjKbYBAN+B8q9bwVWaOqclig==
X-Google-Smtp-Source: APXvYqwMboC6xc8+uyhTbyFk+OuGSIgc+KbllCY1pv69DqczX6VA3ZVNZ98GcDj4lK4WjnF/z3/hoHDiXYy2YV86J+4=
X-Received: by 2002:a2e:918c:: with SMTP id f12mr5288808ljg.66.1579256021661; 
 Fri, 17 Jan 2020 02:13:41 -0800 (PST)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20191114181243.q37rxoo3seds6oxy@pengutronix.de>
 <7322163f-e08e-a6b7-b143-e9d59917ee5b@gmail.com>
 <20191115070842.2x7psp243nfo76co@pengutronix.de>
 <20191115114416.ba6lmwb7q4gmepzc@pengutronix.de>
 <60bda4a9-f4f8-3641-2612-17fab3173b29@gmail.com>
In-Reply-To: <60bda4a9-f4f8-3641-2612-17fab3173b29@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Jan 2020 11:13:30 +0100
Message-ID: <CACRpkdYJR3gQCb4WXwF4tGzk+tT7jMcV9=nDK0PFkeh+0G11bA@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_021343_605999_5DFA06C8 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>, kvmarm@lists.cs.columbia.edu,
 Rob Landley <rob@landley.net>, Jonathan Corbet <corbet@lwn.net>,
 Abbott Liu <liuwenliang@huawei.com>,
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

On Tue, Nov 19, 2019 at 1:14 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> On 11/15/19 3:44 AM, Marco Felsch wrote:
> >
> > With your v7 it is working on my imx6 but unfortunately I can't run my
> > gstreamer testcase. My CPU load goes to 100% after starting gstreamer
> > and nothing happens.. But the test_kasan module works =) So I decided to
> > check a imx6quadplus but this target did not boot.. I used another
> > toolchain for the imx6quadplus gcc-9 instead of gcc-8. So it seems that
> > something went wrong during compilation. Because you didn't changed
> > something within the logic.
> >
> > I wonder why we must not define the CONFIG_KASAN_SHADOW_OFFSET for arm.
>
> That is was oversight. I have pushed updates to the branch here:
>
> https://github.com/ffainelli/linux/pull/new/kasan-v7

I just git Kasan back on my radar because it needs to be fixed some day.

I took this branch for a ride on some QEMU and some real hardware.
Here I use the test module and just hacked it into the kernel instead of
as a module, it then crashes predictably but performs all the KASan
tests first and it works file, as in provokes the right warnings from
KASan.

Tested systems:

QEMU ARM RealView PBA8
QEMU ARM RealView PBX A9
QEMU ARM Versatile AB
Hardware Integrator CP
Hardware Versatile AB with IB2

Can we start to submit these patches to Russell's patch tracker?
Any more testing I should be doing?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
