Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F39C6B530
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 05:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3yWnjxdIXn8Cs582PkAmXZAxk/ApsGusXgzWn1CFOo=; b=K8fkDWVNOVIrlw
	wWkswDfENC3RI7WLIP3kulrDDq/emkzXRniRxYSJQsPIhfqh+SzkbMdiIgYRUijExeQBdWXgKIyBh
	VUHhhxEgZlKVk4m7BaXopaxDsFJUsrNjMAZ4ZVJ95IGbc3SmBA3Ga6wxV5+rGAKCTVBLhC9IcUOxY
	wspr/OLsHMP6w7rRtVXxAHWkeUegFKckZZsXjmUDf1TSTUiZNuBqvVC9EZV7z+sNLIiCAwdHk5Yis
	h7Prb1XOccz0FSoStptEnj2MBl2eJJ+ZJ/j6CzoFvBgpT2S/6ANl0Zn6xT/xM0VWdUkLGW4IoWEZ5
	QatQb0bsc93ybwVN/FoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnayz-0003qH-5X; Wed, 17 Jul 2019 03:51:57 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnayo-0003pl-Ug
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 03:51:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 7B1463D4;
 Tue, 16 Jul 2019 23:51:45 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 16 Jul 2019 23:51:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=4thMvaSx0dpdp8DeVpL+Ehe2s0YHQve
 mqdikPWzNKA8=; b=Ittckpy2uxPxMjk3vbo4z3p6QAjtzQ56b7VaChGXt5GhQR7
 raffad0sc3NM7F+FzXEML/2ezsfrxis739rcK0x2BVVHJz7WcifPsvQarI41gr82
 xzqJiwKTHOS4ecaBV3Y6awKMy5r8V4hP2kyqPPj0M1oTrRL7wmc8/AbvVB/v+0Tu
 ze3AwaSZDtxXazDMuIPxzIlNk30f5u9I0hwxcjtMu14aNb2em+qBNatHfkVmp87i
 gG/m4Bm+UFVSmZhckwoCTJwxyML6z9MwP5C4w/FFXis9DgzdQbG4RCHOg6U09Atl
 4aNny7PHO333Nx9xn6JBgoGLA4TBjC/RvM9AnMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4thMva
 Sx0dpdp8DeVpL+Ehe2s0YHQvemqdikPWzNKA8=; b=MNHcRQMsbJd56eano2zAeE
 7HjQLYOzNzGZrnT0sRqoLYDN2Y06t3xZm1D6SNg8mrZzlsVeCUxsobqI52A9nOkb
 ppvid8kfSF5a3QBzPb4eqbt4mrt3/YmZS4iObo9feApW5lLwBWnoN0U1UcdPjWVp
 hSQwH1HGU5/r40Hsu08s5DZhl7tiEGOMipf5srb4vGLbhqL2QutbtmWxJ6JLUE9Z
 U0lrygUA4ScATFBq0R/owdLQY8TuZwb8pMrEmP7lOVaH/MBKn6TBv+op1qRCPdg5
 OJjOHIK0dsI+zRfvA6UKjhYxmOa3fMwSUjL6W7+l0Thra3cxg2hpwtQit/yFs2kQ
 ==
X-ME-Sender: <xms:UJsuXa9AKq8eTdfjqInMIzFJmHl-qjr2eYXJEVOmibOw4dZtk7CNGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddriedugdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:UJsuXczKHxs6tx-PDyyyxJADh6EYzkly6D-elgEZFQTDhP77mq4bnw>
 <xmx:UJsuXaHoN2wACqzUMoyEqMAV3Hub67ooom2BhoP1o6re9Hs-1BRu2w>
 <xmx:UJsuXdKd42ax_K_IlmkLJzMX9iP6VYraDloBauLf2RayGj3T2HEaZQ>
 <xmx:UZsuXaCap9UL7j-gXkYzNknX1GMJglrxqMYx8QG5SfuUTg1Z4nXCWA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 80240E00CC; Tue, 16 Jul 2019 23:51:44 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <7b027585-27ab-4070-bf2e-5d08800e1a90@www.fastmail.com>
In-Reply-To: <CAL_Jsq+AJDNZ-676iP=vv6G-pjWqBJyZ3bJ26o7i=c=KWbozSw@mail.gmail.com>
References: <20190715223725.12924-1-robh@kernel.org>
 <CACPK8Xdz98CQzgE2KCjz8eOhPtx=H8jTe1hVT7LvP77U_gGASQ@mail.gmail.com>
 <CAL_Jsq+AJDNZ-676iP=vv6G-pjWqBJyZ3bJ26o7i=c=KWbozSw@mail.gmail.com>
Date: Wed, 17 Jul 2019 13:21:54 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh@kernel.org>, "Joel Stanley" <joel@jms.id.au>
Subject: =?UTF-8?Q?Re:_[PATCH]_dt-bindings:_pinctrl:_aspeed:_Fix_'compatible'_sch?=
 =?UTF-8?Q?ema_errors?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_205147_033002_4B0D7206 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed@lists.ozlabs.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 17 Jul 2019, at 00:35, Rob Herring wrote:
> On Mon, Jul 15, 2019 at 5:17 PM Joel Stanley <joel@jms.id.au> wrote:
> >
> > On Mon, 15 Jul 2019 at 22:37, Rob Herring <robh@kernel.org> wrote:
> > >
> > > The Aspeed pinctl schema have errors in the 'compatible' schema:
> > >
> > > Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml: \
> > > properties:compatible:enum: ['aspeed', 'ast2400-pinctrl', 'aspeed', 'g4-pinctrl'] has non-unique elements
> > > Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml: \
> > > properties:compatible:enum: ['aspeed', 'ast2500-pinctrl', 'aspeed', 'g5-pinctrl'] has non-unique elements
> > >
> > > Flow style sequences have to be quoted if the vales contain ','. Fix
> > > this by using the more common one line per entry formatting.
> >
> > >
> > >  properties:
> > >    compatible:
> > > -    enum: [ aspeed,ast2400-pinctrl, aspeed,g4-pinctrl ]
> > > +    enum:
> > > +      - aspeed,ast2400-pinctrl
> > > +      - aspeed,g4-pinctrl
> >
> > Thanks for the fix. However, we've standardised on the first form for
> > all of our device trees, so we can drop the second compatible string
> > from the bindings.
> 
> Doing that would introduce validation warnings until the dts file is
> updated. So we still need this change until that happens.

My series takes care of that.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
