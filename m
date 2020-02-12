Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D81B15B07D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 20:11:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C8RshRMFxLzsl9OGb9XeM4Gqx8MRFUrvG3sCukEJv1c=; b=ekNyua/uy4ea81FLa707jhzev
	wydxyAi4QPzkoy/wn813TfXNOnjF4hDB2ey8/tVP/86/yrxHYlS3HHKKA45bUq+HClTdrUCrpMrTp
	VM1snTrISDEc+uZcbAgQUgatwtxeSirrzAyr7b3gS8hxOy7YfVo9T0rIwQKDkcVLsOD9YZzGixXLs
	5BLlpl1qzSWS4Yz4fqMlgu+xO07c7uPjoA/eXsXrds9HPhMw8km+IHTY5H/P0oH+m8ebswF9FtBs8
	eGhh9L8zEx6DOUJi5AdBKBZAI4CsQEk8WR7x9uBEzThEfy9n461Jq7Da6Pg3Vm5ILO7YlnH1Im5WV
	Wgb2GpVbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xPq-0001SE-PV; Wed, 12 Feb 2020 19:11:18 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xPg-0001Rp-U7
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 19:11:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 995081169;
 Wed, 12 Feb 2020 14:11:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 12 Feb 2020 14:11:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=NAACaxZslAtJfyxlMGqHn5MXXhM
 I4BSJrErYiFgUgOM=; b=caLINIsFSu9I6jBI5qIP30dqYSVLortHeg9oQaMvcsd
 H+9MYAXXjgGefPutSHRYcf2enF5Ek09oSJz6fTmK7ZymYE2zHBYYMjRqQDj26sC+
 pTSL8sw9lTn0a2zFFkZQZK/L5WMHJymnxwar+cudOJK7j1CwHoPvMroxD/5cHD8k
 36ZsIXXlm94zeqL0JU6pJ/v4m06vvZyKVQAuJjUuPtohlygoT/ZT7HstVj2vXCGK
 c/bMfY3l7u2itP2VahG0vEHdo8jNm4sC76sP8q/BTAik9tgOPXnvIrW6Ynnx5TFL
 +HAW9aL/nLAX3KuSJRP/JSQX0nrdJWA7xxPb5asBJBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=NAACax
 ZslAtJfyxlMGqHn5MXXhMI4BSJrErYiFgUgOM=; b=tZNKpZC75ZKAGOtcVltaxm
 yjvJP4feWzgaNNoPbSV5Cbeaq4MprMr5a2bGDOoc/yVvYBjgs0s2GCs2a6Usdy7R
 BXKGn5w6KLTxZ/lnDqkKVZKdBRQPlbizUQA1rXpWIzzbUU333I0lvcaUR7V54zsa
 LkiJENwf6YTNDsACa71WPHbe9SZ2WEVWA6h2SXJzKLTrjfh+i/OSyiuMWQzbbBP/
 GelSwqBfStarB49az6r6KJTacqNhuF3XYu7MRFGLbdDEeyzt9MtQ4693goH8pObt
 nxurxerVq+z/vtgghJnrVBAd6d/LcRmp0PS9agLYvYAcBHa12s/Zr+6dftnXcjTw
 ==
X-ME-Sender: <xms:xU1EXlZlP5pf3oUfGIEiqAy1Lczyi9OF8wKDYQ7T_SRwX9hsRAQslQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieehgdduvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpehgihhthhhusgdrtghomhenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:xU1EXvphs27zs39OtqAHHX88obp-JYdXw4u5KVJUF71RxZsFmYzU7w>
 <xmx:xU1EXvcvAu-TjrIecMhiz3TqJZTNcbdmjCV0fo20UBgvFvsjAtWDNg>
 <xmx:xU1EXhRpzyZJf7TU2QjyOar4h8AYS_-416HA11AaooH7uLl8edAbEg>
 <xmx:x01EXiJBfwh0zUDtclrmgCUJCzjk3EVc6nBPb9aBsTwJ1ALF5btxWg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 319C1328005E;
 Wed, 12 Feb 2020 14:11:01 -0500 (EST)
Date: Wed, 12 Feb 2020 20:10:59 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Message-ID: <20200212191059.r7ftxgduoag667kj@gilmour.lan>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
 <20200211074643.uhhzpp4ycvkaz4pd@gilmour.lan>
 <7fb0e4f7-4da6-517f-6e96-9b3dc6ee4e56@suse.com>
 <20200211123427.gbzhopfuge6osd2s@gilmour.lan>
 <4e6eb880-8b52-aa1b-53bb-b77ff2cb858f@suse.com>
 <20200212120619.2tbsvy4sst2duupl@gilmour.lan>
 <68cd77cc-2e4c-4efb-5d94-bd47d6f87871@suse.com>
