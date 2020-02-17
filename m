Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A55161D45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 23:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GVmKTNiJLfTX4dSoy8oCvNpXTQUbK4T5xNysPCr/yHM=; b=it3zaFe5y0XHVz6iZOxtBaIPV
	I/qtYSgFUEGcuRRonVmbzK6iyUiHbTKu5lxxkCycrECHwpozUIWNi+j69O48DwQ3w9HhgrmOYWPch
	gW8Ad8bcjIv78hv7Mw6Thq9Kad1r9uo/XIIeORIlRwpH+OY+h80Rw/a29LxygiA3g+MBXFJivBH/6
	a4gVv3qgYsoXOXyrTXHXUW8dot5niyUPFTW1NlnEBsyM1a4NNnx+wcRqlPt7E/3o8GrdU8rQu4zyM
	74SKiCXhOs+L5RX41dNh8aSzudjLe9sGcNxMQ1HvchivLNRM2PRZJ+GWCqbJG/MTE9HCwYINR9CCK
	KikTK8V5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3omy-0003zP-8D; Mon, 17 Feb 2020 22:22:52 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3omo-0003ls-UU; Mon, 17 Feb 2020 22:22:44 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48Lz4s3TWQz9sPJ;
 Tue, 18 Feb 2020 09:22:37 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1581978159;
 bh=T/Ho1UZEyFt8rs4SdRhU3v+8yxewmcXVrq7So23AQHU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fB16ZjEjWQ1+Dxc9OAbPk1bDSsmg4otnhc3HTmHHRUZxQHUqv5wcWqNqrxOTW+r1J
 oZlKigjMDFIO/I4jB/cGtIYxaqCPFdkr9TZeALZFb0sAljMlUU63CmHp+e1vbZIFwA
 u+L8sHcmVeoBFKhmD5BKx7+YPh9dLhdnPOAuMZJNqvTVmYZz8yB44kQUBOEnjUNHFl
 8OwTcN2z4rNA74p27snEmuoIiyUCDSBxm01OyfUdfYBKYvKUttrenaWdpsuNCjWh1+
 27rmHRv6oHPkLT/lmu2Z8Eb++7cOZcqH0Rargn+kVEKD+RPyQHIxPiEAFtm5GJgnW5
 ylz9hfujI2HIQ==
Date: Tue, 18 Feb 2020 09:22:29 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH] soc: amlogic: fix compile failure with
 MESON_SECURE_PM_DOMAINS & !MESON_SM
Message-ID: <20200218092229.0448d266@canb.auug.org.au>
In-Reply-To: <20200218080743.07e58c6e@canb.auug.org.au>
References: <1581955933-69832-1-git-send-email-jianxin.pan@amlogic.com>
 <20200218080743.07e58c6e@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_142243_185061_BE14A8B5 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============1381813574852946103=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1381813574852946103==
Content-Type: multipart/signed; boundary="Sig_/.qVlDOXsSXuL3sxUO2UwZ_+";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/.qVlDOXsSXuL3sxUO2UwZ_+
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Tue, 18 Feb 2020 08:07:43 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> On Tue, 18 Feb 2020 00:12:13 +0800 Jianxin Pan <jianxin.pan@amlogic.com> =
wrote:
> >
> > When MESON_SECURE_PM_DOMAINS & !MESON_SM, there will be compile failure:
> > .../meson-secure-pwrc.o: In function `meson_secure_pwrc_on':
> > .../meson-secure-pwrc.c:76: undefined reference to `meson_sm_call'
> >=20
> > Fix this by adding depends on MESON_SM for MESON_SECURE_PM_DOMAINS.
> >=20
> > Fixes: b3dde5013e13 ("soc: amlogic: Add support for Secure power domain=
s controller")
> >=20
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Reported-by: patchwork-bot+linux-amlogic<patchwork-bot+linux-amlogic@ke=
rnel.org>
> > Reported-by: Stephen Rothwell<sfr@canb.auug.org.au>
> > Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> > ---
> >  drivers/soc/amlogic/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-) =20
>=20
> I will apply that patch to linux-next today.

This fixes the build for me.

Tested-by: Stephen Rothwell<sfr@canb.auug.org.au>

Also, please keep the commit message tags together at the end of the
commit message i.e. remove the blank line after the Fixes: tag above.
(see "git interpret-trailers ")
--=20
Cheers,
Stephen Rothwell

--Sig_/.qVlDOXsSXuL3sxUO2UwZ_+
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl5LEiUACgkQAVBC80lX
0GxiFQf/YRVKJcX4m5O/6kWTlxZ2/vzcKlyfDLSY2sadgEbNcCoGpqHg3C8MuVN5
SHJd3URexLrLU3zLpCtgxCgDTjoQRNjqUIZVQYnWFBI0bOiWu+rc9Z+SCuJ62UVq
Ct6I89voQEMg9Wdz37uordsgbGJIRq+VFiA2lOSLJhMxQIJ9/5Wf5AO0i2g/RDxz
j/xX2bbl2nb3fFBBWQ59Hs1/GHaXCv73apLt0WTxxw8I5slbF0sRYqWDo0BABABX
PIar9gHeIOrBLJWJJTqJV3E7/JepXwBpfZK7fuZKcroirNefQrkQdhRW26C7gKFN
9uuM1INSTOTPFxa5jaYaw0r3vAnkYg==
=IwNd
-----END PGP SIGNATURE-----

--Sig_/.qVlDOXsSXuL3sxUO2UwZ_+--


--===============1381813574852946103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1381813574852946103==--

