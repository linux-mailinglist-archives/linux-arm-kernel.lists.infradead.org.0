Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E207134156
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dRT2p/YDkwbMzG41DC1ElW+MqVVPN94Jg82jsnPXdMs=; b=bDEzyhSw5QzJrDPKysyh+JjIp
	TNfizjDz8yCi5eYhvRZODutQkuGTMqZ4hmgOYiVjfj0mt+qhraCME1OaaePqshpyFVacc5O8/6JVL
	nxWvImPtpRVy+IeOAWTVEhqA+MLLPQyHklm8JhS6SPKwo+5AczALqhbGsySk+JpZnW6zdDBe/ZlBE
	Uhb+0TC7+GEG1vUvy2bvpf8Mvi17XccA+l9mxEjlZnTwFo5uJjniuRyOK69NASYSN/gAAQl1NiG4p
	419xm+DVpqd/MydSAX3B7/u760K18/0Sw6+yShRxrwn+pJmlhNbQAJ8fxwiVQNY0jNxv89zSGqREy
	gYOZF5S3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipA0n-0005Jx-MA; Wed, 08 Jan 2020 12:00:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipA0a-0005Ho-8I
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:00:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so3095483wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 04:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fkvTw8nuKOGG7J7vlMkW4QWnRS/Unh/bS82CuU0k0/E=;
 b=BwDXqQhDmnUhHZ96Tk99EKJJ+Tu2ikrs5pjK+cseUy0tXqqne6Gnmrn4Lf6tpitx8b
 3ed+BrbNV0gRA0+QWcxaHxKdIpYWs8Va52oQzLlkMzEDtk6dVd1qxdwJXTVaRq7rYdNr
 zstdrPVsy2ZJtc+ij2cub/v+WglDiDkA1VNd0E3P6mAMgXj8Qgwa9S7xiFzYfOjmI6xE
 qC9h4idhcxze5XpRHwCkl7IFhFdUAl+RJ3yV8OEwpIPxLGQHW+a7jMmseeOeUdzmnoio
 iw9eTC2tGfoubwAJKdKfC+A1kymFLMHy3kf4IfWVddH1TL+cVX6CfDdfP3ukl7XtbiFn
 drqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fkvTw8nuKOGG7J7vlMkW4QWnRS/Unh/bS82CuU0k0/E=;
 b=IIKbNjbeU1WPjvgxR8sLB5QwpKAZiLZdRk7rdD67spS19KZV3Ouw+PJGc6hRXsnEKs
 9ylkXIsbk0ahLTYFnlkC977cwwSvJoYDBLof8wyX8sVTw+JrntV669ocSuGEzKyad7uH
 8HXSVyUC9K7HILsEXpRL7fVKspfe+Aj2EPKS/ZklMZIqjk7SqZJs3NtrFNQBVhMJx97F
 MQ/dY6oWb1EBAmRnlFubxSJ+01zyigy/VIr6MPIPC0iVLM8boh0ZBWhkLW6mpC9i7B0Z
 x+Ui2NnQhlDY5sFy6tQDv+VOYLtMdqsYEgmo4v4UME15GeF7hFhB0P0DqV37BOqYcJr8
 cznw==
X-Gm-Message-State: APjAAAWwMZGh1aquluisUDkTVIPItJAFNLnViYMN3HFs8B2ivhtYWcdW
 Hu/q3I49rOmlsTAiVkd/x6E=
X-Google-Smtp-Source: APXvYqyBmJ3A4HslVib4mPtBFexLp1t0TpdaYUI8juhKXdr5YvZw2OCdKzN1uEQ89uVa3dzLyml0fQ==
X-Received: by 2002:adf:e887:: with SMTP id d7mr4028428wrm.162.1578484815859; 
 Wed, 08 Jan 2020 04:00:15 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id o4sm3932302wrw.97.2020.01.08.04.00.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 04:00:14 -0800 (PST)
Date: Wed, 8 Jan 2020 13:00:13 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH V3 2/4] ARM: tegra: Enable PLLP bypass during Tegra124 LP1
Message-ID: <20200108120013.GB1993114@ulmo>
References: <20191003205033.98381-1-swarren@wwwdotorg.org>
 <20191003205033.98381-2-swarren@wwwdotorg.org>
