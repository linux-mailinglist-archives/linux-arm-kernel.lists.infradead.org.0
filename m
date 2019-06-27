Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DF957B38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmDbgnzOgpxsjFMHuwr2CAxkk6oR25miMywiUbu2xWU=; b=BJUphpW46q2xlZ
	SLHmIm+olOfphqL5NiD25xPfGm1xil+k/SeG0wG4BSw8I2aXWWAX/KCX+MVUrtsX794fzoESCZncI
	DoQ4/oVw/fxELkPZhxj1tO3Qx3DIXPLLHZPgpeRUGzLQ8k29qKUEolfLIHHoOONdnnNGdaUxqUapk
	Am+71Uzzr81+LCCF1qGqlnQMj3iyNa54GhDfYfqf1/RxwX0w4PFK2M7GAepE2xAdLEJmIIdMJC2YH
	wXFs2a7IO1FCEi8k2v7ara9qWxNYDfY/JS8EY0a1g8/53qq9CRw79doWI04mg7HmgpbICmKaOfRVB
	ERNhQ3i8Cuu2kf2hnZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMpx-00017d-9M; Thu, 27 Jun 2019 05:20:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMob-0006Q2-3k
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Subject:Cc:To:From:Date:
 References:In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rg0MvOjGGvyE/jBUfl7d7PqyJK1OGHxniXZ/0dvFPZw=; b=gpBBx7yjoV+CNqGBWrIhHSiSo
 ehzD/D+9QyoO4RBuMKD8w4HbNReMlzN3+EmTJpHSh/8M5/6tl1M+pBS5yrNEIAv/ijoxFpJiQTtiP
 LOgpZf0Lut6kBw87m7FSoNBE0D2ckfmwrdZvn+0kBRdpgEwuvtgsP3xerqIEJJnlh38Fd2gDe0+r0
 1KhYq+g9IYKBjyXrVm49iVFHmoz6ktEHukv0rPeBo2AZJydTjYb5u5wVZtPDEBMnppDr1sMuOmfqo
 xDbIV5gnppEBUovox8ZeWaxX75KyZha05bxYkNKfd4+EuVPkLOVGpRh4FcLDTASIUlkU8Sanazy6g
 z1wPIfrNg==;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLYr-0001gn-2C
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:59:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E81FA12EC;
 Wed, 26 Jun 2019 23:57:49 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 23:57:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=rg0MvOjGGvyE/jBUfl7d7PqyJK1OGHx
 niXZ/0dvFPZw=; b=XzMOM0/rxccQ96fc86NdijBflRai0T1+PxCH9qaL3Sryjrw
 nj/UpEtQP/UzQsGY8fgJDnhpiCZ4g5PKxAFVv8clb9SdA8LzyaWe3dUotdPgpr0z
 G+JWDrgXHh6BFTck+mFh2x58zXQUksUUA9HoIo2NO1lksrZW1etKIfegcBCg9IVm
 Ks7AfdUDbl35GslFSCM4M74kv9Y/0fBcdhYT0hcn626UDRSP3DS4z4YSlSyUXdBQ
 GTUCC8no7rKNgfhjiC4SB+U9tYx5+z+ygw4+F0FIiOQ/1hARiReCbo3Q125db2B5
 RxEGsH1fKh8Pjbdx0WhITmwhk+XcDT3sKukOQCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=rg0MvO
 jGGvyE/jBUfl7d7PqyJK1OGHxniXZ/0dvFPZw=; b=cOiSDPN6EEDQPKa7O3gae8
 lusEHXgnu4k/9H+I2TcJhlUhAEz2+crNkkAzW9vAulDzh5969LYLk5zroCpNMMLX
 9N1frUxLs5V9LWpM47DkpAzihRu1aXp0s/0vb8MrlcvFWxyfVOyU0BCrpS3oW8Si
 E0L77ATGh0A6J7Q7pOYZ6g/AoYz+zRk7n72RDR4nxdq2cs7EJVbu2sLPggFZq5YH
 2A1fORbPRT1bNrmwUApDoKHYGJn4KmOwNsyLa9FWgtE4VfzJk+E9c6b2EL0+TSLd
 vUm6tsiXd4Jy5GyKjxJS2UBU+FnPwX+L4GL+q6RQbKIoIUAQkjw+mqSoUeSgqdsw
 ==
X-ME-Sender: <xms:vT4UXRp2MSuLxXQ-ITuvd9B7INIxJ1ed3uVe2NGSAquykYboA1IenA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejgdejkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:vT4UXYtzJC0GJKHqspDMd3VbjFBNdrZWw32FOnTyS-Oem1uJSTqvog>
 <xmx:vT4UXbNZnvGiTu5AJiZZYW8Ejpqsyqa7EmhdNAoSgkzu215cKLw8Bw>
 <xmx:vT4UXamkNYXRw3iXICIJ2khXi9n8IP0ba-Pd7XLwIBhloCztRxSFJg>
 <xmx:vT4UXXevahKZNWtBkhHAopfLZyZhUVcd73y5CdDGD6apGkgIe0e0cQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9C47CE00A2; Wed, 26 Jun 2019 23:57:49 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-730-g63f2c3b-fmstable-20190622v1
Mime-Version: 1.0
Message-Id: <835ac4e3-6ee4-4c3f-913b-93629d7e8080@www.fastmail.com>
In-Reply-To: <CACPK8XcPxJAOBAnKMKxtiG4Fkz8BPf8KtW1Kc3A9tU_emQviVg@mail.gmail.com>
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-6-andrew@aj.id.au>
 <CACPK8XcPxJAOBAnKMKxtiG4Fkz8BPf8KtW1Kc3A9tU_emQviVg@mail.gmail.com>
Date: Thu, 27 Jun 2019 13:27:49 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
Subject: =?UTF-8?Q?Re:_[PATCH_5/8]_pinctrl:_aspeed:_Correct_comment_that_is_no_lo?=
 =?UTF-8?Q?nger_true?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_045901_277222_34078D52 
X-CRM114-Status: GOOD (  16.77  )
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



On Thu, 27 Jun 2019, at 13:00, Joel Stanley wrote:
> On Wed, 26 Jun 2019 at 07:16, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > We have handled the GFX register case for quite some time now.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  drivers/pinctrl/aspeed/pinctrl-aspeed.h | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.h b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
> > index 4b06ddbc6aec..c5918c4a087c 100644
> > --- a/drivers/pinctrl/aspeed/pinctrl-aspeed.h
> > +++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
> > @@ -240,8 +240,7 @@
> >   * opposed to naming them e.g. PINMUX_CTRL_[0-9]). Further, signal expressions
> >   * reference registers beyond those dedicated to pinmux, such as the system
> >   * reset control and MAC clock configuration registers. The AST2500 goes a step
> 
> AST2600 too?

No mention of the GFX block in the pinctrl table for the 2600, it appears the pinmux
state is entirely determined by SCU registers.

> 
> Acked-by: Joel Stanley <joel@jms.id.au>

Cheers,

Andrew

> 
> > - * further and references registers in the graphics IP block, but that isn't
> > - * handled yet.
> > + * further and references registers in the graphics IP block.
> >   */
> >  #define SCU2C           0x2C /* Misc. Control Register */
> >  #define SCU3C           0x3C /* System Reset Control/Status Register */
> > --
> > 2.20.1
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
