Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92019D1DB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPZB0dOAayfR9qExq0vb8xLN/WCylESNiOWPeQ8yMo8=; b=JXKa8sQ0NWa4ji
	T0rLECEmy8JsgOwFtOqI4L/SH8csQLJxa/93/PNSLW1LiEnaYILFMUvaCtP4s9aEiLxj3mafOPRc4
	cXR5yCcLlJ5YOYcbINRRvMZVUcIPsse1op+lVVjgXcLP8tcy7FOB+hnKDu/RvVb2vahU14Q8qrSlA
	htLQ09ttrEBWBgV4hM3QzYUg4Y7T2qE2pcqktY35CHhuCPx6tP2B413g79HTZ5PjGh8o+EEzRN3Ip
	AXTIiIJO65wZkFyAQem0ft253H5I8diFbz9YUtMrAp0rHEa7483YZM3pSfq2lE5FoEAMN2OAPpi69
	lspnEfcNstNcp7xdhDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIMgC-00005I-P5; Thu, 10 Oct 2019 00:51:44 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIMg4-0008Vv-6t
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:51:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 2CAB221FAD;
 Wed,  9 Oct 2019 20:51:27 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 20:51:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=UBrk70WdLG+JMj8YlDV4YajtdEG1xvL
 hcNqIGJ2cU8M=; b=MYi2/m18XdE1IFiJ483sVOzoqKIuhhhEDG0ZJjF8vk8hT1K
 b3eMQqpoJeEGSOvYsq8ndGbjaTeZmJwJ6S5rolWplxp/l7IXjyOQbpeyBHGD17kn
 ps9cs7ABl+sz+pqgMNR10cl4w2eGuVaCD2Wi+AUxGlyfblfAFOizIlwrJtqwLHru
 r/h54Mjd4AfYQ2luKjUPMfE7GljihTw9opQnvgRXWck5nW7bD3U51zjRVur/SIMt
 Dcl9Ggd1PGb20DE201wgncIjv1VlDeKaKbzI4PU67ltqQf+nedcHp56r/QWzXFW3
 uJIzsrfJL4VtFokPiyTLBpwOIhW7gB1zbT3Vy3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=UBrk70
 WdLG+JMj8YlDV4YajtdEG1xvLhcNqIGJ2cU8M=; b=bM3KysDsqBtVG/t5opV5qx
 Tku4sVJM6oQMimYpCGEZtegj+ccBY0/bqS3UAKZB5cI7cc9ygRfvuf2a7jPKdtF7
 eKDbutSMjDuPIXT/Mjt0IVcaoj2fnoo86YyZWPEFMdzZx3KCRJIiWf6bivKFFN0I
 wgQc9fz0tkv+fjOkkSNo5kq+LeTztKM4WHR4UeF7Ni9CxeMH/5O5RdLxhHt8Msik
 /CU1IM6Y0rdVlswupIp+DtlzCEyVqj/L3VAeVqaFIsEj0H0AREvV1hfi/1UiRlp4
 7HiWrhEBwzHDtGVG0DUtc+jP5yBOTzIMwqCKP2e667mXkAKSc0ZmGr24j0r45vuw
 ==
X-ME-Sender: <xms:ioCeXTfMK69pJcqR31UQBEg9o0azGJNd_7TiiDeOybGWAhpF7oeyhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:ioCeXQR9hntBcHDqRh5_K13d9TkiKroTP8DF9AFq4pX9oU9xNOrOng>
 <xmx:ioCeXU-y__TtOOsuh1-wa24vDLnyi3z2FdA0P90dx8ATi_VzWgnHpg>
 <xmx:ioCeXQHpF9k3An-OzTrTTg-0k1iTmoCX6-CMkOU9uMdDfALE2DFjQQ>
 <xmx:j4CeXTzSNEw__hM1x0fDSms-_4K20lFN8xyD0Dix1UptTfTj_5YhdA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9F2D1E00A5; Wed,  9 Oct 2019 20:51:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-360-g7dda896-fmstable-20191004v2
Mime-Version: 1.0
Message-Id: <18ac98e1-82b6-4782-bdfb-56765653e6df@www.fastmail.com>
In-Reply-To: <CACPK8Xf-f-r4S02GoxYdBYOJi5NGYMCOr6XGVza4vEGAsqzR9w@mail.gmail.com>
References: <20191008113523.13601-1-andrew@aj.id.au>
 <20191008113523.13601-2-andrew@aj.id.au>
 <CACPK8Xf-f-r4S02GoxYdBYOJi5NGYMCOr6XGVza4vEGAsqzR9w@mail.gmail.com>
Date: Thu, 10 Oct 2019 11:22:17 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH 1/2] dt-bindings: clock: Add AST2500 RMII RCLK definitions
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_175136_400446_BDD7C8E3 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 8 Oct 2019, at 23:07, Joel Stanley wrote:
> On Tue, 8 Oct 2019 at 11:34, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The AST2500 has an explicit gate for the RMII RCLK for each of the two
> > MACs.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  include/dt-bindings/clock/aspeed-clock.h | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/include/dt-bindings/clock/aspeed-clock.h b/include/dt-bindings/clock/aspeed-clock.h
> > index f43738607d77..64e245fb113f 100644
> > --- a/include/dt-bindings/clock/aspeed-clock.h
> > +++ b/include/dt-bindings/clock/aspeed-clock.h
> > @@ -39,6 +39,8 @@
> >  #define ASPEED_CLK_BCLK                        33
> >  #define ASPEED_CLK_MPLL                        34
> >  #define ASPEED_CLK_24M                 35
> > +#define ASPEED_CLK_GATE_MAC1RCLK       36
> > +#define ASPEED_CLK_GATE_MAC2RCLK       37
> 
> Calling these ASPEED_CLK_GATE breaks the pattern the rest of the
> driver has in using that name for the clocks that are registered as
> struct aspeed_clk_gate clocks.
> 
> Do you think we should drop the GATE_ to match the existing clocks?

I named them that way because the bits in question do just gate the
clocks, but I've renamed them to keep the pattern. Will send a v2.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
