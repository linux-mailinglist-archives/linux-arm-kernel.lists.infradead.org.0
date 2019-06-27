Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B24157B37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+OD/2mkRYUp8DMQBtPTEWN+BCvJuWA8fulF/Khk7wk=; b=qaHrZMmiuDLxa2
	QwfhjPcS7xceUADC7fNrToin7n77GA8XZwMFnLF3HE1ALDc2MJ0Q2f+D4lfKeghI6Z0Ar55XVZ1JR
	e6ZAU8mKVcCI3MMeW5MEtlm1LTtjykGYtDkuCNQXtrGcUhHmFP3LVa6YiBF85ZSiobEnsRj87dL3U
	VO0tTGtpOG3AR4aQ20flw8fEYfw8TWxSwCPoV2zHaID65iJIIueKwEt9Ib+rHVu6xwGLvXg+135RJ
	e1dhIReJ1oiElUfXE4yCgbP0cTarPVFd80RDj7UmWAK5hnHbhjwDN1zNJx0tXTmUZvfUkA4nWPdfK
	c5rB+0m6ewalrPbcwwIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMpY-0007km-Ti; Thu, 27 Jun 2019 05:20:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMoY-0006Q2-E5
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Subject:Cc:To:From:Date:
 References:In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fmp+BOEupySBVtpjzqC63zvPuK56eVvu2js37xVpihI=; b=fme4mIKjMU0Z3mt23lqfwPsoK
 zHo5f/4Q1bR1xEXwJ4ooWEMl2ZkZ13v+xB9WTcDp/TDOnd4r9xlhFfgMuEAxjWVq7szhxe9DaOo+D
 snnQwrZARzXJlfFnhxrCjBkUXHxZOod8uHxTgz7ENGgNYDNANOTCI+UFxjThjTfpetMs6kxy6m6Zr
 PvnPXPUwE/QoL1JT1RADDyIU9HqpEpyfsrFf3hzAfkIMRVxsSQU2YUWRyRtseo+6X42XXekNUmi+Q
 pIMcm5d/aPG6O6kZ+AfgkLaFdkDqt6gDMRmGj9GVfD77SGVIMZ1aY0Qg77U/BsZgv8TGUTJJGIzW0
 NM2Gbf2dw==;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLct-0001jy-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 04:03:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 31EC820D8;
 Thu, 27 Jun 2019 00:02:35 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 00:02:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=Fmp+BOEupySBVtpjzqC63zvPuK56eVv
 u2js37xVpihI=; b=QApLQdYFEOTDAyKcDh23hCvGX/5Na3gs77ir4y1XL43mS/1
 v121RibpU2D+/HDmQ8xskmCg8pOhpCempJAM7pJ74gHx6pjzXJ8qk49xo1IWpXu1
 vH6T6US7ifm0ybajLI9YBalSqPqBHBQ/bRDptkSRqoagxKnl5+i2D558ewtcKzV6
 S0MVi7u7op7bF7romF9qoMv4btmGYuiLyAUAfA8jmvnyQk1Za1KIxhMXfzc9yIUB
 INGTiGkcqJV9GcZPwa+OAC40/KPAgcfscGWheGD3HS/daVoThjhhfiH6t04iFTmU
 wd7bO0abU+2StVJCLmHm2E3r97vI7QLf2u2NhQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Fmp+BO
 EupySBVtpjzqC63zvPuK56eVvu2js37xVpihI=; b=FO6dIVoQ5rtaF5n1GaLBNh
 iZV9oG0MDngG9xZuQrWvDDps2XG40OVY5DYSVwHtuAWYBwhTsvc8LXOIPRjr2fZw
 9437BDHvv024GLyNwyAvEmLHP/Jlyb/xrHdOI3Zrc+wdvqezf/hkbw8XFKOP6gOV
 7Bsnsf5qjh13kGSKw50FXmER8Q/Pt9MGhiEoDhXzDLjYa42OxXB9Nh7GDfVd3eaG
 0cEwX7Eujxq2urTHUhx6HShHFjY575W6IWoudvq7S3IZZwz4HOWfge5Ao+JPI9Oq
 CErKCDGZ1PC2XsMnCdBTal1SG8WYeZkFF8eSWOD2izQ8uLMCIqe/QEeIPNGudYRA
 ==
X-ME-Sender: <xms:1z8UXWyS844TDQTyEk41JatYBMxO4mlrM6N6rx_l6AD1sQGY3kIjow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejgdejlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:1z8UXbrxEntN8J8lOKet4zVeDQ7SveS9sUBku1OJcIlxv91V-0ZAvg>
 <xmx:1z8UXReH2J5pvvNvppgjPUnwFpvC4fTECLbKMzmsPBmFHmlxhq-swQ>
 <xmx:1z8UXfhcoeGRGvU77nfbqd_JOD3sXVYp8x8UTfWwHEtnCbGz6xwO1w>
 <xmx:2z8UXe-zAs_jUi-e4l2KZJEBBBLTaXnmpuZbUpk8Iq-T3kaIzwEtAg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3F2F4E00A2; Thu, 27 Jun 2019 00:02:31 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-730-g63f2c3b-fmstable-20190622v1
Mime-Version: 1.0
Message-Id: <226afe63-cc86-4920-abc1-025bdda32063@www.fastmail.com>
In-Reply-To: <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-2-andrew@aj.id.au>
 <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
Date: Thu, 27 Jun 2019 13:32:30 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
Subject: =?UTF-8?Q?Re:_[PATCH_1/8]_dt-bindings:_pinctrl:_aspeed:_Split_bindings_d?=
 =?UTF-8?Q?ocument_in_two?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_050311_570720_2D9E7356 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 27 Jun 2019, at 13:02, Joel Stanley wrote:
> On Wed, 26 Jun 2019 at 07:15, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Have one for each of the AST2400 and AST2500. The only thing that was
> > common was the fact that both support ASPEED BMC SoCs.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 +++++++++++++++++++
> >  ...-aspeed.txt => aspeed,ast2500-pinctrl.txt} | 63 ++-------------
> >  2 files changed, 85 insertions(+), 58 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> >  rename Documentation/devicetree/bindings/pinctrl/{pinctrl-aspeed.txt => aspeed,ast2500-pinctrl.txt} (66%)
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> > new file mode 100644
> > index 000000000000..67e0325ccf2e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> > @@ -0,0 +1,80 @@
> > +=============================
> > +Aspeed AST2400 Pin Controller
> > +=============================
> > +
> > +Required properties for the AST2400:
> > +- compatible :                         Should be one of the following:
> > +                               "aspeed,ast2400-pinctrl"
> > +                               "aspeed,g4-pinctrl"
> > +
> > +The pin controller node should be the child of a syscon node with the required
> > +property:
> > +
> > +- compatible :                 Should be one of the following:
> > +                       "aspeed,ast2400-scu", "syscon", "simple-mfd"
> > +                       "aspeed,g4-scu", "syscon", "simple-mfd"
> 
> I think we can use this as an opportunity to drop the unused g4-scu
> compatible from the bindings. Similarly for the g5.

I Wonder if we should eradicate that pattern for all the aspeed compatibles?

> 
> Acked-by: Joel Stanley <joel@jms.id.au>

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
