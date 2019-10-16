Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BADA6D8FC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwS1IQkTrUg7TFdomGcCykKNPECXuNNhU88378dQwfI=; b=iv1RjOG7cbkR4F
	Dun05AuuXwaY2Un8KrUS2tboXCmgZu8YcYJ8b0K2uazojsojEZcVQ0DX1UwA4sQS3Be6Yo/Hd3wCG
	soycauydHM7nGw9aoKix7mh7fw1GuK2OjMGtw0n8oe9tnCC0NB9eidxL4y4dDRtymw4TCj9kH5Dol
	eDwihys2ECRjEBha4JyPFJ1t0TXeZ9HxCfVzKtiJ9YSqvTOg1CTVdOloob893i9MZUif1nYu07hrL
	Vf1o+8ONf15/e4E/tGjeDLG67k9whGJj+l+hSsmTM9npKxBZyBZGkDibVbnPI82N1JQaToY+qS4Ou
	Doj5oD93R/PYZgjx5AoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhhU-0003gb-9R; Wed, 16 Oct 2019 11:42:44 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhhJ-0003fF-DO
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:42:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1687B5D35;
 Wed, 16 Oct 2019 07:42:28 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 16 Oct 2019 07:42:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=IgrN1QKfS6jYUgyH1QxRGDIheSI8XFj
 +2abRpMvasdw=; b=n4kC1/vi1d8rnCHxmhQauRQQ1pH3HhRA/ID8ocwRJrfEoWe
 /52vmluZn3rs/O3sQ9b5HA047NyHraXZ8RPVnjZ7oTKixOzWhbJ223j3B084VqdK
 FF6ltTKDUzG26P99xfWI97MCZ544V0Y5L2x0tTZG+a8vJ0adqymt3VIrbWu+e0Ki
 PRglS8PodtSfcExFjscpaQuHphc4kyA+l71/mhwXfT4ZI6jAiZs2XQ2lsHlJQ8XM
 IWaZQy0OQ87b340/5jJ6u+vDucLg2K5bWsst5O4Jnv0d3myLATb7xFp/ovJj6ycF
 Y6bJBjZ94tH49WppyALypYIaD5kQxjToEEIR4uQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=IgrN1Q
 KfS6jYUgyH1QxRGDIheSI8XFj+2abRpMvasdw=; b=SzVPxq8Fe+GFeXRBcIhspR
 5RYTxwQE2o4PMPiX2x/CDQ4P+9PpQIOAwRSws2P0BHJnIv6inJ7oZvkJu5t6Sq9E
 jQ+2eUvnvqWCF39AigC1NDKmJ8QXDKDc0ATnb2/6MyATNp7/8wTMld8F0EJe3HUh
 JJuGU2rYbgktRU6DZ4/B4MsybPLotJey5OyBPeHQnpCMTjoFiLDLSvdrMY9zqGIX
 Oxcl2MuKJxwgufAR9buBMPGuRe15JhIN7v7LDtZMO/Weug+p1GgIXdRGnkBj6Dk3
 TZNOaoXAT6pjNv5nOAqPL1HKvQAjptfWqA1jk4RSKUReImW2Xbxpk+ScVTcBqqUQ
 ==
X-ME-Sender: <xms:IgKnXUq-5tRRndAZ4oQfh-Q13sXsUyhXpR2O-M1-dNfMwaC7hSALkw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrjeehgdeggecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:IgKnXduC4r3j3pBJ0RmQR5TMT2_JENIQI68cpOCbnM0imIM7hXBKwQ>
 <xmx:IgKnXT1RBENUMFhsx1LMXlZjsd84ggTkoXnOxtzNBGXgEnE_FjdwBw>
 <xmx:IgKnXYHcEQ1W8coqkkFmFcRvPE4aZg4lYaUBiDePQ7R7hiDkulduuw>
 <xmx:JAKnXQsrR0GXkVK_YQ34ki0MxyXIdJ0BqI13Zc7vjk29T8_M2zqWAQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 05F06E00A5; Wed, 16 Oct 2019 07:42:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-360-g7dda896-fmstable-20191004v2
Mime-Version: 1.0
Message-Id: <2de90789-c374-4821-89f9-5d5f01e7d2d6@www.fastmail.com>
In-Reply-To: <CACRpkda5cWaA7R3XzyiERCCgwUrjnXd+wCBeKvt-wtjex7wNDg@mail.gmail.com>
References: <20191008044153.12734-1-andrew@aj.id.au>
 <CACRpkda5cWaA7R3XzyiERCCgwUrjnXd+wCBeKvt-wtjex7wNDg@mail.gmail.com>
Date: Wed, 16 Oct 2019 22:11:48 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/7] pinctrl: Fixes for AST2600 support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_044233_590778_F401A48F 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Johnny Huang <johnny_huang@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 16 Oct 2019, at 21:49, Linus Walleij wrote:
> On Tue, Oct 8, 2019 at 6:41 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > This series resolves several issues found in testing by Johnny Huang from
> > ASPEED, who also contributed the patches to fix them. We'll have more patches
> > from him in the near future (which I'm pretty happy about).
> >
> > The major issue resolved is the way I grouped the eMMC pins. What I had was
> > ugly and I want to get rid of it before the binding is solidified with the 5.4
> > release.
> 
> Should some of these go in with fixes? All of them? Or just some?
> I applied them to devel right now (for v5.5).

I was hoping to get them into the 5.4 fixes branch: I consider them all fixes - the rework of the eMMC pin groups and functions is a fix for the binding. The rest are fixes for the driver itself. My preference is that they get into a release sooner rather than later.

It's there something that makes you think they shouldn't be merged as fixes for 5.4?

> 
> > The remaining fixes are minor issues that stem from lack of documentation or
> > understanding on my part, and at least one brain-fart.
> 
> Do they need to go in to v5.4 or not?
> 
> I need a shortlist of anything that should go into v5.4 if anything.

IMO all of them should go into 5.4, as above. It's there something I can do in the future to communicate this better? Explicit shortlist in the cover letter? Fixes tags on the relevant patches? Keen to make things easier/more obvious if I can.

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
