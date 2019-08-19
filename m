Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5BE948BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AdmjT/1a8WwZ/xFmLu3lcaXR801qw7C1Z3ss1SYk5Gk=; b=CADBEDbWUL9to5JRVSLYw2yje
	BOT/1KLqXjmlBD8R343uAbtmX8RGaKlT1mxn/L+A6BwZ3CnNlLv2r4/WIDaqKvPDhmsAa8Yp0AoRe
	pLF7n/OMu6O0LQBaOtD+p+/U0yS/krj23YEHJ6Op/MZjln84ZQ2a0MjpH0rXccvfZ5x75N6DMsO1c
	HuAXyxT/Jq1pv9EmyNtRo6GIiR/cYuf/3LNiTxqSLeqmk0X8+uKB8oi4jYvOEdCk9ApjL6RTl7flU
	fpwBH4o2uK55I14jFk92Gztwz/pKL1ou09kiRiIj475UIelLTJJSfzOcGY53bDmUrMQ9gdJ/tUEge
	Cata+3/9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjqb-0002V0-OH; Mon, 19 Aug 2019 15:45:29 +0000
Received: from mail-wr1-f99.google.com ([209.85.221.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjqQ-0002Q5-3p
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:45:19 +0000
Received: by mail-wr1-f99.google.com with SMTP id s18so9239213wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:45:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=frPx+DEXQow8Q4wZ79pmfjyY/fKbbaPvJfV6xcb9azk=;
 b=YIJ9GEjGh0xEXvgncist0zywOAWQJgT+hhhUqapkdh0J0ON66dS5HcZwQPyxmnS4NC
 3L+4u2iIzsrKHTlorRC27pwQ80X+n/gUQsGXI6OKm+1n2JWzlPD4NVJ+aQnvC8a1wuFA
 fOwJ0RCWcYZb2vNGWWJxdXUaO0H8IVh2pcDq+hesyr37byDosKVJv+QY4hydUOKUPrhV
 zeX3rWW6wqN3UUejBEnra9sFWAj7l+C29vhcvJZNPnIFzNRAuxbRoUkPjixtmVcTs4M8
 /LmtwTgkJd7EVS3O3z9GnpNjoDtYyiNekj+oqf4ScTaBl3crMX2MvyWm5iERUr6MQhV4
 T3Vw==
X-Gm-Message-State: APjAAAUmnupRnvxLUvgc1uvePuC3ao3MfQXbbDg8GWqC9npxrcT2G3E3
 Ybc8u8CcMeNo8Sewu1UOpcHdfOUwLQO8/UWiL3HO20/abtMbeG3f+X12ESsBDh10TQ==
X-Google-Smtp-Source: APXvYqyir9zeQbK0O0tZunqUM0QDR4ANomwRugmoV+Zb88IPswb5aSAUGKjr9stnW40FR7q2xIfekorgFfnG
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr29929379wrn.87.1566229516094; 
 Mon, 19 Aug 2019 08:45:16 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id z7sm237809wrl.24.2019.08.19.08.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 08:45:16 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hzjqN-0005dS-HF; Mon, 19 Aug 2019 15:45:15 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 7364D274314C; Mon, 19 Aug 2019 16:45:14 +0100 (BST)
Date: Mon, 19 Aug 2019 16:45:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: Best representation for TDM devices
Message-ID: <20190819154514.GB5563@sirena.co.uk>
References: <CAMTEBE0mPY=44txPC2G+Cb=NqeH6Cqesar9Vkq0afXBv4dUWHQ@mail.gmail.com>
 <20190801114807.GB5488@sirena.org.uk>
 <CAMTEBE2L6KXH6JW2Z_6RSKdtFJc9ncFvfakwW_Vm88BCGC6aeQ@mail.gmail.com>
 <20190814160234.GG4640@sirena.co.uk>
 <20190819084141.otpbos2fgxav7rco@flea>
MIME-Version: 1.0
In-Reply-To: <20190819084141.otpbos2fgxav7rco@flea>
X-Cookie: QOTD:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_084518_168948_ED6A083A 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Ali Burak =?utf-8?B?UGFyxLFt?= <aliburakparim@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3055841277104800447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3055841277104800447==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V0207lvV8h4k8FAm"
Content-Disposition: inline


--V0207lvV8h4k8FAm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 19, 2019 at 10:41:41AM +0200, Maxime Ripard wrote:
> On Wed, Aug 14, 2019 at 05:02:34PM +0100, Mark Brown wrote:

> > OK, in that case I'd recommend providing them to userspace as a single
> > four channel stream - keeping everything bundled together as long as
> > possible to make it easier to keep the processing synced up.

> Ok, that's what I had in mind as well :)

> However, it looks like we can only capture as many channels as the max
> being exposed by the codec on the link?

> Any attempt at capturing something with 4 channels here using arecord
> was either reduced to two channels (the amount of channels provided by
> the adau7002 driver), or just refused by the ALSA core.

> Is there anything that we need to configure / work on to enable this?

I'd expect there's some issue in the capability/constraint matching code
that needs fixing - that should work but I can totally see it not
working unless someone goes in and does something to fix it.

--V0207lvV8h4k8FAm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1axAkACgkQJNaLcl1U
h9DN2gf7Bf++v8q3GlhushNkXwJA3cRBBZMFxGk3jmZyz59uOpue2Q0OhqMbcmy7
9D5Tm2Z7NOpRc99tevcVQepB5ZtXkZZcUUUZ0mZfcuYPECbrqWwYwVtnsDZXQldw
DPZYSWKR4mYJM7WyduIUxgB5WB+CrkFzkkOmiuEbLH3vC4tnTi/2N+oT+boDOnUU
jkA4PTJEstBIOfiZPyVek7IS/r4kfvTuFaxYQPmk/+VMcn6UYO97V9VA/EkSEney
hTfEzz9J1IP5lYwKcF8r4HcE2tPH6ftjUzKzZXsnAOOvOFJbjizbcPeJr0rgIvft
jR1kwhYl5qwkQA4DwLSLDDYKwwJShQ==
=t1rn
-----END PGP SIGNATURE-----

--V0207lvV8h4k8FAm--


--===============3055841277104800447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3055841277104800447==--

