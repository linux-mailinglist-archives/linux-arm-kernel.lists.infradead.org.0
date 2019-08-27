Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009B19EADD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 16:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0KTQv7DOzIOHNqFKNUojCVCov7+6GhN9/WtnDydink=; b=EICQErmUrWSvb+
	0l8jkn5uLuUWjAULIE42yMamtiTcBnLfcuqMsl83UOkaFVbvQMGCOKx2XrHjH9JvMliy89z4ucpTa
	EG4BSQIj1yvwjFYUenF3Zv+50CCzB0AOGxAz2TWjRZay1ecvNI1mzAyTK1vjJrn0aiK6UlS6wIZe+
	OmkbbAIcqn220FZblWjypkW9EFYig378pDoyckey34Zznc4KTy9ujEirASatCaAeYj24189FYDmXx
	7nGkTv749eY/9YkGyLso2XxziuzhEw1q29penN42Ea5HAyBf3juouBmSgtXy53831wimy7m1oJOY1
	clDiFZxeGK84AV+ScCfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cPY-0004zJ-5C; Tue, 27 Aug 2019 14:25:28 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cPF-0004QR-JY
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 14:25:11 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 899236000A;
 Tue, 27 Aug 2019 14:24:57 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
In-Reply-To: <CACRpkdZ+zSCSc9Q40=_+K0kfZ4evuOTAShVYWYvuSeOfgkxZng@mail.gmail.com>
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
 <CACRpkdbEw5eCKb=nTCK4wuMsPEadEQdGx62cGRhk7F78p5X2CA@mail.gmail.com>
 <20190814143457.664b04c8@windsurf.home>
 <CACRpkdY-AtaS67u4s58PifFtP5C7xp4P15J+hW_Dba=Gb4rhSQ@mail.gmail.com>
 <20190824133317.371dec4f@xps13>
 <CACRpkdZ+zSCSc9Q40=_+K0kfZ4evuOTAShVYWYvuSeOfgkxZng@mail.gmail.com>
Date: Tue, 27 Aug 2019 16:24:57 +0200
Message-ID: <87imqiznwm.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_072509_853445_34C7BFB3 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

> On Sat, Aug 24, 2019 at 1:33 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>> Linus Walleij <linus.walleij@linaro.org> wrote on Thu, 15 Aug 2019
>
>> > OK then maybe I am a bit impatient.
>>
>> Actually Gregory is on vacation until September, so if we still are in
>> time for this merge window I suppose you can take it.
>
> OK I applied the patches.
>
> If someone is upset we can always revert them in the -rc phase.

I had a look on the series and it looks good for me.

Gregory

>
> Yours,
> Linus Walleij

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
