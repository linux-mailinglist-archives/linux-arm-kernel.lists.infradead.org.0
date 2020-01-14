Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F409913A9A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lE+2bDX3yQ/YkK69FKerB3QofpZxSFJaWHlDQHgB8Aw=; b=ABQG0htf01K2oqNFKkOrH8kD1
	bSgQD5f8Ml8m7En9BKRqOl0KRiaTqR9TK0EWKDCxitfNj4mLAHfyiBb/Ad3hK8Q9IMJ3sLy8zLzzx
	iKI7rVysZ6MVt0Hne52snkavqc1Y3xPcIqtT30sGpr/wtzck6jWpWtaQTZY+C69inlh0ttLz97Wg/
	zY3ALyX67TtLXlB6YpCrFM+bN8wgeBlNIUWFkEWd7z7YNrUq2SD3HWfRnKiad51s/wPQ3I6VR679o
	fDOjQTiicwJOSr2VRa/zzaAM2DZE4MYWSm3/7/uKjvDKVnt+ptDA+XGOKFugiRdGlJ37TV1ggx+f9
	lzKg6lPNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLc9-0006Nc-EM; Tue, 14 Jan 2020 12:48:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLbv-0006N7-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:47:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4GqE2Lx+k2JThlIRuOZwkWMYwse09vSDmRyJ5N5ET+Y=; b=wuNFl2uWonj2S+6POiWKI5XZR
 4NUVe+SH2fp+SGWHoc8NPzlC26hmsxUaZuoImIWN0KxpfX4QevXRtioasxq8Ln8OPxr7lpqmc5BpO
 ZQnXJIriMGj0VXxVl3aDQSJtgB19WAxawavOQcslxGV9YJnMy5C2sitp3Lj26Yw29NUfQ=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irLbl-00085w-9b; Tue, 14 Jan 2020 12:47:45 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id F3D37D01965; Tue, 14 Jan 2020 12:47:44 +0000 (GMT)
Date: Tue, 14 Jan 2020 12:47:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH v6] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20200114124744.GT3897@sirena.org.uk>
References: <1578968526-13191-1-git-send-email-richtek.jeff.chang@gmail.com>
 <s5htv4yfpnt.wl-tiwai@suse.de>
MIME-Version: 1.0
In-Reply-To: <s5htv4yfpnt.wl-tiwai@suse.de>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_044755_336806_8AEBCD94 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, Jeff Chang <richtek.jeff.chang@gmail.com>,
 jeff_chang@richtek.com, matthias.bgg@gmail.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4093615735296767151=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4093615735296767151==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H88uUF932U8Oj0a6"
Content-Disposition: inline


--H88uUF932U8Oj0a6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2020 at 08:44:22AM +0100, Takashi Iwai wrote:
> Jeff Chang wrote:

> > +	if (ret < 0)
> > +		return ret;
> > +	reg_data = (u8)ret;
> > +	if (on_off)
> > +		reg_data &= (~0x01);
> > +	else
> > +		reg_data |= 0x01;
> > +	return regmap_write(chip->regmap, MT6660_REG_SYSTEM_CTRL, reg_data);

> Hm, this looks like an open-code of forced update bits via regmap.
> But interestingly there is no corresponding standard helper for that.
> Essentially it should be regmap_update_bits_base() with force=1.

> Mark?

regmap_write_bits().

--H88uUF932U8Oj0a6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4duHAACgkQJNaLcl1U
h9Buowf/UyFuv5m4kkR3mDh23iVqGGfCUbs52vx5O6dxillJ76kZ71N7Vg2LPrOq
c9B8A7CLb2Ao2pTBr3o1ZONyZiRm1L+5OqyeZZzSnUnuECVsQASRgBpssbrUINHV
p5rY6kKIF5dKZGOBjmZWHSNjZ8GgC0BW4Si0P5WH0k7xDHlUsXQHiz47YXWcHQ2d
zjenB+X5Kg74bvJ6uh+5KM0kqhQPKSHw33HR7DejUQQMyQFQtNtQVkebVEXnMM6/
sItgCSyukh8F9TTWI6StXdTeJvcveaa1VUAqu68nImD0VL2im79DbbPzoMks/29G
GORmKiyK82lF0hw6y6zwOcga3GD/KQ==
=xw93
-----END PGP SIGNATURE-----

--H88uUF932U8Oj0a6--


--===============4093615735296767151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4093615735296767151==--

