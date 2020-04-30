Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DEC1C0B00
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 01:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IYZwCdDaf+f4kvrqaY0uzQvSBvZt9M13jksJBNFv4Fw=; b=OIeocep2qGqInzH6iA35nx5/f
	5UZ5ve0VCgjDhEHso4YyQAgyOtoZPptcHVH+lyJ0EIszINRBbC2JXTlzuH0jR0rdoonzwDGik7Den
	N3TqIRhOslngBi/cpnX5vyRGxIXrYkfB/5lCUQ7Yjf0RVtvUl1jdtLchf50xPrXDrQaJLIdmuMBsq
	tQhoW0nfqEIaBQL30WCyVjNp7EnxuwXGteE4Mxoz2IbVDjm0dfb+6TsIBcRMeSiusz0scX31s2zPS
	K3XYUbukkuYSIZEjlRE+0+boKJB5o6bGYLFeRlHOaMXFMhUk7gfPLYflN4fmv7Q7q1ndORT5gfu6f
	8254EUxkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUIg6-0002oE-9m; Thu, 30 Apr 2020 23:33:14 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUIfw-0002nV-Aj
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 23:33:05 +0000
Received: by mail-qt1-x841.google.com with SMTP id g16so2703859qtp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 16:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2A/DmSI7u9G6q/CMXLbjEf3bMfDgzemo/yRoL39aqaU=;
 b=aSfaSeHlt9VZ20RTcm6aeKqni2u8F0wnyraBRryqBN07wBonR4bMv0OuUpi12hCmZp
 hfHHWiw4Z95QKrvH0o0HgJKkW0epOP8pLAUysAVfeM67/nDi506HswYDQ/ovEoRMuP5o
 HIlMLYl44Sq9XM4nkn08LCMZkno8nkbOnoPYITd+xu2kjkFkhmRcNNFYNEagtskGDoJs
 rnag/Amj9PywWwTm78BBgjwdztrYsEFXm1ujJ/42djPgSyQCj+nnBLBBwzq3vZ0xLIGy
 y6MMCIB00FEhwMj+BehjqypFmoOf5G+GsQfQANaptmbUcL4BDh24sQLje2nV7RAv66Yq
 u/1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2A/DmSI7u9G6q/CMXLbjEf3bMfDgzemo/yRoL39aqaU=;
 b=hhj+0RX1O9D/aBKsa8CWtbXCOYFvrw1IuH3nUNMTvG30R3mGZVXS/amgVt25usa96P
 em4HhWQtEHjxnT6mgiPAcdm1OB0bqNaGVjQAz0uRciFM2MSWkLBgzx+Dsft3Awek7LIS
 sb2X2cvdKQv0WHvrYiiyu8tqwYKBVQ3r+a9H9EWQG5xd9tsck6y1m5I8vit4ZUdP5HUY
 jWZG4dHUWeJtlNExj/LfxRyeNOHxkd984ZPz4tAEQvOHiaIvmwZE8WVaN8oMHE2xIryf
 l16NZxgnjnBPqpIVOGMZU1pwiYcyg80FkoVImQdRja3ADOyIctPobA+YrIxRxZ5I0uqg
 Tw3A==
X-Gm-Message-State: AGi0PuYS32YSByKCQi8SQHBIFa0d0T2XxL7OtX/5Q1SXTQEOawukZINk
 AwvejCteBgv6zLp2BawiOMQ=
X-Google-Smtp-Source: APiQypIqFCBPhblosSlDyR/50M2frSiMdvRrArGECFPJL4S4dYt1C46HkQeCTpPmPDbsu96iSNKqUg==
X-Received: by 2002:ac8:a02:: with SMTP id b2mr1024400qti.95.1588289580533;
 Thu, 30 Apr 2020 16:33:00 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id t67sm1421670qka.17.2020.04.30.16.32.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 16:32:59 -0700 (PDT)
