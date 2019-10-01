Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4208C3791
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oweIE4XdMCFFdHCVUqPFtnerrRVYU1qX4fSkZ6PSm30=; b=vEUAB+33nRcsAVrl4pphhLmni
	bPKDW69iayiJ/YAznzYIDcHxv0jFaSzsU9fNyGF0g4L6kgG9AM0RF74TTKu3jiljuZLZbwAht6Uxl
	Xo2kKh0ZV4UCzuZ9/Rani6yfYp73KTf9lGrhSZiwrNF9EyWVJq7C7nuD+6DEj3Of0M2A8+Q/8aPlG
	oobdRwCg/vspQlCmo5vwAAvwRGJHzb1MKjwyc4CDjBKr5AgvITLIc7NTl3FPZpiT9NjnpWSYmWv3N
	xEsAReGAH5WsGfCuIOxexXOZhvuo6U6d7WN4bzz//JiQyjhcxQycmnmMm5h1qo8HRmVks1sJB2CCq
	DZna2OQGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJGK-0007LN-K2; Tue, 01 Oct 2019 14:36:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJGA-0007I8-MQ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:36:17 +0000
Received: by mail-wm1-x341.google.com with SMTP id 3so3535452wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 07:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4GDe6ksKaFyDhJQyRseWFiKeh5lvTxFjO9+Wkwvmvyk=;
 b=PleFEI5VX8kgq6C4rvqz2HPa/pO9WXKgfeigc3ETkvQOdxFnOlwB5/lrcF+jdeedfE
 asbbV0jaXVCxmRH5fcY/mLD7Es2m2F+enYgVLbndwmSm2t7w/zPp5VV7vw3ZkqEdD/kk
 LNjD0Uy5gUM4VYyACmTDpRCNrxHgcP/DF/6nD2IpSKk5dAXncA8hjt8XPaq13CdX4bBe
 OGgY4/0GyzT5YFEMk42qlfGuAyqc+gBWjHCrBymBfqqGxAL+1lUXzA072VrjtP73epu6
 Du4tynBubvABRarEyrSFqqQMnf819iXTlcVijYuN3gBodI8wQsC5VLW39u1VDXhA0e6p
 mjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4GDe6ksKaFyDhJQyRseWFiKeh5lvTxFjO9+Wkwvmvyk=;
 b=ZmbfLgsBYmRNhoA7B5LlsOEZ/vWNvwb/ZEF3FFHRiArm4TCJoINGF4r/ee5pewTqWU
 ThmqGBv6Nn1h1Dyjayww7cZC4JIG6WGovf1lJSrjWfCZW9JYhOhb3go9OxfosVMhgNtw
 WgMaIKzUQId5LFHOYbxz3DimkELXqby/f9UiAIuxyGTRs9gfiQYyoxR6Q+LfW5a2IpWA
 1i2WZU4Bu/0Tr1L0SWv5IPvOyvr6Af53cbZrhqFuydeOsU39UNr9XrTBhbi5eONkF+YL
 FndG/kBSgwKoQk6bSj5Z6hSRWHCVnG9vqSicPXDiQ77FFUy/cP0QMfqaS2yaluD3Js7b
 ikVA==
X-Gm-Message-State: APjAAAXWBAtHTx+R0OYWEpLRCpIi1GSWPPA9K710QrTnEEaGvF68hDoT
 /UkpbbCqBOB9y/FIgYfX/aPw7t9N
X-Google-Smtp-Source: APXvYqy7yk9cIjC7awFNWla4pKitytDBd28oUpDGamdgpzeTLDRdVgYtpyLJ+OBl9uFLapRnYBSVPQ==
X-Received: by 2002:a1c:23d7:: with SMTP id j206mr3982003wmj.57.1569940572822; 
 Tue, 01 Oct 2019 07:36:12 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id t6sm5323112wmf.8.2019.10.01.07.36.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 07:36:11 -0700 (PDT)
Date: Tue, 1 Oct 2019 16:36:10 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: tegra: Add CPU and cache topology for Tegra194
Message-ID: <20191001143610.GB3566931@ulmo>
References: <20190920145621.12527-1-thierry.reding@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190920145621.12527-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_073614_763475_A9D51099 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============7458062834700779964=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7458062834700779964==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline


--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2019 at 04:56:21PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
>=20
> Tegra194 has four CPU clusters, each with their own cache hierarchy.
> This patch creates the CPU map for these clusters and adds the second-
> and third-level caches and associates them with the CPUs.
>=20
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v2:
> - fix reg properties for CPU nodes and update unit-address to match
>=20
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 156 +++++++++++++++++++++--
>  1 file changed, 144 insertions(+), 12 deletions(-)

Applied to for-5.5/arm64/dt.

Thierry

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2TZFoACgkQ3SOs138+
s6E0DQ/9E5bKqzhcgdK1ReNtJcRQrizoLvlpRBtXyug8WVy1ecWNq6sb1LJrI4R8
GtT5QPNuZxb0xQYeoeIEa6qIV+TSbzG6uM3MHQE6JNTd53qFyx/P3toMqJtjupfG
IoS0Z8ojwvJidBXDOUFEfyl9q4AWOaYOCVA25NkA9EJuDSgLdgFTmkRnm5XUmpxy
3vV1ykDdN6chQrjGS49VOsU8xToWvXQ6k6yztMY7hrD+g//FqavbyIFVvSAs/bzn
RD0EJQkDWHopJ2EXgzCDJYzNtBE7jNyeJzxF4L5vIWf8X/wssdZFWD5YP5hHvNiY
gAFThEsolGcdMaU6WFzkmVf0ZX/+uuNh+KKMI1p1HtEcmCqANwmW4VfvfpKiAtTf
El2VQJ+C8JiqP/MX2MprMzzz6hv6THauEgKoTIMs0UaEO7a+4QoGoyWteoznhpfE
VkgIg1gPY/Jld3RETzk0jprU8KAweV9nzf97q/WShVe+Vrjw8hTrcUZYb0F9vcZc
rzdr8ZaIZLqSZXOnRFPkGiaEva0BecpVg2lEsddYy9GDbOALN5nNUgz4dsoUiQKZ
otSmXTpgDdTuxI7B6S5yVWbtEXKcMKQfR2iejvOV8WDKP1pqcnNAAopcxVlGvOF+
FKjhoYwZ2mYqb0clGHbRGlWQV1Eu/XuMPzbQJndIK71OUPuS2+s=
=YAaR
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--


--===============7458062834700779964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7458062834700779964==--

