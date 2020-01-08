Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA470134153
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:00:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FrR3evj6moOUV8D1uq/aVW02VUwiV1ExqAvGGp7EGHM=; b=mjyFz18rnjwWbM47fflfx2WHS
	L9FFTUS6JkmVc2CyM4ebChDmEd12rjmlRmmnQWvf5QV2niu9WVdoi/qLBkOoRqKMftzCwtq903s8R
	BXfP/ARxEIpNb3G+voXnDAGY8rbR+7WT21zGk+ZPTtNO756BtgUMUDeMwdH+O5/LqQQGY6BqCmWk4
	aNicZloyWMHb4yrsCkU6gjlZsscmLdwVHittg3Q8Aci5eut/DllRgRiTBaGHJvvKeIdkIz/kLY1Rq
	vmpg65bwk+KAkqlADH08A8/xHrHN2BUPosHWyqOVnnHKzbJnJTn9kgyYnNqijHxkNQksfXfGQXWQT
	ejSypHgqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipA0R-0003si-1h; Wed, 08 Jan 2020 12:00:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipA0B-0003sC-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:59:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id d73so2203980wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 03:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VweC90OhMbRB5YC06/dP5Bg2TdjACi3YY8MpAp++EzY=;
 b=NpYYVKZ+Z9rpqPMje8On2UojyJa3jonkiJ/zW+2DguQc+IdBPd11Fgbzj2PvXSUH3g
 kYpU0587O1bsBTyeNTUYANPla7o1NbKgNfdB/NxojFaOKYausRFuRlpbqI9lXEDGJLmd
 tpQChw+XiyyQ09ABL3FIqr+KJeX55wugMimRHd5NdFDXFBWt5ak0nXaqeuoWkFeJ/ulQ
 K5QY3dGGZxHYT+uWwIjCFls8Any7E1KVrhUaIjmVkoyfJiBdfxWEfphQWNBiYe3RPMfW
 yPQCKGWmdiRKlh5T6EblpcOoq+ZYty6AMYVgxwE0BIcZQU413tVE+/lNqOmrep0aX9DY
 o4xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VweC90OhMbRB5YC06/dP5Bg2TdjACi3YY8MpAp++EzY=;
 b=iZWC80nDC7IGdC88gtcGnlrqLlIzLzv/mtqS4CeOqaJ3wjrTNXlZy4CdZ3K4JsH47v
 iZB4B7DTH8ujlOE17lcpE4yBG40wDLbX6v3pLhrV0z/vlfFUkVm3c/vJy/ctQeNvdCG+
 Ti7fM7z+KAj+wo6tGTiPhtLw36UONYi/+2vZTK+UgXMTenI840YSwjV7q+qNf2tpUFN3
 HUnYcd+7kxNQK0/nVqrQVNKjjya8Ubh5OQxzT/gYo6SbbYKy7DLnRxjXjKaI2o5wiG10
 jH/MXQ+S/VnAMGucZGL2WXcuN88IibRH02WIkC9ksZrWNTuDlr9YaVqaFzGK24+o7vAD
 Kkbg==
X-Gm-Message-State: APjAAAWNg5od7va/phxUiDw3cM3UdhiCyO+iA88wFUUvlgJwtlAyQ6YM
 WU6NEwUVdJaRvLRxvQy9GpE=
X-Google-Smtp-Source: APXvYqzH19+2YKXGZL/Gjf2VptczLfcFBt9bdRvOwXVszToouij5SZJpfPWgkLCY8hDUO42jb+u8Yg==
X-Received: by 2002:a7b:c450:: with SMTP id l16mr3464058wmi.31.1578484792384; 
 Wed, 08 Jan 2020 03:59:52 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id d10sm4138463wrw.64.2020.01.08.03.59.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 03:59:50 -0800 (PST)
Date: Wed, 8 Jan 2020 12:59:49 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH V3 1/4] clk: tegra: mark fuse clock as critical
Message-ID: <20200108115949.GA1993114@ulmo>
References: <20191003205033.98381-1-swarren@wwwdotorg.org>
MIME-Version: 1.0
In-Reply-To: <20191003205033.98381-1-swarren@wwwdotorg.org>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_035955_164481_EFFC1C6D 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Prashant Gaikwad <pgaikwad@nvidia.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>, linux-clk@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8777011363908664921=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8777011363908664921==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 03, 2019 at 02:50:30PM -0600, Stephen Warren wrote:
> From: Stephen Warren <swarren@nvidia.com>
>=20
> For a little over a year, U-Boot on Tegra124 has configured the flow
> controller to perform automatic RAM re-repair on off->on power transitions
> of the CPU rail1]. This is mandatory for correct operation of Tegra124.
> However, RAM re-repair relies on certain clocks, which the kernel must
> enable and leave running. The fuse clock is one of those clocks. Mark this
> clock as critical so that LP1 power mode (system suspend) operates
> correctly.
>=20
> [1] 3cc7942a4ae5 ARM: tegra: implement RAM repair
>=20
> Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Stephen Warren <swarren@nvidia.com>
> ---
> v3: Added comment to the clock table entry indicating why the clock is
>     critical.
> v2: Set CRITICAL flag on the clock, rather than enabling it in
>     tegra124_init_table[].
> ---
>  drivers/clk/tegra/clk-tegra-periph.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied to for-5.6/clk, thanks.

Thierry

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4VxDMACgkQ3SOs138+
s6F6PhAAlrIuajL3DdiqYncmRYYV7/TjqJxFw2VwBy9bhCisUem0d4zjoIWBl90E
0smLovIXi5278XwG2zdZAtPqA58tKy6xybLzZRez0CY3ACghUSPnfxC6fLH0EMpj
QecOh6LeN6mKkf0EtM810FDRTh+k2YJciaFGV7l5lz+d6qmxEPGeawy81VbnVNyB
F16b9sCYjzqPlEbz/UxySc/b6hD7po6+MBguko8kb6xXs0beKRiKVQ7hJxuOUA2F
RhR1h1amdCArtcqRwWIgTGhS+e+M2sMssv/JCywjBGhm9yMjI6hPffyKkawCoLJD
GUBbV2cnt3ucR1DxmWnnkm1Vks577M11PDro+7V4FM0qWMBsLysO4t2uq2QlkHpk
2tAhMt7X0VvSqtG7pO8aUteCezY+JPck26XOhMuzCVR/ByaaIVi2gEFOzwOezgDy
YuyAa0zL1oB92AjsaTwtgZ7jIULmUox+kEt2IwEJJcDesOGOmTDfsvZTWiXsJe0K
JfhmAsU3jnFHUkgUCATa6gSuZJiFhcfY1pPJoZ2GJDtEHDP0DTF63WDJDDqM/i8l
CTjNIg8dC4MX8wEkZvdZ1VP2Dp/A1zWEl2cppCLX/y5rQFCB8hSyIfYg++KvVN0b
whEWoIWUs0tJfDWAFroFO2GLa6B2n2NbzgaEIKl6tTN6A6p7BeY=
=zoua
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--


--===============8777011363908664921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8777011363908664921==--

