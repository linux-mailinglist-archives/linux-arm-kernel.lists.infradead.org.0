Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDFD1E5D37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Blz6TBxiZPw3yB08cgSCIN+jXnk5I6yNuVfrnNufpms=; b=OV7EcESh6qgiAK
	29bP84MBhoTdUqEHV4xXR2c2X/3BPtMt43LpQDETKzhGg7n49/etyKMEtV/xNvUByiFr7DaF0aCHq
	qYwcu+aj8+XkxBXSZtdpJJ0lyliCTb1ofNeQHtBqcFKv2Oi9+LpZ/l4y4A9dyagO+GPPIm6CCqYDh
	3P/nVKxcWXuFsSvC8D+JnRHFieHLO5qteVuQqiBgy5iUqsjWHW38ctH+bn7ZjFY9HB/aapJuHmTcb
	T82MkLqsIDnn/LI5ZpQYmUhha6JB0y48ku9Ewx6kW65HhvyFaaH8QsnNxC9dwSiUQF1SixehnTw2m
	IRQz0pTZR2qhMh9NcZ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFsA-0003lp-4A; Thu, 28 May 2020 10:34:50 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFrw-0003lC-O8
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:34:38 +0000
Received: from mail-qt1-f177.google.com ([209.85.160.177]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mirb8-1j8Cpe11Eq-00esA8 for <linux-arm-kernel@lists.infradead.org>; Thu,
 28 May 2020 12:34:30 +0200
Received: by mail-qt1-f177.google.com with SMTP id z1so9658416qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:34:29 -0700 (PDT)
X-Gm-Message-State: AOAM532W8OF1ufepac6qLcHGnGraX06lKz3bSY0mPW+GWHaQ2tBijNh8
 xGR1dpuD1eXTARqYR3u8ZY+7ud4rY4HULgWANRg=
X-Google-Smtp-Source: ABdhPJz3yBNY0Y1l2GQgmddAe06/aLT/EPVNAi3qA1mW76+pW3uJJs+SQtKuVU4z4oIEEx0O1wqMAz/VPSEinL80rBs=
X-Received: by 2002:ac8:691:: with SMTP id f17mr2292393qth.204.1590662069005; 
 Thu, 28 May 2020 03:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200527112608.3886105-1-anders.roxell@linaro.org>
 <CAL_JsqKDfcX1YUTmkMbMNfPHnW5YcB7FaAmvrb42wgmsdfTqng@mail.gmail.com>
In-Reply-To: <CAL_JsqKDfcX1YUTmkMbMNfPHnW5YcB7FaAmvrb42wgmsdfTqng@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 28 May 2020 12:34:13 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2Y51exEP146yoZmcfti1-ihwfGk0Z8pf3SAX9gH43QgQ@mail.gmail.com>
Message-ID: <CAK8P3a2Y51exEP146yoZmcfti1-ihwfGk0Z8pf3SAX9gH43QgQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] vexpress: modularize power reset driver
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:v8LX8096HMQ1z6FUpeNsAE8t+Q8Ndsaf/52LS607tef4FZ+RUYf
 d0KOJI11lndrAqmDx6dTbRgPq08BZmBxLpqIi9cO74QpP6NltGl4N1Kmm8VSsoxBtK8drN7
 oHKgNF8WNQFA9/9nolTO8gMEEF+7Fkw+ITqrrlBe9hZNBMvXMrBgLUdcBHwW6RaXte8nYG6
 84eHTw7dUpdGyoiYxUrXQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bWRmotudk+I=:oWNY/Tw5OeMKqgRAu63FYS
 Cljyv/PLwkY+e8eZUNGR949MC5f5B7NU19W0NCtv0a59Zz7gw2+jPuIAcplLoAI68xD4dFGZ5
 P6ExKpWlRwCEgE8Xsi0/6MTPI2L2/6lIMrwbv3F3XquCWlE2Y7yRM2TrGzFERLjCdbOeLWrdB
 ghvcxOl7OVZK6KYyQL6fXnOl1nSCVNAV9TyyOEBJuBvGY1XJVbX1iRE1PljpalWMCWYI9bOp/
 bErE1+pQ+wpmpZZYwbPD/ZNaEBRUILLfSU9hgh8xhDg9SwHaOIf9puq/w2fmHgCXYGyB8zqRv
 6l1mQURV7V25ey88U4i+v/HYqsroZPX1uQvVJgRItvKuohFBvOY4Uh51KqqSg4nQv/S2LAby9
 ULI6BRXae5PZKclElIlIzT4Ns0FJ1qtjBCI/vDqmORGB0F+CLajqBt9mwppy5q9zTzX4kqBX7
 2CnwDesxClDTIa14K+/+j1abg36iuv7607j4wu5nQnNi+7WMs8UTdqLgklB7iLxNyrYJ6tPMK
 hgYV7NKoy8s8R4mjQUqUABqw4HR2DzH7w9LtQhNE0YJ3HWrslYiq+CVWGD6QUGu3/Iy826ett
 KS+AIQmQdNc7hIlozvf4SK9+UHuXbsLTt7YMZtvruQrZyPLAB3PFlsFYt3z+SFLJY5/99Gvp3
 6BeJwFHLJ9YK8mcoByM/MZ2KX8K/fmHNXDw0KB1oRGNs2IPEkaw5vDF4SzL2hOOfJ5cVu29SC
 JPEEDQhM1tF0+DuGPyji5u0f2ggr9mR8qVjIJbyVikxtiSazjqIt1oqZcOIb6IqHhd9YXMNtD
 JscMCnBcBzQaMNlMZ94G1GaMNRXVjSqq39zZxrkeGFayWLnIQk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_033437_082270_19FC3235 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: SoC Team <soc@kernel.org>, Anders Roxell <anders.roxell@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 3:35 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 5:26 AM Anders Roxell <anders.roxell@linaro.org> wrote:
> >
> > Hi,
> >
> > This patchset contains a bugfixe, a cleanup and fixes allmodconfig build breakages
> > on arm and arm64. Also making the vexpress power reset driver a module.
> >
> > Cheers,
> > Anders
> >
> > Anders Roxell (5):
> >   power: vexpress: add suppress_bind_attrs to true
> >   power: vexpress: cleanup: use builtin_platform_driver
> >   Revert "ARM: vexpress: Don't select VEXPRESS_CONFIG"
> >   power: reset: vexpress: fix build issue
> >   power: vexpress: make the reset driver a module
>
> IMO, patches 3 and 4 should be applied to fix the kconfig issues.
> Making the driver a module can be addressed separately.

I've applied patches 1 through 4 now but left the last one.

If we can find someone to write and test a .remove callback,
I'll prefer that for v5.9, otherwise I'd consider taking Anders'
version instead.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
