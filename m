Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4A6A31D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pngGG9RJ92tancpbTiOP08UsNZsHoQ1jgULaP7woD6k=; b=SFcPh1w5Jovf0A
	BGiGYDGQd2RV6QqyvIKTde6feCmSYhUDGKZ0sD7D3ATuJreLPqauMFcijHdMIAwIxC165EC4hC/o0
	H84ppm33yWRzOdi9WldfzjhY70o5RvR8pfZMfDvZcH1BZDAjb+q0SbEg4XFZ8JoZJQPOzdS6QnC6a
	KC69uaeQJIc/lq1L/dcuPyrwiZAIJT+FRYdeAqZUCz4lhZ/Hs6ScIYNhsKrDJFhu/hrpIIO7CoT4H
	XjRSFNdsIi5NK0DbCCNFUEv0NVop6CLl/DKz0mxuq/MxkQRqrP1QLKA0HQwVqOl/wFCxluelTZvT6
	p4g5m/4asPmsiC53r1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bwM-0008UZ-Cw; Fri, 30 Aug 2019 08:07:26 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bwA-0008Tj-PR
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:07:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id D576521F85;
 Fri, 30 Aug 2019 04:07:13 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Fri, 30 Aug 2019 04:07:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=mo3FGA/ipO1SkoDh6reUgvlvk0/ODyc
 GbN5cHOI6jnw=; b=n0aPpAguaYco15CyvLywybHNtVAc7mwuO0pzWP7wvOL4Fmd
 OHnEHaQlsdNU43xwYceWhMfk0QCz/vRpljxyPR10myZhHJVk1Gr7/KPCeBw5+CB4
 rsIfQB2bGMlSGIbOzvzO7vyDNrcKKDaPmgLmiH7MG+t/IxiusWysKBHZ029vMFcN
 S0Krms1cHcWwhachZ/SpXZzfkmlkZF79rP4Qr8E27Q3n/Z1j98vaCGU6p79BPDR9
 YW4gOcuI7qdImGvS8MxiEbUtER2pPj407Y70L9vm7zalsX0X89TSMuUzW3duN31X
 Xfw1iYF40TOZLCIUFXCq+eaK5gC5HLZOeg/97eQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=mo3FGA
 /ipO1SkoDh6reUgvlvk0/ODycGbN5cHOI6jnw=; b=mzkzZvd0ilqrs1ghrHg095
 4/hgqzJqavdRgmvLYcfAaOMtjE21M6bmrY8A/BqbnnO7QQL9hvuA5TecsbcOfe/V
 YZKBAdep8xDUafpohYs2i9/D5XRepasXcqyTCbd0K/eAQLBxjxzkIJknsY7GW5O2
 0N0mDb965foTBJlGEkAl+iOuj2rCcHh8y6StPCCCHky2JP0vrae2plX8QDxSElVz
 253LLLn8I4cVWNb2iXN6ynFFrVDF6I6sfTLAMjVhM+qft/OTohxwxCer6uRxOygk
 UOdiBZIc+QqdHxumWzsNMRE1Fu2ZFSPpZEpAo+kxlAOkC/Jp0kLg1ofv9vb4XplQ
 ==
X-ME-Sender: <xms:MNloXTYaESaR0JSN118H7OZG185uey1gsSKEmiVHTMutfzqTQg_J9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeifedguddvhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrg
 hrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushht
 vghrufhiiigvpedt
X-ME-Proxy: <xmx:MNloXT-po1mRFzcl375CIW70RgDLvtoMWD7LT-XdpGLI1cV0WAUcCw>
 <xmx:MNloXcSQnVT8SQGscGN27QMrZG3RRnEyPrYhFmMEP1bc10tTn7cExg>
 <xmx:MNloXVf0fHcgZhm7rUT-VcyoCr5kRV23qDXo6iioTUw0zOrr7TyHAw>
 <xmx:MdloXXgLtRc6wEEsmbh66N09Tq0Y2R7LAtKNg-C-z3TQJ0m21n2U6A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B2443E00A3; Fri, 30 Aug 2019 04:07:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-154-gfa7592a-fmstable-20190829v1
Mime-Version: 1.0
Message-Id: <6feca359-34ce-445e-87bf-62fa063d785f@www.fastmail.com>
In-Reply-To: <CAPDyKFrKXfB1F2dh63KrkCiKGbmbBWaAM16vJqtQncnF4YctQw@mail.gmail.com>
References: <20190830074644.10936-1-andrew@aj.id.au>
 <20190830074644.10936-2-andrew@aj.id.au>
 <CAPDyKFrKXfB1F2dh63KrkCiKGbmbBWaAM16vJqtQncnF4YctQw@mail.gmail.com>
Date: Fri, 30 Aug 2019 17:37:34 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ulf Hansson" <ulf.hansson@linaro.org>
Subject: =?UTF-8?Q?Re:_[PATCH_1/2]_mmc:_sdhci-of-aspeed:_Uphold_clocks-on_post-co?=
 =?UTF-8?Q?ndition_of_set=5Fclock()?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_010714_967456_9FB8F77E 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, openbmc@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 30 Aug 2019, at 17:31, Ulf Hansson wrote:
> On Fri, 30 Aug 2019 at 09:46, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The early-exit didn't seem to matter on the AST2500, but on the AST2600
> > the SD clock genuinely may not be running on entry to
> > aspeed_sdhci_set_clock(). Remove the early exit to ensure we always run
> > sdhci_enable_clk().
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  drivers/mmc/host/sdhci-of-aspeed.c | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> > index d5acb5afc50f..a9175ca85696 100644
> > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > @@ -55,9 +55,6 @@ static void aspeed_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
> >         int div;
> >         u16 clk;
> >
> > -       if (clock == host->clock)
> > -               return;
> > -
> >         sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
> >
> >         if (clock == 0)
> > --
> > 2.20.1
> >
> 
> Further down in aspeed_sdhci_set_clock() you should probably also
> remove the assignment of host->clock = clock, as that is already
> managed by sdhci_set_ios().

Ah, I'll fix that in a v2 once I have your thoughts on patch 2/2.

Thanks for the lightning quick feedback!

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
