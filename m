Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E5879D93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 02:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+pyeb7tNatWcSvVIK85QO5w9ausB8mJqv8GvYAuh4I=; b=ecj9SXmvC/06HV
	1ynWvFHBH5KK1K3pLme4uPpwiEPebOsG0bHzh5w+Q+908t0yLSOh8UXuIUp54/YoORotGEiyQdRlx
	QuslFoxoW2oFgBZcqy77opnyxN5JWckDzqCoAckScLzJ9AYSia+rTK0twb1JnQDHAFGNdqXfBMs4e
	cJtg3kUy1eujfrnXSQ+gU40leD6zbJDwf1HBkoA8zkq6OL6UL/pZxzFXPHWd94kcmU0rl1c5FSQmI
	5+2ODQSsrWbgmJhi948YXTq9yJtmX/THa+5MVoS8hlsJoWSCBNiVroVRSToXhRy4Jzy23dm7/Evhf
	+Zih7wY3zXKpR4VkElYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsGKb-0002NI-Ig; Tue, 30 Jul 2019 00:49:33 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsGKP-0002Mb-PR
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 00:49:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C6A5B1A2A;
 Mon, 29 Jul 2019 20:49:20 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 20:49:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=//bxTzdJC6FYnJ8JJ3y1ukSH+wo3cLC
 gVozwEDo36T8=; b=KTqftNq8QYCQrXig/XsbbLgZ+zHHDICl8jZvk56hbsWDrhf
 obn4v89riiZNIuHDriC2ksPJ1b89rg3r9tWlTC3CH6Wzdg851fBGd/VvD4MKUDB2
 CU8tdDpEhpcbX6icG3lj2WHUq4I5Qgn3lNFce8Prfk3v1uRKpjyzi0iwU+KXEPvf
 H6kBw7CxhM1mKD+MGBXqWOI7Sqtk7rm5owKYbM9FDy1bkdNTNaK0D8nYJQVq7QgZ
 qP+0yodv1KDJm5lOYVs8aacal/oEQCyVRcarx5n//9Elrt3z5v2KLuXOEVGEO9kE
 x4OnynpvS5X3PsaUn+9Pgvapb+XtrkCXGt8ONlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=//bxTz
 dJC6FYnJ8JJ3y1ukSH+wo3cLCgVozwEDo36T8=; b=djkIkPrhfyXdLZ3+GsUGa1
 /RABVspqJfLNY9ryyUmcobbeZrhGHtUlY08s0vC24nafuma6QpiY4SPlR+zoczcp
 ZZtguclDJ2oDwILiXKmgmd36kUG52pR9wWCpA6XZTMNuP/sroSo+x40J/RuTc13q
 X433pCqKlw9yslnaqdFOo8bVFbms0y2lywfOOVKfu8ysYyQcgWx8v0Orxaz8vcgZ
 bLwY9EjfmC/vArkv3dKw7pK5Hz9gKm45s/EMWA58sXEdub3xCbOXuyNjEL/gFvEj
 uTpno0xlEjddNbjpSqE7UzD1PsQoDHtu64nt3OO3VadW4veicLKRBVJzEPnAVjSA
 ==
X-ME-Sender: <xms:DpQ_XQPshh0cN23kN-QCdar2PN5kSloCkmm9b8tAHhYtKdeIH-MSew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgdefkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:DpQ_XSe6CDqdG2n77zuDVY-UjeveM3u_44GJGJ5RNeYKcLOMV_soWg>
 <xmx:DpQ_XcWbDF7yzfysgOZsh8znG6OtrPetjaH8Cqch7TT8eOof5yrSFQ>
 <xmx:DpQ_XXodf1DbKrpF942pr1YAphj03s-CzJArNsqqYxzOhVlDHzt34A>
 <xmx:EJQ_XY5NdW9HEjfe7q7hFGK0QBZbWXqKxONinXKZviq_f7o7vI0M2g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D66A4E00A2; Mon, 29 Jul 2019 20:49:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <1f5d34ef-ab30-4678-a44a-bdeefc41489e@www.fastmail.com>
In-Reply-To: <CACRpkdZVVgqdt=+YYEauChoxjqKk6=LNKzj-40u3CFLxJr0D7Q@mail.gmail.com>
References: <20190726053959.2003-1-andrew@aj.id.au>
 <CACRpkdZVVgqdt=+YYEauChoxjqKk6=LNKzj-40u3CFLxJr0D7Q@mail.gmail.com>
Date: Tue, 30 Jul 2019 10:19:38 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [RFC-ish PATCH 00/17] Clean up ASPEED devicetree warnings
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_174921_960828_7C40820B 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?YangBrianC=2EW_=E6=A5=8A=E5=98=89=E5=81=89_TAO?=
 <yang.brianc.w@inventec.com>, openipmi-developer@lists.sourceforge.net,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>,
 John Wang <wangzqbj@inspur.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 30 Jul 2019, at 07:25, Linus Walleij wrote:
> On Fri, Jul 26, 2019 at 7:40 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > The aim of this series is to minimise/eliminate all the warnings from the
> > ASPEED devicetrees. It mostly achieves its goal, as outlined below.
> 
> I suppose it will all be merged in  the Aspeed tree?
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yeah, if you're happy for that. Thanks.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
