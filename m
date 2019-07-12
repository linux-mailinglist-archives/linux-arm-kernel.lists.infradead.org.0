Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383616764E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 23:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DskXmhJsgWjI/Ir1qSiB5wbvlQzt8RemmZ+VKZwm60k=; b=Ab4ZFBGxDnAieN
	eZxUjKbkx3uEKsKG9/1WoKlVLc4kI+gW8/WmeWH8bGKBFeEGkICTAVpyOPnEyyhpdt+s7cWfr/2Gv
	qwKqm4ed4QRTCiHnGpOR9maxnxVABYbGz25nF1ksqQYFTPOoaKBgu+aoeIxAXGyHGAUIfDyAz3IYZ
	cvVy/Syw20/gQ4y8qDiUJS/dEuLr+qGqSSwbdMA+cbuwglW0NO9dHyYm9yf8AG7Xrl1+xVpSaBvAU
	WQ9pu2JEOxzBWW7X322dmvBW3Bli6C1q9iWAGwOGrS/qtZOAIMvK8jxNJciKgHHDQYruoQJhxZCRi
	GhlbgY4l9FVVixGQdbEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm3Qp-00015I-Iw; Fri, 12 Jul 2019 21:50:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm3QM-00014j-8w
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 21:49:52 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B18D4217D9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 21:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562968185;
 bh=d8UFAnisx41TCLT0SWr7IGBmSao6kWDr5m7t3tFM3Mg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DG2DF9rLOyCuXKtTDnOe7KcseUW92ILfUMF6GNRr6sGvSa5Qq8nDzYbkDB51x/dlC
 EsLLDHqS9eRVSLERYdmhbHTDxEpD4gKDTFENMRQZ+BnP+2A145Cd4qs8nG9ugK7hX9
 hsNfHgMq+RB8oJcjVN2ygBXsOX8XTwWRgYeeAd98=
Received: by mail-qt1-f171.google.com with SMTP id d17so9676365qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 14:49:45 -0700 (PDT)
X-Gm-Message-State: APjAAAVD1/mSaR7stZOTWMtsatrSuGQ/eQuwiszilAAtD/269sxSJUR/
 ZBoeK/QVVi0ZlegA5tZBZCpTrfNrv+wETpje3A==
X-Google-Smtp-Source: APXvYqyeGL6inig9PTJWvCQORSIrZ3T5dsiButx96ewl7Mswi11GC+7fBrsMVr47bLSOh86OnzXLZqeLgm/VF8jqsLI=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr8765642qve.148.1562968184927; 
 Fri, 12 Jul 2019 14:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190711092158.14678-1-maxime.ripard@bootlin.com>
 <CAL_JsqLh8QEwa-3v9-Vs=e55k3GyyvwsNVxmdBMWMD_VxqKMyA@mail.gmail.com>
 <28a776e2-52fa-60e9-a7d9-8caeec78f1d1@ti.com>
In-Reply-To: <28a776e2-52fa-60e9-a7d9-8caeec78f1d1@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 12 Jul 2019 15:49:32 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL37NzqbVqqbG-z0RHE=uwqP_8VGF42ABgy24DiucSODA@mail.gmail.com>
Message-ID: <CAL_JsqL37NzqbVqqbG-z0RHE=uwqP_8VGF42ABgy24DiucSODA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: dma: Add YAML schemas for the generic
 DMA bindings
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_144950_334975_CFD3DD49 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jon Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 3:24 PM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
>
>
> On 11.7.2019 20.33, Rob Herring wrote:
> > On Thu, Jul 11, 2019 at 3:34 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >>
> >> The DMA controllers and consumers have a bunch of generic properties that
> >> are needed in a device tree. Add a YAML schemas for those.
> >>
> >> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >> ---
> >>  .../devicetree/bindings/dma/dma-consumer.yaml |  60 +++++++++
> >
> > This already exists in the dt-schema/schemas/dma/dma.yaml though not
> > the descriptions because that needs relicensing.
> >
> > Looks like we need NVidia's (Jon H) and TI's (Peter U) permission.
>
> If I'm not mistaken the new license is GPL-2.0, if so I don't see any
> issue, but I'll ask our legal to be sure.

To move it to the schema repository we need it to be (GPL-2.0 OR
BSD-2-Clause). I'd prefer to have the core bindings in the dt-schema
repo rather than add to the kernel.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
