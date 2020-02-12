Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE8815A8BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X1DTc5mahYEbateTjGVVAvyMiUg391faasXC9nQeVpQ=; b=WsA+JR4KQuk8HRrXjNdE+WSnN
	72/AjHVY8+UxMhcXZOgrZHAJEsMIpqH2juiojWDikRE++iPZexqWftfgvzY3Yk44Q4U/TfmJfLtCV
	OJWKtE0hPxS4e0WIVPUrNBQN8bdYmiUCFU0e3los+oEHjf8kxJFPBMJFxWtlcW2Ig0PE4jM9GbZnA
	DJGqwB9vL2onzf/UyjR8xvBsV9YUvlFqviqd+9McguLUDh3nQ3Jg1hul1RgXtstp15mmq6DU1xR2P
	noDyEz6MvqU+AIkDbLxOEx3651Soe/1jIYRlTAbNN4nRbMoMgyBDYYWa7AqBIpD5Ixt802miIdLN4
	e9iofQrJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qms-0003pZ-IV; Wed, 12 Feb 2020 12:06:38 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qmk-0003nM-Nk
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:06:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 0B9C3137A;
 Wed, 12 Feb 2020 07:06:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 12 Feb 2020 07:06:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=RUmiDoG/Fw7eExb/8Lz2ohDd3zZ
 366RJ5uVqgrwrAgc=; b=uFXWJ2aYdjSAnXc5rL8i7LXZNh3ercdNzBb904C3lAZ
 65rIrQ+dovggfIUw3FgwXARzQK3UfzjMXfFjv94x2/XCrOuNuevsUjPGZoIgqcra
 GTUD4vF/nLfh1xMTp6p092y0qdSUFfsh9hJyB2kjdThTq+ByQ4LBq3/MYJirW2/f
 +aVAFw7iY8MDTiG/GpS8ZZS6H9/Fq7d+vNXI8eRpcfwMYvHp7jjvGhmAQo/XG59A
 N65gysgGnogGzVy45o1KV8rtGDSEM/qmeMSab1nCfI8oRKVEZ3NMKQlGnpo/2cw8
 4Ey6PPktyZdLmV4obsUiM4VirM+6IKr5p7fdytecj0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=RUmiDo
 G/Fw7eExb/8Lz2ohDd3zZ366RJ5uVqgrwrAgc=; b=do2J44cRV74SFn3cMDV63e
 dR9rksrFxdIUgoPDdV6dPhnIzOqW79ga5W1vVMnhEZ7OZfa+tibtX3OecTtsOQDL
 ujsJJk/R1EysCZTHbg3c+ZQGS+Vwww+HXw1sQsY4ImNw5dxcmIg5MGEPguqT2tZJ
 Ha9IkSRAtUCtmbUmTZ5ypMZJ/xhIsHWaL7WH1x6q5/HCDaFFJl/A8fYxyADnzxQ6
 9zCPOOJYygriDs+fXQg5nrJ+lnktSSrRMiYS42+azvoxz//QGqlxAkr5PkaXyFxe
 eWwCoGYv2mnrVIh8M9xoahlHcQ74cBuK/Hb73Q8RQH5Y+jU0fCs6KvNObppRdwfw
 ==
X-ME-Sender: <xms:PepDXpBuOBkDVRH6L6iDZqmgxx6wMuXfcVRZ_ZPe0AAV8IwJchNjPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieehgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PepDXlyjkBRSYFFAudDPSOQFXRi8xo4YD43XN9ILGzQRgcUMlp7hzw>
 <xmx:PepDXtst87PkvCrV37vOppSsMFeKzfrMdj7OUtzkne3jMpdLSQslwg>
 <xmx:PepDXk9yNtePTvxaPX0G5D35CDNBTnR6nCQcgvv8DKaoRFjqAvNINA>
 <xmx:QOpDXgZAuUwDIfCziE_YXRKvB8kgiru8E86NcrWpCF67-5LFj1qEQw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 23CED3280066;
 Wed, 12 Feb 2020 07:06:21 -0500 (EST)
Date: Wed, 12 Feb 2020 13:06:19 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
Message-ID: <20200212120619.2tbsvy4sst2duupl@gilmour.lan>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
 <20200211074643.uhhzpp4ycvkaz4pd@gilmour.lan>
 <7fb0e4f7-4da6-517f-6e96-9b3dc6ee4e56@suse.com>
 <20200211123427.gbzhopfuge6osd2s@gilmour.lan>
 <4e6eb880-8b52-aa1b-53bb-b77ff2cb858f@suse.com>
MIME-Version: 1.0
In-Reply-To: <4e6eb880-8b52-aa1b-53bb-b77ff2cb858f@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040631_042687_90975920 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============1241619981223832071=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1241619981223832071==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="54ljhxc3eaywggpi"
Content-Disposition: inline


--54ljhxc3eaywggpi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2020 at 03:17:40PM +0200, Nikolay Borisov wrote:
>
>
> On 11.02.20 =D0=B3. 14:34 =D1=87., Maxime Ripard wrote:
> > On Tue, Feb 11, 2020 at 10:08:08AM +0200, Nikolay Borisov wrote:
> >> On 11.02.20 =D0=B3. 9:46 =D1=87., Maxime Ripard wrote:
> >>> Hi,
> >>>
> >>> On Mon, Feb 10, 2020 at 07:01:41PM +0200, Nikolay Borisov wrote:
> >>>> Based on the datasheet this implements support for the hwspinlock IP
> >>>> block.
> >>>
> >>> How was this tested?
> >>
> >> I tested it on my pine64 lts e.g. loading the driver and reading the
> >> reset/clock/sysstatus registers to ensure everything is unmasked and h=
as
> >> expected values.
> >
> > Isn't the point of hwspinlocks that it's shared between the ARISC core
> > and the ARM cores. How did you test that the lock was actually taken
> > on the other side just by using the ARM cores?
>
> I haven't. I'm really focuse don just enabling this on the linux side of
> things. True, hw spinlocks are used to synchronize cpu running different
> OS'es.

I'm sorry but this driver hasn't been really tested then. The whole
point of it is to synchronise with something. If you tested without
that something, it's just like testing a network driver without having
anything connected on the network you're testing it on: it probably
looks like it's working, but you really can't tell.

> It's still implementation defined which hwspinlock is used for
> which component. Additionally if we assume the ARISC core uses spinlock
> this means by the time linux is booted the spinlocks should already be
> clocked and out of software reset so perhahps this is also redundant in
> the driver?

Linux also likes to disable the clocks no one is using, so in such a
situation, what would happen? Can the ARISC still use them, should we
maintain the enabled all the time?

This is exactly the kind of corner-cases that we need a test for.

Maxime

--54ljhxc3eaywggpi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkPqOwAKCRDj7w1vZxhR
xRkZAQCPfU47ridEHCasWm7jRjQqPFeqF20EVhuyt8xGV+syMQD/SeZ37oN87nC8
/6jn9sjZp1AK2zn/9538LRKI0ggDxwo=
=53h8
-----END PGP SIGNATURE-----

--54ljhxc3eaywggpi--


--===============1241619981223832071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1241619981223832071==--