Date: Thu, 30 Apr 2020 19:32:45 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200430233227.GA15963@icarus>
References: <cover.1588112714.git.syednwaris@gmail.com>
 <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
 <20200429102114.GF185537@smile.fi.intel.com>
 <20200430161514.GA7107@syed>
 <20200430163855.GU185537@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200430163855.GU185537@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_163304_390102_DE3C1E88 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, akpm@linux-foundation.org,
 Syed Nayyar Waris <syednwaris@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2252482874963605951=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2252482874963605951==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CdrF4e02JqNVZeln"
Content-Disposition: inline


--CdrF4e02JqNVZeln
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 07:38:55PM +0300, Andy Shevchenko wrote:
> On Thu, Apr 30, 2020 at 09:45:14PM +0530, Syed Nayyar Waris wrote:
> > On Wed, Apr 29, 2020 at 01:21:14PM +0300, Andy Shevchenko wrote:
> > > On Wed, Apr 29, 2020 at 04:39:47AM +0530, Syed Nayyar Waris wrote:
>=20
> ...
>=20
> > > > +	const unsigned long state_size =3D BITS_PER_TYPE(*state);
> > >=20
> > > This '*state' is unneeded complication, use BITS_PER_U32.
> > >=20
> > > > +#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)
> > >=20
> > > This macro makes code uglier, besides the fact of absence of #undef.
> > > And also see above.
> >=20
> > Thank you for your review comments. Just want to clarify, you want
> >  a new macro to be created - 'BITS_PER_U32' ?
>=20
> It's already there (read bits.h).

I'm having trouble finding the BITS_PER_U32 macro; are you thinking of
BITS_PER_LONG? I don't think there are any cases where u32 is not 32
bits wide, so perhaps it'll be better to just hardcode 32 directly in
the code here to make it easier to read.

William Breathitt Gray

>=20
> > Also, don't you think that with BITS_PER_TYPE(), in case later the type
> > of 'state' changes, it will be reflected in this code without any code
> > change?
>=20
> If it changes the bits per type will be least issues there. The rationale
> behind is to have code readable. In proposed change it is not.
>=20
> > Let me know if I have misunderstood something.
> >=20
> > >=20
> > > > +	DECLARE_BITMAP(old, TOTAL_BITS);
> > > > +	DECLARE_BITMAP(new, TOTAL_BITS);
> > > > +	DECLARE_BITMAP(changed, TOTAL_BITS);
>=20
> --=20
> With Best Regards,
> Andy Shevchenko
>=20
>=20

--CdrF4e02JqNVZeln
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6rYBwACgkQhvpINdm7
VJLECw/+KAFotSbxboM6/EahiZDg6o8VINH7Voi6PxMY138JFAJuvSOH9WXnsB04
3TlevS6jVx2FsANy/U24AjNejr3V4CCcICuKbGJSHvPN/1qujHVORBAAKQXESA1u
Rcbp4bsCWwRvPfm5g3OHqqeoku8n+SEp/kvryk98/ejV8z8JWstw/zDk6cMQEuwx
a+Qu6xHFeLD89RMBpQ0+jLFYYfXVFUiSx2I37d3klJdo1a6Y9ciFpETgYi0gdecW
O8byAK57VtfjAuBEg3DQdsoSO5elteH2c00ooIGVl2of/+xBjmk7c3g4bS1i8ruj
uvd0YZy1xoqYB1SFm+V78nUCYmY/I4+yxye8z6obXmcFrGQBCvCXAw+fOnbCbp7k
ijpQcrPnNEzfZuC7Pi6VHVw7CQTcVoounIFvmh/udY0zUZYxrwHwf8wUvbDibbO8
y6ShNwAFxoWvQVKD9x4cDe2j6j7tgHpJ6MpAtyOaCEDoHJNFbs/mAK1IlFtx5l1d
jKBOp9SfZUyjqHLr1o/5a39EzcYS0HhOJmM2vTB7atIwACe/ER6lsvJcdwJfmxIg
AWZHneJQTfYOfMhmLl43uDrkABMhHzvicu4+1316z/3iEBmLGpssyhICQh5jRSwY
EHHmh/O3oR+9E0G8zPZVg68f/tXB4cQ3iPeFQwYrYKuI5/b0J0c=
=Hs0E
-----END PGP SIGNATURE-----

--CdrF4e02JqNVZeln--


--===============2252482874963605951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2252482874963605951==--

