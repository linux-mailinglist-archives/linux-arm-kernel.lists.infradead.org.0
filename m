Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F40B8E5F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFFXidAAt+kx1ovzEkeS3O9eEa6jtzA3xwvBdoit2Pw=; b=A+PzALIFUf0loH
	TqS/FvTs980+AueO05rkp1NINWIIMDCfYObmiGtyAZowsSSfQR4XJd2KbAPGYr7zGQWB72S5ptr+3
	BrFtVVLrts7uAaUF258vzBC7/XWvvGTwO53UndApjZ91fli0Vj1i62MkR3Hq24y50dHrZWnNOVt1k
	QJk1A4YHnM2x4A42vGKXAY3X/d5Bwuu8DDW8KjB+bLp+LbP8vlWpU0UVA2Qd8Qih0sMO2/C2Bk0js
	kDhk4OWDg+c7sEcpevlyyJYZnna3C8waNU6EqzU9NzGIBLPGdoz4r2VdA0d0DnvYT792r+C8eFwDB
	sfviEve4epFKB/U6dGCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyAqo-0007Nd-K5; Thu, 15 Aug 2019 08:11:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyAqa-0007ND-VT
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:11:02 +0000
Received: by mail-lj1-x241.google.com with SMTP id x4so1517109ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ebZA4/36rTxk/8zZnnGDTrAggtxlqN1B3xHCFNWBeg=;
 b=Lhpl/4CEOGdOAaUNVwfrFhEAvqDwbWuwmeCdhVlfhEZ4/EggH2nWpO8VyBdh8S3QLQ
 OXSjlscVTA0qX+4UtPYPdHZjLezQc1CMoaTTVEu/eEyI/1PY5ti4rNjbAsJDxz0U6m7Y
 rjkKnJ6lf4g2Q3tSWZxq3+ho22XDefURjkSV/EoglAd+kIXMVbqLGLj5VifjQ7udmyD/
 3lGQdWxU4oagagD4Sia2hN4cadPANHBfSlqe61KnNKLr97BDHpR9kBE1zDPYM2593NWe
 9/gq0LzoU/SBXdrT+TCXSCGU756D2pyjwdjOPkwqWBlcqHAAOQK1KCn8eunhI1124UQJ
 XUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ebZA4/36rTxk/8zZnnGDTrAggtxlqN1B3xHCFNWBeg=;
 b=Yl255wX4j60S3FY5qbzj36IcaQ5g2yUu+kCisNqpArEleXr6pre1uWO+E8cbfKRzaR
 PxvgK6XIba8SQGDIUimbq40r+CzJx6Lyf+rNOwUihViHjc6kI6EyAf9mAkq27jFZm1xh
 KngZGuLXBF8ROceWnI8vhFhdLbDPoQQbTy5sTiZYnlxhOB2p2BqPCSioJGtYTd01rUQO
 wbGExPcVvDQZbiFpF+ewFDgMXV79R25UVuMajSlLTuwiK1d315T3IU+vmsqA6inf3yLe
 tY4nhM7UXxs8eFyEkdimhK1ltbCnBLdt+f+28g+ewX7OLFaoBcGwASH3MhPQtshtgIce
 UNJQ==
X-Gm-Message-State: APjAAAXdReWWbCXilb33MQet/YMGYuJz6uOo6Blrn70gk9ZTD6YqS7vj
 WG3k9hm+EODy3ihiD6aiD5+Ut50va5YqTKk+AcI9dA==
X-Google-Smtp-Source: APXvYqw6nViHWAm98n06wtqmOkZygSxdicck4ta/i4U+OsaEfdC8l5tbW8rAx23zMzUJLlAWup0/GRhMtmPLdCvoD50=
X-Received: by 2002:a2e:9f0f:: with SMTP id u15mr2017156ljk.54.1565856658315; 
 Thu, 15 Aug 2019 01:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
 <20190814143457.664b04c8@windsurf.home>
In-Reply-To: <20190814143457.664b04c8@windsurf.home>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:10:46 +0200
Message-ID: <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_011101_044720_F82DBB50 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 2:35 PM Thomas Petazzoni
<thomas.petazzoni@bootlin.com> wrote:
> On Wed, 14 Aug 2019 10:12:36 +0200
> Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > On Wed, Aug 7, 2019 at 2:47 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > > On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> > >
> > > > This is the second batch of changes (out of three) to support the brand
> > > > new Marvell CN9130 SoCs which are made of one AP807 and one CP115.
> > > >
> > > > We add a new compatible (and the relevant support in the pinctrl
> > > > driver) before the addition in batch 3/3 of CN9130 SoCs DT using it.
> > >
> > > Waiting for review from the Mvebu maintainers.
> > >
> > > If it takes too long just nudge me, it looks good to me.
> >
> > So if the other MVEBU maintainers don't really look much at MVEBU
> > patches anymore while Miquel is working a lot on the platform,
> > what about listing Miquel as maintainer under the SoC entry, hm?
>
> Miquel sent his series on August 5, i.e 9 days ago. We're in August, in
> the middle of the summer vacations for many people. While it is nice to
> see subsystem maintainers who want to get code merged in a timely
> fashion, I think it is probably wise to give it some more time for
> review in this period of the year.

OK then maybe I am a bit impatient.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
