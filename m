Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDE391F3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g8ohhyqvUD+GH4UvUDC3cUGtATTGdxfhdASbv0Bme7o=; b=sjJLj5ZYULFPuNvba8RU7ZWoM
	rUUK/F5i2cE51P2NTkeOyaX5r0EBlkvv0uZRb+AXv5ZwV4Lt2orErcHAociTtCJwnIpCO8d/kbErJ
	rJiPb9Ss2vQZvaLZ571Ia9jW2WjbMGIWI017n4lmJAhA4gZE0+dp87vVTEHnNbg17vd5sNZDKAecO
	mqhMYaH+WFgnnMZZHPg1xN35qoB9HFM3cl6n0S5/sq3s9s0hX39gyMbvKu6fSfzeX7LFtowfthl+9
	9C4JEL3t+PmuL8pA6T8h4LEkwDu+rXptFuVFEH6qcDANR3v1QZirPvl9xFQ0y+9XjCGIPWSGkk7UN
	wsDbncSGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdGR-0004Zj-Cf; Mon, 19 Aug 2019 08:43:43 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdEY-0003Jw-8g
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:41:48 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5242A240004;
 Mon, 19 Aug 2019 08:41:42 +0000 (UTC)
Date: Mon, 19 Aug 2019 10:41:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Best representation for TDM devices
Message-ID: <20190819084141.otpbos2fgxav7rco@flea>
References: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
 <20190801114807.GB5488@sirena.org.uk>
 <CAMTEBE2L6KXH6JW2Z_6RSKdtFJc9ncFvfakwW_Vm88BCGC6aeQ@mail.gmail.com>
 <20190814160234.GG4640@sirena.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190814160234.GG4640@sirena.co.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_014146_738377_899F07CC 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ali Burak =?utf-8?B?UGFyxLFt?= <aliburakparim@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5798455825696388967=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5798455825696388967==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dcfpx62fqgv2jqjo"
Content-Disposition: inline


--dcfpx62fqgv2jqjo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Wed, Aug 14, 2019 at 05:02:34PM +0100, Mark Brown wrote:
> On Wed, Aug 14, 2019 at 12:53:24PM +0200, Ali Burak Par=C4=B1m wrote:
> > On Thu, 1 Aug 2019 at 13:48, Mark Brown <broonie@kernel.org> wrote:
> > > On Thu, Aug 01, 2019 at 01:43:06PM +0200, Ali Burak Par=C4=B1m wrote:
> > > > On Thu, Jul 25, 2019 at 03:01:12PM +0200, Maxime Ripard wrote:
>
> > > > Hardware is a custom board I designed with 4 PDM output microphones
> > > > and 2 adau7002 devices as the codec for PDM-to-PCM. We want to do
> > > > signal processing with this board. Therefore having separate stream=
s for
> > > > each microphone is crucial to the application though I am not sure =
where
> > > > we should implement this exactly.
>
> > > What is this processing - are the streams from these microphones
> > > logically related in any way (eg, is this a microphone array)?  There=
's
>
> > Yes, it is a microphone array application for speech enhancement. Thus,
> > signal levels and physical time delays are important.
>
> > > probably going to be some overlap in the input signals at least.  If =
you
> > > need to for example correlate different microphones then that's
> > > relevant.
>
> > Yes, we correlate different microphone signals in some of our algorithm=
s.
>
> OK, in that case I'd recommend providing them to userspace as a single
> four channel stream - keeping everything bundled together as long as
> possible to make it easier to keep the processing synced up.

Ok, that's what I had in mind as well :)

However, it looks like we can only capture as many channels as the max
being exposed by the codec on the link?

Any attempt at capturing something with 4 channels here using arecord
was either reduced to two channels (the amount of channels provided by
the adau7002 driver), or just refused by the ALSA core.

Is there anything that we need to configure / work on to enable this?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--dcfpx62fqgv2jqjo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVpgwQAKCRDj7w1vZxhR
xY+TAP95lE8eBN7vztzKTn7/ox2b2yOAY/R+9IZAr6MhozTa7wEAtkB0vztpaSDp
ETZvJkHOTQVRvG5/rW07h2wsZXLT6gQ=
=GcTW
-----END PGP SIGNATURE-----

--dcfpx62fqgv2jqjo--


--===============5798455825696388967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5798455825696388967==--

