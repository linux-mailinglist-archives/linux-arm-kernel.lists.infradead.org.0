Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4277D502
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 07:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ybbcix2j3h3BQSkqjxHwe3vlaqK1mqg/8fJ7swRzxEs=; b=lS+NBvqP73umfg
	sstqUEQE4vJVl5wex3ig0bYP8k0fkMje4HVTw/7IEedMbw8rlmAkZngSWQevX0+0WAorqeQqY5Vt9
	tTwCuPMx7KFwvaqhPdlw/n16mwNpYv6iI3Wx2DzCKYmzzmTI4gDeqSoJlbi4o+hgjF0J3xoIEx4q/
	+udM/EEsZzVRcSPvjdtY+BHk050JANjvDd7/uGawbgmjv7vV0dFapLkkZHr05z09zGQGkKjsAQjAC
	NqYk2BJvzEwXtDZBXUJjdOxbKMu0Zyoquu5mimI5dKdovaFQ9F+2wWyv+Ox88eVbSJ0jiXgPVO+G4
	zIaD6d0hYZXwavyUe7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht3u7-0006tt-Oo; Thu, 01 Aug 2019 05:45:31 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht3u0-0006tP-Sm
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 05:45:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A69C0207E1;
 Thu,  1 Aug 2019 01:45:23 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 01 Aug 2019 01:45:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=ikk9XWI/PaloHpfzYfJtJOTFwmWnC+0
 JCdYs26D7ubs=; b=c3dr1lWkMo5FSBT8lrLsCneT0ER9KaOWAen1lPJ/wlWkYD+
 F3Kmfml5a07j1yCb4s8Viy1CUWnpejg8CDu0KA5iTw0nSF3qC7NQqTV657E5hVap
 pSQR1Pf8Wgou7XoLYuZ4qudaorYvMy2xrptaEvXmVTht1kW1w+Mlojv60ywB12bb
 fG3Ty3Chl/dMWLtjwoB60usxxKlck9JuHYL/HAknm5ol2jNCRQ5QTYFofGMDSADH
 Ac94iEGVdzLwoG2YqlB6AaaGfl2OrzOspnvLtYBwBnn6hLF/M4ka+HvB4iDZ747J
 zM/CB4CEMMtecKqqIkfgoBojRQWHoJpIvIbgVzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ikk9XW
 I/PaloHpfzYfJtJOTFwmWnC+0JCdYs26D7ubs=; b=JsKzzgmpM0pAwDfOFWmIwy
 e/gkpP11y8xh4J5E+5Un3MJJvj6+kBcaPZP6NDENM20ed/dJYPGZFeLMRjC9jV9X
 Dqrzgn1S25oXgX+lx3hf9cO9axVEH4ivwRWfGifTyqdwomgpZaCAnnG4eYzh6scC
 WIpjXLemDL50BI5V42NeIsfdrFSHHHPKA0FMw9/q9JMWSnVRRIJDTq/vTUWsrFkc
 YV0dqm+NLi3r7DQRmDFYyBAl9XobaJM7ZdBMhEBMGsy7REetXwiVStDKkEooTKHq
 ChEcckQ+d2OGXGZEJoz//Q4vQqVL5ncl0+2LNP122XoQgPiLUHWgzSIMRn873jkw
 ==
X-ME-Sender: <xms:cnxCXZVcGZ-455p_bs-LgSCuUcxEUsQjAFwH5XFLyD8cPPPD-UFwCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeigdeliecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:cnxCXVQZ-SI3cyKIbEqkpWS00qvrgEQGxGZ91gMOKDy0EMzP2EVh8Q>
 <xmx:cnxCXQGaiX7f4V_3p0_o7VOwBTVPNBIzU41xNJjUBySxz-berHYqVQ>
 <xmx:cnxCXdS_CSb-UN8ZrY2Xcmzsmy8hJzu_ASfyRT9L9fSYSMOPNs8M3A>
 <xmx:c3xCXYeXDra6wsCCxx5QzKiSgLq2LCV_21ukNLHu4uHAyrtgDo0zLA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 67318E00A1; Thu,  1 Aug 2019 01:45:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <3691f6cb-2451-43f7-9f00-d5693071ba59@www.fastmail.com>
In-Reply-To: <9d0f2b20-e6f6-419c-a866-c4a0dd92aa63@www.fastmail.com>
References: <20190724081313.12934-1-andrew@aj.id.au>
 <CACRpkdapypySGPrLgSMSNy1fzkca2BfMUGzf3koFWQZ-M5VOvg@mail.gmail.com>
 <9d0f2b20-e6f6-419c-a866-c4a0dd92aa63@www.fastmail.com>
Date: Thu, 01 Aug 2019 15:15:42 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/3] ARM: dts: aspeed: Deprecate g[45]-style compatibles
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_224525_215309_A34A7B6A 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 30 Jul 2019, at 10:27, Andrew Jeffery wrote:
> 
> 
> On Tue, 30 Jul 2019, at 07:23, Linus Walleij wrote:
> > On Wed, Jul 24, 2019 at 10:13 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > 
> > > It's probably best if we push the three patches all through one tree rather
> > > than fragmenting. Is everyone happy if Joel applies them to the aspeed tree?
> > 
> > If you are sure it will not collide with parallell work in the
> > pinctrl tree, yes.
> > Acked-by: Linus Walleij <linus.walleij@linaro.org>
> > 
> > (If it does collide I'd prefer to take the pinctrl patches and fix the
> > conflicts in my tree.)
> 
> Fair enough, I don't know the answer so I'll poke around. I don't 
> really mind
> where the series goes in, I just want to avoid landing only part of it 
> if I split it up.

Okay, it currently conflicts with my cleanup-devicetree-warnings series.

Joel, do you mind if Linus takes this series through the pinctrl tree, given
the fix to the devicetrees is patch 1/3?

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
