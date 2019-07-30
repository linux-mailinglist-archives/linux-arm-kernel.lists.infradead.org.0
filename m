Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070FB7AB07
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JgM/WT2NyIUTf9HqSBwkvaN5colVSqR9BtViEQiQvQ=; b=NB7NRq00TPeE7d
	0hgBR/HREeVMSIRRVOImcpWNieDBh0JamB1i+rXtSun2njyPu5uxV/fZ56vlU3B2td63aloQJa1P7
	bFcS3K1Y+xrlsMEvVKtiJbV5yKhAQ2e7kuvBwZqL84dKFKlhvQrvo+Ncbtxp1+QoPfPRyKI8GD8qa
	gh0vafOB3ErCDlBci1d4QGXVTPLYohNTZZaPyfALOyUbfBT2mLihrYOuZPErW5lPUW05g6/+78a2G
	mOu9VBNHATn531qMhHw5R0Y6mIF3D/aMjp2TIDaM8W36VL12W7V5aawYT8vlxvpzTjqUwhgzkvHwu
	AnEYgv5PTdecTHHu2XRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsT9N-0006Np-Nv; Tue, 30 Jul 2019 14:30:49 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsT91-0006Fu-NT
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:30:29 +0000
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6UEUEY3014192
 for <linux-arm-kernel@lists.infradead.org>; Tue, 30 Jul 2019 23:30:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6UEUEY3014192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564497014;
 bh=JMSt+hweIJak1wcxcE6FJKFOSL1Mxz8lHsp0Ef6quLI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rcRzWCPeijGAGABuSv0gOMMO562JQ0LAMRm5dDhqHIbr7YGcxh1QMBCy7olAFYGsj
 wmpGMvON1FsyFqZcus7JWVqxmFe6hQMCX286NwqdWna+JDXJEU9Ch98Gx+IvFBvS+m
 5IZddcL1CDlputOY7hljZkRmug01BF4+gSdZN7mfVjyA+7wN98AfvBMRGPytaRCUZF
 GCnsEHv5IPyoE2ZjiTD1ugGjiSlbAWNAfMUnLRQjPl30t1xJow+XY0iFvCgj1579YA
 T4JIt1WuxRXIp1cwOlM67yu51q0c/snOKi2WTkZlnNxQk0Tr0m4tPAenXBgCFYiXS9
 40hR+5gYc/epg==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id m23so43624975vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 07:30:14 -0700 (PDT)
X-Gm-Message-State: APjAAAXqMu43qN58h7fStX+bDsf9hYlAGw4zy/dfwrhvvVkIqC1WdzqR
 yHE6Wk+jV7Xkg9Z3wS5WvaWu9EX7K+DmNde1XwI=
X-Google-Smtp-Source: APXvYqxC686Km/0VHbBnLd+UeAwL8cwY74P1tc2OVLxLH6J+Oxr4y6XeleXfMvfWTJZ5WBmOPpmrhO/o9GyN3LmIvLM=
X-Received: by 2002:a67:fc45:: with SMTP id p5mr11100750vsq.179.1564497013549; 
 Tue, 30 Jul 2019 07:30:13 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-3-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-3-git-send-email-hayashi.kunihiko@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 30 Jul 2019 23:29:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNARi=zV9dzJ1Pi2buJ7UH8whQwZbJ-z0AB1V3_OypQ519A@mail.gmail.com>
Message-ID: <CAK7LNARi=zV9dzJ1Pi2buJ7UH8whQwZbJ-z0AB1V3_OypQ519A@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] pinctrl: uniphier: Add another audio I/O pin-mux
 settings for LD20
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_073028_030759_16EE29D1 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 2:43 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> This adds support for pinmux settings of aout1b group. This group includes
> audio I/O signals derived from xirq pins, and it is equivalent to "aout1"
> in functionality.
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---

Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
