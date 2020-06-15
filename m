Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10C91F9986
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uhZvJtlX/wVtInuRpOJXkvV2HEeRqxfkWHw0SBKyXhM=; b=iwElDQjtNjIBZRuFwnqFcX6xT
	+A4s5G8OBriO9yn7L6JfVdVYbhmwSc2DVNRKO8SbjJz9owg9/cM84JSk7skJRvuWMHEWhuMa8FYEx
	1kM+Kk8g2/n3y5wbFomYHmwsE0YhosIpNhYvcBcNSNzprS9GfZo1XeOGaNJsT0kQT2Vv8/Vlt4yP0
	X/xY154bSaDDmJjOe5ZQ6DDXvxV8iPW8cSvkQEjBaXn9vcFaxuzX6S4jGXg/WPUgHCRT48kS3XDXU
	S8w8UGp7/4FN41JvF9RhHQCCoMUI6hfMwZEA9/RAk9Bk1K7bV7wfaBnF60x0QKgU7q7m5VmHsqQe7
	uqkIBRH3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkphE-0005iz-UL; Mon, 15 Jun 2020 14:02:44 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkph7-0005iD-Nd
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:02:38 +0000
Received: by mail-ed1-x533.google.com with SMTP id k8so11611010edq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H/I16QzIcgZuuNr7TvHVEb2ZvJ/su1VA0igQPyblFHY=;
 b=pY/CM9zoLr5+Qvi1sPZYDPwjv4WFKkthBSJykclV776GXcBClitnueD+8Tb9otC69Z
 zUeDIWN4pvMShWfGU+SbmtjLSc9VliomZBQc0QwwUuBdzwT0T4Af0rp1UqEUXrk9mI9X
 2qDX/XowIPk7WKrVLQ+AnOsRi9BQW6SgWRibU7hrkvPhFsJE4ceMj0jMXvN3H3C3RtwY
 OhQwYsrllVlNg3rKB/xBNtqDeXRDaZqMjkuTasat0I4oT0t8c+UCdPyoF/UULXSCWfWD
 YKT8HUmK5F78tGqXIz7L1c3hYtuYhDG2uevuQws2xAMd+qCcFwIXl65/XlvexZgJY/Hm
 Ytsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H/I16QzIcgZuuNr7TvHVEb2ZvJ/su1VA0igQPyblFHY=;
 b=f0kaRppVIuQfWOA3xshJH4PAtI8HhiADnZRTloX30MIryyvLC6oKAuqqGFi+Uhyesz
 4Crfx5rqLnGEXtEOkljs+h5oU/pIkITaw0mJEHxqNuyn9bUxAdypjbKnnfuCRYYrhhp5
 87rmGPdSeZNm+3M5xJikDFN3vYW0gM4fb/5u7Qsv5UoFELAOIWgOxUiCJ1v0/EuL/c6u
 P7bPUcT7FyHIq1teS56IXHmdi+tcUa1pd/1FiZMD511kirIaSDA2iVlcZQHD0j6YgH5P
 +fdx36y/1ohfXzxQHDdNEJa4tLV/KMZuRHYt8pLnPwgk2OliTvoU7HGu91KdkhuTQz89
 jV4A==
X-Gm-Message-State: AOAM531usiHZgH6drbJUKnB3PZM66kXpBPov+vno3tsK6NPQ0xUq7io7
 qXs/ivkE37qNrQx0WbPlijU=
X-Google-Smtp-Source: ABdhPJwFy5wyb6mOMFbSozmcKmPQ95hcvYCNNyE1BdDoJwex/WBTFLKDkBSu6K0j7gz9aD9KEWWiGg==
X-Received: by 2002:aa7:c15a:: with SMTP id r26mr23019460edp.21.1592229755767; 
 Mon, 15 Jun 2020 07:02:35 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id p13sm8489879edx.69.2020.06.15.07.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 07:02:33 -0700 (PDT)
Date: Mon, 15 Jun 2020 16:02:32 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 07/11] memory: tegra: Changes for v5.8-rc1
Message-ID: <20200615140232.GA2812318@ulmo>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
 <20200515145311.1580134-8-thierry.reding@gmail.com>
 <CAK8P3a0kqjt8UNxe2ruRDOJNedOcqWxP-i5y2uW6YsaMNJgejg@mail.gmail.com>
 <20200526114054.GA2935745@ulmo>
 <159053113019.88029.6264653349405850933@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
In-Reply-To: <159053113019.88029.6264653349405850933@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_070237_791161_6F226C13 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 soc@kernel.org, arm@kernel.org, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8302365117728617749=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8302365117728617749==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 26, 2020 at 03:12:10PM -0700, Stephen Boyd wrote:
> Quoting Thierry Reding (2020-05-26 04:40:54)
> > On Mon, May 25, 2020 at 11:52:30PM +0200, Arnd Bergmann wrote:
> >=20
> > > Waiting for clarification before I can pull this.
> >=20
> > Given the above, might be best to hold off on this for a bit until the
> > clock branch was pulled by Mike or Stephen.
> >=20
>=20
> I pulled the clk branch into clk-next now.

Hi Arnd,

looks like this pull request didn't make it into v5.8-rc1. Was there
anything left here that you're waiting for me to address?

Thierry

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7nf3YACgkQ3SOs138+
s6FTUBAAuSroJTRcRlre6LWMudEbVF+IX0fsiiFUYRwa9bnlDm6U9pKP9bR7pi9Y
00g6DRvMP6w6P6h2tEg0PqZun3DYAE0rVWZIwr70QbeJmA6BDf85pKNNXmJD/TeB
9Y/EOivRxznw/NP7PSuWfmIWAX/5YWsX7l6PS3iMkf0xNIzJDS5XxWRJUA5sx5Sv
kUiXbgdKrZJTu3JvGDT+3l0HVbZR4wLglBKt7cMJIZGwPaVz28lTiw1PtZzgziVJ
Y9es9piW8fRiAi9MGDNXKcRtfRIYsfdZA98dHeEljcJBloBlhxpCAbqXEEt8OnHc
plRWkPBo3g9QAhhPU2NZoIYdKprbf38bfmXq7zDfrNZdutZ0+gC7cNNe0toloyYR
S/1fEk3Fy+fuIVgiONaRT7HSui9XxDLfMug6NBpOBiJCtv12tU6ODJhoYtCKhIXK
3gfN9sxxQODCvFDHzjiBc9kfVBkfRrhhM+sLlEksjfe3230NBHMvVju2C4t+Avw6
bTqYNCZF7H71IBBDHjVNqFBBKhy36SFxqh+J+8e20rzl5tDiyrM+jlmUNR7s2a/H
9LlB9TA3iQpO0KjnOQeZc11KUmX5di1C+EfIA7unHmB1PhP4HdVBSkRn1Gx4b8JN
sxLFetx7OPh2c573oEb6IlsHdfbL8HS4L+29b6Vvd8Gak0unXXc=
=2YI7
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--


--===============8302365117728617749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8302365117728617749==--

