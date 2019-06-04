Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874F333F97
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9ikKRhRkYJ7UO8ck5EI51ZIGuNsl7nVkkwR5Mr/cLw=; b=abx6XonYgkWMG8
	0uG3obWtkyzy5m2Lb7CKRQxsTPaPbEk8USk2hN3xZHO199FlNi4+sqS9PitZQuNCSrZ2wneOikF3n
	Cj/F6RLli49ii3f/xgML346ts2fPfidAkWd/DH4dvTNMalEqIkn2f7L/h3ENSSp+mjorQwy8+gHsU
	2kGS+kQZjRafB4dyKLaBmY5u4IWM2qBSDsoBwNTBTZ7+IOlbyh52zW/QU0ba4wgGkITo0mWFQtAzZ
	QzYNAejakTzDbw/p9aWuxksePXhDtjzuB4xItw9ti/Lt/F1zaVonSwKhEuY7NmZqCsZLwbOYD8Xoy
	B4EAvDnIz5PSYtu1Oeqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3eU-0002hQ-GR; Tue, 04 Jun 2019 07:14:34 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3eM-0002gI-U4
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:14:28 +0000
Received: by mail-vs1-xe41.google.com with SMTP id o5so12894561vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 00:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TnMW2xOiYTMGq6n1rvseC+0+GnmccYvlmBV45K6GnFE=;
 b=guyP1Ic33rzxwrhngOpfHAFw46fSxkXZTsOpnQcnQi8rL7kDEYs13LTpQAny7DL/GR
 DHtVUMI3kSzio17wFCwrwbi6b/NkkNnZzyMQ/E2RwDTK1yklEVRjfK10bIpFH5urkV3b
 ZO6TrmRkaqcq3tt9OTh7DgC86Y7d1obVoHr+EqmRjWv1FKRK1t67AmoJDKYLagENgb/r
 Ph0NrraeOE0tj/4iB0hs3LkArePb9xcYrpR0ricbgWgjA6gAQRy+qh++zo45pXxZAkCR
 mcTG3BoHmwK2QzQoOVhPFCCpOadqTzopWCKMDisUQvi51u/7+XMyZhwwvjCC0ZEbEl+9
 LIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TnMW2xOiYTMGq6n1rvseC+0+GnmccYvlmBV45K6GnFE=;
 b=eHRpL7ng7yCJO9jGOEvw3x3XSFvu8rMtKunsJelts2MTi3LQveg6xHfqEG5iDsCat9
 Nt+xP9OgBefTQSyQz5WybJpEWVh1EyMGdtxOq64wiqvQJLHSMbVAD4vRxx92GrR8xgiB
 4U45CfiW+STWxVkjJqD29QzGG8vqXnt58NtDm3fS+HVtJEXd1cqH3tcDwupaHyRvXzZ9
 U4LXd2jo5ciXbI2AbbiW82kTDfh5MUlsSgti8ejheFgwgVEI9CwsKKrPbq10QgSJ6mNp
 AeG5sfh3GvMATKA/e66Wdzvu3ToMHx+YE9sUqFz7ovxcy3pInowlNDRbrf9SdEPHjFJp
 19Cg==
X-Gm-Message-State: APjAAAW63eaY92G/LoRamQjkwQd/UlUDsxipSinx3CNNrLqf+HL6TPE+
 4gfKh4D1Q+Ren1fnFznNIbrMUS23vuckuhBrvRZvmQ==
X-Google-Smtp-Source: APXvYqzEmHz0ELqyBrB8KiqIDFXLaBDsyB3HX8ZlxIChRrzbOz09ochCdoanorD9Bt/q0a4QnR+rkxHL0yo/JxSfNe8=
X-Received: by 2002:a67:f485:: with SMTP id o5mr15183717vsn.165.1559632465380; 
 Tue, 04 Jun 2019 00:14:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <CAMz4ku+E=kFgWrvm_wzM2XQQUyYZhc5uokcGEAEbEKpNAYZQ7g@mail.gmail.com>
In-Reply-To: <CAMz4ku+E=kFgWrvm_wzM2XQQUyYZhc5uokcGEAEbEKpNAYZQ7g@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 4 Jun 2019 09:13:48 +0200
Message-ID: <CAPDyKFoZmxmRYwL_m60=DK9J5+beshEsLw5D=FySzRfYFdsb3Q@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add SD host controller support for SC9860 platform
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_001426_988248_B10096BE 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 at 10:42, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> Hi Adrian & Ulf,
>
> On Mon, 20 May 2019 at 18:12, Baolin Wang <baolin.wang@linaro.org> wrote:
> >
> > This patch set adds optional clock support, HS400 enhanced strobe mode support,
> > PHY DLL configuration and other optimization to make the SD host controller
> > can work well on the Spreadtrum SC9860 platform.
>
> Do you have any comments for this patch set? Thanks.
>

Seems like the series is almost ready to go. However, due to a few the
minor comments/questions from Adrian, I am expecting a new version
from you before applying.

Kind regards
Uffe

> >
> > Baolin Wang (9):
> >   mmc: sdhci-sprd: Check the enable clock's return value correctly
> >   dt-bindings: mmc: sprd: Add another optional clock documentation
> >   mmc: sdhci-sprd: Add optional gate clock support
> >   mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
> >   mmc: sdhci-sprd: Add HS400 enhanced strobe mode
> >   mmc: sdhci-sprd: Enable PHY DLL to make clock stable
> >   dt-bindings: mmc: sprd: Add PHY DLL delay documentation
> >   mmc: sdhci-sprd: Add PHY DLL delay configuration
> >   arm64: dts: sprd: Add Spreadtrum SD host controller support
> >
> >  .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
> >  arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
> >  drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
> >  3 files changed, 217 insertions(+), 8 deletions(-)
> >
> > --
> > 1.7.9.5
> >
>
>
> --
> Baolin Wang
> Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
