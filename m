Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A801EBF4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9yyPi3kmjpOJRJdJdq6cEs8KG3PQqqHKAbEYW0uCAxI=; b=H4DahYTFExmcofvtHde5yNJsf
	Q/PO5quBYbjE/Q0N/yXM/hDRZhlIsllPAqroBWGJpwhWoRw+7DwILtmIuxDZQwcsguhMzFXIKHVEj
	IjPxTGtyYG7slWLJz+UGNE6PHksTauCRaN0mStTtQTMa2B7P+R/Ta+G9OsiZTod8GArKb3fYMMBBQ
	4M2U0SlGG6P4M4ADODl0yhv5WcLezccU2mhGOCwn9+B0t1PSmFB5lIQsxi9LiOkGNOHWtbZVkokgm
	2yxzX5sY7FmidjLZvjflQikFvPnwbtuyY8oJWFowG+mQ5jvTHjP/NwpqFMrBolycnp7vZ1MUMPc8u
	R/Wop7Hpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg97s-0003p6-Uk; Tue, 02 Jun 2020 15:46:52 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg97k-0003oF-1e
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 15:46:45 +0000
Received: by mail-qv1-xf43.google.com with SMTP id p15so1978277qvr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 08:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qzSEuCpyscmKEcqXp1a7EbLdA2hmWwk/OzqJUNtkEjE=;
 b=fYWMOkvOHbZel3XZmvxrN5Glw2gpYA1wRb8wfd7mkJlG3OO0PQYyYtwAdyUDVHSWRX
 GuvfsCuJyJ80lxs3We0lAJYHzMLQ4PyU8imyQvB53L2EYY9r72CEyoFZ2WTo0HwkmzDd
 787UFM7zLfmhgQYYEu0CXW6prlVh0RrDsh9Dos4pF8AoypQb7dBUjIfNRrOj6fJZDtOL
 nwQfGSlGsl9YIO7RDBK8kVLGIGXNurmcRQImUI2D7DNYeTwfZKRzPpXkxI168UwrGddt
 j+Qybk/9l7xHzO8zYtMuZLrrdGgWKxiE7cm66AKK8FHw3hWPVmyNJqa1GQDOKpyzIGwo
 5pYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qzSEuCpyscmKEcqXp1a7EbLdA2hmWwk/OzqJUNtkEjE=;
 b=fuui5euoeMARZ8WleDYGgYKT6rmO2qyri5C1a2qFkAp3aVNi+D0jesy4qiIei8q1HE
 iNuhpL8469c+UwR/eIALw9F9WfCXWE1dkSNzw1c0jyfTFm9B2prqDoUgsP8gPcNk7bZ+
 SmmL8KqUqhcI9nOXyMFUidAs8EEBECwdeRF96/lzg95EynvW/hvAyl7Nuo6CBcqqBaG4
 4UAk9/xGeHIXEngaVlk1eLZk+UXqpVxsoLI91Tu9kM90FoSxSgSQ2rsoGeX/SjemfkQr
 SNn3T781ynLMqA4SsOpEzcww1c26kdIb0/6i0I5lD+6IsP3vsyYfSX/mt1+RnWSqE3SV
 hmIA==
X-Gm-Message-State: AOAM530mFtbAZ3Wkb9K9/rrXDxxPwAB26raLpzRGT/hIvv2adOrMZ7jZ
 N/9n0FccW09HNTvdIDWljOw=
X-Google-Smtp-Source: ABdhPJw7LGOlr2xz60gu8um0AANDyr0R16BDgMgY1Hm2PlzxLQfK3UQtshToBzP2YwPv56kOjyJaSA==
X-Received: by 2002:ad4:4b25:: with SMTP id s5mr11431931qvw.212.1591112801117; 
 Tue, 02 Jun 2020 08:46:41 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id w94sm2899533qte.19.2020.06.02.08.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 08:46:40 -0700 (PDT)
Date: Tue, 2 Jun 2020 11:46:26 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: David Lechner <david@lechnology.com>
Subject: Re: [PATCH v2 0/4] Introduce the Counter character device interface
Message-ID: <20200602154626.GA5082@shinobu>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <20200524172542.31ff6ac7@archlinux>
 <20200524175439.GA14300@shinobu>
 <20200531161813.658ffdfb@archlinux>
 <20200531171351.GA10597@shinobu>
 <ac473c9a-f9cd-21ae-8f8f-d5181df2c134@lechnology.com>
