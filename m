Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14871B7782
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pYa/ftHFjmTLENC1BRnJfsxGS5zNezOypIgANupjqhQ=; b=dgUfXXcMcvwRY8wFzqj+i0pkF
	hqIN6af8HReTf0q1yD+5m2D252DYVJelZeKVrfrePY93dZz8GEsNRLKRQOEliIyT90ax7RvYjm/NP
	zvVVxXQv3/W6PlL+ZwYpFA/4u+nhnP1VQn1dSHOhfYYTZURhU3K9aN099cSJiIdY4mWAraxgMwhPU
	iXY5FXhZLngpXPIgVErql+cUlhzwRffxKiJV8X1kSaB6R93PqL4mIeC//p8fWjlIxESBuvukqtT+t
	5q4n92Ux0ts2y6BdQA/bKdf20dACLEQPxMrrvFNqByL+N1cKF8FO9Rhqy6yyY+TXEojKf7vdwBRqg
	G5ZvTw7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyjb-0002A3-7p; Fri, 24 Apr 2020 13:51:15 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyjR-00028Y-1t
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 13:51:07 +0000
Received: by mail-qk1-x743.google.com with SMTP id m67so10100977qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 06:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fgJguWGGGlAwhNoBLU8EzUqvt2IciwBdbaU2eBO5bRQ=;
 b=ZpSrIlJFDAQM2PzcbDXbif7ws5tgVsC+SiR4zGfEblxvm086ureP8r1nAITfl8TIOy
 GOkHU0Cscq5l+LM684La5i3gk7cPZbCa2RJz7An5lly6zB7wUEIpwukKeQrxg/oG4JB6
 1epMl0zCFhVwi6KydpE32wQFW2goQwOzMyRv8uK6V9qzlwSYr1FEZFyRd223cPiKKFae
 kPQvywYLasJWWSG7jzSITghE7vV8tfJ7Csz9eEV7xaPJMDehUKU3jBZapUnzf0Q/e1Y7
 zoJcJI1puU/0SYKl7j0YbtGFVfNcoIJ9G+HGChIzjOX48DIis3JCkKaqHiNpBNOyC70x
 szRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fgJguWGGGlAwhNoBLU8EzUqvt2IciwBdbaU2eBO5bRQ=;
 b=mocreSyzdSsNyzHRPx9BvvnwIIJvoBId1RTHIo2x27Nhqm4fY5SdrQrq4UpnSmtViL
 69Uor1ayVu+dq1QvecSOhvFy07fjSQCU308EQTPHflr8jXpJNHrFKGqVyFeUEDeIFZ3z
 PPnon83gHLKbAKN0hqHJiaFMbCvqJvjxWzaTmF2A0Lee5wdan4OhFFNsvrFBdUy+iHyU
 5f6Wvj6Qpm8aIKc9tuEGfD1eUqlUe8MX/pqgiloQOyH4gM+PU59EWJ5pS+yzDS0bVPiK
 9oDmIP4hBI/DxpP81YXWP03l/0CweCevAsS/IaOp3w784Y0VFr/ht5tXoz4yG9zR0pSS
 8QbQ==
X-Gm-Message-State: AGi0PuamO2zO/ZU0kBaQOHYro9cksdigeOfcqJQ3KJQvqj7LfXpZLN+M
 3JvC81PAbkJUYrgBIMhyoNk=
X-Google-Smtp-Source: APiQypItRiDO2aQPCX87jaYTk5YAO3bdQyOshfgS2sb8Hqf6eQRZZNBqqaJDaEAmj1prQvI5CMGfng==
X-Received: by 2002:a37:48a:: with SMTP id 132mr9342479qke.390.1587736263497; 
 Fri, 24 Apr 2020 06:51:03 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id z6sm3741966qke.56.2020.04.24.06.51.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 06:51:02 -0700 (PDT)
Date: Fri, 24 Apr 2020 09:50:33 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: akpm@linux-foundation.org
Subject: Re: [PATCH 0/6] Introduce the for_each_set_clump macro
Message-ID: <20200424135011.GA3255@icarus>
References: <20200424122407.GA5523@syed>
MIME-Version: 1.0
In-Reply-To: <20200424122407.GA5523@syed>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065105_922983_20FAFEFD 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, amit.kucheria@verdurent.com, arnd@arndb.de,
 yamada.masahiro@socionext.com, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, rrichter@marvell.com,
 linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org, rui.zhang@intel.com,
 andriy.shevchenko@linux.intel.com, Syed Nayyar Waris <syednwaris@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0174259466931857332=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0174259466931857332==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline


--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 24, 2020 at 05:54:07PM +0530, Syed Nayyar Waris wrote:
> This patchset introduces a new generic version of for_each_set_clump.=20
> The previous version of for_each_set_clump8 used a fixed size 8-bit
> clump, but the new generic version can work with clump of any size but
> less than or equal to BITS_PER_LONG. The patchset utilizes the new macro=
=20
> in several GPIO drivers.

Regarding the nomenclature, I created the term "clump" to represent an
8-bit value that was not necessarily a byte yet was a contiguous
grouping of bits. With this patchset, we now have a more generic
for_each_set_clump macro that can handle values larger and smaller than
8-bits.

Would it make sense to retire the term "clump" and instead use "nbits"
where applicable, in order to match the existing convention used by the
bitmap functions; for instance, would it be better to name this macro
for_each_set_nbits?

William Breathitt Gray

--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6i7qkACgkQhvpINdm7
VJIciBAA4lGCd+eUHQXeYgvLK14UXVfbjASoiUjFVFetkDeXj+GGFQG7W/fVMxrM
LoJV4wXwNl9qyedfdNI8aZmjUwF2Tyy+XEaxo/wa6XyfIXvKrqDYNpESIhvFgMv9
BcxDVlWrMixZ440pQqqFRfGx7bLM2pryn05hh5yr46Y3kZZRISeAlygC+cZfDmzT
O7KXcRIB4ZTeZ0irSlLKsEFpp42YIKUX+gt3zwkxSoRIhfBRToE2KU42oLhez48t
WuUHpZ2TexCV35B+QAjjAXqMdnL3Rg43pRCJG614VuvSleY2hAkED5lqMlt0SIh4
4kEbvK/fea2QInYY/WA5EKxtFka9huXJ1dhqqUUSFFQfUPhqA/GSxpZ+5o7EeWjr
v4d4uzg897E5BwZhrWOJUHBIfA4LXkQMV+ZGL1ijWmNnYy3uigREGZYrNylShQ1O
INlHzTcoqy++g+kETBV/MEZJWGbtqRGqr4/u1UaECO/Ccy0cHDhp9mQ0JmSoXdQe
pIIhBDfm3raffCMVjSqfVToHENxHuwqcTIgxJ+CAR7j2BOAF/oeNULgsKnRZrfMu
UE32VfmG2xXdHiqw4R/fBzK1g/DLF7c04RYBPjY7S1/Tvrox9dTnfJbPA1r4KB35
vIQf2L/hGGV/F/IRYgVdtVVVNaB3qEsrimj0CJjnpQYNkE3fUoM=
=A+Kx
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--


--===============0174259466931857332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0174259466931857332==--

