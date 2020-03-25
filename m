Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C345192A67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:49:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y4epxRL3a0vYjqMwxBJAyNiAJIJ4ulbLDjBTfDE+Fpk=; b=gYjBHdMem4QHObKJDvCWpP7Am
	Ly1C82zEY+ZzKG69tiXvP/cEx0lx5eyrv7kwHB5c+TsZLSVjQl95ylkZScYlNHnH8L9uesaMtY3Oi
	Cqx2F/GfKCRJP3yKFhCs/vGDlYGA2l4VsirWnE1fwM1qFFxQEvourUKNAHEgg63ZtfrqbPa4CcbYC
	Q4yWeRWHH2QIV7jboUnnjE3SeJIBgxK5zBxrbek6LAYVIQcjX6Q/5GvSx36RBETwRf2Gf1/2YyXDk
	NMaUfInQcr01+H2wr5+mjhZCjrPERTurqcNanXlYc6Z/dVgtP8w65MOGU670in95TjYuxUrnL/n4E
	/lJ/hVZLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH6Pj-0005xR-DN; Wed, 25 Mar 2020 13:49:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH6PY-0005vZ-UU; Wed, 25 Mar 2020 13:49:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id k21so2527843ljh.2;
 Wed, 25 Mar 2020 06:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=YDd4psw77+TjgR3LErHqB45pC2hCTAbwI5y4bLpGMCk=;
 b=ue53poOk145/0Go2c3Fb090mulEi4KObzB4Gg55MF1CvN6x6lHk2Qf8lPZ5p5R3+G2
 VP63zmjrCzKb82gf8jqzE7LJCcY3foHxfMdEijJbHSCvcWJLb0An2KtlnlYKqoF8gBtu
 ZM2ZexiOVhdnZg2Q8ll4+pRAHMR+Ez1aKDwmBNYhe6Nvsy5yNRJPt/igDUFQngqQ230s
 7FxB2+dbcgoOMjaWWt/4YXpHnhCdt+5z1W+vDSn3fbKYHcojeMuflvme0hVgs/EFyIqc
 gbWuWSFjkBuKobaUJ4xQCX8QcyxxNW29g1kVgr4YR3BYFqnKx39KEE+s3zCzKixeZeWO
 yEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=YDd4psw77+TjgR3LErHqB45pC2hCTAbwI5y4bLpGMCk=;
 b=H3qbSFNwwdbKC6yydHD5juzfoUOElFUVBHv6I0aKscq//sv58OsdJ4bN5JF36xB5f+
 UqhvAX72IxMWhjWixHu65DjU+WuFR7OfSV/GO93/Ogjx3uGLdlFFBwAH0rIJ04uJ47tx
 dcu2TUCQZVSq6mEcpDGSW9ojWKlggHRWqXQ2arX8c27BeHbqcPG64CN2q3el2TV5TMnR
 A+qM0zOsCGcJxxvCPYNLUfzMhQvIMrTHRBmnMtwnVgoieli4wF619TMJtbiF+gu5glKB
 ct29CIVMMh5NOpstk8KFB+P8anahPSc4g8JRjpSINsYYCPQkRRKbSGvxkASMhQqrxCT4
 2WJg==
X-Gm-Message-State: AGi0PuZduFMeNug3ekW+YdaVNk0Vy6yEez19P26h2y7R9gVZy7QQbn8Z
 n8dfGUxffBs9j2Uaf1RfuOM=
X-Google-Smtp-Source: APiQypIVWnohCBw6Laxl+KFUeZrUWln3GLJRYstirHtutpXWykkoScXzvviRjE1iqzvOz4cwkSo1ww==
X-Received: by 2002:a2e:a362:: with SMTP id i2mr2084950ljn.52.1585144172471;
 Wed, 25 Mar 2020 06:49:32 -0700 (PDT)
Received: from eldfell.localdomain ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id f2sm6420123ljn.101.2020.03.25.06.49.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 06:49:31 -0700 (PDT)
Date: Wed, 25 Mar 2020 15:49:21 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions
 for the Scatter layout
