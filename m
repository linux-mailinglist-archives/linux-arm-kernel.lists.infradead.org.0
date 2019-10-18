Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D61DCF70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KT46OfRtFRvKd9PwZ+65+hfy9BTJeAEvlC64YNAy5x0=; b=Ykexxi2lFTjkq8
	OHarqWyu/RWzmJLK+JgcPEb+gbG153QwkCVIQI9tqDi30Q4WgJZm5Vrj+L9uL5hfqachXJPy6TuNz
	8HQS9fcWP8e0AzZH1Td7R0OqKjWREd78VjDVRotSod24zfF9Gir0303K2M5VhQEkHd3AzB+2EEI58
	4EMeCQ3GZLBS7Fb8lIAXs8sOQYfh6rWkaPfPFlV/A32vhnFO0avuxJKwm/5UqEtVdYQ9FDBqtNURf
	bOgEMfP08FjH67a12jfjqENJ+dD6+JhwVYejH24bNPyAQT7UMoYLafJEbVgAtbL2JaVsaYa3XKh07
	Ggv1TU3Q0k7kgreAd4oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLY6W-0003z9-W3; Fri, 18 Oct 2019 19:40:05 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLY6J-0003yA-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:39:53 +0000
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MEFjJ-1iE9aL3UeL-00AG47 for <linux-arm-kernel@lists.infradead.org>; Fri,
 18 Oct 2019 21:39:49 +0200
Received: by mail-qt1-f182.google.com with SMTP id c17so7743205qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:39:48 -0700 (PDT)
X-Gm-Message-State: APjAAAWBpJxTssLbYuGSDAn2LTdxOnxMHPcAag7Tow1s7/qZvNpAqkyP
 PaCWj2pr2YzOJkwps+zRM/1VsfsXS6LZDP2uziA=
X-Google-Smtp-Source: APXvYqymx9pRQIUe2GYLUGRMu9h+M26SuGVUoD8rv9IlkdyulST9oDUMU0vWJ1+HJSdIkbSMY8qPMr5o0NKJV3kBq/8=
X-Received: by 2002:ac8:6956:: with SMTP id n22mr11586436qtr.7.1571427587664; 
 Fri, 18 Oct 2019 12:39:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-29-arnd@arndb.de>
 <20191018184815.GP35946@dtor-ws>
 <CAK8P3a27==9TeS-RWEvrpnxh+6McqRF-xeb8WPj9pHOn+0zbOQ@mail.gmail.com>
In-Reply-To: <CAK8P3a27==9TeS-RWEvrpnxh+6McqRF-xeb8WPj9pHOn+0zbOQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 18 Oct 2019 21:39:31 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0AP8q9Hk1DB+E=xFGV5RqXnkjkcZRobgU1NRDFMH00AA@mail.gmail.com>
Message-ID: <CAK8P3a0AP8q9Hk1DB+E=xFGV5RqXnkjkcZRobgU1NRDFMH00AA@mail.gmail.com>
Subject: Fwd: [PATCH 29/46] Input: touchscreen: use wrapper for pxa2xx ac97
 registers
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-Provags-ID: V03:K1:tg3IZFS1sHq9laYC1RBcnRL0Wx+X0sBIEqrH9tqUUdYiYqdmZGr
 N6kSH1PlRc2EDRBItpzUNeTYvfFyjrFcActiPVaathnYBLI5Z1e+enTz8XnMTE6N2yG9fEq
 jVMzqxujiW5FXQi0GYbGvYZh/Ua7H4O3kNlNuY1V+YkXBiqXbzfOcb5ck+g46aE6Yv0CLCP
 p4MoVwE0LjnEe/7Ze9TgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s4pmKDyMHUQ=:RKdZZc9tF2yKjmWeV7H7tj
 +3BVyGI8WzUkEFVolzYI0teQ4UkMWgTBgsHRlCOeKE45hBysPeV/loheMJWBEh7yw6M4K3hsb
 NX19iauL4hW8BH8iSTRpkieGY4hQhNh2fjU/9VIXYT6RhHw/ysOqSsDyrvyq6fXKAbqGfVeeC
 nPmZBqiitBDRhWmKS52xhS6KuxQ4qTR6hi7ZvNlwVV+YYZ6m4jq12IlISfH4TAC+Surgy3HpJ
 B5rVtw73GyjXyN1wO8I3zxhV2sQVtKG4pwje1zWrG0o7s/qIG2WLJ2M2B49kL2dwZ0EfJulAF
 h79ECA03B0YMzxIeNz9oE4boqgSdm9yUSdYmRkC+ZEViQpSBg8BL2hKNUsAi9R44H63QsBSSz
 rAqbK2Pff2Me8aHHuSiQB+Ph5S/8vKhbGgK46jv+kKg/qQYTJTFzoeQEIqCDNVl3IfI8U2GPk
 0o+s+kFSwDnEKjNjQ3aD0JjtiDp00mJcfmMoh/IclnopLJHBn+OabvIhObAhKTOSik6+Kp0BN
 7WPe1dl5QHPKJ99dC5DAhfWBm3kt9jmZSxt/JwDfTnNAIT6KLy332WInUbn/6cDYfOSz4mjKb
 j59c/NB82F2JQ/H9PTHAtBjanZmSSVU+uDAwYNn/P34tPTNKjRgauHJwRmTggPHDp4RnJorYa
 0ya0TcBZqCutWivfRu15aVAmUYd3R1E/ZEPJ4FQF8LHtuNG/BCCls9gbExa7mXodnQhb80MvQ
 Gr27rumYb37ii0QUJWIMEqKEgybisW2O1iM0tYj4IfQ36LnnvjIHCe/YN6gimflPsODnmt4so
 9Ma2zWIe3o8lQ9b39DStzJfkhEhm/GI2kFf+XW5eT1UyQ0yzODcJz0Aj+33VxgAvd2reLMYg8
 SL0lselO9Q65GFII9gng==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_123952_119528_DABCFB93 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 8:48 PM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 05:41:44PM +0200, Arnd Bergmann wrote:
> > To avoid a dependency on the pxa platform header files with
> > hardcoded registers, change the driver to call a wrapper
> > in the pxa2xx-ac97-lib that encapsulates all the other
> > ac97 stuff.
>
> Not supper happy about adding module dependencies. Can we include
> mach/regs-ac97.h from include/sound/pxa2xx-lib.h and use static inlines?
> Someone needs to include mach/regs-ac97.h in the end...
>
> Or there is something later in the series that needs it?

One of the goals of the series is to completely remove all mach/*.h headers
and place them somewhere else, ideally inaccessible to device drivers.

In case of mach/regs-ac97.h, the later patch "ASoC: pxa: ac97: use normal
MMIO accessors" passes the physical register base address as a platform
device resource that gets ioremapped in the ac97 driver, rather than
hardcoding the virtual address in a global header.

I agree that the exported function is still ugly, but I hope it's enough of
an improvement over the previous state that we can do it anyway.

If you have any better ideas though, I can give that a try, too.
One possibility would be a higher-level interface exported on top
of 'struct snd_ac97', but I could not figure out how to do this.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
