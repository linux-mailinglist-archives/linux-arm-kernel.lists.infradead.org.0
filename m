Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E77151E5B72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eu/RYfoxpQ9TYAQXekv645OyG7W8AE3ukAocRL0gB8M=; b=NcL7j0qSO+4x5Q
	OzGO1Tg7sD+Z8wEIGiuR7idkbxAl4l6/BH/Axwv60s9IkMBxFNL9d5W0eSH4kgQJeQ7FR6XX/zori
	yU2yEGxSJqgX1GkEP6kV3Y+sbywKJ59/XJ7BD7g6FAvAxJbdRgqDuiV/IQ03NqXF5i+hvDmxXJK55
	pAuArsxuwLsryIhopWyE97NrZ8B3C0OWg8uXdY2izA7KTIFW9uB7hqbo9LcOr+F7lUPvDz0CvPkuq
	+Hx+whLHP+zcV5n9x0Lslb/Z1B3QGKWLpL5y/U81KMWvEcrlLN7HODWIeFaCbq7rcT50Ow0dTJ9k5
	OwM9bjh7vAllQWlY8EBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEWx-0006RD-TL; Thu, 28 May 2020 09:08:51 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEWo-0006Py-2b
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:08:43 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MhUQ7-1j8j7m0lBj-00ehCb for <linux-arm-kernel@lists.infradead.org>; Thu,
 28 May 2020 11:08:37 +0200
Received: by mail-qk1-f179.google.com with SMTP id w3so2398363qkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 02:08:36 -0700 (PDT)
X-Gm-Message-State: AOAM532q2oHb3YoaVbfiaS0w29JDgNeUpTA6XhFJtXbEmjDunyiGja0Z
 Sugynxi7Ur06DQYPa3RjBj9zZ7nQ3jAbmJQu1Jc=
X-Google-Smtp-Source: ABdhPJxMRjUKxZH6xpszfE4Dyz28jyf10XmVj16uY61LsBkHJESGSohbLYv+tw2+D7hMoCFfByorAEYf1A5P7jeYv/I=
X-Received: by 2002:a37:bc7:: with SMTP id 190mr1735331qkl.286.1590656915923; 
 Thu, 28 May 2020 02:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200527134043.807045-1-arnd@arndb.de>
 <159062606969.69627.15005677857751012104@swboyd.mtv.corp.google.com>
In-Reply-To: <159062606969.69627.15005677857751012104@swboyd.mtv.corp.google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 28 May 2020 11:08:19 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0uXyobHKzuEoK1Y8Dmp=x7BOSeZQi-S+_YU6TxnX0s9Q@mail.gmail.com>
Message-ID: <CAK8P3a0uXyobHKzuEoK1Y8Dmp=x7BOSeZQi-S+_YU6TxnX0s9Q@mail.gmail.com>
Subject: Re: [PATCH] clk: versatile: undo some dependency changes
To: Stephen Boyd <sboyd@kernel.org>
X-Provags-ID: V03:K1:Tr+BPyCCT8t1cE9/QL+RkaMRm6bM7OeuE5D2p+lS0UFTWeljate
 C5ihQuDeJpCSO5z6/sbDI84SVPgFhK7mOJM/Gp/pmyD9/LySRS7FIp/+0Aexzd/nUTdgl6b
 Iy/Ts6qmnPeax9AcmfEQNjbr7v4X9S6jafr4U93nQWnAuO3kzMe53FQbn0uUeMILtrt7eJo
 CuajHjPmT8Fo1qQ13H8nw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wnq58mheNKQ=:w1NVXcM6jY8oknKbc/KA+F
 VQled0c6gxXbp/IBepIVA4W3t1OMqL1DH13y8++xwTRlyK8LC+RC+f8zua1JRWhpPvidDU6tD
 2aS/Fs51Sd5gY70nhUoUFk+Ge4PLgxZZ/iL54V6lY52cDVt+WUB0Qs1qv3pZq8NBzaNztvuUy
 nGwTDbonh/EvL4rVcdIeJuUmyxagE9WuvNEEl3a5YMcpW3hf7UZDUmDFwpXQcoSJoLZLlvXcG
 r3LnscjUU5V2e5ZKmYXkitVabUvEGPy/M0qkWWRHfocRTuarstOZRRSWLuCnmzui6xx4sBE5e
 x0/chhStFYpxMBQSeNBwWJF5rs3ll/9LDAJdpDOgB/J9tg6UsRJXitM3a0v9Ie6M5njjEI6xg
 dUpR/xvpnK0eTAeY58q9wOdpRLaOpLvTzd7CbO0gVJiRqVugGGj+CT9BYX2BB0+UFIQgpM7RX
 kag8pmKUzDQaMZ97cfBJLHM7ufnHYEfZ+nkDsw+O3O1JscJuEcR4xfzWQuEnK4ii/mO1Sdc3M
 r8+8i87eO96OM0Yyx/rqwRyga8h45Y6uCqShqy1ENnp8ft327lZ1NI4EWk5Qfhi1HCrHZizcq
 hzeHvoiCRnREMFNgRsGjfv0xtl4BydFl7MV6RcR5RwZfl8o8qwXf36cHvI1e246qBDIqU/kCI
 RroLTpL+QVENxzU28QN9HQwETek1D+opmtlpqIhtj5vvSY4TqnISHXdQIdsXFf+tcDkNcLsE8
 vOEL1Ctch8BjMnlFFZvWlQW3GsXff4iczcmT+4rUBrXw9WxeihH6D0rYYWlyh+Bo8vj+S5IWi
 Ru5uBAX4ZVuISBsFxorpipPo+paWcFRVwGmKYp9FLOECFHIcu8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_020842_406769_CCAA8629 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 2:34 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Arnd Bergmann (2020-05-27 06:40:33)
> > SP810 and ICST are selected by a couple of platforms, most but
> > not all in the versatile family:
> >
> > WARNING: unmet direct dependencies detected for CLK_SP810
> >   Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
> >   Selected by [y]:
> >   - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] ||
> > ARCH_MULTI_V7 [=y])
> >
> > WARNING: unmet direct dependencies detected for ICST
> >   Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
> >   Selected by [y]:
> >   - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])
> >   - ARCH_VEXPRESS [=y] && ARCH_MULTI_V7 [=y]
> >   - ARCH_ZYNQ [=y] && ARCH_MULTI_V7 [=y]
> >
> > Change back the Kconfig logic to allow these to be selected
> > without the main option.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
>
> Is this similar to
> https://lore.kernel.org/r/20200527181307.2482167-1-robh@kernel.org
> ?

It's similar, but that version still breaks ZYNQ when CONFIG_COMPILE_TEST
is disabled.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
