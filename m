Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CB5DA221
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 01:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LthFCiaFDdWYVJVhbrNTrB24NT/3VvZt+ex/w4YDjRk=; b=kahrFBTnVa6UN/
	olgAn881wgsskQ/NsnBa5tr0f4ORtAQZ1B/swhdWH7GPwn+b4gh7zliyUm7spkf7YCIgfRrnYvLLZ
	kTBgIl/FShHRZtaX7LgMUjwbmUm2Q3wa+XsBaUDGcuiTuYSqfT1skhNakHfXENIv5JmR5svnPmii2
	GyhJkO8gFPGhfW6FOkkC9LL123qi5ZGzUBiJ4eG9OKwdIQxQ420W9cN1Vd3onmptkaDCnXNJpZeKr
	ZBJPPpy4VLM7E3qTJDmeqXcoPbOUhMVXZSpgBjWfnH5mcJv+iv7l5lZK3toakD+fI/X1atFJ4AZ02
	xvlu813SrP5dQpJdpAUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsg7-0005du-Jj; Wed, 16 Oct 2019 23:26:03 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsfv-0005cx-C2
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 23:25:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E4BBF71D9;
 Wed, 16 Oct 2019 19:25:49 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 16 Oct 2019 19:25:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=PyvonOcPHFz8rKcmNUUFHGzSVRwDPRH
 8KZMA87K8oiQ=; b=fKdKzNRokgPjUVrX9f1xJPPL5FlrS4plG8on1QguhO/iuAm
 Lo5Bj90672xyJdYbVyUa3VgU+Y+2HxL9CkP0vDPDXqrFPk+HkdlPyJ4zBZOv6xbR
 AC06UzWdsdc6mXOjcwLUnmdpUOsjkr4FOvdCxovZ3hqBTA0w1TGdN2G30G0VO3RL
 y+DaHnPWZIefPFmx6XBoejbEezNpp+qPUdeq4tbizZE0+K4cemSW7YXaAZ1uQ9J6
 8Va/knlMgkD3GnObd56nZ5XAmwW1JTMe+VDA8wFrthzeujiwezQhlsCJ5LH0EZHV
 ajOg3EZJo/sEcpxTujDRiODK+6fjOKw7+beFf4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=PyvonO
 cPHFz8rKcmNUUFHGzSVRwDPRH8KZMA87K8oiQ=; b=omb7k96+2VHVf6VjCeeafg
 0siHqz/O6s1Oy7hU2nmQ2wlCw8vd3jsuThXLkkCGtgONeG8jLeNFNxXPzZe7+OKn
 T/7e/jEO//cUsQpRyq8dul+GAUJ3agO093ZnPtkKuf73btmkch0y6Efs/TIK6gtP
 kVQZpB24Tnqbs+4tnsWgzLDWBwGCUPly78dIr64T4MDegNqzj2pE8BaAug0Fm8OK
 bv6VUc/RuGRqXlPU+DPQzz2eLqBkn0NHbCZFSNi670PzweDU9nYRrT+Od8LsXGTL
 dx07/zq5jEtosWNBfLbr8XI27LOg+bN/6TW0mlO2mGuCSkWtAjN9cFveoc2MyShw
 ==
X-ME-Sender: <xms:_aanXUngCArMrXAA7-s9c4Qrm5auYWXdza9M0WOYns1PrME8q-OgOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrjeeigddvtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:_aanXSOwracCb3LzQKBJVZOovmxxNA0-0f4Zw9_sMVL51RQo6XuC5g>
 <xmx:_aanXat8h366CpTcUuN8cE1t1VuiwpVN_HSoPB3fEVwg1In-bqXS2w>
 <xmx:_aanXVw3N8k8rS7lIIEsu9nO1S99HVu_3B09uTkoA1XFM6F3kpdcWQ>
 <xmx:_aanXTz6edeXMD7h5uZtGS_XNOlxgfyiI49h0Dnq5VCKKbB13GyWCg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E351AE00BE; Wed, 16 Oct 2019 19:25:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-360-g7dda896-fmstable-20191004v2
Mime-Version: 1.0
Message-Id: <5fc76c3b-4727-4c4b-88a1-59c9618ccb30@www.fastmail.com>
In-Reply-To: <CACRpkdbmbyNmW8tL_L0agBajomPybXsjn9ix_F5-B3fZnfuW9A@mail.gmail.com>
References: <20191008044153.12734-1-andrew@aj.id.au>
 <CACRpkda5cWaA7R3XzyiERCCgwUrjnXd+wCBeKvt-wtjex7wNDg@mail.gmail.com>
 <2de90789-c374-4821-89f9-5d5f01e7d2d6@www.fastmail.com>
 <CACRpkdbmbyNmW8tL_L0agBajomPybXsjn9ix_F5-B3fZnfuW9A@mail.gmail.com>
Date: Thu, 17 Oct 2019 09:56:45 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH 0/7] pinctrl: Fixes for AST2600 support
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_162551_716316_A4CAC463 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Johnny Huang <johnny_huang@aspeedtech.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 17 Oct 2019, at 00:30, Linus Walleij wrote:
> On Wed, Oct 16, 2019 at 1:42 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > I was hoping to get them into the 5.4 fixes branch: I consider them all fixes
> 
> OK I moved them all to fixes.

Thanks.

> 
> > > I need a shortlist of anything that should go into v5.4 if anything.
> >
> > IMO all of them should go into 5.4, as above.
> 
> OK
> 
> >  It's there something I can do in the future to communicate this better?
> 
> Nah it is a complicated process, things need to be done manually
> at times, overly obsessing with process is counterproductive.

No worries, happy to carry on as is.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
