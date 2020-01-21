Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CB914402C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njjwNQ7T+riUDvf9yvp6OK9IRil8eoGoo8m/ZQkyK7k=; b=bmtuuKrDaqojxD
	O8u5FjE0hEIem6aTMDrUcp3R8WPQmTQvBplTw2v+r9lw23/sLKnbIYqpugaZn3x/LTHF1bZL8T3p5
	2nKw8w7PrL3w0FEiWdBmBzgZItASbtWjIqripubijeAFS/kDSGpWYNVdR/TXCPS+v9WGGOyJsALp7
	jr0xFQ5LiXELoW3agE0xczhtWOJ34o9yDp2bIXTSXO+tUY4RjRzHtOb1N6EcSfv8BsOuPWPeIyvQW
	Az93a2BTg4GTLGtPpjiZKo28Pq2vuNr7E1W4ZzhQiQQpOiWiDU0IY/eAAw2Omlvshkp1cwpu3ivg7
	3KuQTNNOrJ+mTcOVL4og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itv8N-00053B-6u; Tue, 21 Jan 2020 15:08:03 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itv84-00050k-Nv
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:07:50 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1McGp2-1jUMs93ijE-00clhj for <linux-arm-kernel@lists.infradead.org>; Tue,
 21 Jan 2020 16:07:38 +0100
Received: by mail-qt1-f171.google.com with SMTP id e5so2844687qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 07:07:37 -0800 (PST)
X-Gm-Message-State: APjAAAXMQAXGSI49tKvAzhFxZvjbf/ZV57MXGk9SY33gnIJZhh/HbNQ5
 Bkw9cZwtsIUiGOQVErD0xVD25zxfuqH6xsx9+UE=
X-Google-Smtp-Source: APXvYqyEHp6MLSIhx+AyP6DWTxONoADPVbpvbA0alf7+o+m67/7ztosAtihKbjjjrNGU1lvcux9b/MHxUQcqJ2GwsuU=
X-Received: by 2002:ac8:709a:: with SMTP id y26mr4873169qto.304.1579619256732; 
 Tue, 21 Jan 2020 07:07:36 -0800 (PST)
MIME-Version: 1.0
References: <20200121103413.1337-1-geert+renesas@glider.be>
In-Reply-To: <20200121103413.1337-1-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 21 Jan 2020 16:07:20 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3owvM0bQvHkO623FCmwwuxzza0Wx_XyajMWVc5N6n2mQ@mail.gmail.com>
Message-ID: <CAK8P3a3owvM0bQvHkO623FCmwwuxzza0Wx_XyajMWVc5N6n2mQ@mail.gmail.com>
Subject: Re: [PATCH 00/20] ARM: Drop unneeded select of multi-platform
 selected options
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-Provags-ID: V03:K1:mNWYd4HqBg+G5+kBxkIUbbBVPEQB28ivqM/Y6iRsoIxP5FwiaeL
 bvR5eWrvXukpfyA5qfKBBWMegD9NAEz0yHt7P1447IFgjtHAG4v50tXY3Kpo/43/ruYB098
 DZaECgfShs8Y8zU/0VmUwM5a0BxL7J0/OZAE0X7yyGEnb/ljD4KOIaXY1y2ZR6rj/ikUTx4
 rg3agU3k0zdlUsdMID7MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nvfuwelogaA=:6M70o0pXlacL9xQcHuF/iL
 +D8BWdjNailWhI96S+iry/dDPy6JHta+jXTgfLMSWRVue29bYM64+5SAjyiGRb2KQT5ca4iOM
 PiXQNx89nxVo/g6VitHkKsmy1yKfW6iad+CymYPSrs7l8CM3+f3ZnsxpckVzctkZ7Bw+pISAP
 D2R98/N6J/K8YzKngfJIngDvV8WmBqNYY/9LQJEJZFdHftveYBZXAvWoU4y4ZyRakrelTcyrb
 tIM/hHmd4ZRF8CF43Bsg6cWIOBvF8qbJLUV2grjgCOVyhMrZOM/iSQXCMbuJOePYjw0Qq8x9a
 4IuCBxiIVVvnVi/VzUhISLQc+ZNJTAMsLhyKO/Hk92oatcHkIn0B+WrvOnKuAm00vmu8Qafvu
 q45eyjEIjheGphFE+atZeBdDmrIx8cirp29N4Kvl3eb4Ox2rSe058mO5BcgBc5ej6wnfph4oH
 kZewkPSaq5DGUamGxM8jdY1AlLbVCsUmkxgp2xsEXyCdz4zm1Uhrg1HJsnqm8C9PssihrjsxE
 eF3BPz9hXLFre/cd5F7lIKAjGuFG7EBQ1ak91gfgbINAyyDX2QdY7tX+yYxllf3BVpRQDydHc
 aghOWrYfQEAlhbZ77zeHElWUNAtZR68ScbRH8lD6BEd6BxgZyIPwbxus4zz7gl4k4cqoOFsL1
 joolKS52zhPCL7qglsth9YTnlN1tdyKEm0pwfLDEqzr644QYpNj0/qq/jHfnC10mIFbbdCvMt
 BMo0T8bV36Jn/jjPwR44hjDW8KYI++RntYyce8ZoevHUld9wHP8DWYjg1kfhNXyn2VgdepgC4
 gUAT0U/QJibXwdxxdaC/8uQHfXqCqzEdGjy8XXZXVRd2KJZPU3cXG7BJR7zY216fK8aEuMhfu
 NCOaLX+02uKu7Lz85/oQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_070745_074877_BAB52222 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: Olof Johansson <olof@lixom.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:34 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
>         Hi all,
>
> This patch series drops select statements from the various
> platform-specific Kconfig files, for symbols that are already selected
> by the various multi-platform related config options
> (ARCH_MULTIPLATFORM, ARCH_MULTI_V*, and ARM_SINGLE_ARMV7M).
> This makes it easier to e.g. identify platforms that are not yet part of
> multi-platform builds, but already use some multi-platform features
> (e.g. "COMMON_CLK" is used by multi-platform + s3c24xx).
>
> All patches in this series are independent of each other.
>
> This has been tested by running "make oldconfig" on .config files
> expanded before from all defconfig files, which triggered no changes.

Nice cleanup!

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
