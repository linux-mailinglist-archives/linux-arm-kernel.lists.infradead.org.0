Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08121AD6FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lF1swWA7jlFJsjfXfgKCcxRxl4mjIn7cOkbu9BzE8QE=; b=uZ/rCMfzbWlp2jNirgliivrNz
	ZZX+jwCR42208fs8Xmnm14i/NwVWe5vH9m/IzUslIQiVLSPFRGKPV89tTlR6BeZLHbSbvMUHaC2mp
	rRzOp78lXAWLk5w9w8e3i8GdSHSteChOOo50Js2hp7NiEp0ilBDbU+exDt+INSw2YkWuyABE95QSn
	EN7vL4fgg3IVDBD1hkypdYftEb9+vNPCMYyYXM9ugX5w1t2c6LVvQXg/0EL2SIea/3lDObaHb+va6
	+Q6qWng77mkV57yfFIkoocKoVQ/9gUORsD/sLTKEC4kAkDj7FaNghixAoFA7Yt0VSkEZnPtmgMD5m
	NeadIslMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPL6d-0003T6-F9; Fri, 17 Apr 2020 07:08:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPL6V-0003Se-U8
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:08:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so1767968wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 00:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R6f7+5GvUI8/osvhifRKheRB5YMwbn4gSSK11WxjPyY=;
 b=oXBJLJH4PLH3RK1yBkxfgzRuw6DjqbfhrWdBWb+E/LvH+qG159gfIb+Is374+RVUfA
 Cs71LkEMWR9ELAQ9gjPk1YxP3WfWBMKv8a21B8KL3aCjtFCygi6wZSk5GJQh0xji3is4
 IrVkuiXxsbmdVxxxdrm0x0/Od0Br1BgOjDttlU3lY64TcZULAN97ugMUuwJKQTCu4dN7
 J6Cfe4EnfY5JpPnkMa4SLPI9cA2bIeLlnf5AAqioHSZavu96FJW+LQG0MOlIcI3AbjM+
 JN1pVkfXZH0/eoMoN6ERJWMApP2KOCE4gudwHBIK8ht17PWv+Aiaq871X3Gi2FGK1h6N
 TKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R6f7+5GvUI8/osvhifRKheRB5YMwbn4gSSK11WxjPyY=;
 b=jV3tgYDzCK+DnmEMZCqb9NzB3Oe2CuJvJxpE4IPO9pTP/mD1klaYl7LlYQrRDotpNS
 erPUQSXIq7qQoOonS5kTZwmxbznw53eqeGAJ6VVZgw9jba580DToJo3r0nzni8MUO0gZ
 s+gj4ei+IlRzh4wmpIGHGh8vKe69LiR/NWuhJaaII8XieAsjk8gCsFYMBrf/I7889JFr
 D8R0b9r6C1m6mvw4ruqIyNPmoOm+F06Dkk1fh1/kW3zLZyqJQZFPhffzBcyjsYa25LYp
 CssbLJLIfSRTU2Buwo2pDSHvjy47okzxRJNNXZJhWELAp7gD1mR8YOZyUUbwv4GEDeDq
 msxg==
X-Gm-Message-State: AGi0PuYfMsobFmaxeD5BHYetpwOpXeyV7JyDgVVkpcShIlI/eDWQV2ct
 P+IGDWdoDPkDezWGdM6JnCUrpEhG
X-Google-Smtp-Source: APiQypJJtr+UZ6RDe7C4PsLdNv1nMBygM5ArD9/3+LuVDtv01cumvUwtJ7R+nXfuJFTLFostTvHrug==
X-Received: by 2002:adf:cc8c:: with SMTP id p12mr2250620wrj.165.1587107278003; 
 Fri, 17 Apr 2020 00:07:58 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id u7sm7044306wmg.41.2020.04.17.00.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 00:07:56 -0700 (PDT)
Date: Fri, 17 Apr 2020 09:07:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm: tegra: dts: Kill off "simple-panel" compatibles
Message-ID: <20200417070755.GA1573554@ulmo>
References: <20200117230855.25567-1-robh@kernel.org>
 <CAL_JsqLDsoJteGC6BRMFvPZ0pekOU71eUNQUqh74we_BB7RZ_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLDsoJteGC6BRMFvPZ0pekOU71eUNQUqh74we_BB7RZ_g@mail.gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_000759_974573_8A5725C2 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============7419452159124564783=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7419452159124564783==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 16, 2020 at 04:02:58PM -0500, Rob Herring wrote:
> On Fri, Jan 17, 2020 at 5:08 PM Rob Herring <robh@kernel.org> wrote:
> >
> > "simple-panel" is a Linux driver and has never been an accepted upstream
> > compatible string, so remove it.
> >
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Jonathan Hunter <jonathanh@nvidia.com>
> > Cc: linux-tegra@vger.kernel.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
>=20
> Ping. This never got picked up.

Indeed, I somehow missed this. Applied now, thanks.

I did take the liberty of splitting up the patch for 32-bit ARM and
64-bit ARM but reused the same commit message and authorship, so I hope
you don't mind.

Thierry

--BOKacYhQ+x31HxR3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6ZVckACgkQ3SOs138+
s6G7ig//Sa5UUxsU1rQzbWSzOABzwUMTFWwoEOr17cFjrHwxV06b/jUYICr3yKDn
Qdyr4e4PNRYiDZUWwM5FpY6/Xa0tmqKY+zCv8/Q0KE2RhB1lZFFTkjLSiZ4Eg25A
ge8urVNALc4Z8pCJElYGFL7LCcDPEXcOsNFjCjrUaie4Jivd62A0rQsjb1Ib7VSf
QF/156ZMz67iURk7ssKHy0jOdoimXX7e9se96TghvL9CH10RBcJehU/lWnls3S0X
HhcEt/scIk9CYePhxb+XxdJgy79PJoCImqf17tmsRWq00405BA9PL/lbqmLYlJha
7A9wXu1pHcU8W5SPNtefWCTT0QBTbE8vx4mqa51pnjDvKzntz7WTaiQsMot1SoKO
g4WP4QFLqLRK4dEA4nZU9Yer+jnubOYy9LEV+R8Xtcp4gX5YEEBHd1ZZpSxBPTX3
lZtaaIsNCCwMYfwCaWK/MA13sJPBK8aIga3EE4Nc+QYuWig0vdrfyEcg0kAxPpeL
1MG+oYdU5COwgxxeGVv+LbTLWGMJ8KQR7jBuYGviaxPEd5trk6KolT4bK3ALIRsY
LD1AZB6GdWEjEXc109WmB8yu8av3IpKl879JDl3rK0SuuyvKHOlAr20yuoS1GPdG
qkO7AUVbe4YbXsrTsH2hVyYjPIF6VK694bc6NvJlQIimqxtkqT4=
=pkFW
-----END PGP SIGNATURE-----

--BOKacYhQ+x31HxR3--


--===============7419452159124564783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7419452159124564783==--

