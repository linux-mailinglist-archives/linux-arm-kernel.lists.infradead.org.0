Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 550371F768E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R6uTjZkucf9TcwHsUf5oEkMrV/HcF6jLnyiRZUTIM58=; b=gx4GUXGIrbpTyHUpsHrgVvxOj
	kYWexAmxjuQfk5LxoC1j4zJvxcf2i8fGUcy92z7zpmDlbze8+/tWpQFBB7wv6WjD2SYx7Czs35sMc
	aNkd+8gcUUZ3Ao1/zRTbEZSBcM2rMEQbtHQQY2smErs2u/vTqUcZP89zGdpBa9tWqYF0hyP9Cu80d
	T6ZgAQ6tH62z5efwyqfSbiVEFcFOG+QhXw7gQoa/K+Glf9pCUscaMFNCYGtXYww0ygrgL7PPxCA/q
	6yv7wJRZFm01q0JokkVq5SoV6FbRpZKLGjYIDfE2nTI4pF8I27BF87k4Tl8soTNuxpZ+J8ZQxPANb
	53Z813EcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjghM-0007jH-RY; Fri, 12 Jun 2020 10:14:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjghF-0007ip-JM
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:14:02 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D2322081A;
 Fri, 12 Jun 2020 10:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591956841;
 bh=expc4CDnEYnki3mJuBqA6Oh/0tPydmqgZtKMrV+jKBk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MlWUnQDM+u/RIUYixIip7C8RrA/dgIItdp97UwUfbUfXG0D+AFnA3GqyMex8dunyS
 SSPJxRyBr1KPHpnROeSumSMbIX5s2KP/X4HKr/DcNByipe0OMwcLE901IaXMGQ+FRm
 3DI8LIOvmteSGJa/CaOcnr8ReTxNOOAhzakq3Gak=
Date: Fri, 12 Jun 2020 11:13:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Message-ID: <20200612101357.GA5396@sirena.org.uk>
References: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
 <1591880310-1813-2-git-send-email-yibin.gong@nxp.com>
 <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: As seen on TV.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_031401_678232_690FDF9F 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5354164434849848534=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5354164434849848534==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 02:18:32AM +0000, Robin Gong wrote:
> On 2020/06/11 21: 41 Mark Brown <broonie@kernel.org> wrote:

Please look at the formatting of your e-mails - they're really hard to
read.  The line length is over 80 columns and there's no breaks between
paragraphs.

> > If we were going to do this I don't see why we'd have a flag for this r=
ather than
> > just doing it unconditionally but...

> What do you mean flag here, 'master->flags' or SPI_MASTER_FALLBACK? 'mast=
er->flags'
> could let client fallback to PIO finally and spi core clear this flag onc=
e this transfer done,
> so that DMA could be tried again in the next transfer. Client could enabl=
e this feature by choosing SPI_MASTER_FALLBACK freely without any impact on=
 others.

SPI_MASTER_FALLBACK.  If this works why would any driver not enable the
flag?

> > ...I don't think this can work sensibly - this is going to try PIO if t=
here's *any*
> > error.  We might have had some sort of issue during the transfer for ex=
ample
> > so have some noise on the bus.  Like I said on a prior version of this =
I really

> Any error happen in DMA could fallback to PIO , seems a nice to have, bec=
ause it could
> give chance to run in PIO which is more reliable. But if there is also er=
ror in PIO, thus may loop here, it's better adding limit try times here?   =
=20

An error doesn't mean nothing happened on the bus, an error could for
example also be something like a FIFO overrun which corrupts data.

> > think that we need to be figuring out if the DMA controller can support=
 the
> > transaction before we even map the buffer for it, having the controller=
 just
> > randomly fail underneath the consumer just does not sound robust.

> But dmaengine_prep_slave_sg still may return failure even if anything abo=
ut
> DMA is ok before spi transfer start, such as dma description malloc failu=
re. This
> patch seems could make spi a bit robust...

It *could* but only in extreme situations, and again this isn't just
handling errors from failure to prepare the hardware but also anything
that happens after it.

--mYCpIKhGyMATD0i+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7jVWIACgkQJNaLcl1U
h9Bozgf/UcNkCEZeiELBwx8bUG0lENlWEPOtNj5hIgl5N82SihwmCxoFw94tIgDg
4TQJsn1axD1mvHMA8Lp17W5ez2e+zEfzaAKluwvg7rfk64VIWBb1Am9kX9hq2BIV
N/lzF4sBC5KTJRa5k/tRDagDjAq0bd718Kj4rbXKazcDcHyKhq3JNH+JwPoo3QfH
+5HE3kQ70uqqsHmufQR/kHG/0tXp50ZqvEnSMUzKYZErDwdQ1Fl2RHi/M6sQV6DV
j5SkMSsgFE54nLeKU1HELK1RWz16w5TS+HaYjtHmRdIsaD+CM3buINDkVAfjkHsf
imE/+07m4y/n6nyM28LDJhdDjoM8zQ==
=SHv2
-----END PGP SIGNATURE-----

--mYCpIKhGyMATD0i+--


--===============5354164434849848534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5354164434849848534==--

