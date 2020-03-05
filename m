Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E4F17A19A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 09:44:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6VXOzmBIgjbcyz25/LVfzc9hyrbN5o5bZ50xFcDrjQ=; b=liAr5X5GM/opyf
	3KZUOjy8tBPWvZiKAhXfchTzYo0WfkvNZ5VIZdo2as6BUIHQZ0NVvepcdK4L2LB/IIe7V3/hS8KDS
	78P4UXX/FCZOllJ7XHXFy8itUkfRgfAZC7Jg03ilGMBSsZzZ2Giq+62ARXUC+spvXa6ZP4lKJAcmY
	9sVGR8dYkDe+YzoBFeh/fNlxOdoormJqfh2GJr79J2/gL7w1EcOwpjhmFuKv4rE+GKl/dszXxINJv
	koFgYbJq/U+PJSuZ5OtutsGZUh+/FDycABrM1gi5g1TRFREZJ0864iz3Vi9GYMWFmV8iE8uiwvLu7
	GYYBN5yNw+o4EMoPXq/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9m7A-0006I3-5T; Thu, 05 Mar 2020 08:44:20 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9m6r-0006Em-4t
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 08:44:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id q23so5122512ljm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 00:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fbdyI132YwoclqRAqQFcdVx80Hpq+rOO83F3M2/coUY=;
 b=M2RHZfPPLjF7FpMQLcCbqr8EN9g6Ic3+vH8uz+umLS+RFof6hkjjSGWTRM6jNNndox
 k6DtkldAR/CFy6cPpqVUsaG5ysOvTdmV7xhr9qA9AOwkMQXVfMLnhkq0azy7efyPI+aS
 4qvbMDOoeAen2vmmUdCuD6AsTPljasQC9vX32+eqQCBMytLYsMIKUzY+wwBi6asEtwH2
 xVmjHtapMbyBHpM3bGAW48hfzKoqNSC7wyVR6U/+RZMWp9vtaHXNEHufluU0DVURs3tI
 W+N/AWsbjr/pRCMw/XP/p0QATrMAgRglWks0u8wK+Dm4YFWcWgccy753zPXixcUkMkKf
 kfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fbdyI132YwoclqRAqQFcdVx80Hpq+rOO83F3M2/coUY=;
 b=tGlWNEzCO0c+hU/NDnPuDArSpIR0P4lD13glkBAO3HJvx1JCd2VL0ColgDd5slspKL
 s9e0DywQz6SOCxsDl9HnrV2tl/AlvZ+kwS93qNXA/EkpP+GFuJSn7z4ALyxbIla/l2Y8
 Zpu+OoJsMK3ubW5W+OwZ3TxUWsu/+jORfMbFMsY7LAEul4aOvCVTO56XN1R8KFAMN1ZA
 urRPWkGTu7AIZ2f9hOyX1ayCBVQEV6IjxBcTijLBn6zCOqa2D9xj+BA+giI1go8P4TZJ
 7eSahPCL3m+d0WFeH9Ch/PexciJa1gI8n7GvxP8lRk7h+q5WGMmjlsjjsNGG4AKR3nCW
 9qDA==
X-Gm-Message-State: ANhLgQ0kAc0Y85uz2kv8jJGhIAzQhtHxPf0YcxNAFwBWuohvNJvsVQJZ
 p5zgkI8oDyse6++gGfWuKp4r/p1VM78VZuDCT4mESQ==
X-Google-Smtp-Source: ADFU+vvRFk8g3wXnA/A8ma/dUQb4x8dS4Zxl9FCH95G0Ve3S38UAd/rE7NSBOFGF0YuUMSSw1xX1W7Ho7mX9olGU4y8=
X-Received: by 2002:a05:651c:2049:: with SMTP id
 t9mr4675395ljo.39.1583397839207; 
 Thu, 05 Mar 2020 00:43:59 -0800 (PST)
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
Date: Thu, 5 Mar 2020 09:43:48 +0100
Message-ID: <CACRpkdZ8JA=DXOxzYwyvBxCMd2Q5uzLTn87AVK7wdrxHFo5ydQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] KASan for arm
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_004401_234915_49E116FE 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Florian,

On Fri, Jan 17, 2020 at 8:55 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> Let me submit and rebase v7 get the auto builders some days to see if it
> exposes a new build issue and then we toss it to RMK's patch tracker and
> fix bugs from there?

Sorry for hammering, can we get some initial patches going into
Russell's patch tracker here? I can sign them off and put them in
if you don't have time.

Thanks,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
