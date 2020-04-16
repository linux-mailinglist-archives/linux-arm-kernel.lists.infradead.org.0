Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E9C1AB66C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 05:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jyy6g3c3iltT9zCEa166CYKBtgLhx1rpLb7XntPwcHg=; b=Xk5Mm6FVgoXr34
	W5+JxENUBRSRKnrh9jqmSAgQk8X0bstrN2fMOu95qE+82uDv7lHMNMyNHQT5ZhtApLKYzMAwYjJiT
	HpVTA0yWBRqMkLXF79nd/CR46jDS6cP406n8HH48dJGnvzvrIC5vwu2cWqCo0M/K2wcbvBmS9OHRo
	a0WpsEjITwFcbgXdqRjBRB+PW34XjwvSdXojU8od4I/FYbwIEDJdIAO3khghzn53ik17sP0MnPGe4
	lUgunL7A9mRMVukMzqfEHvk/FdbQ6bBrUl8Nc017sKnixVhdGoVg+2MSPr6qIc50PvvgI++m1PBu8
	Bxqaq1wxRrT33BzbLbDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOvdm-0000BL-JM; Thu, 16 Apr 2020 03:56:38 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOvda-00009M-PL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 03:56:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id D06EA5C0111;
 Wed, 15 Apr 2020 23:56:23 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Wed, 15 Apr 2020 23:56:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=YIfc6yIC2BLuseO1/P1Gj+zOdgsgiLg
 pvWs+B1qmSOI=; b=caX+Ir0iipoGQK8AcRu9Yfc1lvZAF1n9JoP6T4MvnqeLaKX
 HR9/HEKpWI8t6cnw7aTA8fqsHTX/IwOiwGaiBkc8YeIsKEJXO9t3CwEfi+Ayr3+g
 eX7JY04CgxPj43j9pZKIlUhohhtpPTuVaDVJhC5gMmJ6F3gfhiNYarcrHiLjyAyF
 bjtScbc4EPxMLNSCABpuJteo7gi3HqVJIh0AP6O4CkNFR/QEkeiH07851JZI3PPQ
 zSdXDJOfl6MrITX3Pm9HtEIMRnBTJVyFnO8meBpWgPZC3OZzKa/dbJihje0ySs2z
 ROLbSPSD1muxdOVqO3UYf7VYPJ+0o0VfL8rOhVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=YIfc6y
 IC2BLuseO1/P1Gj+zOdgsgiLgpvWs+B1qmSOI=; b=ROdAAu0G4mF9TsBznYXtRB
 FIItH/jON2fNCy1T1Y6SRk/sPlygCJQfGveqZtmk+iczKgTrdF6toMqGOepTwXS/
 He+ROWpzpJqJK/BFadKVTCcK04hntiWuOX3m6/xA+9uan6jAdM+YKwiZSrzhNo2R
 VPziuou5PvZfceFhFQR565RaypOB3MyyDHJmf9oDpZZ5C9Y8EgT4t66KpecA0GA8
 nxgWSocEjI5TdTG7PJlS312LTeqrUvQRsiNGkiS4JCD0LlnO3nr+4ea4yrjCyxw/
 97aCgCTNOz9oCqRRQGeL7GvD9ptlqsz14n0oUOcupI1wOo+xqVl3EAaDnWJwR+HA
 ==
X-ME-Sender: <xms:Z9eXXsHRcjZJClS8H5854KEKrV5CULc4D7dHTLOM6JAk8W7Z0kvFlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeeggdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:Z9eXXgNqfcWJoBosiX5Jo_xdrE-MECqk5t05HtRVdDFUyDSiniP_bw>
 <xmx:Z9eXXpDxTDoju9Oh30kRlNO7hASzNt5F9ZdC_0lud1wvnVyVY-fdmw>
 <xmx:Z9eXXnzvK0-E0GCyaxo5I8p2mqHXZdAhhxwcWh7zZwj6DpWQp2KZ6A>
 <xmx:Z9eXXvAxpjhJg0SpMySa-HGbX5O6SNZ-RiNWMCAiyCOTUJ3c9CKpIw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 98BE9E00B9; Wed, 15 Apr 2020 23:56:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1131-g3221b37-fmstable-20200415v1
Mime-Version: 1.0
Message-Id: <2a546e5b-5a5e-42e8-a201-67cd9063249f@www.fastmail.com>
In-Reply-To: <20200410145904.GA15615@bbwork.lan>
References: <20200406101553.28958-1-a.filippov@yadro.com>
 <ad46ff33-8ce2-4ffa-b12e-204053e4f705@www.fastmail.com>
 <20200410145904.GA15615@bbwork.lan>
Date: Thu, 16 Apr 2020 13:26:50 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Alexander A. Filippov" <a.filippov@yadro.com>
Subject: Re: [PATCH] ARM: DTS: Aspeed: Add YADRO Nicole BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_205626_959639_17AA6F34 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 11 Apr 2020, at 00:29, Alexander A. Filippov wrote:
> On Fri, Apr 10, 2020 at 02:29:47PM +0930, Andrew Jeffery wrote:
> > 
> > 
> > > +&i2c11 {
> > > +	status = "okay";
> > > +};
> > > +
> > > +&i2c12 {
> > > +	status = "okay";
> > > +};
> > 
> > Are you accessing devices on the busses from userspace? It would
> > be helpful to comment here why you're enabling all of these busses
> > but not describing any devices on them, if it's necessary to enable
> > them at all.
> > 
> 
> Yes, some of them are unused and may be removed.
> For others I'll add comments in the next version.
> 
> > > +
> > > +&adc {
> > > +	status = "okay";
> > 
> > You should specify the pinmux configuration for the channels you're using
> > to ensure exclusive access to those pins (otherwise they could be exported
> > e.g. as GPIOs).
> 
> It was just copied from Romulus and looks like I missed iio-hwmon-battery.
> Is it what you meant?

The Romulus devicetree may need to be fixed too :)

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
