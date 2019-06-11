Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30298416DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 23:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	References:To:In-Reply-To:Date:Subject:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B9e0knE5vwiy5Zj32ghd65v+iywQzsj+Wf6h/NxkNw0=; b=ki6GpWo9/V33AugpH957IqaeS
	Vc5ESMZBiCqRymO9de0leUoEC3qedfPZDBHevtTUds8+G3+/JiSHNf1VSAKKiX3ej8Kvtvb8Yy7iV
	NX/KaswE1gGeI/5vBW1+74EFLlLzLrsKcV66RdC30uyJngwDdWriidgu8PYd5ZSy4kCQO1P1b4xUI
	ypPACnTCwhC+nOOCWmFT1nRDWk6w1VSEyloOo1bt7FVzlvbtrHZi2fkGXXle0cBGOsTdvRRtBvMAn
	v+kGUN2437j10W/WeqEjHUlE5hffUiAQGTZ0OwyyepmObxv6VnPBuC/41CMcYA1/MwJmaSIHfQOu6
	wXFaQhuew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoJQ-00067D-CD; Tue, 11 Jun 2019 21:28:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoJI-00066u-FI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 21:28:06 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so4939420pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 14:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dilger-ca.20150623.gappssmtp.com; s=20150623;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=kHOmEXm44ofEStTL89clw86zKCfMK7pxZweKkVj60zc=;
 b=BNyH/I0aTFapdWvAUe1tA6vh4V7SGGnKW9i2iryYsCgfyNFoPcnfrRh6ENitI8pQJy
 ceJmUE14+hVNBM9WC+xAjbbK0ncjBtDNhZsREXS8wFJSFtJTAC+2kp/Gx/2pDb6cUMf8
 JpUjBxKEfOQvrL9m9kMePR3M4fWdfHCrRVaSTbbHZtX1SELIRUg9HXb/1sKatJNSwuF+
 QO1DomLI907tfm1bq218gSHTCncrOyxsRkBkmStrHKSsQYkjWyIsW3ZSK9J+lpNXxDiR
 oojDQ9O14TWNGl2rGOpuLibgYG5bNECymjz1Ygn5Bb6fBc1ArnndD5ref2xpl4j3WuJU
 Jxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=kHOmEXm44ofEStTL89clw86zKCfMK7pxZweKkVj60zc=;
 b=lMdV8yLHQWrOgzFwHI5cOZ5LGHmn/TLQYpGCtffcy1kT5rnslS7BVaXPdhZ3KhwvXK
 rl4g2qKrZ86tEw2TssjzKmIQ0dqRdDLkf/j4iGb3YG69hFOCA2WkPswDAnNUCmi6WW3Q
 5LM2RFh/r+9lWpF6l/oOxVZEkHfefA1QW4FOE4bkH15K4iqIRCazXl/xp53HyfJdaagA
 W3lCjRfVp+xHPfFsLnPX6CLdg8qdysfrAePymGwbQ+TbpbqScRgfHDLq3UzNuPVD0iQO
 BYGdtKZ0uOT/AXP1XKgBbr3/8TfAZ3vomgYH+ueMDh66VpdPY7z7oUMnp32O4rFlv2xR
 uuJw==
X-Gm-Message-State: APjAAAVe/DUxBYWEBvzvdULl11MKpJ+EDCl06ZvtjMD2e/GcmkRH2mUm
 emHC3VMqSC+rhs1NM26jcIylDg==
X-Google-Smtp-Source: APXvYqx8fSWzb0HB5KPULCR4fAdvphiu+yCLRaPJ3mwALDMWZWEo99vzBDgf+T6A9kZ8B2J2ELLLxQ==
X-Received: by 2002:a17:90a:a505:: with SMTP id
 a5mr29364827pjq.27.1560288483342; 
 Tue, 11 Jun 2019 14:28:03 -0700 (PDT)
Received: from cabot.adilger.ext (S0106a84e3fe4b223.cg.shawcable.net.
 [70.77.216.213])
 by smtp.gmail.com with ESMTPSA id a192sm6068716pfa.84.2019.06.11.14.28.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 14:28:02 -0700 (PDT)
From: Andreas Dilger <adilger@dilger.ca>
Message-Id: <315FEA4D-41B1-4C5B-89AA-7ABA93D66E0A@dilger.ca>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: [PATCH V2] include: linux: Regularise the use of FIELD_SIZEOF
 macro
