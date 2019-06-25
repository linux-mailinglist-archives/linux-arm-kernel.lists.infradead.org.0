Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A206954F05
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow4F9KIV/d630Z9ODgrJRHjKJLnL9yiM0j+cFij6sK0=; b=lo/6L1COdVg31v
	9mIjGazi8vyw/8CgiMyEhMbIcnUj9q/9mg5bvxh9I8/cYPGmAMX3+iWq02pyQbvUFvqz0O0lQWUAP
	fyuFvHUeK30klWZCqZl672Tbukrus2LV9MbvzMC/UWCD7CbwtqTl1v0YGWphVFe3lHmqfd9kerOii
	GL/r7yq4aELnLCsqbCmOAFZZFCEW2PxJy3tryVdQgD25CR8mi1r+plCry4PUTmFuuI4tXhhAXsDxZ
	5r3dVWZVtSsJQS/HyM64QAuYLQZSuINCnGK/HjD7ZsiS2TTVvcBAB+0uMgSVbKscgI2mThrfPCOip
	IKpOkHOaMZnOp9N9LOxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkhi-00061m-H2; Tue, 25 Jun 2019 12:37:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkhR-0005yx-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:37:28 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so182756ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kuKqV0zolVLn2FHeRv6QBlKlFDujYZL3pL5x+1jEs/o=;
 b=g5QfBmjv/NMNQdMr4sOALmkN9K/HAWuPVa7dC7uHjLwfTPGqhX+dVVbcbrAy1LRIba
 xd02ipK3RI1aKYcSOKeN04U1mdr/mELsc/v0xcUFM/WVL1TMv0H8qXqbI0RBRAV6VxSm
 +KBasVql5olZQC140YjW5Mmjnr0pJfz0gdRmFAK/TlbOh16uHIPH4Uv+cK2PPoVqXCCA
 DwWXdA4XP7VPZ3rjXoi0/3WguEICkqQyxADAbMvmxrGJDGhzupqHt9LC1tNIQ82fSmux
 gDK+6a+idDWITifsB9/23IrjMOgvMZrelAN0Frvhq6p4RfIYtmmvx0WwbWpW1KRKNXjK
 CSKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kuKqV0zolVLn2FHeRv6QBlKlFDujYZL3pL5x+1jEs/o=;
 b=pYqzgTqvCHAZ+jSmM9s4fWjLT7PqqsaWNmJDklj1KH9pz6cEYw2wx9US6aoC5hKpKK
 ouqm27aN5fzEvOfkf0rOq7vLAiGFab0xrwJcPmuhJsgTU/ViTrdxvxilbn3YguoaW6sx
 kBtdUUD67VmYM1VxhgXReDQ5B8JnPOQrAkL5jqLhUQus93iXPytnC0VHsEGSko+mIsAP
 18PJLyZBP7QOXfG8nXVxMKV1A5tifbQ1/780xagHVjQR8DCbZ4YS3YBZGuehpoR1q9Tt
 Yi+Sjlgd0J7YBWzGOxxYkE1R29uWrvRHGJbM8xxFRf0BdonZuFxEVRSGLlLJu2y2m/ct
 R4HQ==
X-Gm-Message-State: APjAAAWXevEHTvqZUMw1wkJuP5Dn7n9TATy4VVaVRFc4DfEZjAyze+6K
 zwWxLSOwb37vWag8Biw3yuUGqM9XHdswJm2HyXmzZg==
X-Google-Smtp-Source: APXvYqx1KxfemPs1lPVBnrMFICvN62fNE4kDn3y72QLdi++D//htUiTy8fGaCtLM1rBwakrVGi7mqtYQugJYPsucKsE=
X-Received: by 2002:a5d:9282:: with SMTP id s2mr14691392iom.36.1561466244342; 
 Tue, 25 Jun 2019 05:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <df322d29-330c-40b9-8e87-282e06bbf3dd.lettre@localhost>
 <20190625114301.aah64vukqr4uesei@localhost>
 <20190625123256.tyh2weckscdwsuvk@flea>
In-Reply-To: <20190625123256.tyh2weckscdwsuvk@flea>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 25 Jun 2019 14:37:13 +0200
Message-ID: <CAOesGMjKpQz3hnn+f_sahUAr9OVF59wDxvPKSU374FJvsWmMyA@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner H3/H5 Device Tree Changes for 5.3
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_053725_452306_795FAA69 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Chen-Yu Tsai <wens@csie.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 2:32 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Tue, Jun 25, 2019 at 04:43:01AM -0700, Olof Johansson wrote:
> > On Fri, Jun 21, 2019 at 10:13:14AM +0200, Maxime Ripard wrote:
> > > Hi,
> > >
> > > Please pull the following changes for the next release.
> > >
> > > Thanks!
> > > Maxime
> > >
> > > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > >
> > >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-h3-h5-for-5.3-201906210812
> > >
> > > for you to fetch changes up to 9fbbbb7b8d637f7ca1d5c4e23452bf450c7cb05f:
> > >
> > >   ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array (2019-05-29 09:27:56 +0200)
> > >
> > > ----------------------------------------------------------------
> > > This time we only have a single patch for our command branch between
> > > arm and arm64, a fix for the array syntax raised by our DT schemas.
> >
> > Merged, thanks!
> >
> > I don't think we'll start separating 32/64-bit DT updates again, so if you want
> > to you can combine them now.
>
> Do you have a preference on which tree we should apply it to then?

Oh, I meant you can bundle 32+64+h3-h5 in one branch at your end, so
fold all 3 down to 1.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
