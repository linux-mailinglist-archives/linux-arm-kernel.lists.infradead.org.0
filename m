Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AE019DA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LNZDRhFBo1Bvp06E13g/U2KFuRiuE4wYe8hT0WkNeY=; b=Yq2nnfN5a9rBXu
	QL0vj11vE7Q9RQpC2mZr3elSPxx3wamRJt+Z6uL1M2wYkQBK27IngWmkG5jxioyTSk/1Y7KGLNDyo
	1XC+aiPY51wApQTlQmDJReqsUjg3ydQ4p+CE2MVcIMlW1M5my2jIAGly/NU3173N2BOsubel79i1U
	CvFUis07Ylp4L+F19sN2ONoIceNieqH4gcI7Fnb4mAcTi0vwDLLDZT9Tgvbk3QtSOEbovqS0t0ToG
	yUuVDQ8xZMsPFj42LrNKwgw+w8UqnTlnPMldogXW50Mq+zRbFQNtRU6Wighp/Yy22UgZ7WMeXpKoE
	XoGpI9qddxy1uzlh15ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP58L-0006Qu-QK; Fri, 10 May 2019 13:00:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP58F-0006QW-DP
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:00:12 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F64F217F4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 13:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557493210;
 bh=LsB4wRG7wXandWAwzv751zSzegIOxKf8DCwVeYS+wZo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o9UoB1IQfAzm/77bKAUyUve7ebdMFEiCfoaRDB5FHwVX7SeHyD7LSFzlA2KwZPWN8
 iQFgN9YsNWzEFcPkXXzZbK2oJpreht+OsFKhsMvDW7DVQPHSBQQ/v6OQh2pEX0OCRU
 2HvTRdsJGJhBBncqT4FYXfSlYOHki8wNlUSfmJJA=
Received: by mail-qk1-f169.google.com with SMTP id j1so3543227qkk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 06:00:10 -0700 (PDT)
X-Gm-Message-State: APjAAAUeP5t6M/LgdcdpGWAGlAykiMsZ+SNsnOr0DEfFEUyiaExs9Vmx
 DvxI0waCHc07Q2H8naBQ+gyJWGKnbbtF7XUlrQ==
X-Google-Smtp-Source: APXvYqyJFUpcXFgSc64L63+Yfqmy5T2ssN8dGlZHA7sVG67a1VSyOBVNxl+4OXjQWFgv+hoyeCHBDol+AkCsOX/sC/w=
X-Received: by 2002:a05:620a:1107:: with SMTP id
 o7mr1133260qkk.184.1557493209611; 
 Fri, 10 May 2019 06:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <68d3fb999d16e49696e832e1d1a6bcd7b76a6e8d.1557389988.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqJi0iwM61anziC-cHXp0PL2AEtXiWFCLn943vTxK5eeig@mail.gmail.com>
 <20190510105759.z2ob5tl4ovn2ctdo@flea>
In-Reply-To: <20190510105759.z2ob5tl4ovn2ctdo@flea>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 10 May 2019 07:59:56 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL+R3nWZi8u7_QRuGj=k7M2qB+NkM982OZfw0=n3+uLWA@mail.gmail.com>
Message-ID: <CAL_JsqL+R3nWZi8u7_QRuGj=k7M2qB+NkM982OZfw0=n3+uLWA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: Add YAML schemas for the generic
 MMC options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060011_469574_C0A67197 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 5:58 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Thu, May 09, 2019 at 11:45:26AM -0500, Rob Herring wrote:
> > > +dependencies:
> > > +  cd-inverted: [ cd-gpios ]
> >
> > The note (which you dropped) says 'cd-inverted' applies for built-in CD too.
> >
> > At least that is what I take "Polarity of dedicated pins can be
> > specified, using *-inverted properties." to mean.
>
> Indeed, my bad. i guess we should probably keep that note. How are we
> supposed to keep a note that would apply to multiple properties? In
> the global description?

You could do a comment next to both properties or add it to the
description on one and refer to it from the other property (and group
the 2 properties together).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
