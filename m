Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD292206F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0RUxZAtNm0AKKSlN2CcJoWkFqQAX4VasJf2cj2TAPzs=; b=GwXe/afX9JLLIT1nHVsXC9YMb
	p8jkeB+f0sEdBH2e2ryV/YUfIWADVZe3JIZAKY4xNBUdm19f9YQlAYXmhMNk4bZTL4qMdbPccn3aO
	I7ScJzIQWBDohYUgyrQzjFrmtEML38a1+fsaWxG/hzAkxcCCrKgbRqRkuMCbeXW8kfHAbsSy+iFrZ
	5GXx9WDZf7eBDKr9HBu1lLar+n3+MuDPgYvXfbrVHmvGBSHHtzd4ZbXBa+CNAGvR/VMC9BULtyP+J
	QcvTSjHWX7gbYJyQUmxFCb9Ytx4lbezBrZZUieEr4rrTHNuHg4lbWTOTVziu1tjeCWS+pN76RGcUF
	qfglNo5bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRlgY-0003bX-Pi; Fri, 17 May 2019 22:50:42 +0000
Received: from office2.cesnet.cz ([195.113.144.244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRlgQ-0003b8-Uy
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 22:50:36 +0000
Received: from localhost (ip-78-45-153-145.net.upcbroadband.cz [78.45.153.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id 1C082400063;
 Sat, 18 May 2019 00:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1558133430;
 bh=XSxeIl+O0LhyW2gxDl9u8RcFKQLP6CPjnaBEaduhKAA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=G9r21yAopbveQa2uv7ErVG+kleKvuPiFDRLBvOfxE/BMrYXHW0Yh6QT0DYTHtezNW
 PSafJ4OdXA95k5sdI3PZgoF+1Ds1SNgYT/YVnoxlQF9tyRubZpaoB4jpv7LXjMxFgQ
 ApJmRvhj3MM1FC6SIe174ONHec4W1fUsBRR0/4hg=
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM:
 =?iso-8859-1?Q?mvebu=5Fv7=5Fdefconfig:_fix_Ethernet_on_Clearfog?=
Date: Sat, 18 May 2019 00:50:28 +0200
MIME-Version: 1.0
Message-ID: <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
In-Reply-To: <87mujkzwkr.fsf@FE-laptop>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop>
Organization: CESNET
User-Agent: Trojita/v0.7-390-g3d4b67ec-dirty; Qt/5.13.0; xcb; Linux;
 Gentoo Base System release 2.4.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_155035_312631_AB5C3DA3 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.144.244 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 MIME_QP_LONG_LINE      RAW: Quoted-printable line longer than 76
 chars
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Well, this is just about configuration, I don't consider this is
> something that is a candidate for a fix.
>
> If there is a regression, then, it is maybe located in the Kconfig
> dependency.
>
> Of course I can change my mind with good arguments :)

Hi Gregory,
I agree that it's just a config bug, but it's also something which can 
silently produce broken systems. If this is not fixed, people building 
their 5.2 kernels will not have working network on Clearfog unless they 
take an extra action. For example, a Buildroot defconfig that's been 
available for quite some time (and which uses just `mvebu_v7_defconfig` for 
kernel) suddenly becomes broken.

Isn't the whole point of the -rc release to find *and* fix bugs early? This 
trivial patch does not introduce any new or untested code. I made a choice 
to test a pre-release kernel, I hit a bug -- no big deal. I found the root 
cause, I sent a trivial fix upstream, and now I'm told by a maintainer that 
they will let the next kernel version, which is about seven -rc releases 
away, be released without a fully functioning network, I am surprised by 
that. I would have understood this better if we were at the final -rc 
stage, but during the merge window? Or is that perhaps a misunderstanding 
and you're planning to send this in time after -rc1?

Cheers,
Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
