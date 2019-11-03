Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865BFED3D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 17:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uQ+n+PjEHjVFslidkSO5LinAQUOlLuWJSkqBL1E6awE=; b=HoIBCdpjmPU7+MGyTHEKNXtMT
	8oZgUh7Up8oPiXRXBNXtu5uh3FarMbRGN43Zsph+EoxeJpCCZ2GiYjZoFteWFLiBWg1SFRb1Dq6ID
	ZNpErxkr08PYbanEJ7XmxkxbWQJYVq5XBmcb82HSC7h4ZS99ThOQGI8X0AVPxv7s+2eeANu8Ui6w1
	/cqlCpQv+EqGMt7AZc7PLFCrsIJm1Vyl1vsGso4BeH5y636f98PF9RwF+bLKKVFLv+3zK/lxTmXKp
	AxzQbZ3I3+ckw5b6rzjD+p2QLEgNdBAc/yL4few7n9kQ8GtIpqZfm9BGOYPlJR1ntRbr7SWHMcOBQ
	OXZ/DCk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRIeS-0003JW-Dy; Sun, 03 Nov 2019 16:22:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRIeL-0003J6-2z
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 16:22:46 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08E2120848;
 Sun,  3 Nov 2019 16:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572798164;
 bh=MdoURyUZcQbm9ELJ4P+9FxCOSf3poCqyZ7a+DoWIQyE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g/cUA6VvRX7z30gTnCo/+VC+PGcOH9r5T840xs199WPGBApWOGRy2Wm5LUaX4j0pY
 EoI5jgyoy363VH9KVlPR4UtMIYvtwz2tccFji240s4eGESkaS7oL7T8mNgz3hl/c98
 xgD8raEyuuEVMwpz5R+QWGG1CM7lg+36MzEpGLbI=
Date: Sun, 3 Nov 2019 17:22:41 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Karl Palsson <karlp@tweak.net.au>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: add FriendlyARM NanoPi Duo2-IoT Box
Message-ID: <20191103162241.GE7001@gilmour>
References: <20191101091050.iw3n4qiqyueoymif@hendrix>
 <kCnyFRBTNPaksjpFGz3Vnx92t6yIivNcqixk5m2h238c@mailpile>
MIME-Version: 1.0
In-Reply-To: <kCnyFRBTNPaksjpFGz3Vnx92t6yIivNcqixk5m2h238c@mailpile>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_082245_153473_57EAD85E 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "wens@csie.org" <wens@csie.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1101591066818113243=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1101591066818113243==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u65IjBhB3TIa72Vp"
Content-Disposition: inline


--u65IjBhB3TIa72Vp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 09:55:41AM -0000, Karl Palsson wrote:
>
> Maxime Ripard <mripard@kernel.org> wrote:
> > On Thu, Oct 31, 2019 at 11:12:16PM +0000, Karl Palsson wrote:
> > > The IoT-Box is a dock for the NanoPi Duo2, adding two USB host ports, a
> > > 10/100 ethernet port, a variety of pin headers for i2c and uarts, and a
> > > quad band 2G GSM module, a SIM800C.
> > >
> > > Full documentation and schematics available from vendor:
> > > http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2_IoT-Box
> > >
> > > Signed-off-by: Karl Palsson <karlp@tweak.net.au>
> >
> > It seems like it's something that can be connected /
> > disconnected at will?
> >
> > If so, then it should be an overlay, not a full blown DTS.
>
> Fine with me, I wasn't sure on the best procedure for things like
> this. It's not something you plug / unplug at run time, you'd
> tend to just always have this, or not. Is it best to just have
> user space distributions handle selecting the overlay then? and
> they maintain the overlay file?

Another option would be to do it at the bootloader level, based on a
discovery mechanism (eeproms storing data / the overlay itself, the
presence of some devices on buses that you can probe (i2c, mmc, etc).

> I'd considered overlays something for _per user_ customization,
> but I'm perfectly happy if it it's intended to be used for per
> product customization too if that's the right method.

Overlays are for dynamic configuration. The user customization is one
of its use case, but add-on boards are another (being used by the RPi
and the Beaglebones), just like FPGA configuration for example.

Maxime

--u65IjBhB3TIa72Vp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb7+0QAKCRDj7w1vZxhR
xUOhAQDZpbpB1JhUwpEpa1m0lL+I/g1BtVN/bGFs5sVjL+uXpAD/eo1qcpSUyU3K
al1o/BWKh2teIAwI9z/EMruIiD4CZgk=
=8zLz
-----END PGP SIGNATURE-----

--u65IjBhB3TIa72Vp--


--===============1101591066818113243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1101591066818113243==--

