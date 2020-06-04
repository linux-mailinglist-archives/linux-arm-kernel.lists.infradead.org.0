Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7603E1EDFD7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLxta6fh04//PkNqJD8u0va/yRRgIJjU29Vwpa4rkOY=; b=pkfKkh1+a+1e4D
	nua63kTTOWAc5xxDsDcfALWw/rQgUVaejHXzic4lfGx++COyA9q67A4pdA18Esq59Er+D8O5oRwNz
	xh4w8ifAi5qwinJWv1OJ+GPU4arJlqP8BYkQW+Pghka/FZ6NIke/H8BkMcSGXsLt1e/y8AUSnTRNR
	ef03BeKQZsGQqMkKOkOyZA07ql06ac8RA3rQpqWoKZgj3ExcGrV3a/AZMaw10T3WBDMiK+0PghQ8k
	/MsVYsY3KLks65KuVE3+Ght/M8h4wIFJ8bLL82Q3BCcuJwCx8Tt0RsVu3jKnW+VGaAamNOIgJsHES
	HHa3SFvPxFT0O13nQeew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglIy-0001Nx-Sq; Thu, 04 Jun 2020 08:32:52 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglIq-0001Me-2X
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 08:32:46 +0000
Received: by mail-ej1-x641.google.com with SMTP id z5so5149910ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 01:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1AuRE0AuSz1Dcafc63dQERov0niyM7+8vmaBb8F6Fzc=;
 b=fGkqeUca0o35s+UryeUeoBdAohiaNg3kfMd+bxQWJyNHWhpzLy1Cr1ZcAjKHF8+WnL
 QA+DS5hlfW9VNepBJ+oGxqr+ac8FDcs1OIPBlQl52vV/mW34uykJiE5ZJT3mW7lhSYZL
 N4vom68WUkZGhqUpfeFd2DUOEWyFbBMFDByyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1AuRE0AuSz1Dcafc63dQERov0niyM7+8vmaBb8F6Fzc=;
 b=LyjUwO6EKrCpdfF+BGvLsP1CRnIw5H+42+2HapiQ0sizec5H0MDQDHF4tiWfpOanv0
 BAQQJn+Zt3NoImHBNC5Pdqg/zD+V/oj+GK9RJEY2djY0sicie7BFu8LyEyBJGfhSIU+O
 3N82RopuKsYJkBVq5koiXz6qgIbUGIYh7eXY2MOw2JzHq7pMVXpIW+knJWttDp8/UNu6
 aeUAyK1NEokgUqWYniTDsuuuEGauv2D7Fni0bWFoHsdWoMeRYWQt6BGWYeA/mkM8qXGF
 ptylWeFIZprzl0G+Y45D6wwPhjyJ2TRVYd54dD7SWtwY++SDpYygKVDbuYWMkEA2yeAj
 BFbw==
X-Gm-Message-State: AOAM530wjt79cqfzwYKvBO4LboebAX8Tb5rcY4KrJOkUIungODEyEHxk
 2lGyElcty/VVJl+OK/vn1vYpX0leUZBONHgWcQs=
X-Google-Smtp-Source: ABdhPJy5ctc5383qKNluaPDwm98VmrQIOXT9qbgA+PmD3daSJjnvtPCKWdZ3etbzj/j/2E6sMLG804CjxluMDKg+46Q=
X-Received: by 2002:a17:906:3603:: with SMTP id
 q3mr2981318ejb.477.1591259554440; 
 Thu, 04 Jun 2020 01:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200527200820.47359-1-tali.perry1@gmail.com>
 <20200603202553.GB7684@kunai>
In-Reply-To: <20200603202553.GB7684@kunai>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 4 Jun 2020 08:32:22 +0000
Message-ID: <CACPK8Xe=66y+MkfogP4Gh6A9X7UDhOyAdUDwp=iqe7zitdxA8g@mail.gmail.com>
Subject: Re: [PATCH v14 0/3] i2c: npcm7xx: add NPCM i2c controller driver
To: Wolfram Sang <wsa@the-dreams.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_013244_129611_ABB8462D 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, Tomer Maimon <tmaimon77@gmail.com>,
 kfting@nuvoton.com, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>, ofery@google.com,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 andriy.shevchenko@linux.intel.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 3 Jun 2020 at 20:26, Wolfram Sang <wsa@the-dreams.de> wrote:
>
> On Wed, May 27, 2020 at 11:08:17PM +0300, Tali Perry wrote:
> > This patch set adds i2c controller support
> > for the Nuvoton NPCM Baseboard Management Controller (BMC).
> >
> > NPCM7xx includes 16 I2C controllers. This driver operates the controller.
> > This module also includes a slave mode.
> >
> > ---
> > v14 -> v13:
> >       - Fix yaml example: add missing include.
> >       - Replace all udelay to usleep_range, except one which is called from
> >         irq.
> >       - Fix compilation error (module_platfrom_init conflict).
> >       - debugfs counters always updated. Counting till max value,
> >         then stop counting.
> >       - Rename bus-frequency to clock-frequency.
> >       - Remove unused variables.
>
> I don't have time for a deeper review, but from what I can tell this
> driver is good to go and we can fix things incrementally from now on.
>
> Applied to for-next (will go into 5.8), thanks!

Thanks Wolfram. I encourage this approach to working with patches, and
especially for our vendors who are trying to do the correct thing in
mainlining their code.

Congrats Tali on getting the driver in the tree. This has a been a long journey!

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