Message-ID: <20200325154921.2a87930c@eldfell.localdomain>
In-Reply-To: <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
 <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
 <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_064937_007078_D60DBCEF 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ppaalanen[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Simon Ser <contact@emersion.fr>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8501006469541730692=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8501006469541730692==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/e3_VDQSNvzbMkOgJtm//89P"; protocol="application/pgp-signature"

--Sig_/e3_VDQSNvzbMkOgJtm//89P
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 25 Mar 2020 11:24:15 +0100
Neil Armstrong <narmstrong@baylibre.com> wrote:

> Hi,
>=20
> On 25/03/2020 10:04, Simon Ser wrote:
> > On Wednesday, March 25, 2020 9:50 AM, Neil Armstrong <narmstrong@baylib=
re.com> wrote:
> >  =20
> >> Amlogic uses a proprietary lossless image compression protocol and for=
mat
> >> for their hardware video codec accelerators, either video decoders or
> >> video input encoders.
> >>
> >> This introduces the Scatter Memory layout, means the header contains I=
OMMU
> >> references to the compressed frames content to optimize memory access
> >> and layout.
> >>
> >> In this mode, only the header memory address is needed, thus the conte=
nt
> >> memory organization is tied to the current producer execution and cann=
ot
> >> be saved/dumped neither transferrable between Amlogic SoCs supporting =
this
> >> modifier. =20
> >=20
> > I don't think this is suitable for modifiers. User-space relies on
> > being able to copy a buffer from one machine to another over the
> > network. It would be pretty annoying for user-space to have a blacklist
> > of modifiers that don't work this way.
> >=20
> > Example of such user-space:
> > https://gitlab.freedesktop.org/mstoeckl/waypipe/
> >  =20
>=20
> I really understand your point, but this is one of the use-cases we need =
solve.
> This is why I split the fourcc patch and added an explicit comment.
>=20
> Please point me a way to display such buffer, the HW exists, works like t=
hat and
> it's a fact and can't change.
>=20
> It will be the same for secure zero-copy buffers we can't map from usersp=
ace, but
> only the HW decoder can read/write and HW display can read.

The comparison to secure buffers is a good one.

Are buffers with the DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_SCATTER modifier
meaningfully mmappable to CPU always / sometimes / never /
varies-and-cannot-know?

Maybe this type should be handled similar to secure buffers, with the
exception that they are not actually secured but only mostly
inaccessible. Then again, I haven't looked at any of the secure buffer
proposals.


Thanks,
pq

--Sig_/e3_VDQSNvzbMkOgJtm//89P
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl57YWEACgkQI1/ltBGq
qqdFJQ//cD3K85nsCGKhXDmSyQzaQzhmiNbd/rn5U392CpaELlvtHKVFtGggN5zp
l5MIb/EjYgZUHG220KklqCiZAzk+RLTmZnQPZmXPAnKobeeJLIGwHhKFBTozKG8t
9NLG8Gp1brFA7xVz63SSmZTUWFw4LP+HnMRIPPEGEpx6J4J3MJ8ikC+Utcvcs8yZ
1Be4E8s6cLRxcJPt4Q8PwhTNXtwdPxBL8aGhYB93Ptu30fGACCmUKCCtNyEo7PN+
qK2+eyZh3kB6Ktujsi+QqWgxtzIWtRH67ezkp3TlrqfFDQ8kH5guzfFfjb6coXW9
evJLwTgHoU/WZaOve3WVajKqfJdCbzzKFqBjaIeeA8RTWyWwHeBDpFA/G859H1OQ
zd03sTrUz+uOl/k9ZpyG7dvReAijUA450FQe+c59lDWwWV94tRwbrFbjI3yh7R5q
pl1bpuCFj5BVA74GEc8VzSNuqmqnqDltkiVAJ2BDi2heB5+2Pt+xZQlXz4rY4Ynl
y9VLeSXlDxS7eJwsYjN9i3ra182eddULpxbdbdxPF7OVhpG2Wdhr7BFzdiNakBCM
V7P7YUwFTOoNhiotZEKVpAnCQ7tIQgDxWRD/va+m6EmMhnjh0jDzb7nKz2a9y1FN
UTiMucJoHEe0bxz94KaioKsNKAZQf7cNK1aUPkPF5qH+ORGgdVc=
=oJGl
-----END PGP SIGNATURE-----

--Sig_/e3_VDQSNvzbMkOgJtm//89P--


--===============8501006469541730692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8501006469541730692==--