MIME-Version: 1.0
In-Reply-To: <20191003205033.98381-2-swarren@wwwdotorg.org>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_040020_290800_58828F0D 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Content-Type: multipart/mixed; boundary="===============1347602008950912197=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1347602008950912197==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0eh6TmSyL6TZE2Uz"
Content-Disposition: inline


--0eh6TmSyL6TZE2Uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 03, 2019 at 02:50:31PM -0600, Stephen Warren wrote:
> From: Stephen Warren <swarren@nvidia.com>
>=20
> For a little over a year, U-Boot has configured the flow controller to
> perform automatic RAM re-repair on off->on power transitions of the CPU
> rail1]. This is mandatory for correct operation of Tegra124. However, RAM
> re-repair relies on certain clocks, which the kernel must enable and
> leave running. PLLP is one of those clocks. This clock is shut down
> during LP1 in order to save power. Enable bypass (which I believe routes
> osc_div_clk, essentially the crystal clock, to the PLL output) so that
> this clock signal toggles even though the PLL is not active. This is
> required so that LP1 power mode (system suspend) operates correctly.
>=20
> The bypass configuration must then be undone when resuming from LP1, so
> that all peripheral clocks run at the expected rate. Without this, many
> peripherals won't work correctly; for example, the UART baud rate would
> be incorrect.
>=20
> NVIDIA's downstream kernel code only does this if not compiled for
> Tegra30, so the added code is made conditional upon the chip ID. NVIDIA's
> downstream code makes this change conditional upon the active CPU
> cluster. The upstream kernel currently doesn't support cluster switching,
> so this patch doesn't test the active CPU cluster ID.
>=20
> [1] 3cc7942a4ae5 ARM: tegra: implement RAM repair
>=20
> Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Stephen Warren <swarren@nvidia.com>
> ---
> v3: No change.
> v2: No change.
> ---
>  arch/arm/mach-tegra/sleep-tegra30.S | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Patches 2-4 applied to for-5.6/arm/core, thanks.

Thierry

--0eh6TmSyL6TZE2Uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4VxE0ACgkQ3SOs138+
s6E3Ig/+JjmQL+DrA9FZlgMo3Ni2wA7V95dT4yry/2c1athzRmI2QNMrQpfGZScP
zXrhZTpPO4Nyq0mFhxV9cjSDs6HPfMIPqtO3HGt3n2r0glywFRTmzOROfUAwC06B
sGJ8NzV47AGQd4ueON+jf81GXvBvlsqeLsUc2fC8zy1wtuic68jo+p4/Xypw+Lwu
W9lPUE5yThqJ2AegnYTZMwT7L+O4XtpXEJb8kwtDVFSOilRfoZwtURCjUGjRZ9X9
oe40yUAdeiHWo0RyMyawgZ6LpcsFREdBtfS19hI32K7YZr/PtMppD8F4oiNdz7pu
nxtHZwgz3GeLa4I5l5sAVXgaVjnbMaC0qIlnAQJ+mu8x5slHogJtARb/sLOKdahc
2hlfD+0Ig4lCGhNHTG9xvDL5aP1TMX3JseK51H2l/Poo0p6o00auUM83NuLBsavs
y/Xh02MT9bt/Nl4++GPWQxyAyoWUmgNPwlxzLwqAiimSFMmIUw0zla2ux97Mn0wO
hPuyFZrXWysD+y8sl2RjzwbOnF+rWP425zxKNg8hxspCOUGd5zcIsUrKyth2KTJI
Y8tbHYXVO3L6Zt8ctpnah81m19pZEezqDNKXeCjC2BKdQNINeadrOJcXTdzm6y6k
03LVoHLMTU+IfoOvV9W7xM+XfoIy2tTyR7ApXAhsO9BxdVucBw4=
=oiR4
-----END PGP SIGNATURE-----

--0eh6TmSyL6TZE2Uz--


--===============1347602008950912197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1347602008950912197==--

