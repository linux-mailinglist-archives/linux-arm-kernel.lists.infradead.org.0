Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD270141296
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMFvVaaHauypTIoZNti+7ZC5LxmrOhqBXadJObQttJY=; b=deroltBr6il2XM
	cMRTdxVGd8JyBi40aGrWoI0wyk8D7mwENVHMrLDc8bEkVQKDRzCsnqJ6MS/ywawjB5otGoDq4BN5T
	I7Fc0hjYPsMjRh+SPXmHCZ8t0A9K4SPNbxhdDj6oRPtO8QmlplJaL23rEDt4lIaKvpCF4sMtQf14f
	9zXOXHnMSDakq8n+LPF4nbibwQ2NK1muuFXxUvXAzghPIL/SEorqs4xLAGbJpfxB2nDbiUsv9mqMF
	bhB+HoyHKdPFjA//iTppKnGzbROpP1ZVfnB6ecMpYIraXU2Za6pnAqzv2uI2+wjkdx8V4Ihj1blKj
	TpxPirHo0BHLyrQIgLnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isYoM-0000Qy-7h; Fri, 17 Jan 2020 21:05:46 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isYoE-0000PW-4m
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:05:39 +0000
Received: by mail-lj1-x242.google.com with SMTP id z22so27866262ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 13:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZBkS9S8oFTr7ty1NIiAX5JrGRHx/96iPY51B8fxdR2Y=;
 b=cHQbz9MerebtnThsNe1yZb3HrtSTeIETgYrDu7Q6ONNqX19PijFVSf1lIzu4QilAmq
 hnzwI7P9xI2x5Nd23oDV61kz+2bLOlRlL10WS0JzuDLyURLzzSJmFejdlEtxX62vduXq
 TpK3nS16M0AtekVAN7KXLTgm+8OVHS0eXGhicVmwjML/hqokK/cH4dVEcUKTav6rGeHG
 F2mggp9KMtiE0o776HZy0j2hC+yCq9L9owGloa+hAahvM5W8iEcIFR2imdSPMy3FtcK2
 qu8VkJVvrJS72NCEqvK6tJF2u/4NncgSSpbA7HFFqnczDZ/uro6Wxu9pbLQt70yvz9qn
 t7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZBkS9S8oFTr7ty1NIiAX5JrGRHx/96iPY51B8fxdR2Y=;
 b=soVwg8FCnvAp6/I1+fHruwxRGUyUw8eMSzEqY3AKBOgsL3xS8MLH31LV+N01h1eoNz
 0xIVo/cVsdyWMtCXM7+/qtxRWAVIVJ7Zr+u1IyiZ8FFN7+5xVX7alm71jhXGzmbKj+Pu
 wAXy+uxHkJ8dh+qcU4vqtb4vHuVnVpyGz+GRD5H8OSViUheaRtrYyl9VGWefkYQxLdhW
 XURhv5YWnK7Hn8lx3kT3FEXmoG7/hL1D973vj6SGNd8fTrMB/LlYUGhHA0bCkbbIoAYR
 9Bmf2bTvp9+Ih3N6SFILQpenc61uHpAKNCgwl4cGtYSTvZSDlDxqVolZqz2GBdXOVw4I
 MRIw==
X-Gm-Message-State: APjAAAU9uvMPE2A3/8km1VHtLeoD2o3Ogc/uyzyAHxEbXsIwciCO/JwV
 dSMWfqvgmZbGBbYahiMxlKoa1/8k89WB7HX5NAVYEA==
X-Google-Smtp-Source: APXvYqwUSECeAUfn+Q3aKc4hgEvhvTGDwKPCeuq5cHdmTnCOCRP0mwkFi9O47FkIodi5rljBhCBu+PmnCppplmipwMc=
X-Received: by 2002:a2e:9143:: with SMTP id q3mr6695400ljg.199.1579295134552; 
 Fri, 17 Jan 2020 13:05:34 -0800 (PST)
MIME-Version: 1.0
References: <20190617221134.9930-1-f.fainelli@gmail.com>
 <20191114181243.q37rxoo3seds6oxy@pengutronix.de>
 <7322163f-e08e-a6b7-b143-e9d59917ee5b@gmail.com>
 <20191115070842.2x7psp243nfo76co@pengutronix.de>
 <20191115114416.ba6lmwb7q4gmepzc@pengutronix.de>
 <60bda4a9-f4f8-3641-2612-17fab3173b29@gmail.com>
 <CACRpkdYJR3gQCb4WXwF4tGzk+tT7jMcV9=nDK0PFkeh+0G11bA@mail.gmail.com>
 <2639dfb0-9e48-cc0f-27e5-34308f790293@gmail.com>
In-Reply-To: <2639dfb0-9e48-cc0f-27e5-34308f790293@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Jan 2020 22:05:23 +0100
Message-ID: <CACRpkdYs-jeYO+8avOryJnXdWsB9AkPy7Q5FRQ1gGC1NU35MHA@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_130538_193180_C6E84462 
X-CRM114-Status: GOOD (  14.36  )
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

On Fri, Jan 17, 2020 at 8:55 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> [Me]
> > Can we start to submit these patches to Russell's patch tracker?
> > Any more testing I should be doing?
>
> Let me submit and rebase v7 get the auto builders some days to see if it
> exposes a new build issue and then we toss it to RMK's patch tracker and
> fix bugs from there?

OK you can add my Tested-by: Linus Walleij <linus.walleij@linaro.org>
to the patches.

Thanks,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
