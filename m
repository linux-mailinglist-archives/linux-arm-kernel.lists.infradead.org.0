Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E44B6F4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 00:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NN5EPQ9KyJhJkzhg9dfCC29h5gfQeaRNOUsWN9Clrt4=; b=polq1MEFOcLM97
	W6AFGRaKjGrGhdniIqMwQ8VA90xo5plmDvjHQOlemzYiO7ugNyaDJ7oYmqRB3px20LOI7NBxXvG/L
	fDQ1ggRIxgIBWFnO6aE9lsKezs/Bdr002mz7Hjs0SOePuEhpIBjDo1IQBNAHjoBeM0d+sSyLA+6l8
	ePH6h9hGxZ9OYcQ8PVzeGQD6Iuy4mX44mJall+OECMWpyyJ/zpUW9Xf73BB+RpF94fez8ylsBuVC8
	4R2/QhH66APYRSpEPo5E2y4pDhRObZ83+9wBVZKEytjqEy0X1RmrehYd+HaBpBoPnFA1M9WJpqFep
	Xc1bGzdEvRIrlpTubHLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAiGE-0005Ep-1c; Wed, 18 Sep 2019 22:17:18 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAiFx-0005Df-OE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 22:17:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id q203so1221548qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 15:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0PPXvm1cuehURA0N+v3AsPltzXl1NumjZq3ILhmZMms=;
 b=dMdPuvnuN5vp6xMI9L71hDEjwqbovQsooxEY4jGDiBlLoWo++CWSdUSKnVlCsFoOMZ
 8R76lKikTLgxWytd/PlmDEWQJojn+SgrdcPBATWd0xF0saUzsjEYCqg+8fkJK++UYX6J
 WbNN6250Qr3DBMubRt6RXyQUWvTAnGyKl9g/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0PPXvm1cuehURA0N+v3AsPltzXl1NumjZq3ILhmZMms=;
 b=WIt6RaIBiTb4g3YnUnie/Ekcdg8ct0UmeD+xJYDW283SpueGSL1IgofHNpfXKmqClI
 nYWRAUwEPSvjrdzYRA5YfOf79L02jk0EFYJaF/+iiOTY7ODtSlhbkozYyGRJ1b8BRNte
 P/kf8k47Yb6Od8fYG78+8NOT5X+2bDMlC2eGwBe/puczz28+aptSaWZZl+qjH+owK/qm
 YKBdvU67dzstGVm9iJ1LYBBjzIPnWTvJJfF8iF8Ku3QPzqkfkLftQUoyjPdBbnlj93vT
 cNQSNxEuf76ku++gTnHCz4VW8XWjhFCZrsZV4/weQvz4SFptf64AeDmT2RxZh5eSygJF
 Z6og==
X-Gm-Message-State: APjAAAXByiEDT0pAhJdb0Ub6pPDVABEtLxJuSYflK4mcPDwu6GWJQntv
 +XtE37ynIhpPW4YSbXvIz4WdI7y7cFwzo3tSlB1R+g==
X-Google-Smtp-Source: APXvYqy1nYJoXPtXOCXEoxrsdeuTJFjJNPhHGVQajEt2tyc0sllovKQyX5fysKBk+IK5lBpHsUDyK2r1oeZ1s5t/0pc=
X-Received: by 2002:a37:4c54:: with SMTP id z81mr6666386qka.18.1568845019569; 
 Wed, 18 Sep 2019 15:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190905081546.42716-1-drinkcat@chromium.org>
 <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
 <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
 <20190913181729.GB3115@kevin>
In-Reply-To: <20190913181729.GB3115@kevin>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 19 Sep 2019 06:16:48 +0800
Message-ID: <CANMq1KD++==d0Mb6T2gKU1T7c_MaedswOYdxqEqEKKUL1bxgiw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_151701_815251_FE4E9CBA 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Dominik Behr <dbehr@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nick Fan <nick.fan@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Rob and Alyssa.

+Douglas Anderson +Dominik Behr who may be interested (if not already aware)

On Sat, Sep 14, 2019 at 2:17 AM Alyssa Rosenzweig
<alyssa.rosenzweig@collabora.com> wrote:
>
> > > > The binding we use with out-of-tree Mali drivers includes more
> > > > clocks, I assume this would be required eventually if we have an
> > > > in-tree driver:
> > >
> > > We have an in-tree driver...
> >
> > Right but AFAICT it does not support Bifrost GPU (yet?).
>
> By the time MT8183 shows up in more concrete devices, it will, certainly
> in kernel-space and likely in userspace as well. At present, the DDK can
> be modified to run on top of the in-tree Mali drivers, i.e. "Bifrost on
> mainline linux-next (+ page table/compatible patches), with blob
> userspace".
>
> While the open userspace isn't ready here quite yet, I would definitely
> encourage upstream kernel for ChromeOS, since then there's no need to
> maintain the out-of-tree GPU driver.

That's an interesting idea, I had no idea, thanks for the info!

Would that work with midgard as well? We have released hardware with
RK3288/3399, so it might be nice to experiment with these first.

>
> ---
>
> More immediately, per Rob's review, it's important that the bindings
> accepted upstream work with the in-tree Bifrost driver. Conceptually,
> once Mesa supports Bifrost, if I install Debian on a MT8183 board,
> everything should just work. I shouldn't need MT-specific changes / need
> to change names for the DT. Regardless of which kernel driver you end up
> using, minimally sharing the DT is good for everyone :-)

Yes. I'll try to dig further with MTK, but this may take some time.

>
> -Alyssa

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
