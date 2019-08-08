Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E3985761
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 03:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SguZ990Twh88TzCu37c3i1/6pkvh5R5tecUwGeNeaT8=; b=bg2J9d8RbagwXDdpUiwCJomGl
	70Kyqoxx4ONNs8wUUWH1i7CMyNJVjYr2ISlLKeDJhqDJyKadPlHw6UDd0TRZT0j1LT4btTwuOLJ+R
	t0W80x1EZ/t7Aiw22MoXafysf+lI1CklYj3Hmd2gFGzVR4LgXkFZQ1IYaXNoEWUyVrsIj7Mos3Zup
	MUx301l8pkofdCmL1RziEJL++kbWto69NlMWT97clwRoR4gkMnMniHorST0dPElCwWwONHx2GGRxd
	uOmnQh2tOfHG4teJvImTnvUW6S1qiSrLjlTFQwFsbpQGDnans/l/UP5IkNOyaxeAP2aIEErgFXGdK
	WCED77T6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvWo4-0006r4-Ue; Thu, 08 Aug 2019 01:01:29 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvWns-0006qE-9M; Thu, 08 Aug 2019 01:01:18 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 463qnK0hXRz9sN6;
 Thu,  8 Aug 2019 11:01:09 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565226071;
 bh=MsMFPAr56dFY8txzKEu0S50XsC7x6UWlqVj387uslpE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ul9uHSv2Ta3v3XNn4l0MbL7N55D+LloSbQoLFOMCydtRMR2w64dbN2GNiSq4Q4iVL
 auqDYaV3U9Rm736O4eZ4XEyF4qFkBDRqIStHXY6JBXedpNhm+xN+qFWHlFxxC3gIBo
 qwHRKRVFPaQ8JrQPwJgM4lPDerygjqIQ1eLt0/CI54EAHMhhE/ddu7qADHl0gKuJUU
 9Y1OC96+/Cm/h5LBJgyNZmS8yopeCvRXy7dA9DGXoFVb16PEGN1lc2TwKpFa78KhVE
 J1VSHRjVp7fVo+kDdHjWaOLEaOFkximdMWSIIMvfnBswO0y/s9OtWGnMarmYLWB2LJ
 qxIFiOKzVJ5IQ==
Date: Thu, 8 Aug 2019 11:01:08 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: Re: Linux next-20190807: arm64: build failed -
 phy-rockchip-inno-hdmi.c:1046:26: error: anonymous bit-field has negative
 width (-1)
Message-ID: <20190808110108.2db1b128@canb.auug.org.au>
In-Reply-To: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
References: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_180116_758977_47BD2CA5 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: heiko@sntech.de, open list <linux-kernel@vger.kernel.org>,
 lkft-triage@lists.linaro.org, kishon@ti.com,
 linux-rockchip@lists.infradead.org,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2398711235061873225=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2398711235061873225==
Content-Type: multipart/signed; boundary="Sig_/PnbChS=XA/gL0CFTVs6ccQo";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/PnbChS=XA/gL0CFTVs6ccQo
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Naresh,

On Wed, 7 Aug 2019 16:48:15 +0530 Naresh Kamboju <naresh.kamboju@linaro.org=
> wrote:
>
> Linux next 20190807 arm64 default config build failed due to below error.
>=20
> /drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error:
> anonymous bit-field has negative width (-1)
>                 inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7=
_0(v));
>                                        ^
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note:
> expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
> #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
>                                                         ^
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded
> from macro 'UPDATE'
> #define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
>                                                 ^
> ../include/linux/bits.h:39:3: note: expanded from macro 'GENMASK'
>         (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
>          ^
> ../include/linux/bits.h:24:18: note: expanded from macro 'GENMASK_INPUT_C=
HECK'
>         ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
>                         ^
> ../include/linux/build_bug.h:16:47: note: expanded from macro
> 'BUILD_BUG_ON_ZERO'
> #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
>=20
> Config link,
> https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/cl=
ang-8/kernel.config
>=20
> Build link,
> https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/cl=
ang-8/build.log

I think the patch that caused this has been removed form linux-next for
today (it had other problems as well).

--=20
Cheers,
Stephen Rothwell

--Sig_/PnbChS=XA/gL0CFTVs6ccQo
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1LdFQACgkQAVBC80lX
0GzDtgf/aEnfScThkUKIL3HX/GJiKdIkq1RrUzMyRCDBGdYLXLEqa5AkuWd6x0qb
9MkNVLdg6ZatO2+T1JMstagNLw6X8ts3zQczqd/10e1mBlB2cw2jdO7jbLRmEO0m
fz2igYmPkgFEN2ErYfwxdx0emqHpLkt0unV6TfSGNIt83isODNkH0YKS7LrSK+PK
FDGj+eCgSFt8xjQ4Cpz+4XMngun6OMn8nRVCGj0kcRlDBvtSavxzQCFmI9HzF7Yn
fHQ85Zg7m17qilNAJ+8HgjA5t5u18471SQxsgPujsuP1iWvRgdA5hzFujmFLpLDf
Jxlds7woEgx7Q41L5gg56wTFwJs8Sw==
=u6RM
-----END PGP SIGNATURE-----

--Sig_/PnbChS=XA/gL0CFTVs6ccQo--


--===============2398711235061873225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2398711235061873225==--

