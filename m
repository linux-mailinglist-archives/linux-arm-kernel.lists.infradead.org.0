Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CA58D337
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32BtZIrhzE2KWRII6pghkDuxm3rhK9liV6gMrHeD0mM=; b=dvWnHvDAk72ScA
	GmWfcJyJCyW8rGW7cKFyd59Ycbp3R4Id6QkUMPsjXGwE5yl6s7ANJVmM5f5LO35yuN1BjJ6GeUXzm
	TsOn2Qoc/FHrU0Oglk8OcEOMmYOPyM4M7RWOEeqHrKp+QCwj7bGyyJs97GVZsuqI9WpjCCwVop809
	s0n6n980+d80cgABTG3OoqZDNFkFRk1VFaKiG7bSE1Qc15eh/33iIohE01zQxDMHE9uixcoi9uK87
	l6dQma43e8XGWMdn3xkvNdBcwpk4TL2TY3/4vGgtMr0JmxVhMS1mFpYqc8FDTZLQRv1cV8z3DQG0M
	DxZULx7cNY9TtzjuYkFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsUy-0001IU-5V; Wed, 14 Aug 2019 12:35:28 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsUh-00010r-0h
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:35:12 +0000
X-Originating-IP: 90.30.228.116
Received: from windsurf.home (atoulouse-659-1-185-116.w90-30.abo.wanadoo.fr
 [90.30.228.116]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4B3DC240005;
 Wed, 14 Aug 2019 12:34:58 +0000 (UTC)
Date: Wed, 14 Aug 2019 14:34:57 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
Message-ID: <20190814143457.664b04c8@windsurf.home>
In-Reply-To: <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_053511_206063_95D47D01 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus,

On Wed, 14 Aug 2019 10:12:36 +0200
Linus Walleij <linus.walleij@linaro.org> wrote:

> On Wed, Aug 7, 2019 at 2:47 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >  
> > > This is the second batch of changes (out of three) to support the brand
> > > new Marvell CN9130 SoCs which are made of one AP807 and one CP115.
> > >
> > > We add a new compatible (and the relevant support in the pinctrl
> > > driver) before the addition in batch 3/3 of CN9130 SoCs DT using it.  
> >
> > Waiting for review from the Mvebu maintainers.
> >
> > If it takes too long just nudge me, it looks good to me.  
> 
> So if the other MVEBU maintainers don't really look much at MVEBU
> patches anymore while Miquel is working a lot on the platform,
> what about listing Miquel as maintainer under the SoC entry, hm?

Miquel sent his series on August 5, i.e 9 days ago. We're in August, in
the middle of the summer vacations for many people. While it is nice to
see subsystem maintainers who want to get code merged in a timely
fashion, I think it is probably wise to give it some more time for
review in this period of the year.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
