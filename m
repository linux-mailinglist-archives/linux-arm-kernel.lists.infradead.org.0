Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B211C3D38
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1u5WnoS/lvWXuJGfCc4v0WpQx9WfOzNdKDS97gJWwaA=; b=ojMs38g+px8S0S5w1YjsEf1EN
	cPdOmCUd7HrhRCz4brtLn5Bx84p8jvfq/RGldkYXqU7ENfmHtSMVz2DGHeVJwtvjhcaoN5uSQMxIP
	k9E92ypfUpYWWkpRmFh8PUx/A+uNYvfeeXpcRilFfA9OE048geyg3toWwyqoaomLH7wrJEd/2DXeY
	HpkhLGRNJ9U7tZ9eT0YM/BTXUv7efCydOHipKosSjki+2KIYJwc3MaQkDJhJx6yLFs0pNfRBAhemJ
	Qg1TutHi783jI8P2j5S/5lE/ciPS10NM9+U6k9DMHLu7JgGEDRTSASbTBDwu9/56HSLyAZB6wsUas
	7vSjGQYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcDL-00037M-O3; Mon, 04 May 2020 14:36:59 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcDG-00036c-8T
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:36:55 +0000
Received: by mail-qt1-x844.google.com with SMTP id e17so14103971qtp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FNaisMDGArpGlPRfLRKQpHWPsiqYB+mHRPWMY51uCAQ=;
 b=qtGPFaTG60O8J34EhvZpk3924NedCpipS+FUIhDlhb2/hR5StrKGg+2eW4b25LUI0S
 fB53RVN6vCa3AFyJtksjKuks5c+u5SOD1Y3ZzJ+U5GAOhzJheV+mU1otV8fXFa6poXMS
 jJRa/YSIFLA1vVNjzwpwvO7MzNsMoZEyp5MsZafMflN3s7AYH6+oIFTZzMgapW1dWCge
 VQeojOux9J4fpxrYGcZ7ZSo1FaSoPHAklU18oGkGIes1Bg/IbQlZn6jRzNe93uQbcEHd
 sx7g2GZHWwjJKGzSDjNtzGv128eWFZH8ME+nYwyXUzklmBwxlxrPv7upVb6FI+VJIc8L
 mPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FNaisMDGArpGlPRfLRKQpHWPsiqYB+mHRPWMY51uCAQ=;
 b=oOb4nFBt9QsLNnYlMGchW5YlHnCaTsWZKs1Bp64mkA6N+J72fD99Y2jrfs8GNzcYPg
 1MwKRLnkx8awWeesJF0RwaO8tNQodhoLOdlnF7DrB/lZj4vkL2pmojbAd9kMhic5UQnQ
 rjpeiz6T22YO6B2QEhaXmwd3nCZ8hFn6MjgFihSvmgp4QcLmM7ojdFEqn4IgfekA9K8f
 ZuzQN5s/rpJlZIlUMuEp22qqIVYDF+UHtuYPP7Hdn8vaEAEyb/ThaFw5lsFABjvhkYDS
 Ojzs/7A0a6yrMtkL74XNHIeuS/5jogdroYUqfTZ8osnwYa6jfHzcWnnLXFfPqeYVpaOR
 sj5w==
X-Gm-Message-State: AGi0PuYmHVesPJzYL+M3sT/2BI7cblF5lNYTw/BL2DXjJ4Youep57KX7
 VJF8/AO820Md6u9oxWkTfOk=
X-Google-Smtp-Source: APiQypIbJPPwO/DmtFYahHsceOEOsov12ceFH6yGUL37oEyLSYTRwG1BzJLG1K8UCUpwOT373WaocA==
X-Received: by 2002:ac8:794b:: with SMTP id r11mr7962248qtt.155.1588603012401; 
 Mon, 04 May 2020 07:36:52 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id x124sm8132801qkd.32.2020.05.04.07.36.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 07:36:51 -0700 (PDT)
Date: Mon, 4 May 2020 10:36:38 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v5 0/4] Introduce the for_each_set_clump macro
Message-ID: <20200504143638.GA4635@shinobu>
References: <cover.1588460322.git.syednwaris@gmail.com>
 <20200504114109.GE185537@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200504114109.GE185537@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_073654_324961_B6F931B1 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, amit.kucheria@verdurent.com, arnd@arndb.de,
 yamada.masahiro@socionext.com, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, rrichter@marvell.com,
 linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org,
 akpm@linux-foundation.org, Syed Nayyar Waris <syednwaris@gmail.com>,
 rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0828309646992642108=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0828309646992642108==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 04, 2020 at 02:41:09PM +0300, Andy Shevchenko wrote:
