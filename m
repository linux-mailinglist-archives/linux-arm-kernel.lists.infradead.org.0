Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B491E0DDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGGbUYpS1NI6rGo3+xnverLBn4/od38TknZ9wxYkDW4=; b=cFSrAaUyqOyELY
	8KFkVLOc7LY/vl9tnPA9CuAC/ttZex6M/bxjTXVQ+1ItHcGcMU7umZKuoFYwQqSbDAJIsdD0JYJIs
	QIvBZyKhl80jMDgGSau4/YxDedfJKC0YtH1QwrKYZZAi/D8pThirm+Gp3fMyjWKw5h1LCPEKkWobd
	RjFfJ6cR1LiKRxeDYgk161Nb17UuZHo9bCg/lRw9Fetd1dhZDvfFAfZn4YBuQDPkM3rsWPl87yu52
	38HwLk8I7W2Rv2WOD9h80vaQuPQxd+6udIs+kvXC4kVjAwYzRXLepggzW5zxqWQLMwYDlvnZsTk/p
	A+w9GaCUIE/EO5pJm+DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBfj-0001VS-Ja; Mon, 25 May 2020 11:53:35 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBfV-0001Td-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:53:23 +0000
Received: by mail-lf1-x129.google.com with SMTP id u16so8608717lfl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P/cWAJl3Z7M7phJWdZ1viutRbSoAqLOTBAKufEZLlQs=;
 b=J7zkISA9IACBaVZfIy7JcdxpE2ftuH3PzvgPxwCPTVvWLm94b33+EPTzq46DDaYm2H
 tCRXLAp5upCjONBGcvqexKg7AU8Ka8ylT2X4YZPrLOUyQsXkiPls4zRxhVigqskhJ8Qc
 R2JRs8LOj+hBFPv1FWpfNKziFvgfyUK87dOXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P/cWAJl3Z7M7phJWdZ1viutRbSoAqLOTBAKufEZLlQs=;
 b=qZO/B/v2PyFj5vUbVMfSD70BJ7xEfhTCTNOI6GcwOQTwGCFrZR9QZJhyFzZvG6YeFS
 zdgMA/GjJxA3tdG1aFMckXLfw9m4M0WzE+mU0SnEK7rZb4bpffHuAeRp3qzekNgweIWN
 Y/Y5xGkCn+NJtWYAEftqEpi4O8RXQ3+J6az7eilwWQQO1h+voV+3fyZuciof7rSslaYI
 XAKaGs9MpFogvy3pR6GUNgv86yFTP5meAUwZgdlL6tlM5F9cVOmhJRgEEaqVt/l9oi5Z
 ueThevfRLxBay/gQvN4xmIk0DA3aHO4+BBlzG2YTNmj2gM5nOPFC1rCdmKNOJjcO506X
 SVDw==
X-Gm-Message-State: AOAM5333irUcNgc2jysM2m0B3HyOWUYUkkZOM42K8AivfRhELxCu/Tfw
 +n1hR98Itwi4ODslEEU8EPLQU8UUbR3O2g==
X-Google-Smtp-Source: ABdhPJwG1zJx5wH+XeMDJtsNFO3STcnWznW7y8rXJM99czwBmxOPMDnMhcAh29boi+s5zfthHK7w7w==
X-Received: by 2002:a05:6512:3291:: with SMTP id
 p17mr13977377lfe.41.1590407600025; 
 Mon, 25 May 2020 04:53:20 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id r7sm4827895lfc.79.2020.05.25.04.53.19
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 04:53:19 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id v16so20474910ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:53:19 -0700 (PDT)
X-Received: by 2002:adf:e543:: with SMTP id z3mr14316481wrm.385.1590407120295; 
 Mon, 25 May 2020 04:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
In-Reply-To: <1590139561.8804.390.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 25 May 2020 13:45:07 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
Message-ID: <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_045321_984772_4964546B 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> Thanks for the review. My replies are as below.
>
> On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > Hi Dongchun, Sakari,
> >
> > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
[snip]
> > > +   pm_runtime_enable(dev);
> > > +   if (!pm_runtime_enabled(dev)) {
> > > +           ret = dw9768_runtime_resume(dev);
> > > +           if (ret < 0) {
> > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > +                   goto entity_cleanup;
> > > +           }
> > > +   }
> > > +
> > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > +   if (ret < 0)
> > > +           goto entity_cleanup;
> > > +
> > > +   return 0;
> > > +
> > > +entity_cleanup:
> >
> > Need to power off if the code above powered on.
> >
>
> Thanks for the reminder.
> If there is something wrong with runtime PM, actuator is to be powered
> on via dw9768_runtime_resume() API.
> When actuator sub-device is powered on completely and async registered
> successfully, we shall power off it afterwards.
>

The code above calls dw9768_runtime_resume() if
!pm_runtime_enabled(dev), but the clean-up code below the
entity_cleanup label doesn't have the corresponding
dw9768_runtime_suspend() call.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
