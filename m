Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21792A77BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 02:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfalk0fo6d2vFhbPNfAF92OiZePyhJ0/DGvDyrh6+aI=; b=MtpoODtwhYWM+1
	KaJezpibSa8d15gsMxLg2WSJzMytHlw8lM2srLYwau2l/XMb9zM3qgUFOZx34okqqeSzZEmtgEshV
	/rQu52PhKmQZEWuLxWa3ltCqO2EeCrczFIgb9sYwFPIdaDKkMh4+v/qSrqIrRdrRDG+GllCRORQpa
	3fcj1yjkVU8iTVAkjcRtLTqf2+qokL8js88+NZgn5JHQg3t55VtWrpxPH5V9FU26yJ6Ng5gspQFv1
	NRMXk5XGtdCSmnSjHkMFUSzXSYF8PDrh1ryo7u/vkkvhNnERSxBtfhDn54n0KMsVQbfAxfMRaQzug
	jKAvQWeOEAkXChFXc3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ikw-0001Ij-NM; Wed, 04 Sep 2019 00:02:38 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Ikm-0001Hu-Qn
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 00:02:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 616A04EC;
 Tue,  3 Sep 2019 20:02:21 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 03 Sep 2019 20:02:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=e2m08tJLme9DAXqhOo/SiutMgnTWzRV
 5kaLQ5K1ekAY=; b=nzDjn94z9twTnGbhrKJ/a73kjcHrGTL9VWrGlAJuPT6XS2b
 ghrJMcXU8s6VbgR17WvlJaho31+Eh/OQwEkyj0vYFsgn2UHXgny78fRx/LjbptIS
 MhA1CSzESkwlAeP5Akm6WDmDXiJ3OlqUq8jF1jq5Wc+/9RgOQAALIOwcRzYqpCcV
 By30GqX5fXYxyOKKlqg7YrvUE+e+W4BpDRYZIG93ILZPheSplnh+9ldj3A05OMuV
 5T2pyhvcZZ/wHOBYb/4ivhjA+AtQ2iaUdRYaMG/3dE0frBQ7oMNKk41qtCH6V7xw
 Nmehft5ZwLynGIrFxHg0s6gAjW4j3Xq8czo2qpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=e2m08t
 JLme9DAXqhOo/SiutMgnTWzRV5kaLQ5K1ekAY=; b=TP9LTiUreJY4bZLWzMJ1fk
 oTwdGNuCbqXjxZX+qj8doMbEAr4qwhNPd0ogE7rUnt3pj6MUxznpkmNGE3Na2iW7
 IuqYY92EMFrTnCEf3MENAU2Ob/jtroq4uJY8zWCf8ntpoRF35EejGSJ0Uxp2TI65
 IOC7h3GDw/zy0DamxQ00nV8D2qxIDjzCRa7554IGJTw+rUCFqNzmmw0RTqjaRVDQ
 ruU6uRB5l0LFQ9nwEgO87wSKTK31bHvsmH9KOOhGVNjLZRmdi2ZifZtBY1C//NRh
 Cj/v+pJU4ujHPC5+kayV9O6kokfdKuFCCB2IwIQ1uXlyonfmdHDcAUshtV75jNMQ
 ==
X-ME-Sender: <xms:C_9uXbcxP2ZIW9ShjiBFkTgSlNMrsYIBE_TuiLO1yU8EpbgBExZ96g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejgedgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:C_9uXUNGfWVK6Pu3ZUBOvzJ6bFKv4JeQID4Y8l2M4pzPGY8cVJnxAA>
 <xmx:C_9uXeb4vzNVrfsUUkEuXqkogR7Cad-_J3fBJm2JG3AYTvbzJ-ODAA>
 <xmx:C_9uXYC3_rVXSh611uTU2_uEd4lFI-hBt5mTDTqHpKAeGEikQsWqDQ>
 <xmx:Df9uXa8S4WRLMDJI7BY_Rw3nHq-_YQE3oi5P35WPeIkz-w1PjvkFnQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 2A685E00A3; Tue,  3 Sep 2019 20:02:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-154-gfa7592a-fmstable-20190829v1
