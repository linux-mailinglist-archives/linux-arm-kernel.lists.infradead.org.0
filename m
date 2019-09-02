Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76719A4ED3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 07:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skQeElp+uGzy75+vQtMMRYwU9gST+pRelu5XYtOe4do=; b=QKyVBWGSUSAIBD
	ATvVSRFs0ze/ObQBl0gizjR/4sC56MrCCSglZDRhHnS189N9+hRmS09DNJoLxMR5UZPdA/x5OFqSt
	IwnPdS8opYcDoJEy/H5/ItXm2Wy8pyrayIzWTjjCwynKKN1bfHnai4Bp/0sJOJMFZGk4G/OP837NE
	5GkDELZqGkOYLvlFHk/BNbt2PKUj+KF0Ec4QSn4RepYNMXnEOts587+lyPQ2a+hnRQqrA4ZO/a4cP
	5WMD36QtXEDbOcshu8Dn/ihS0d+htL8ioboYC8xqazRVcA0z4R1AmHki+M13s/CCdnN6iiABVQAqc
	e+OAsfhxE+fv9sw63aMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4erd-0002XT-4M; Mon, 02 Sep 2019 05:26:53 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4erI-0002WZ-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 05:26:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 059DF210AF;
 Mon,  2 Sep 2019 01:26:29 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 02 Sep 2019 01:26:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=SfesOFiKN1IfZZTahtZmg0P++GiClFR
 iJzFNrBgRNCw=; b=IMcXpfcBx+4mIhFADnDJHiKjLIz6NUxMbOOK3QHwW66TKF3
 bQ2KBIVCA7xnkPDZDw9RB9bzlUWT/NUmBQMamxExN4PxhRRn/1KRB1ogw7VzQ8bU
 FGtJnWb3tlikUfLuMo67teT2whLCa8LA827GX3M5llOQyhW+YTbrUsBmVeQlvSXv
 HOedDzKU1xSlgBQOoW8lvq7WTCBRoiCectrKnffi/JQ3G37QKyuQw7hWq4mKm8Tt
 m9cZZIQIoJYbqxhP+Qvj4i7KFXoeqTGTeg4ogRrgF1hZbVwf4kK478ryTqV31Z7J
 cHwZZrCSV+1o6XYsT0jYHfXUdQGZDqW4orVYA/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=SfesOF
 iKN1IfZZTahtZmg0P++GiClFRiJzFNrBgRNCw=; b=ESPCQrNGWZa3NWUnEGIJum
 szo+Ykhaei18sNqyeJ/3SMCaCb7GfzRBTRnUctTgvScmfn3pzcDivrTLLtk79lXG
 MMh6Ph+lbW0j4c0A5ZH4bFtHYevohVl2WYt9v/ajQevBj0flX62VeN1GmXX+GlQu
 eRO+TvL/gCBSQZj5kJdIPkzON42BnYIL60uadEg53X8qCld6oOWoa0aW3ACT9RVT
 PYARH5YQ8G8T+WtzJKNdXTzZ0WNwojpJg3wN1FldLip2lnb8+6v7tlAEvJGqGW1F
 2HbH4r5GStVpO2L4cb2AH4w2K19W+I8aODt8i3RsPQgqbWPTwCLAz2DTjgnDIARQ
 ==
X-ME-Sender: <xms:BKhsXa3JC6op-0jITHMraScWLdeddq1uvR1E197VSMO9D7zMMgUV_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeiledgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:BKhsXVHsJdGTzihUkDM-ilLiRsvCKpM2BC7T8kiv4to7bcCbnrJyXw>
 <xmx:BKhsXTg632nPnfwjd06QPazju0OdQwar-ylxSp4OXRFBZ4IiyWSVfQ>
 <xmx:BKhsXbZM53rJ4CXHUNv1YZf4xHKOIV_WrS42S3C8uCvFHRfi2ee8QA>
 <xmx:BahsXY_KYrJX_0AyZT3k_lph9CBrcD_nZYKufQYiRw4sHkeqHUjtJg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id F1E03E00A3; Mon,  2 Sep 2019 01:26:27 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-154-gfa7592a-fmstable-20190829v1
Mime-Version: 1.0
Message-Id: <83570e25-b20a-4a17-85ea-15a9a53289bf@www.fastmail.com>
In-Reply-To: <CACPK8XfYgEUfaK6rtr+FdEq-Vau6d4wE2Rvfp6Q4G2-kjVLT0g@mail.gmail.com>
References: <20190902035842.2747-1-andrew@aj.id.au>
 <20190902035842.2747-2-andrew@aj.id.au>
 <CACPK8XfYgEUfaK6rtr+FdEq-Vau6d4wE2Rvfp6Q4G2-kjVLT0g@mail.gmail.com>
Date: Mon, 02 Sep 2019 14:56:38 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Arnd Bergmann" <arnd@arndb.de>
Subject: Re: [PATCH v2 1/4] mmc: sdhci-of-aspeed: Fix link failure for SPARC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_222633_061745_925CC40B 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, kbuild test robot <lkp@intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 2 Sep 2019, at 13:42, Joel Stanley wrote:
> On Mon, 2 Sep 2019 at 03:58, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Resolves the following build error reported by the 0-day bot:
> >
> >     ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!
> >
> > SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Guard the
> > callsite to maintain build coverage for the rest of the driver.
> >
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  drivers/mmc/host/sdhci-of-aspeed.c | 38 ++++++++++++++++++++----------
> >  1 file changed, 25 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> > index d5acb5afc50f..96ca494752c5 100644
> > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > @@ -224,10 +224,30 @@ static struct platform_driver aspeed_sdhci_driver = {
> >         .remove         = aspeed_sdhci_remove,
> >  };
> >
> > -static int aspeed_sdc_probe(struct platform_device *pdev)
> > -
> > +static int aspeed_sdc_create_sdhcis(struct platform_device *pdev)
> >  {
> > +#if defined(CONFIG_OF_ADDRESS)
> 
> This is going to be untested code forever, as no one will be running
> on a chip with this hardware present but OF_ADDRESS disabled.
> 
> How about we make the driver depend on OF_ADDRESS instead?

Testing is split into two pieces here: compile-time and run-time.
Clearly the run-time behaviour is going to be broken on configurations
without CONFIG_OF_ADDRESS (SPARC as mentioned), but I don't think
that means we shouldn't allow it to be compiled in that case
(e.g. CONFIG_COMPILE_TEST performs a similar role).

With respect to compile-time it's possible to compile either path as
demonstrated by the build failure report.

Having said that there's no reason we  couldn't do what you suggest,
just it wasn't the existing solution pattern for the problem (there are
several other drivers that suffered the same bug that were fixed in the
style of this patch). Either way works, it's all somewhat academic.
Your suggestion is more obvious in terms of correctness, but this
patch is basically just code motion (the only addition is the `#if`/
`#endif` lines over what was already there if we disregard the
function declaration/invocation). I'll change it if there are further
complaints and a reason to do a v3.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