MIME-Version: 1.0
In-Reply-To: <68cd77cc-2e4c-4efb-5d94-bd47d6f87871@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_111109_223874_3247E5E5 
X-CRM114-Status: GOOD (  31.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: multipart/mixed; boundary="===============3156938252333918494=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3156938252333918494==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="smli3jy6jtokqtgy"
Content-Disposition: inline


--smli3jy6jtokqtgy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 12, 2020 at 04:32:11PM +0200, Nikolay Borisov wrote:
>
>
> On 12.02.20 =D0=B3. 14:06 =D1=87., Maxime Ripard wrote:
> > On Tue, Feb 11, 2020 at 03:17:40PM +0200, Nikolay Borisov wrote:
> >>
> >>
> >> On 11.02.20 =D0=B3. 14:34 =D1=87., Maxime Ripard wrote:
> >>> On Tue, Feb 11, 2020 at 10:08:08AM +0200, Nikolay Borisov wrote:
> >>>> On 11.02.20 =D0=B3. 9:46 =D1=87., Maxime Ripard wrote:
> >>>>> Hi,
> >>>>>
> >>>>> On Mon, Feb 10, 2020 at 07:01:41PM +0200, Nikolay Borisov wrote:
> >>>>>> Based on the datasheet this implements support for the hwspinlock =
IP
> >>>>>> block.
> >>>>>
> >>>>> How was this tested?
> >>>>
> >>>> I tested it on my pine64 lts e.g. loading the driver and reading the
> >>>> reset/clock/sysstatus registers to ensure everything is unmasked and=
 has
> >>>> expected values.
> >>>
> >>> Isn't the point of hwspinlocks that it's shared between the ARISC core
> >>> and the ARM cores. How did you test that the lock was actually taken
> >>> on the other side just by using the ARM cores?
> >>
> >> I haven't. I'm really focuse don just enabling this on the linux side =
of
> >> things. True, hw spinlocks are used to synchronize cpu running differe=
nt
> >> OS'es.
> >
> > I'm sorry but this driver hasn't been really tested then. The whole
> > point of it is to synchronise with something. If you tested without
>
> I disagree, the whole point is to expose the facility for other drivers
> which, in turn, might need to synchronize with that other thing.

And you haven't tested that either.

> I see the hwspinlock driver as a dumb provider of the interface. The
> only pertinent contention point I see is how should the clock/soft
> reset registers be programmed considering the spinlocks might be
> accessed outside of linux.
>
> > that something, it's just like testing a network driver without having
> > anything connected on the network you're testing it on: it probably
> > looks like it's working, but you really can't tell.
> >
> >> It's still implementation defined which hwspinlock is used for
> >> which component. Additionally if we assume the ARISC core uses spinlock
> >> this means by the time linux is booted the spinlocks should already be
> >> clocked and out of software reset so perhahps this is also redundant in
> >> the driver?
> >
> > Linux also likes to disable the clocks no one is using, so in such a
> > situation, what would happen? Can the ARISC still use them, should we
> > maintain the enabled all the time?
> >
> > This is exactly the kind of corner-cases that we need a test for.
>
> Fair point BUT, and this is one big BUT. This other thing (the ARISC fw)
> doesn't have a contract with the kernel on synchronization.

You really need two things here:

 - A hwspinlock driver that works, and you can see that on the other
   side you have that lock reported as taken (either taking one on the
   ARISC and seeing that it's taken on the ARM core, or the other way
   around). You don't really need a contract for that to do that kind
   of test, you can hack your own.

 - Once that driver is working, indeed, we'll need to come up with
   that contract. It's not that hard, really, it's just assigning a
   number to every device that could be shared, and we're even in a
   position where we can probably force that, and every implementation
   would have to comply. But that's a second step.

> So should the test be performed against allwinner's binary blob or
> against some of the open source alternatives ( I only saw it
> mentioned on the sunxi web page but no links to such open source
> alternatives).
>
> Furthermore, if we assume we should be compatible with the binary blob
> it needs to be RE'd in order to understand which hw spinlocks it's using
> for synchronization and I'm not aware of any such effort.

You don't really need to care about the Allwinner firmware. If they
already have a list of devices they have assigned, it's just as good
as any and if it makes sense we can use it, but if they don't or if it
doesn't make sense, I'm totally fine ignoring that driver as well.

The best thing you should target right now is crust:
https://github.com/crust-firmware/crust

Maxime

--smli3jy6jtokqtgy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkRNwwAKCRDj7w1vZxhR
xbWkAP4is0XVOvxTBfNYl6RWZvVFmC3/6v/exfuc3KrGzz99hQEAmsSBM8ObBQrm
JU58w5fjgX/pYCCsAgAIAI+kS5yxoAg=
=DXAv
-----END PGP SIGNATURE-----

--smli3jy6jtokqtgy--


--===============3156938252333918494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3156938252333918494==--