Date: Tue, 11 Jun 2019 15:28:00 -0600
In-Reply-To: <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
To: Andrew Morton <akpm@linux-foundation.org>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
 <20190611134831.a60c11f4b691d14d04a87e29@linux-foundation.org>
 <6DCAE4F8-3BEC-45F2-A733-F4D15850B7F3@dilger.ca>
 <20190611140907.899bebb12a3d731da24a9ad1@linux-foundation.org>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_142804_517280_1F61B3F0 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: keescook@chromium.org, kvm@vger.kernel.org,
 kernel-hardening@lists.openwall.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, devel@lists.orangefs.org,
 linux-mips@vger.kernel.org, Shyam Saini <shyam.saini@amarulasolutions.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-sctp@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bpf@vger.kernel.org,
 linux-ext4 <linux-ext4@vger.kernel.org>, intel-gvt-dev@lists.freedesktop.org,
 Alexey Dobriyan <adobriyan@gmail.com>, linux-arm-kernel@lists.infradead.org,
 mayhs11saini@gmail.com
Content-Type: multipart/mixed; boundary="===============5407170289269430790=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5407170289269430790==
Content-Type: multipart/signed;
 boundary="Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487";
 protocol="application/pgp-signature"; micalg=pgp-sha256


--Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On Jun 11, 2019, at 3:09 PM, Andrew Morton <akpm@linux-foundation.org> =
wrote:
>=20
> On Tue, 11 Jun 2019 15:00:10 -0600 Andreas Dilger <adilger@dilger.ca> =
wrote:
>=20
>>>> to FIELD_SIZEOF
>>>=20
>>> As Alexey has pointed out, C structs and unions don't have fields -
>>> they have members.  So this is an opportunity to switch everything =
to
>>> a new member_sizeof().
>>>=20
>>> What do people think of that and how does this impact the patch =
footprint?
>>=20
>> I did a check, and FIELD_SIZEOF() is used about 350x, while =
sizeof_field()
>> is about 30x, and SIZEOF_FIELD() is only about 5x.
>=20
> Erk.  Sorry, I should have grepped.
>=20
>> That said, I'm much more in favour of "sizeof_field()" or =
"sizeof_member()"
>> than FIELD_SIZEOF().  Not only does that better match "offsetof()", =
with
>> which it is closely related, but is also closer to the original =
"sizeof()".
>>=20
>> Since this is a rather trivial change, it can be split into a number =
of
>> patches to get approval/landing via subsystem maintainers, and there =
is no
>> huge urgency to remove the original macros until the users are gone.  =
It
>> would make sense to remove SIZEOF_FIELD() and sizeof_field() quickly =
so
>> they don't gain more users, and the remaining FIELD_SIZEOF() users =
can be
>> whittled away as the patches come through the maintainer trees.
>=20
> In that case I'd say let's live with FIELD_SIZEOF() and remove
> sizeof_field() and SIZEOF_FIELD().

The real question is whether we want to live with a sub-standard macro =
for
the next 20 years rather than taking the opportunity to clean it up now?

> I'm a bit surprised that the FIELD_SIZEOF() definition ends up in
> stddef.h rather than in kernel.h where such things are normally
> defined.  Why is that?

Cheers, Andreas






--Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAl0AHOAACgkQcqXauRfM
H+BPvRAAvxlKWQUZz2tRSIBu/vtfIKMWVyY8fctru8Y1oH+Slx4hWvJ/xxYWjMIa
LJJgybj3MjwTd30FmSWmmQmKDyjo5oWGelOeLzVfueI8blZIaDcUYT1rrM9h7F4G
RD22ST6XCWjj5oAmVBW/XHxRIFD6uHtwOnby9a4LgkFOehdkDBhopfAMduEZrW7P
qNa2T0M660SXtmt8dy89Ynb+sge7iinnRyPKkxNaweIXYGVtZzoScRFNK0vSZjbm
TgVIKwFyLDbdX1bJFQHZDWnfchCRqQrrmHyIl+wAGTccpfen4bGhDqW0wU1+rQpv
G2RL1z+N2WiWwKx/TmdPatglD2Hqr73jKfvi7X+DzkJ0nJdYMKnNRpe3S2rZwFjf
MHpmP35Ql2/96bDulYuirHOVvSrrXF/RXZLUp6MuTu2rGankXETXgiP0lkKcmOZW
gvA0pFTKFD8YaGf0NU9jS/OUOjYpqhMkBSK2C3d0UdRMCQzRWAudLzM9quRH7vCm
SfRD6QWHQfOELlKMenRptxYEi8IM3+3R4G1g3VmR7YCegpayslXiSKpgnBAqw4W0
Z4q6nJ/YOwNTjwzs9ndgCZfGpW6JxKYY0DuQe7ld+ngnXNdVrH1X5pZz9ASV9Wli
CowwSgwFlqOSkmcy52L7pRGDGSI/yWwzl6QHtjT8o0e30S27eCs=
=UFIV
-----END PGP SIGNATURE-----

--Apple-Mail=_5B427BF6-3A60-46C7-A8F9-EE572E3F0487--


--===============5407170289269430790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5407170289269430790==--

