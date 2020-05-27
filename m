Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7419F1E4023
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6iqUFke/d4acW3lb8SAOwuL6JFsgDtmYaIy/3ljSfY=; b=gCQ4ST5vtEzrf/
	t4OUn0oxp6y9ohJiVwgiCxuatgMHmjquyqgbxGe8V/9pwNhG1f9GikVg5dXiyHV7K677le7MoUx8v
	LYitKvbjBdORTfHV8Yv8w225ZOVrpZflL3cz/rFjfILifSjjRCgw5pD/r7F0Jyo6F5zbH5qwacQIr
	ZQvw/7MeCFh3e+GcbS0wUrm5QV8X8I05RVyP1PnA99uHUCdeIfxWabIKUathMO6h7Xr/S1oxC6gAI
	cv4QMYiVCqMjuyBixtUMoEA3h0R3F5tagcKR9MhmQL0jRJISwrYSgK/PnFouZU04kzV00TCdDUNyX
	OkhBTMhhOR5hoSezonxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduJe-0008A8-3h; Wed, 27 May 2020 11:33:46 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduJR-00088f-22; Wed, 27 May 2020 11:33:34 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M1q4e-1jbiS21Iz2-002Iqz; Wed, 27 May 2020 13:33:30 +0200
Received: by mail-qt1-f171.google.com with SMTP id x29so5620850qtv.4;
 Wed, 27 May 2020 04:33:28 -0700 (PDT)
X-Gm-Message-State: AOAM530aJj+acd0H4fv+RPZHvQYJ/yd23YzTVWllgKA4sY+ltI0hky5m
 YMVKaRwyZ1IBjcyTS96K158NaEe/JGHptC/HuFA=
X-Google-Smtp-Source: ABdhPJytr2bjG8wmbrwCUlNw85Yc0YEiejDsr/eUYMM1igF/l+KazWx6+Wav70gPMdZ6TcuTfzx28axhkOZA5yS1Tu0=
X-Received: by 2002:ac8:306d:: with SMTP id g42mr3579966qte.18.1590579208037; 
 Wed, 27 May 2020 04:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
 <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
In-Reply-To: <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 13:33:11 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
Message-ID: <CAK8P3a3WXGZpeX0E8Kyuo5Rkv5acdkZN6_HNS61Y1=Jh+G+pRQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-Provags-ID: V03:K1:GhgBGcrEKue7zQIt37KlPJb4zB1eIdQk+s9xAKstD34DQOmFpqO
 vyattr7Cj7E1Rqp39yuusONKOEVk2KNfNjnsALyavrD4gxU64v3Wt1IaGP9bRNpNp+rLnfj
 4n4XB8rr9sTxbbUKm8IoaifmXuzVKR4Gl7twl6MhMZdRW4vdYo1QK4Pl7bVhvqT7ySE8Hn9
 5fQFYPrj0UBqLwNPu9gXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bTdEw4cmaJQ=:YSz3sJLaA1oQYm4qIEJtcs
 aoeULM4czKiP0YC+KVcHxkfvwJE2T1YAbeuIgD3BwkqsrWEYPDaXda/zb4yn+uy16aiDWAn7q
 TxBCaA3jDzJ0bMIOTxnkSqScYDc/HG4Nu0mWOvWFL5ZdxqLnzzV1ovvYsvv+211fxY2NdsyUm
 DHLBSbNtl0xMlOTCuhLsON+W9iKyobr8p8j8X/VLZv0L723qNg+dPq6U8cq2qM885KgzR4xx8
 eZ2zUi5oemuwzcpYa0Qsy6vps0PSu4LjIocSftvotLB0gG0XenTlMlGRdQU8BvBO/TIjnvYU4
 P+BQvBoPdfOxNgWkSA+1//etC4rbSNtpWLeCAsPmmNnTYjbrstkPTj+jRnkbZ6F2kfrYkhbcc
 yNsnTg+7N9R9Pi2EuowTYYoaXQ70fJdG6R7UEQ1e2Hu2wlYD+5P7pdcHt/7frrTRsPcknN5g2
 loVCNwp9P7JZXRjYo16/TTFVtjMnbuAIe3WDNHiooLvgdLCFlleqz2cSJ4twLAmyR9QZpepVF
 PXU6bFlQHznuE97BhKoGZqZU1S+4xm/IKe0LSYJUEkbZmuIjjB5pA6zEhEVhU0b0ZBe1kW060
 Prcs9d5dsZBcMXGy/SR7YS4omrLixNyEJ7ZzQdjPL0oWw2ty/jpxs+TqdfzEoVMA23B+ybWqK
 hjaSlWZ+psN1YUYYcU25dr6rGv69Xehu1p/2/T5wfpCPLGp760izZ0zwaYoq/1BNwiyDYxdGk
 MVZKWSR7+QZug1m3emJN/BnlaYSt3xZsP5ary/JmCeJq4gecayR2vib/PvHdRiJZm/7245wi3
 +uDrmrIKrMZXInr/WvauzeOD7455vnAZK8QQ7gSjZIddlBz87w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_043333_392367_1D04899C 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:46 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> > I don't know if there should be a new label that excludes that
> > assignment for those particular gotos or if new_dma_addr should
> > be initialized to something at the top. Please take a look at
> > addressing this when you get a chance.
> >
> > Cheers,
> > Nathan
>
> Hi Nathan,
>
> Thanks for reporting this! I have a fix ready and will send it shortly.

I already have a workaround for this bug as well as another one
in my tree that I'll send later today after some more testing.

Feel free to wait for that, or just ignore mine if you already have a fix.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