MIME-Version: 1.0
In-Reply-To: <ac473c9a-f9cd-21ae-8f8f-d5181df2c134@lechnology.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_084644_106491_500D716D 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============4325199289188018728=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4325199289188018728==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 02, 2020 at 10:18:07AM -0500, David Lechner wrote:
> On 5/31/20 12:14 PM, William Breathitt Gray wrote:
> > Yielding the following /dev/counter0 memory layout:
> >=20
> > +------------+-----------------+------------+-------------------+
> > | Byte 0     | Byte 1 - Byte 8 | Byte 9     | Byte 10 - Byte 17 |
> > +------------+-----------------+------------+-------------------+
> > | Boundary 0 | Count 0         | Boundary 1 | Count 1           |
> > +------------+-----------------+------------+-------------------+
>=20
> A potential pitfall with this sort of packing is that some platforms
> do not support unaligned access, so data would have to be "unpacked"
> before it could be used.

Since the user defines the format of this data, they could reorganize it
to a more streamline alignment; for example:

# echo "C0 C1 C0E0 C1E0" > counter0/chrdev_format

Yielding the following /dev/counter0 memory layout instead:

+-----------------+------------------+------------+------------+
| Byte 0 - Byte 7 | Byte 8 - Byte 15 | Byte 16    | Byte 17    |
+-----------------+------------------+------------+------------+
| Count 0         | Count 1          | Boundary 0 | Boundary 1 |
+-----------------+------------------+------------+------------+

In the future, we could also define a padding argument to give users
more control over the exact offsets:

# echo "C0E0 P7 C0 C1E0 P7 C1" > counter0/chrdev_format

Yielding the following /dev/counter0 memory layout instead:

+------------+-----------------+------------------+------------+
| Byte 0     | Byte 1 - Byte 7 | Byte 8 - Byte 15 | Byte 16    |
+------------+-----------------+------------------+------------+
| Boundary 0 | Padding         | Count 0          | Boundary 1 |
+------------+-----------------+------------------+------------+
+-------------------+-------------------+
| Byte 17 - Byte 23 | Byte 24 - Byte 31 |
+-------------------+-------------------+
| Padding           | Count 1           |
+-------------------+-------------------+

I not sure it's best to introduce padding support with this patchset
given how much is already changing, but I don't anticipate packing
alignment to be something difficult to support in the future with this
interface.

William Breathitt Gray

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl7WdDsACgkQhvpINdm7
VJLCEhAArR5Z9rXla2JfgRiAGmqDThaapfbMiWbFcBbq6mdhn4a4+7+xcqkJIC+L
kBzFsq8MLeKihP8osMCt2Oct25/39Ica1qQEa0CsrzQ8xA2hM1+6oKBeOICpbd9r
HbPi2UlQajM63wey38/tJM3Nqwtz1ADdyNjXSHDXsUQTsx9GaB2pYD9qE1CkTGbU
9KDLIF7lX6olggVMKe9eyZY5MfsyeNVlGaMG/xZtaCehGCFDk9011mF5zVHrV9ya
79X5Gqm19BXFvnoEh2qbFkOMxUirIGEDZszdZtwMHKofYziL4QLAoSfEHrS/8GCL
8/SMpjuPi9WIMRA70htNgdsKEKsykx8d6rV8eASLIVqX8OrF4lfpTg7caWLWfVSM
2eRxRoyWICYfUPO5SMKKQoj+sBZxaM0GtgJecbt5Z5glRbYxODzkBHufffioIBU8
eNyA7mgtYi3ElWeQL2sxOV2UNHDwLzrouB2TBOM2ycNY7Mfo37tqt2MO7YdoGMi3
deUo9zeAgxbLyIx8YlDeQ1CdrSzAPpl3pPmkZG8zGf553Dyyww8AE+b87fyMcMkC
gAx+JnFU4ujy9DRE9mlcavropCZt4BLCtOs7EW7JqqUDXxoCcSnKugOmbWwEA18q
gcEbKztvUIOAelXICTgen8AqPt0nvI9R0/cF876yspBg/sw5e/I=
=Uj3v
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============4325199289188018728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4325199289188018728==--

