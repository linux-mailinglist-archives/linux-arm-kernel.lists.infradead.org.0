Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E5D71A87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2D+PjYfC0HIF07yaLBauE2YqeEKOxMTfh0KtoZWyA4k=; b=VeXRKqo1yOvrnT
	5hGCh/9pqmbF97rAWg7Cym38HPEnGmb6SWm3C2YBx5ov/JglnLvP4o73MY1JCMx5ImnSqU+7FKDP+
	RyoedIpHo6eK8ZzcUD/4cK3Y0vfRrC7CaU9m+/K1K33/k26PekT9gjQYJ7mrrrYaT6Nz4arq5hvJL
	/gjcIedZLy+q6OI9WTFBMZlDkGk57J+9jHu1xJ0VFFYbHjVuFlbwG98SzoR3hL1h4qb2KjGZDdaAf
	QfqApdlELWcUBwB9R4GKrpUOx0KQ5rgOZKfnAr4GJeys5zjWpK82iQ03iWaSuRKL4xvwkA8jPEoIm
	r/hbAAIK+KYjfke84Fog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvtm-0005qk-KM; Tue, 23 Jul 2019 14:36:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvtZ-0005pl-FX; Tue, 23 Jul 2019 14:36:04 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F05C218EA;
 Tue, 23 Jul 2019 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563892560;
 bh=RhgZmcSMrQfqbKW3yJR0qQgPijWPcwlwWIuyvyAMaj0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wLzKco/ArT5Dvfhgx+RaF8Fzo9J01LD8d96HbTMMRKdSTPSycFxvhs5LCOraxZkJZ
 JkUM874oADKHLP14egH8DMTatS/Yt2U7n9FBkCxywEqixwbZPny1z7mEeiOeM5TeiK
 jnDroFl49M4ihJT2TP4q5KB7tPiKJpsXJPqPjJX8=
Received: by mail-qk1-f178.google.com with SMTP id r6so31314557qkc.0;
 Tue, 23 Jul 2019 07:36:00 -0700 (PDT)
X-Gm-Message-State: APjAAAUq+wNcZS0QtSGCLtFSwwiRPc3fUEPmeFMQo5asnGBMU2z9cvRu
 xkHpabZ7kTopCya7ZbXyz7LH+/w51ttf8hef7Q==
X-Google-Smtp-Source: APXvYqwO37a9Uf29MCK2pQZVWi4gKhtu8lPzPkbArTZ/nniUVYHOSr3nEpVeFoaSFAMyZM3mOkSYpKT/tr0qovfkO7M=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr51861407qke.223.1563892559731; 
 Tue, 23 Jul 2019 07:35:59 -0700 (PDT)
MIME-Version: 1.0
References: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
 <1561361052-13072-3-git-send-email-neal.liu@mediatek.com>
 <20190722171320.GA9806@bogus> <1563848465.31451.4.camel@mtkswgap22>
In-Reply-To: <1563848465.31451.4.camel@mtkswgap22>
From: Rob Herring <robh@kernel.org>
Date: Tue, 23 Jul 2019 08:35:47 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+SRhd=-5O2G_CMfJX9Z188kvA05MQOXaU1J8iExwUixQ@mail.gmail.com>
Message-ID: <CAL_Jsq+SRhd=-5O2G_CMfJX9Z188kvA05MQOXaU1J8iExwUixQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: rng: add bindings for MediaTek ARMv8
 SoCs
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_073601_552622_AF68085B 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?Q3J5c3RhbCBHdW8gKOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 8:21 PM Neal Liu <neal.liu@mediatek.com> wrote:
>

Please don't top post to lists.

> Dear Rob,
>         You can check my driver for detail:
>         http://patchwork.kernel.org/patch/11012475/ or patchset 3/3

I could, or you could just answer my question.

>
>         This driver is registered as hardware random number generator, and
> combines with rng-core.
>         We want to add one rng hw based on the dts. Is this proper or do you
> have other suggestion to meet this requirement?

It depends. There doesn't appear to be any resource configuration, so
why does it need to be in DT. DT is not the only way instantiate
drivers.

Rob

>
>         Thanks
>
>
> On Tue, 2019-07-23 at 01:13 +0800, Rob Herring wrote:
> > On Mon, Jun 24, 2019 at 03:24:11PM +0800, Neal Liu wrote:
> > > Document the binding used by the MediaTek ARMv8 SoCs random
> > > number generator with TrustZone enabled.
> > >
> > > Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> > > ---
> > >  .../devicetree/bindings/rng/mtk-sec-rng.txt        |   10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt b/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> > > new file mode 100644
> > > index 0000000..c04ce15
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> > > @@ -0,0 +1,10 @@
> > > +MediaTek random number generator with TrustZone enabled
> > > +
> > > +Required properties:
> > > +- compatible : Should be "mediatek,mtk-sec-rng"
> >
> > What's the interface to access this?
> >
> > A node with a 'compatible' and nothing else is a sign of something that
> > a parent device should instantiate and doesn't need to be in DT. IOW,
> > what do complete bindings for firmware functions look like?
> >
> > > +
> > > +Example:
> > > +
> > > +hwrng: hwrng {
> > > +   compatible = "mediatek,mtk-sec-rng";
> > > +}
> > > --
> > > 1.7.9.5
> > >
> >
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
