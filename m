Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106471E2110
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 13:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xx0xH8T5VY7locSKtRCAPY8UTkWrPcOWjRsTXzDGfL0=; b=dREp3Gu2eP6MG3Lo3YBIwdBlA
	6VfXT5T5bGNYOISjjs+xwEJllV66lnK+/Gzf2ZED02aXeijoQP0gLieA5Di6qq9oYU60qusS9ONYC
	5gbtwMOg69FOdLZ8dgEbsgrb0CP2u0fChWmwQrVfMmp3Z0NA7QKB7g23qhujHntB2qYHAswyLAeB8
	vbdas6V+Om2/BHL11+0k4gOdF1iYr8zEKjm0d6Me146hgGbmU1gcuAssuWx+AN34ercWayQ89ZASP
	4leNGwUpv88z244ezouHS4dWfSPLbrnpcw2jwXqbJOpnejG9tIqhKSi5WrCdgKh63Uh/JPdS0WzsS
	ZDs651D6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdXxE-0005c9-QS; Tue, 26 May 2020 11:41:08 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdXx5-0005bb-6V
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 11:41:00 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so1300734edq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 04:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wgN5VWTUiDEWDfFSZEwK5UrjaFdTqsQ9EGT1fY+LLDM=;
 b=lPud/H9RYbONByKlYJnPcmoegAq7NXggnQy8LdHwIHOK+7jUB75uLFWq0LgSlKjwj0
 jKA169ht/LZhODzErb9FOivuLm0Zbo48Aph5D5n0cpcd7ULW4vzzHqa8WrcZMPSKHyX9
 lyI56onjsVIRUhzHb09lRfJhBm41t5HJfjgZsKMTq+PRTLKA5dvqFdZGY7vqFJytEN15
 QVz7TsmU7YavnUinDGGAJJlp+hKvljmRtzCAOvfrmqKhHwy8ODJYOdRmcpmIIUOPdEKU
 MTw+uFdUZ/zl3MHRBpmuJbNkkZLxi2cfeB5bejO19xDrxxPVNy7vypcSQcloZDGZ6ads
 fkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wgN5VWTUiDEWDfFSZEwK5UrjaFdTqsQ9EGT1fY+LLDM=;
 b=nbenqMHUmECCzISmTQ5tVMyn5ISQOTaeSUtjqWW8O/ncJHv9MFrkhpH/hdgSTj9LF7
 WTQAJ74V55d5ozkhRzcXaPRQPiixxz5c7LhTpCamZOxlBatR0Td9PCBkNJDNanwDiadR
 y1vRtyjQ2opFbrTP5qPf7Lmz0I9wodvbFfr+Z7qI6GMXOGjKFEH6eiis8XYYTPZw7EXx
 2eb6acQU1UWVARKjoDn4+A6yqRYJm6w0FApzsU5GI7t1db+ZhELLLx4jrEJ3dMzltS44
 vOInEnI/+kzjjXa9++TvgAo2mmaXBtUAqxOoyMT6PD6APBQiIFr6JZmMphiABTKypv+k
 jvUg==
X-Gm-Message-State: AOAM532czF1InxkMbRQpWHWmHhTxuuw4Bb0CHTjCM99RqqH1ATBPGR/D
 ytuyYsZFOQwMtn/xKCg5tFY=
X-Google-Smtp-Source: ABdhPJxCs0LUkycI69pIWCwArPu0e0y1R9SQWGBf8Wc9edk+Gkhh3T1KZWsKi5g+nSC9euiUR4dVoA==
X-Received: by 2002:a50:f09a:: with SMTP id v26mr19620985edl.343.1590493257270; 
 Tue, 26 May 2020 04:40:57 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id r8sm6100255ejs.68.2020.05.26.04.40.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 04:40:56 -0700 (PDT)
Date: Tue, 26 May 2020 13:40:54 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 07/11] memory: tegra: Changes for v5.8-rc1
Message-ID: <20200526114054.GA2935745@ulmo>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
 <20200515145311.1580134-8-thierry.reding@gmail.com>
 <CAK8P3a0kqjt8UNxe2ruRDOJNedOcqWxP-i5y2uW6YsaMNJgejg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0kqjt8UNxe2ruRDOJNedOcqWxP-i5y2uW6YsaMNJgejg@mail.gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_044059_235548_A172C3F4 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 "open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2738539688983947877=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2738539688983947877==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 25, 2020 at 11:52:30PM +0200, Arnd Bergmann wrote:
> On Fri, May 15, 2020 at 4:53 PM Thierry Reding <thierry.reding@gmail.com>=
 wrote:
>=20
> >
> > ----------------------------------------------------------------
> > memory: tegra: Changes for v5.8-rc1
> >
> > Contains a few cleanup patches and an implementation to scale the EMC
> > frequency on Tegra210 systems.
>=20
> I don't mind taking the memory driver patches, but it seems odd that this
> pull request has so many drivers/clk changes but does not mention that
> in the pull request, and does not Cc the clk maintainers or include Acks
> from them.
>=20
> I would assume that the reason for this is that you have based
> the memory controller changes on a branch that was already
> accepted by the clk maintainers in to their tree, but when you do that
> please be more explicit so I know what is going on.

So historically there's often a lot of dependencies, either build-time
or runtime, between Tegra clock patches and other work. That's why we
ended up with this model where I collect Tegra clock patches in the
Tegra tree and it's not uncommon to end up with the clock branch being
a dependency of one of the other branches.

I did send this to Mike and Stephen about 1 1/2 weeks ago, but it does
not look like they've pulled it into the clk tree yet.

I typically highlight the dependencies in the pull request, but looks
like I forgot to do that this time around.

> Waiting for clarification before I can pull this.

Given the above, might be best to hold off on this for a bit until the
clock branch was pulled by Mike or Stephen.

Thierry

--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7NAEEACgkQ3SOs138+
s6Fv6w/8Cu4dQWtsRKUDrg20jXHqNhVoKWh9ZIqXfZLZ6kbRuNF1Fov+dDUNJujN
QqPjGh5YyFb3pwIDXK+EKBnPMi4BIDm2khwlL1Y6IgiOpgssfMLdB0SLZRZdHDnf
dxvR2/yvNC6kjv7kDmc//1QuU+5k/JjmP6Mvqm5NsccJBNpsnlqzN5oMtZVJOYXo
TOLKcRg0iRwkBJeeL20Q0HgikZCRUpazlhX/6ec4dclFpi6IrVwCBwKMpas77nzf
cfW6IDba/sygJw5Xhcbj0Tk+aBTJ0OPmrwopAYunLO6vykjzlf9bYpbwesbJ3cbN
ra1yLxUPM0y0wdEmPpHxzUQrDnPvgDpn2N7wrQN0TFMWvoeII75kh2cB6nChVhaE
Lx2R/4TupCwMQjUOyULNRN+2y9cNdVoOb34Jl/nXwHD6XlWywZhJKEo5+jTSkG3e
dmaxZS1WfkrCHEAdRkXNNQTSBznXBu6+yiKEN4GQRvOeEHmSWSnT1cVChVh94KES
XRnAabAIne4kTqpS2gNugj1DrRytD1k2i2ZCsj/gVy8Qe/AY0rLmjXMSQOLFxdkO
z9BBuZSLpkOAVvfAFCXpkJFOF8VDd699oyppGOp3fJyqVGPC34qEmvXW6qHzyUFp
DaB2C2HMPOU3/fCn3QlSoSga8yJgBIXLj9l32h3eJ6eGTa3iZ5I=
=8dgG
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============2738539688983947877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2738539688983947877==--

