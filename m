Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D88C23EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zUjy3VNIp+lN6Zk1RH5zF9/UhbkIg1eWaGQ40a1nos=; b=hfMuvwd9KjtCnd
	DCFjmljZyWnGUgYz0NUQ/Z43Vt8vjU2C1Isa4dxiJnCUWI//lZkO3vE5ufMeetKOo6oFWqxircc+k
	dDFLm/L7ZiYMSunkX9eNjEhQxGxe4oxqW9YG2bkyoQVVL409DvABToQLGr73KCSC3LQFYQrbc2awa
	gKf/opaiPU6b7ljWeo56jOpuwepqyIlqHsJe8yT/RDWqj/XJP1J8tURU8i4it5MD1gJHQIiNi1fFy
	FhT9zzias9H0d040YUqOiB4hE5KbhdZlhDo4Xr+BWGVBkZ745zUrf+VS8v/sUmHrak5xkn0+TsqjZ
	nET1fGSxC/D+NbINTPNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExI1-0004zD-Nf; Mon, 30 Sep 2019 15:08:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExHs-0004yk-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:08:34 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7213B206BB
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 15:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569856111;
 bh=Fp+52V3gN6sLDfZnvz4YS9HFrRO4+wFt/PSe7Tf/5aw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hxPKGzCId/ZbUoZF1UIJZ/VCr/bVk+GIp8mrn4VXi0q1ssoLl3UdYpJWcC/4rU84N
 FnXXm+Wnn1mDguj/c0OeuoaroLmvzqPQ/M2gwlqP6TAbGhFGp/XLbKwI1dfWatbjqA
 3ANZuGUbaZ0VhcoFLNvt4libe25gZtyUyNZzoTu4=
Received: by mail-qt1-f172.google.com with SMTP id r5so17504849qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 08:08:31 -0700 (PDT)
X-Gm-Message-State: APjAAAUEhNNAznMYKONsdDPpYygrIcoFwEhhi3dNP4hiHdJFoNwM8LGD
 l6utiHleggI0JMmhOlCFRvw/VuWHzVUMRBzPhw==
X-Google-Smtp-Source: APXvYqwdbKZykrRJVvOGUuCRKPQsrzrj5n0WLj/vIuGy4RYdGBRfRlP4d6XFnA0ZTIbDwxJr+GXxP7zrGKoVrxGv2wU=
X-Received: by 2002:ac8:6915:: with SMTP id e21mr25049775qtr.224.1569856110650; 
 Mon, 30 Sep 2019 08:08:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190907161634.27378-1-marek.vasut@gmail.com>
 <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
 <CAL_JsqK+SwX8Lu+-4UgpLVxL05yTcs8Af9mPVHqzbf6+HF9v3A@mail.gmail.com>
 <0bf7c8c8-d03e-c08e-4879-3d3a2fb90ca7@gmail.com>
In-Reply-To: <0bf7c8c8-d03e-c08e-4879-3d3a2fb90ca7@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 10:08:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJf-TGE-SWWj=6AVbpfuN1AsEdDTSOCOk+iUzTT3yZSgw@mail.gmail.com>
Message-ID: <CAL_JsqJf-TGE-SWWj=6AVbpfuN1AsEdDTSOCOk+iUzTT3yZSgw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_080832_993080_D03451B1 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 7:45 AM Marek Vasut <marek.vasut@gmail.com> wrote:
>
> On 9/24/19 12:33 AM, Rob Herring wrote:
> > On Fri, Sep 13, 2019 at 10:14 AM Rob Herring wrote:
> >>
> >> On Sat, Sep 7, 2019 at 5:16 PM wrote:
> >>>
> >>> From: Marek Vasut
> >>>
> >>> Add dma-ranges property into /soc node to describe the DMA capabilities
> >>> of the bus. This is currently needed to translate PCI DMA ranges, which
> >>> are limited to 32bit addresses.
> >>
> >> FYI, I've started working on this problem and issues around
> >> dma-ranges/dma_mask. Hopefully I'll get some patches out next week.
> >
> > I've pushed out a branch here:
> >
> > git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks
> >
> > Can you test it on Renesas. I don't have a real platform having the issue.
>
>
> With the following patches applied:
>       https://patchwork.ozlabs.org/patch/1144870/

I'd rather not have yet another instance of {dma-}ranges parsing code.
With this series[1], dma-ranges gets parsed into resource list for
you.

>       https://patchwork.ozlabs.org/patch/1144871/

How can this one be applied? It would conflict horribly. Plus I think
it duplicates what's in my series.

Rob

> on R8A7795 Salvator-XS, works fine.

[1] https://lore.kernel.org/linux-arm-kernel/20190924214630.12817-7-robh@kernel.org/T/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
