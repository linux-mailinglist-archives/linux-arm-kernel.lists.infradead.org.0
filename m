Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E465F00F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 02:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qh3SW8fqU0wFejZA1dBM/V5a5NihjLEU1JdbISW3t8=; b=SzYvweBrVLMkaE
	ztzjfClzndzi8UJKW5fYJQFyLCCNOdasx6zPO1Ah6T0Jo4blUaKa3ZmiN6xBDucsPwzFQsZpAy46T
	W6Ul8ZnAHjip7JO57JjSYConaUwkhoAstFhReChHjbkYGpgMZWAptucLB8w3YvKcw0usDTIqCGDAa
	iMwoL7CwQsOvKIdTbljgGg/o4++3ZTRbHtBxmr7VTqGnNNukf5nFTvBnXjmaF2lkJu6hw3bhAsC4H
	+GBQ8T7zppA8F5izwCJTXbAmpgRBG+/KMt3h2CdckmuLGs+nCDLLlcU6GnHHD9/85yG0grKNo8fpG
	E3HfyXQLtpd9hUTzJc2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hipcY-0003gn-BY; Thu, 04 Jul 2019 00:29:06 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hipcK-0003gA-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 00:28:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A7BC91BC6;
 Wed,  3 Jul 2019 20:28:50 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 03 Jul 2019 20:28:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=OWn2mLh7/XUi0TJMekxt7yvjPNcgULS
 BCoi83C82YNo=; b=oHFzw8noCMYk24pCj0ny/IlupuxDjd+p4ys/R9Ec8OJoqgX
 b3W4LGtgKvAEv8CvF0/syCO2IACosaB667bLAIzW1fCsT4+tekeXDMyl3zEFaOMC
 X3wfdHDxlVZ2cTvRtREUMNFakBGD3FdqJwxIFMPo9D5x+SRmJWwsmgZea8ZIokzx
 qFrQHBEN70Np0VbSVFiJ/FMG6m7Jvf/TSMEiuAnbFyR2Tj5P/2x3ep6feeqpCRUM
 /XQM4H5W+qvlFlPR14RfVf+2+cx9GET41XeY7GI/7STl9Yln4aJ0ywSKGl7l0hKk
 d7EGxMsXHkwxl3k9BOZNgrK3iFSDGCjK9ibJrrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=OWn2mL
 h7/XUi0TJMekxt7yvjPNcgULSBCoi83C82YNo=; b=bJ2K1ryWC7mcx8ZrhtqG4p
 bjjDnClvZrJYisIta3ipWFXcHpUGkV/rnES74wiSO7RXuYiJVFVOG11bOPSZakuq
 efd8A+CAL9GVQaAiVrOlVZjqmdNj6hfv4JF8muUrXYaOdM8DJysv26hKoV9mgYrz
 UmJmWhxbXsIqSIS52KU/Kh/OU1wznmLyrn8+0mVHz4Uo7fXM75evRKb0Mh9Q6Py0
 mm3IwOJuNDTEtwNCEiqGvlLZwKQP4wClYP0BP01Ts2j/ix14AKaVBexjLqKcAlyA
 fZP4j3Z40fb+1wberXaFsYGNdkKBfKdRRVRg836sXTQlOB5kkMZIg5joW6eXgqSQ
 ==
X-ME-Sender: <xms:QEgdXaQCmhwW6lVppTwfGyVi11eyWy8KVOPmoh1yLSlVp3N1IFZpbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrfedugdefhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:QEgdXddXftyY9CXDkmK4PtChKPg5uBek0H_VhgWsl11Dtv6_rfcivA>
 <xmx:QEgdXf53eT9-j9HP3nKzzEA7iAzI-6jSOkqbwtDVfPRDkMbXPLzIJw>
 <xmx:QEgdXeYtH0YWySTHIsemK5URyZ09CZlpVSlM3hwA-MMUfvxqQKc5Iw>
 <xmx:QkgdXeWYmYs6ZpjvMHl1vd32N4O17eliMjdtMYZk0YDJLRSaiEL4ig>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id BCEECE00A2; Wed,  3 Jul 2019 20:28:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <022b6528-7ab3-449f-807d-d711b6d2db51@www.fastmail.com>
In-Reply-To: <CACRpkdaxiFR3ezt4FzhRxpqc4DYYjsbBeysPUaaQH+_QgYjudw@mail.gmail.com>
References: <20190628023838.15426-1-andrew@aj.id.au>
 <CACRpkdaxiFR3ezt4FzhRxpqc4DYYjsbBeysPUaaQH+_QgYjudw@mail.gmail.com>
Date: Thu, 04 Jul 2019 10:28:45 +1000
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 0/8] pinctrl: aspeed: Preparation for AST2600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_172852_523466_9B6B6002 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 3 Jul 2019, at 18:40, Linus Walleij wrote:
> Hi Andrew,
> 
> On Fri, Jun 28, 2019 at 4:39 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Hello!
> >
> > The ASPEED AST2600 is in the pipeline, and we have enough information to start
> > preparing to upstream support for it. This series lays some ground work;
> > splitting the bindings and dicing the implementation up a little further to
> > facilitate differences between the 2600 and previous SoC generations.
> >
> > v2 addresses Rob's comments on the bindings conversion patches. v1 can be found
> > here:
> 
> I have applied this series, I had to strip some changes of the header
> because it was based on some SPDX cleanups upstream but no
> big deal I think. Check the result please.

Thanks. Have you pushed the branch yet? I just fetched your pinctrl tree
and can't see the patches.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
