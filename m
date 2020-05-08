Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF511CA786
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 11:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYOC5xJPyA4eBikGEUPui4NOSXwazLLCnB314ZJjvmo=; b=CvHPTaqY4ARpP7
	ztUj/puk5bSjA0RuhZTWO4FVUQrh0LB/LDWXXQfYvhiaCWmBJG88FuVaGCNBnCwiLBHxCkYkBZy+w
	8zCpcc+9PaojhoyCkJxi7x2ORPC1yH4t5oJnjdgnX+LF1yn+FoptzpN6o2BeF0aMjyc9YR8Cca7aL
	uw+vxUEIphyKmEnsSoyFXjS6urq/+myopcnzECi0d2jBwmIJBM6hyYtqNnYNn1/cHJ+W2Jh6mIyWJ
	qmX+E4f3Xn2LKABrHVAvIr8BIaBf4mXJehkqDkh25Q2oIj+KwpTi9H6hT9VzlG/vLeRTbCxW6kwOL
	r68kMNnVR/jzVXw37SKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWzeP-00022p-Vs; Fri, 08 May 2020 09:50:38 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWzeH-00022I-UG
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 09:50:31 +0000
Received: by mail-ot1-f68.google.com with SMTP id z17so1004984oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 02:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b5uVoI0n1KNv3+qMlrWZ83amX0u3Zd89agbuvXvX3BQ=;
 b=StwqM7LXYZTFvSpXFwQ8zbMXsohnWVXKOWmxp4HLdCe6Arhbn9GfUjCZbXpRivuBMs
 l6YREQI4aFmvQPNALYFsQ/leeqehT2A4M3HKXYN1Rxb+1u19eF4guxNVrRcnQYqBAKtq
 UqgrM2MYpl62GToIDGXCZV2EjRZkC4BlX9YGHm+/CA7q0wv0Ol2+BfT4tPJbEP3imTba
 ZIi6Mlf1sHwQlr2KMtaZ98+dk+Vo6HoFWeYr+lvJVw/tVqYrfiHPHGxIpwqI2YDPU0q9
 cAlpq+7xEarrYvBKWZ5Qny1uoZy+Aa1cK/DgAG55OcgUnAzNZI0R3iLd7ATfunMdUEQz
 r9sg==
X-Gm-Message-State: AGi0PuZecrl77+gD//Lf2gmJkJ2fxeFnEfrNPbrcrgrBKHs9M1dJNOVZ
 ENCYRfOWq667Mq6l3TKfFcQltVTMXpTm9JJzmS4=
X-Google-Smtp-Source: APiQypJDV1otoOypylweOFXXW3dlZCPcQtNptWZUNfsC5d7jBL5atkxkLBTRUMF45BNs9jbOlY8aKBznw/nCmv1aAFM=
X-Received: by 2002:a9d:63da:: with SMTP id e26mr1325383otl.107.1588931429037; 
 Fri, 08 May 2020 02:50:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200507112955.23520-1-geert+renesas@glider.be>
 <CADRPPNTdv3R4t7JsjGuPP5h5APA7vcSMNK1vJMjzPtGw=Uw9-w@mail.gmail.com>
In-Reply-To: <CADRPPNTdv3R4t7JsjGuPP5h5APA7vcSMNK1vJMjzPtGw=Uw9-w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 May 2020 11:50:17 +0200
Message-ID: <CAMuHMdXvHwZ88hhLzKcEW-tFCFiGdWBaABrirG3k1a9Y1=M_2w@mail.gmail.com>
Subject: Re: [PATCH 0/4] qoriq: Add platform dependencies
To: Li Yang <leoyang.li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_025029_980500_ED8C6834 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@kernel.dk>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, lkml <linux-kernel@vger.kernel.org>,
 linux-ide@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Li,

On Thu, May 7, 2020 at 11:58 PM Li Yang <leoyang.li@nxp.com> wrote:
> On Thu, May 7, 2020 at 6:31 AM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > Several QorIQ blocks are only present on Freescale or NXP SoCs.
> > This series adds platform dependencies to the corresponding config
> > ymbols, to avoid asking the user about them when configuring a kernel
> > without support for these SoCs.
> >
> > Most patches in this series are independent, but the third patch may
> > cause some Kconfig warnings when applied before the second patch, and
> > enabling the QorIQ CPU frequency scaling driver in a non-Layerscape
> > kernel.
> >
> > Thanks for your comments!
>
> Thanks.  The series looks good to me.
>
> Are we trying to merge them through the various driver subsystems or I
> can also pull them in through the fsl-soc tree.  If we want to go
> through driver subsystems:

"fsl-soc" is safest, if maintainers agree, due to the weak dependency the
randconfig people may notice.
Note that Viresh already applied the 2nd patch to the cpufreq tree.

> Acked-by: Li Yang <leoyang.li@nxp.com>

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
