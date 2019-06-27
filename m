Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD28357B7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9fehDiKwGmf/OlUf2Kuev+5xSL52y7FXNAqi337OVs=; b=IEkDhVMY7pYwfZ
	mqkki2KsNSc2S2xDc8/E8FQXhImrlKGjsXRdKf916+vetsRfeWuIOhiMvRS4+KZQbULl9kTpktbxe
	aq/TnWu82YTf2hfj6RV59l36yJPaG6Wo00JzgV5lbcCnTx18zEPFLqHlwdlYCPZ5e/z2P+lw7rt2j
	+rc3uQcqsXzedqTbow92CzAd+gIFZgGgXPCkM6A435mX3IyWxopX51brvMaH7K74Zy2Jcl44Sz0RZ
	IvJALhhh1rFJVaTFBPrgVUlKAcvvovU4+zl5M2IEC5hEnb4sJ0jHJ+IrnNxOv3aST9TR60T84jOFp
	IVNcr//6DMFMW7CH+l+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN0m-0003Qz-5a; Thu, 27 Jun 2019 05:31:56 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqL-0006ep-K7
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Subject:Cc:To:From:Date:
 References:In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZiI3xxfYKmvDILJvqB7fVk8L/I2NP9dzhcO3iE+B9zo=; b=JsK0Fs6tPyNYys+1nkU96mzrd
 fUdpC41hjYyIZEMtJnsGhkKZwinVUZl2FJJDO5XFEP3tCYsFKVtArnK64KtSxKGlQhcbfr/VoIma4
 z1470tK4gW+JaGoiqEtyrJIpcx4BvVXvSBeKrIwjMysnx5q5ST+s/Dn7CvDgENN1tx/1ECagEeUm5
 GRN6OEhYl+gRjo9azYdg40jNM3IAYlB8XQVaBTxC2+PDt1tjO2UG/DQnJE9bTCeu2hNOuKHLXaVSJ
 D32clwK/8zQZQ8a9ZnaORg1f9pRdriabK3RBCem3ORa9yK+Jx+iC4tfr22dpTo13wdUu6EPtribTi
 iNTDggS+g==;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIwL-00064I-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 01:11:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C99512212;
 Wed, 26 Jun 2019 21:08:46 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 21:08:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=ZiI3xxfYKmvDILJvqB7fVk8L/I2NP9d
 zhcO3iE+B9zo=; b=BrQd3vXrWK9cQIP8itJI4yLnYhOACmlwPP91fUYKHYbtLHN
 0ogcNMGV9W8splCz6t+XZdCMVtGizKYBnKF6spbmNMI1eNJ6r+zmg0k/+6d1W4q7
 +k6I7itFCu1bItE/yvKsMYtBMQbyf7ltQhuQNYElu9gTFj+zsRAICpm4ZS3tjhSO
 8KyHLX8mudpz7eKttQhCLCyBwkrhEGeoJnAWoKEEPhEBLvIUpP4H96wTd8IEJ2ZZ
 LX5xaOVrj7Rhsd0+tt7yoGhVBceeevSXkUP0PmG4wUmk0duMN1c4jl9K34kW1Pta
 3zBsro14GpbO11VWv70wehz/6gPZQ0EQNjl1Piw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ZiI3xx
 fYKmvDILJvqB7fVk8L/I2NP9dzhcO3iE+B9zo=; b=x28MdS6aAMJjnWtjtB7WWg
 2siByivl2x8w5XEtXmNUvuYl+f7lY2HcDQ86cOF1asYgl4kcNcg1cZt4i7zxB5jt
 QLsmQfxgwN/OVfIho5k3aZXV16b3jTI9CGMsq+mLV2Mw+Cru7l+nAhf6g6scykvS
 CyOmU//+0e1r94HNCD1RhlilF5TDfmJxqfxE6RufpkkVCZOakaa4O1t0F9bog91/
 dsylEeldN0KuO6YCmLCDGMdG5MVJSV7fIU6bJdjmwrepQbWMvRtZOsjWqPt5BYIe
 Tr2y1WFdqUMW48LKh7xQOcYHCDELGsFjj0dIFABn9Z9DM3Z8p7qh4W+IeQt01QsA
 ==
X-ME-Sender: <xms:HBcUXX9FfhoRdrZDn36epoq77XF1EsuU37NtY6YFC6mM-c415dWkyg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejgdeggecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:HBcUXUa9j9KOY8Ak6gZmtFfiRtd6UUY3gCF_-AYMovCK0o5If44DJQ>
 <xmx:HBcUXQHivyoiGtCZ9rm7PPsGCC4-WmZYREdnJi8mTclO6S1TV9k9Yw>
 <xmx:HBcUXTfyfDK7LxhQ-rnDeLeXIxlh1SBIgW46klopWxzc6IF3JiH6uQ>
 <xmx:HhcUXdmMuLkZk_6WEw1ZXYe924zdtpZ1RXGCq9Fe19peV19V36hFLw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CAAE4E00A2; Wed, 26 Jun 2019 21:08:44 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-730-g63f2c3b-fmstable-20190622v1
Mime-Version: 1.0
Message-Id: <fa54f9a1-481e-4146-a4c2-7c43cf9a26e8@www.fastmail.com>
In-Reply-To: <CACRpkdboxjMmeb8feffyG5JJ7fGPR6hqC8sc+XV5We3TC__LXg@mail.gmail.com>
References: <20190626071430.28556-1-andrew@aj.id.au>
 <CACRpkdboxjMmeb8feffyG5JJ7fGPR6hqC8sc+XV5We3TC__LXg@mail.gmail.com>
Date: Thu, 27 Jun 2019 10:38:44 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/8] pinctrl: aspeed: Preparation for AST2600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_021106_180151_08754B70 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
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



On Wed, 26 Jun 2019, at 17:25, Linus Walleij wrote:
> On Wed, Jun 26, 2019 at 9:15 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > The ASPEED AST2600 is in the pipeline, and we have enough information to start
> > preparing to upstream support for it. This series lays some ground work;
> > splitting the bindings and dicing the implementation up a little further to
> > facilitate differences between the 2600 and previous SoC generations.
> 
> All looks good to me, but Rob should have a glance at the DT bindings
> and YAML syntax before I proceed to apply them.

Thanks for the quick review. Rob's responded, looks like I'll need to send a v2 at
least. Might need a hand sorting out describing generic pinctrl dt bits (subnodes
with function and group properties).

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
