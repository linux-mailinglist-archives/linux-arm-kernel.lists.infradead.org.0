Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7988988ECA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 01:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HJVnBKjQQd3Fk0oDXNzOUJfRsMN4FOUh8wTkS2Mmz/M=; b=BNT
	kNzHogt0BIkr9r3O53+uCajHsGE4+8ySjLCmRbCtE2I54HOEf+/ID4bmP7nPveKdF3t/Y7i9f/2h4
	WTBKXezHitLbARMftUDI41JvBbkXcj+4sZxhwcLV+UNg2/LsHCGEXZlE1oKVRISUCEPgofY9B3/m5
	BCoBMO9McN19Ggg88dWy92mrx+lUYFj+TAsATRHvkgIc3KyeTxBnky9VHaE8Bzc0J9V/JOV3yAe+e
	BnwuP8IXU2xubCvsKI47O70Y6yRYmRX8RKncNV8qRtE/vw8EW/Ml6E5Yh7VSzjgAv9kdkWpuBAcZY
	jvyirhtNJUw3a0yLL21t8TQlGLbAoxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwaZO-0000R7-BN; Sat, 10 Aug 2019 23:14:42 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwaYy-0000QS-UK
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 23:14:19 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id BA1B38030F; Sun, 11 Aug 2019 01:13:52 +0200 (CEST)
Date: Sun, 11 Aug 2019 01:14:04 +0200
From: Pavel Machek <pavel@ucw.cz>
To: ofono@ofono.org, kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org
Subject: Motorola Droid 4 SMS sending
Message-ID: <20190810231404.GA26417@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_161417_311339_577E3597 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============4133548012572774420=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4133548012572774420==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline


--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Motorola Droid 4 runs packet protocol over serial... and its kernel
driver requires explicit "write()" boundaries at places where packet
boundaries should be.

So I can send SMS using low level g_at... functions (that are not
normally accessible), but not using g_at_chat_send().

If anyone has good idea for clean (or clean enough) solution, let me
know.

Best regards,
									Pavel

   snprintf(buf, sizeof(buf), "AT+GCMGS=3D\r");
   encode_hex_own_buf(pdu, pdu_len, 0, buf_pdu);

#if WANT_IT_BROKEN
        strcat(buf, buf_pdu+2);
        g_at_chat_send(data->send_chat, buf, none_prefix, NULL, data, NULL);
#else
        g_at_io_write(data->send_chat->parent->io, buf, strlen(buf));
 	g_at_io_write(data->send_chat->parent->io, buf_pdu, strlen(buf_pdu));
	g_io_channel_flush(data->send_chat->parent->io->channel, NULL);
#endif
		=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--W/nzBZO5zC0uMSeA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1PT7wACgkQMOfwapXb+vLHKQCbB1FXu15H78z7H1X+NaG1Y/pJ
UfsAn1FJ/Qlz2GsssMPxTbGJBNgwHcZZ
=YHx4
-----END PGP SIGNATURE-----

--W/nzBZO5zC0uMSeA--


--===============4133548012572774420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4133548012572774420==--

