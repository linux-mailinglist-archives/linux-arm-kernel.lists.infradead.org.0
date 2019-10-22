Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AFCE0D1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 22:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yANLpYA45a1tzQ9YeWCETgHCRUasNPGnpSqIn1RnzYo=; b=ASIAqCcuWEhyu3
	AalzmC0XYo6TPZ3WFVMIBKB46hZCYszoDHs4NgjY0yqrYFFvkzlZ//eNSG7iCIxMPpoMFBWtvVXGS
	yuTGyRmLQfBtdJxgWjXTfEbgsPpAeHOMH0efEQOxnmyOp17k3cBQw+VyIdJHcki061zz6M4u4jqEb
	cgosqYx73707OmMe77mL1xcwKqGx5NM9t1t+gEBVf7jvYNrK/U/NdWWCdqV/+8lhYs48GJZZy49GU
	W1OJDYSwuXzK1yjwo0fqt4CBH6gKjP1k2rlRM712dQ8gUA9LCO+cK/sX/5vLAykxrhIhDBNQNoql3
	ihdW1IQdbrjfq+NP4DEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN0XH-0001Ts-GU; Tue, 22 Oct 2019 20:13:43 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN0X7-0001Sv-9s
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 20:13:34 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MVvCn-1iUKlj06U9-00RrQ3 for <linux-arm-kernel@lists.infradead.org>; Tue,
 22 Oct 2019 22:13:30 +0200
Received: by mail-qt1-f171.google.com with SMTP id z22so8247446qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 13:13:29 -0700 (PDT)
X-Gm-Message-State: APjAAAX4pUrBBPzA2zAnHi0p6v23rfIhoJBfekTVWpmdsJ6n/HC2TUN+
 D9StkuuVCmI2vc/aVxIFdAttZUGYNCcrLheakE8=
X-Google-Smtp-Source: APXvYqwHws2+wdbd8O8mZBRDAI3f/vMQUkU/DX6M5bMx+/92TDs7sn5fYNiZg1DtZYJeC8Fy8qgIRm0PfsfvEwlnrmU=
X-Received: by 2002:a0c:fde8:: with SMTP id m8mr3823785qvu.4.1571775208879;
 Tue, 22 Oct 2019 13:13:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-30-arnd@arndb.de>
 <20191022163913.GV5554@sirena.co.uk>
In-Reply-To: <20191022163913.GV5554@sirena.co.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 22 Oct 2019 22:13:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0a2EU8mKNGLNoh+fnpNU6X=qgpAv3kOGN5uXv+f63KwA@mail.gmail.com>
Message-ID: <CAK8P3a0a2EU8mKNGLNoh+fnpNU6X=qgpAv3kOGN5uXv+f63KwA@mail.gmail.com>
Subject: Re: [PATCH 30/46] SoC: pxa: use pdev resource for FIFO regs
To: Mark Brown <broonie@kernel.org>
X-Provags-ID: V03:K1:R2O4NQ936IIhg6AHpok60VlRqawXt7xElBPIvNTyRg5/3J9+oKV
 jar+RXwth6pWmbQ4jCoYeiTo+1lGCFstSlStUUedqXO8vV0fwrPAUrp8YRRoZlVuN0pOvyH
 y3uYKgqdx2+kzSCDFissCGc/rBKmC9YQkCizgCK+jWBunO/WwjAEO4oe3RA3DBR5CnD7geO
 D5/Fq5Nufjnt1K1kW/L+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VW6jKpRPGvM=:vRBReBks/wWokJ3UMuLdWV
 vTsd292ROEhpMF/pKboy4SseQ1AVaBAg0izW+TPezxo6MjfPNdg2upKmlBWockqdNHM+ujOc8
 UuyX58FJ5cbYp3IKQOdJua1hz4BfIyahPpFlUsLjIoXmreKAxKLjKA66c8DR6ubbPHNlk5xgt
 O+CgBqrvvR84ul+f6L8JJJO83Gyp0ebFDCjAPxhAQH31RIdPvqrcL5m0YtsUvUd/jtsnaIuFA
 FwPYHCjFRSSlg8N2YtH5ZdAh4jtt+SoNe6AcudKwdiOo8eyKLMnFvxyLLX1lw29yJB46N4N4i
 apOHv6F0H+u1vbBWE6StolW4iKVDSwbWFoqMm+I286hemJGsXc1VnsXlP8x7uke04Yb/KH+cx
 d4h8klFqiAmFJicKZXdy4cuc6WPeV5wvyb9SM/dOhOeqYFz8QuT8XrA7xluzrgRbDKgedKU1f
 ZJeFhr84sA+QP+xRZy4MALlyxUsPtY+38Ok81wmh9Y3O9Nb4urqn6Lvro60nSXKdhPCCQVFWT
 0D3pb5mUs9xg5wv9skzc4P6PmUH5HVqOj9N36PjSwTKViSWpMaD1ptaJ+Jim7HZv81y4uc08K
 pbNJdU/SniR8670/IQIMMQyTCU8ZTU2zu2VexVyfvle4H6fn3tBdUJ0HDHeg+ZtjO4zAb6A8k
 E4hpTniSDTksY5k6kKnhVGV/BNkpEEZLVAqsAO6FZ6h6HSQuHZavATTU+TBqRXFcFioUBHO7x
 Nmn6IKtH4IuRUffpeNOr07kBUQlKAz/EWjIeH2d398pgOnZko9ctSw61obqWhwev3vhHuMfKZ
 /GOSp0tNTHsg5fGtoSBe5PImUZSHU1+3MGVIHqg0+eBRdzSvz/ueMkQIVVdHgUuM46Y9SZ/iA
 xc0/wQWwLD9mPi0eZtQg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_131333_638254_6E65BCAF 
X-CRM114-Status: GOOD (  13.05  )
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
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 6:39 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, Oct 18, 2019 at 05:41:45PM +0200, Arnd Bergmann wrote:
> > The driver currently takes the hardwired FIFO address from
> > a header file that we want to eliminate. Change it to use
> > the mmio resource instead and stop including the heare.
>
> Acked-by: Mark Brown <broonie@kernel.org>
>
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.

Fixed, I guess I lost an 'A' somewhere.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
