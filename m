Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118778274
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdwIefCj0P9LhGEyIQFd+vd/oS/7G1VAx4MvT5Xxyrw=; b=XBWUcAxAXtfLzt
	P/M+UeQRFxdjEeX/dwP1dwtM7Nct+mCA/3E8lpnXKb0mZ4prPkQaKURSae41rY4opbIvAgx5w3ywM
	6rI3BTQDGFqYv0HIVwMuqRgwAVid+YUUDO8jeLRFYzWsv6f+uAkXH+SX7S2BkHplbnXpT1+VXeGdg
	5hQDufx7FId0HQcvZw7BglFJIG0E/T6RvhsfgWG+T/Yv7JJ4pKEkC9UHTgkRd8ThhyHHvAYulrOeB
	e0ykKqcFl/aINMVGGKWMCrzZCNqiNtA5s9mRRvtzVp21IDon2rmxeAXVHfj9CEmIsesbXOam7JyrO
	MANyPBUKAFpkgOxjs/tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsnH-0000I5-N2; Sun, 28 Jul 2019 23:41:35 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsn3-0000HE-8Q
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:41:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C65CD108B;
 Sun, 28 Jul 2019 19:41:12 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 28 Jul 2019 19:41:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=U4RDuA+FSEF8yU1ZGRvQY82lPLeCcjf
 hhcly0ZZX73U=; b=eK8A1ThuZVoK4sXEsuVOEEhAwXkF1Yy77aDYbCW9IrJ/OYo
 n/Xq54zf6PMwyMfx+kR6Wjxy46DHAU1UqJgSiHeCNXWdBiOfDJ2aUg+TdbGCJNXi
 yvByaeGHqMHHt3+7CX6mhuUBnjjnqKvlL+HOYEIOrFtNCF9WaOq8w/d+us4s/QSE
 5G+F6AF2yLRoX8MR0YTB5Wnpz0T7KAlp1/kWKuL8iUyL+BR28Knb31AoAZPWNKIA
 LsgMqG25wyLYu2vqIJXFjC3KwyDZyB7LFortsXGniIuL4UCzfgWM3COAOmU7W64X
 WRm2hez+5RNzFeLKhYZGyIyU0sqyR3PyECBTEpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=U4RDuA
 +FSEF8yU1ZGRvQY82lPLeCcjfhhcly0ZZX73U=; b=pNeZHonuKkVktSvIThlH/V
 fYL19ZQpECOIQs61lYsbRiQT7BVt2YitAJRtljv0NPSYHnj3KlE32wRLolJg5KL8
 UshJdoM0O2VOJEWzarRdOr335PaRZlxb3zLATuhD/4LlRwGSNWy2j4n14njuSZj5
 u9vJcualcV6GIcCK/CoF87dREOmijBshNYL8B8hvXas13tWoezDwGNjMKCcLeEeH
 xoDjie8OTu5frdKQ4rh2YvtiusrBCiMKCq3c4qAEyqvfjzNw2QeDOVBpvE+U8xmm
 v+qi1Ucu35yzKfMPn7UsQX2Zin5Ad4NnHGUqVf4piNJaXMx4SFPPmagXLB7CzhYA
 ==
X-ME-Sender: <xms:lTI-Xf0D-h9NjPtChndbt_AZAEcGOgba9qUFHi71HCoRLpxCds5Hjg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:lTI-XaIJins3UcM1v_qAS1wAwJcnzQH3zB9Z9iJzd-dsfWe_JnEAxw>
 <xmx:lTI-XV1gZJJ5wfub7rrZbuhLNdfqfhc-KxeMMkbZWoy-6-Xk7KjPIA>
 <xmx:lTI-XVyjXvVm-gpkrvZRwv0CJYJOEjsyW5wxW2m5b8pmEw8-alJt4Q>
 <xmx:mDI-XVdQMfBvgBauhlEZAvpotqZ8mpaX0JOXEV8Mkk2lONrbFJDrkw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3062AE00A2; Sun, 28 Jul 2019 19:41:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <950b8374-2a06-44fe-a1fc-87be17e7d608@www.fastmail.com>
In-Reply-To: <CACRpkdb4pEdPHbo=3+fJXe9WG8K7A2_xVMtKWCJCfEawDO5wBw@mail.gmail.com>
References: <20190711041942.23202-1-andrew@aj.id.au>
 <CACRpkdb4pEdPHbo=3+fJXe9WG8K7A2_xVMtKWCJCfEawDO5wBw@mail.gmail.com>
Date: Mon, 29 Jul 2019 09:11:28 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/6] pinctrl: aspeed: Add AST2600 pinmux support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_164121_437856_98791F0D 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-aspeed@lists.ozlabs.org, Ryan Chen <ryanchen.aspeed@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 29 Jul 2019, at 08:44, Linus Walleij wrote:
> On Thu, Jul 11, 2019 at 6:19 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > This series adds pinmux support for the AST2600. Some more rework was required
> > on top of the previous cleanup series, but this rework was focussed on
> > supporting features of the AST2600 pinmux rather than fixing issues with the
> > existing infrastructure for the ASPEED drivers. Due to the dependences it's
> > based on top of pinctrl/devel, so should avoid any more SPDX issues.
> >
> > ASPEED have been testing the patches on hardware, so even for an initial pass
> > there's some confidence in the implementation.
> 
> I'm unsure if I need to wait for the DT bindings to be fixed on this
> series?

Yeah, I need to, sorry for the delay. Been distracted by other stuff.

Will send a v2 shortly.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
