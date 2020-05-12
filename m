Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B08DF1CF5FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DlqW9BqjHkFYDX5yl9Ok626VQOCzFS8sT+6+8uXFbpU=; b=HXHEfbIBoD+OUIiSzDAWpnRCB
	spTXiSpWttOX1btpSY1EA/n4ZSsCSDLMwR6ZKdWLUbdbe2GgW4eKv/KWp/iyxXVbSzldIZO/iVaQB
	8fgkZ322SOT3c4VYhi3GEgrsP2W1mjYVCWCPLVUAOh31ZVJBDq2DzLZzIqfR7OHEoykwrpp+tutNz
	OJeWcPmU1y5OeTf20WsQuKhPRVcKTrpiiNLqBRqOPaIwEQyIx/dgV3rVMMZvRGU5xEvrikF3r5L4w
	W+AgEqm81WLTkr1svfrmB/8UtUzp0TTrIReGoadnqOAu1u0WtYYdIwfxvsxtuY82L5M+BRFO/hJzm
	auJlEt/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYV7i-0001CS-AD; Tue, 12 May 2020 13:39:06 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYV7Z-0001BX-H4; Tue, 12 May 2020 13:38:59 +0000
Received: from localhost (p54B332DE.dip0.t-ipconnect.de [84.179.50.222])
 by pokefinder.org (Postfix) with ESMTPSA id 1A6642C1F86;
 Tue, 12 May 2020 15:38:53 +0200 (CEST)
Date: Tue, 12 May 2020 15:38:52 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: qii.wang@mediatek.com
Subject: Re: [PATCH] i2c: mediatek: Add i2c ac-timing adjust support
Message-ID: <20200512133852.GE13516@ninjato>
References: <1585223676-30809-1-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1585223676-30809-1-git-send-email-qii.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_063857_717704_1230E2C9 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: srv_heupstream@mediatek.com, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5800516323624436797=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5800516323624436797==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="10jrOL3x2xqLmOsH"
Content-Disposition: inline


--10jrOL3x2xqLmOsH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Qii Wang,

On Thu, Mar 26, 2020 at 07:54:36PM +0800, qii.wang@mediatek.com wrote:
> From: Qii Wang <qii.wang@mediatek.com>
>=20
> This patch adds a algorithm to calculate some ac-timing parameters
> which can fully meet I2C Spec.
>=20
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>

Could you rebase this on top of i2c/for-next or v5.7-rcX? Because of
commit 90224e6468e1 ("i2c: drivers: Use generic definitions for bus
frequencies") which was added two days before your patch was sent out.

Otherwise mostly minor nits.

> +static int mtk_i2c_max_step_cnt(unsigned int target_speed)
> +{
> +	if (target_speed > MAX_FS_MODE_SPEED)
> +		return MAX_HS_STEP_CNT_DIV;
> +	else
> +		return MAX_STEP_CNT_DIV;
> +}

Maybe ternary operator here? Your choice.

And my code checkers complained:

    CPPCHECK
drivers/i2c/busses/i2c-mt65xx.c:591:11: warning: Redundant assignment of 's=
da_max' to itself. [selfAssignment]
  sda_max =3D sda_max;
          ^
drivers/i2c/busses/i2c-mt65xx.c:597:11: warning: Redundant assignment of 's=
da_min' to itself. [selfAssignment]
  sda_min =3D sda_min;

Last question: You seem to be the one doing major updates to this
driver. Thanks for that! Are you maybe interested in becoming the
maintainer for this driver? I think there won't be much patches to
review and reports to handle but it will speed up processing for me.

All the best,

   Wolfram


--10jrOL3x2xqLmOsH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl66pugACgkQFA3kzBSg
Kba3FQ//feg8sBvAPAGQ1c3TSFF7+uw13pr2B3K6UysUq9MRXolh+3dXFzkWXahk
YXtv9nHURBVjj+2SnDD2ZwnD9x1UGyxPug6Sp62VJMS80rjYvsL3/8s58srZeHsI
MoO68IX50ZMvaJip6LPoNk8Sw9Pl4RhK1Q6hejBsihdf27cWXt/W4jNVBlENaw5u
mIhZR2faLpWYIVwI/7+tFVJWqp5fn8zh28/7YNi3B0+NJexDi+z+lRSuD17s4VV7
63S6JpAzZm9VOW8myXtcyMV+nVAyBhgxQ3O/WybHAgaceOcjZJuTYd1rYTAznZGd
UAdcdrfAnQnnVnLYtFsqtCNWtqrxwvV2fktTT6O01d1YNwSvKGYD7csCo8rB4kQZ
TctS7orhQi8YbhRTZAZoGmVOChgsQ/nwy3ik8BaC/vcziXkQ+OpsXsNYz23nNmvh
YgugC/ueHcklhIxhinDJx4R1NSVrpuqRSFHceX/7ez64lRtAGlm7A8zdcOBy3I3j
oAWgUgd0b6OLnW0j0E8rJAGQJ9ub58VLFAfaZH0GVpxtXkYQ6npgVxzjwwwj+ONX
rC+pocqPujlCKBidHpJh+obmCUMlalkm3W4EMlEp1Mz/yAZ6JKDnC60YzfJtUStz
GiCto6g4vEd8j+KeH0eVABf5LQoE7ia1SC3f4eg0pfU1juidIww=
=LYkG
-----END PGP SIGNATURE-----

--10jrOL3x2xqLmOsH--


--===============5800516323624436797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5800516323624436797==--

