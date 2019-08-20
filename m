Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0709961E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=94jxTfdCRfZd9GZGSnx9xiu0EAq+ravcYcGLpx349nM=; b=HS7dieEKjsnE5PfzSa84mSqet
	sqVxdlDT1MqrSmPQqsw11T5AH7i5lYHnsjEyciRmI0DyyKbqiO0MngZwTZZ96iIUXD73co1MMsvJd
	75lPZBwxQ0fJ3wHqlxoeWhFbjhTDhH1Y30mSsYjk9bJsO/iQwdxKX7/vijzD+8lqv0wiPITq2vsJx
	4Qp8h0ZldCBPDTDeSjQmgNpLgnf6C8+uppxV7NDedPbjQHSS9VjSRIznOJ2EgflyqGB0o6DOotyAA
	xpMTvnCxqeVNotHZF+7Ir/pnrRJ/Pj8i3oL3yEs5f5zn9KhPff+PSxhzWIREPFjWHuBLBxB0PjELE
	ei1C9Tl5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04nA-000889-0W; Tue, 20 Aug 2019 14:07:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04ms-000882-NZ
 for linux-arm-kernel@bombadil.infradead.org; Tue, 20 Aug 2019 14:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PMCD9ZFxUEeJiZD0NRAeMA7SEaymCLDp+Dv8KTHGH2M=; b=uPd27dN6l/Q+Nr5srdti2CIgJ
 7c/aRI5OEvmVNNnbu45THflFsLHBh+nyBG2A9J74yMEBPuNbctlQRwO2sH9G9f+1aS22JsCW/d5Od
 0mkS2IseonH535aGmqlQoVCkmt4clP4vcAjXUle/r6cNhx2WMq1zDN0G6aHHFL4fwlu/ZtAmH2XkR
 JhEhZagCIW1sX9LW6A+/J0qrdXe0I08KpzM0y2UzsZHncE3OfQzCrXwADPZE4n97Q4mH4jii6fxaw
 CmLiwRnAkfp6lXjXbOpblG+Wlz1JlDvzCctswghskeNjhfq8qyDluruuK942hJ3EWNrUFNSjshqB+
 z+WFzzaAg==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04n9-0006zI-6O
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:07:21 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1A36340004;
 Tue, 20 Aug 2019 14:06:29 +0000 (UTC)
Date: Tue, 20 Aug 2019 16:06:29 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: Best representation for TDM devices
Message-ID: <20190820140629.qxhjlhcwvdphpimv@flea>
References: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
 <20190801114807.GB5488@sirena.org.uk>
 <CAMTEBE2L6KXH6JW2Z_6RSKdtFJc9ncFvfakwW_Vm88BCGC6aeQ@mail.gmail.com>
 <20190814160234.GG4640@sirena.co.uk>
 <20190819084141.otpbos2fgxav7rco@flea>
 <20190819154514.GB5563@sirena.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190819154514.GB5563@sirena.co.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_150719_271373_D3432E01 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============8302806195797070738=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8302806195797070738==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g4wssaeu7tfooa4y"
Content-Disposition: inline


--g4wssaeu7tfooa4y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 19, 2019 at 04:45:14PM +0100, Mark Brown wrote:
> On Mon, Aug 19, 2019 at 10:41:41AM +0200, Maxime Ripard wrote:
> > On Wed, Aug 14, 2019 at 05:02:34PM +0100, Mark Brown wrote:
>
> > > OK, in that case I'd recommend providing them to userspace as a single
> > > four channel stream - keeping everything bundled together as long as
> > > possible to make it easier to keep the processing synced up.
>
> > Ok, that's what I had in mind as well :)
>
> > However, it looks like we can only capture as many channels as the max
> > being exposed by the codec on the link?
>
> > Any attempt at capturing something with 4 channels here using arecord
> > was either reduced to two channels (the amount of channels provided by
> > the adau7002 driver), or just refused by the ALSA core.
>
> > Is there anything that we need to configure / work on to enable this?
>
> I'd expect there's some issue in the capability/constraint matching code
> that needs fixing - that should work but I can totally see it not
> working unless someone goes in and does something to fix it.

Ok, I'll have a look, thanks!
Maxime


--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--g4wssaeu7tfooa4y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVv+ZQAKCRDj7w1vZxhR
xXVFAP46R8G3YfCMc3AL3HMp6M8ibBWNVhILkDT3D506zedV9QD9FgkHZwYNDuPR
wB4ytgX2kUV9uypIj0glURJAbQNQuAc=
=T2F0
-----END PGP SIGNATURE-----

--g4wssaeu7tfooa4y--


--===============8302806195797070738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8302806195797070738==--

