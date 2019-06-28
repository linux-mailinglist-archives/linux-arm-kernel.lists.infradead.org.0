Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A8E58F80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 03:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52a/Bqcc4Y795vGXNCSoWX2NUIznEMyr8WE8WJlmq1c=; b=JRtBzpmAWaIjOD
	fMD8Guno1IbhQt1CNsXuR/afpgfpPRfLziF6VzjXSbY7RlSLC1WFRHHRKxxWp5cNAMlok9KJ3KhAz
	mWOLQ/jdpdQ4u2sFOuSWQltFMt10bmPA7+eSj+b7YrkRAOLWnISfH+BboGxrUgGeD6mlh0oXqzFyV
	Ls0HLZ66gU4nXoSHeRUq2QVF3e8/UYyhJdmX40a6/RLXPF4R8xUKtdJIuSC/8ZrxpSIpeuPyxzXZE
	y3ETQbLIJw0n6BiejBJhp3u0evDb9U9Dwxzk8G0nfZRbRD9EbuxvaE667NlEkZJmuue0+rSOXuXqa
	kZolT1CKFvOKelavzsIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgfGf-00054e-JQ; Fri, 28 Jun 2019 01:01:33 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgfGO-00054N-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 01:01:18 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2A3631448;
 Thu, 27 Jun 2019 21:01:16 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 21:01:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=6QkdIpPNZcez0nWZJny4hrwMOIoRT7+
 z3YW1PJJsa+0=; b=MyBHZuXxdmX/5SpLOi1pAk1sCtJy3enfybuFzaWKTrrihqf
 fjNZULa6ESDWG9Nb1IhjNaUOpYZKHFIDcgFyiFPg4JC97AXqbNcayZ0rTx2sGaZ2
 zQCnMf7nezIurCkUGAugjDNs4PXdf9Mha1OwOLdIRy2JuJnmOrIKCu5dWMRve7ny
 IHU5fjAUSZCjOCDUTaJO0hOwf1aHHz8yh64OjkbITBempZkcG9vMe0kchf7gViUc
 q6wJasjAVeHjWXYKG2uB5UjyTlH+3+p4iL28aEN82uexhYbGjCX9iIlFx5Bb8E0x
 Dt5XRi/Mqf0398zbAzSg9WVWxEeo5ebcPkwZeCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=6QkdIp
 PNZcez0nWZJny4hrwMOIoRT7+z3YW1PJJsa+0=; b=aOvbE5MWRlWu77Pg+XZaA/
 u4PlEqmN0NQRyeeEAHI37JRT5naI2Yzcgh5r+3Ovx+A6tOZ0YUE69dSLNvvnlgtC
 0rr+BGnl0AmCuryqoZyldci7C9uWKjCRB7RYblWj70Akm9wL8e7Yfpa4nAE+9RVZ
 47G8Q4DC8RfQSoughbd67uc4HGwhmNZVA6ZxBve8RQERZ29ep0tQFWEfmZS1kYyB
 mckAxPBzpheOfqxG/Q54sP+aGp0V3afVQY8wAZrr6TFdxwVo1PbUmUoJc8dS6Vs+
 Tafs4h/6x+M7+MM80WUPi/WmfEUXhGkYriNoBojwrgVVuDYKaVoDDkVAjsDhmzIA
 ==
X-ME-Sender: <xms:2mYVXZRh07v3m3dtSpcqvSBZhb3GnfbHz-u-bsw1kRb6Mvs22kxfdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:2mYVXQRnCamIqGoCcwQ4HGTSFXWpd7-rjjS744xveIwEbLYzbV5eiw>
 <xmx:2mYVXRdoBHmREkPzHUUNTFrBhroqsf2TSy20snTyK8odUSz6fSUTAQ>
 <xmx:2mYVXWdJECu90yIqi6uBcSVlaESB7fOX6doZKI4a18B3urbJj8mAUg>
 <xmx:3GYVXdkcWIdXmwbmCLrdk1-KHTzuUFRg8uGxViV45__3yffNc6InwA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 17816E00A3; Thu, 27 Jun 2019 21:01:14 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <67703d84-a827-4a5c-bf75-37a619f1de94@www.fastmail.com>
In-Reply-To: <CACRpkdZtTy-HHu2O4aOaqV5ZdxcYYPFRuxK2jjnw+_O1xcF1rg@mail.gmail.com>
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-2-andrew@aj.id.au>
 <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
 <CACRpkdZtTy-HHu2O4aOaqV5ZdxcYYPFRuxK2jjnw+_O1xcF1rg@mail.gmail.com>
Date: Fri, 28 Jun 2019 10:31:13 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>, "Joel Stanley" <joel@jms.id.au>
Subject: =?UTF-8?Q?Re:_[PATCH_1/8]_dt-bindings:_pinctrl:_aspeed:_Split_bindings_d?=
 =?UTF-8?Q?ocument_in_two?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_180117_169735_D74B294C 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 27 Jun 2019, at 20:56, Linus Walleij wrote:
> On Thu, Jun 27, 2019 at 4:32 AM Joel Stanley <joel@jms.id.au> wrote:
> 
> > I think we can use this as an opportunity to drop the unused g4-scu
> > compatible from the bindings. Similarly for the g5.
> >
> > Acked-by: Joel Stanley <joel@jms.id.au>
> 
> I assume I should wait for a new version of the patches that does
> this?

I'll take a look at the gX compatibles more broadly in a separate series.
I'm cleaning up the current series wrt Rob's comments and I hope to
send it out shortly.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