> On Sun, May 03, 2020 at 04:38:36AM +0530, Syed Nayyar Waris wrote:
> > This patchset introduces a new generic version of for_each_set_clump.=
=20
> > The previous version of for_each_set_clump8 used a fixed size 8-bit
> > clump, but the new generic version can work with clump of any size but
> > less than or equal to BITS_PER_LONG. The patchset utilizes the new macr=
o=20
> > in several GPIO drivers.
> >=20
> > The earlier 8-bit for_each_set_clump8 facilitated a
> > for-loop syntax that iterates over a memory region entire groups of set
> > bits at a time.
> >=20
> > For example, suppose you would like to iterate over a 32-bit integer 8
> > bits at a time, skipping over 8-bit groups with no set bit, where
> > XXXXXXXX represents the current 8-bit group:
> >=20
> >     Example:        10111110 00000000 11111111 00110011
> >     First loop:     10111110 00000000 11111111 XXXXXXXX
> >     Second loop:    10111110 00000000 XXXXXXXX 00110011
> >     Third loop:     XXXXXXXX 00000000 11111111 00110011
> >=20
> > Each iteration of the loop returns the next 8-bit group that has at
> > least one set bit.
> >=20
> > But with the new for_each_set_clump the clump size can be different fro=
m 8 bits.
> > Moreover, the clump can be split at word boundary in situations where w=
ord=20
> > size is not multiple of clump size. Following are examples showing the =
working=20
> > of new macro for clump sizes of 24 bits and 6 bits.
> >=20
> > Example 1:
> > clump size: 24 bits, Number of clumps (or ports): 10
> > bitmap stores the bit information from where successive clumps are retr=
ieved.
> >=20
> >      /* bitmap memory region */
> >         0x00aa0000ff000000;  /* Most significant bits */
> >         0xaaaaaa0000ff0000;
> >         0x000000aa000000aa;
> >         0xbbbbabcdeffedcba;  /* Least significant bits */
> >=20
> > Different iterations of for_each_set_clump:-
> > 'offset' is the bit position and 'clump' is the 24 bit clump from the
> > above bitmap.
> > Iteration first:        offset: 0 clump: 0xfedcba
> > Iteration second:       offset: 24 clump: 0xabcdef
> > Iteration third:        offset: 48 clump: 0xaabbbb
> > Iteration fourth:       offset: 96 clump: 0xaa
> > Iteration fifth:        offset: 144 clump: 0xff
> > Iteration sixth:        offset: 168 clump: 0xaaaaaa
> > Iteration seventh:      offset: 216 clump: 0xff
> > Loop breaks because in the end the remaining bits (0x00aa) size was less
> > than clump size of 24 bits.
> >=20
> > In above example it can be seen that in iteration third, the 24 bit clu=
mp
> > that was retrieved was split between bitmap[0] and bitmap[1]. This exam=
ple=20
> > also shows that 24 bit zeroes if present in between, were skipped (pres=
erving
> > the previous for_each_set_macro8 behaviour).=20
> >=20
> > Example 2:
> > clump size =3D 6 bits, Number of clumps (or ports) =3D 3.
> >=20
> >      /* bitmap memory region */
> >         0x00aa0000ff000000;  /* Most significant bits */
> >         0xaaaaaa0000ff0000;
> >         0x0f00000000000000;
> >         0x0000000000000ac0;  /* Least significant bits */
> >=20
> > Different iterations of for_each_set_clump:
> > 'offset' is the bit position and 'clump' is the 6 bit clump from the
> > above bitmap.
> > Iteration first:        offset: 6 clump: 0x2b
> > Loop breaks because 6 * 3 =3D 18 bits traversed in bitmap.
> > Here 6 * 3 is clump size * no. of clumps.
>=20
> Looking into the last patches where we have examples I still do not see a
> benefit of variadic clump sizes. power of 2 sizes would make sense (and be
> optimized accordingly (64-bit, 32-bit).
>=20
> --=20
> With Best Regards,
> Andy Shevchenko

There is of course benefit in defining for_each_set_clump with clump
sizes of powers of 2 (we can optimize for 32 and 64 bit sizes and avoid
boundary checks that we know will not occur), but at the very least the
variable size bitmap_set_value and bitmap_get_value provide significant
benefit for the readability of the gpio-xilinx code:

	bitmap_set_value(old, state[0], 0, width[0]);
	bitmap_set_value(old, state[1], width[0], width[1]);
	...
	state[0] =3D bitmap_get_value(new, 0, width[0]);
	state[1] =3D bitmap_get_value(new, width[0], width[1]);

These lines are simple and clear to read: we know immediately what they
do. But if we did not have bitmap_set_value/bitmap_get_value, we'd have
to use several bitwise operations for each line; the obfuscation of the
code would be an obvious hinderance here.

William Breathitt Gray

--+HP7ph2BbKc20aGI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6wKGIACgkQhvpINdm7
VJKZaxAA563CCfH6P1WpErURHBsLjHAUFl6mWCySrxGYUSYQqsxhz1w30MzHhckw
kQBx1mik+w14YUypQ7ISU8a8EWdkbHEW2xyKPKb7jnWnz/7SWf69BzkZJJBrzeXP
89IGJNkWXg5sVx2AWPA5aY4aQqita5RAEbZvroQKQr3C264kV5lH86GxG9KRD5+E
O71wWPdZ48+5sM9PXS6DH3F/BJ67g8Ii43WqNLrJ5C7JW370iYsaLiF/wspSFtpZ
a7BNAOPhJB7qkBhl14KwotTAMkv7crq1WLKP8D/0ycsrZNGiMaS7rmYyWM5DSZOb
zWmI082M3v3KL+XLtIHx59kjM3wkE6P1cMdRbh7ba06xn2Sx5Ml45wto1F0eVTwi
Pl+FfnefRZ7GYp5Zi2HfAl7LciWArBiFQTjj+8AJivE5dAXQSkjbB0EjJGsrdBQG
VgynevuG1Ni7wW99wO0LA/zv3EoZd7bqcZRmd/ntLZIUY2pw+llKODzUJYXxz3zh
QIkppvkkaQMv9/0XksRNIRETvzEy5fI3eVD2LFZrndu3fYEHXdHuQiFRZuvjnjao
8CG3LMAzfWjBy8fIApCXtYAScRxFw3lcwAl/G0VsI98rVZ6z1J7LhawStPRfG7FE
NUjbshq/FN/pSVsTKkXCJiSXdgyckbjkeFry5GOyDcrncEzWH5Y=
=mCyx
-----END PGP SIGNATURE-----

--+HP7ph2BbKc20aGI--


--===============0828309646992642108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0828309646992642108==--