Mime-Version: 1.0
Message-Id: <38ff59e7-491b-478b-afff-a664d8f66547@www.fastmail.com>
In-Reply-To: <CAPDyKFpWJu3RH4TWoO_wcJq0LDrM_fAUfsCC==e8O_6A8dLhiA@mail.gmail.com>
References: <20190902035842.2747-1-andrew@aj.id.au>
 <20190902035842.2747-2-andrew@aj.id.au>
 <CACPK8XfYgEUfaK6rtr+FdEq-Vau6d4wE2Rvfp6Q4G2-kjVLT0g@mail.gmail.com>
 <83570e25-b20a-4a17-85ea-15a9a53289bf@www.fastmail.com>
 <CAPDyKFpWJu3RH4TWoO_wcJq0LDrM_fAUfsCC==e8O_6A8dLhiA@mail.gmail.com>
Date: Wed, 04 Sep 2019 09:32:44 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ulf Hansson" <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 1/4] mmc: sdhci-of-aspeed: Fix link failure for SPARC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_170229_002000_F7C471BC 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>, Arnd Bergmann <arnd@arndb.de>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 4 Sep 2019, at 00:18, Ulf Hansson wrote:
> On Mon, 2 Sep 2019 at 07:26, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> >
> >
> > On Mon, 2 Sep 2019, at 13:42, Joel Stanley wrote:
> > > On Mon, 2 Sep 2019 at 03:58, Andrew Jeffery <andrew@aj.id.au> wrote:
> > > >
> > > > Resolves the following build error reported by the 0-day bot:
> > > >
> > > >     ERROR: "of_platform_device_create" [drivers/mmc/host/sdhci-of-aspeed.ko] undefined!
> > > >
> > > > SPARC does not set CONFIG_OF_ADDRESS so the symbol is missing. Guard the
> > > > callsite to maintain build coverage for the rest of the driver.
> > > >
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > > ---
> > > >  drivers/mmc/host/sdhci-of-aspeed.c | 38 ++++++++++++++++++++----------
> > > >  1 file changed, 25 insertions(+), 13 deletions(-)
> > > >
> > > > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-aspeed.c
> > > > index d5acb5afc50f..96ca494752c5 100644
> > > > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > > > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > > > @@ -224,10 +224,30 @@ static struct platform_driver aspeed_sdhci_driver = {
> > > >         .remove         = aspeed_sdhci_remove,
> > > >  };
> > > >
> > > > -static int aspeed_sdc_probe(struct platform_device *pdev)
> > > > -
> > > > +static int aspeed_sdc_create_sdhcis(struct platform_device *pdev)
> > > >  {
> > > > +#if defined(CONFIG_OF_ADDRESS)
> > >
> > > This is going to be untested code forever, as no one will be running
> > > on a chip with this hardware present but OF_ADDRESS disabled.
> > >
> > > How about we make the driver depend on OF_ADDRESS instead?
> >
> > Testing is split into two pieces here: compile-time and run-time.
> > Clearly the run-time behaviour is going to be broken on configurations
> > without CONFIG_OF_ADDRESS (SPARC as mentioned), but I don't think
> > that means we shouldn't allow it to be compiled in that case
> > (e.g. CONFIG_COMPILE_TEST performs a similar role).
> >
> > With respect to compile-time it's possible to compile either path as
> > demonstrated by the build failure report.
> >
> > Having said that there's no reason we  couldn't do what you suggest,
> > just it wasn't the existing solution pattern for the problem (there are
> > several other drivers that suffered the same bug that were fixed in the
> > style of this patch). Either way works, it's all somewhat academic.
> > Your suggestion is more obvious in terms of correctness, but this
> > patch is basically just code motion (the only addition is the `#if`/
> > `#endif` lines over what was already there if we disregard the
> > function declaration/invocation). I'll change it if there are further
> > complaints and a reason to do a v3.
> 
> I am in favor of Joel's suggestion as I don't really like having
> ifdefs bloating around in the driver (unless very good reasons).
> Please re-spin a v3.
> 
> Another option is to implement stub function and to deal with error
> codes, but that sounds more like a long term thingy, if even
> applicable here.

No worries then, will post a respin shortly.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
