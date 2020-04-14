Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1901A8BE7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 22:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ThBT910ZSGS5GDWwJYbPzHIhyfdAVptwSULqf/RfQ8Y=; b=jEHe41L1XwdNjGlOzAoTnbcsd
	YKL6a/Y3WmU724wQWYLRLl6D9P0vfm7GpHlUk8kl+pAnjEmEfb1wGfXnOGa/0JN783Uy8Kp4KA+Nj
	iKYCnNYp1+hKy7NK3ijLHOlEGQV4wZHGGk0V4ei/XwvyBt1EtuJ/n8zLQ+notzsBT8li5pUQdoGRF
	8/ULE8h7Lc77UeKgdjYDqJK/f0nwKuSbRRkOEBfF7Jub4wSKuV4K/2YTcD1FGjHQ75BOXAF6QpqdR
	VJf5VLyR8jMgVXJSCWStsYEhx+6cfQp6Ii8cVEfsxESYRLMbLv7D3s5tNRM3Q3tDO0ByOdUyNSkN5
	PhMk1nFfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORmI-0007jt-Rd; Tue, 14 Apr 2020 20:03:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORm7-0007hf-GL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 20:03:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id d27so6788555wra.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 13:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WqVnj8IFqGFdEmOyYb2VJCmzmj0VgFnWDZJfvzhuPyg=;
 b=SklB+VqhZ46ohUYET8E6jXmY8wW6RRrTs4SCQyaBtpwKvr7z2GXmuBvLmCfm4MQPbS
 WSFZs1g/a6emv/+YA0Qib2Tn48Zus+tc7U23tUY7b6yhkr84CimIQ7POZDknh1Q7Dd3J
 +8JQd9RGtv5g/jrnbKEJUrMBwiBPU4nNOIpuhA5YjHfJRAw5cLQHicTLAO3h0g13dKXx
 owAX49kmERRtDkLaFYEHFraXX0TRNVVCUN6fbqmipxaZlXKmDyvSRK+bDscy/P137DhY
 cuQPJOZZm1APOlFfJqiFCEm7eZa8m2nsqABdt7fJdEJKjI09tgh8q74tFSIr/Ni6f0nG
 BYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WqVnj8IFqGFdEmOyYb2VJCmzmj0VgFnWDZJfvzhuPyg=;
 b=abpyAz3sAh97bOZfKuIWnJtgvreUD8G4S/hPe34B4dsE7iAfkA0MZkrg+jKfRNNVyu
 09QdkNS/XtM9r+xYT6hkiw6PlxxVJYmVbBJ71UtKJ4zBEXfC7EveN36vkWxrxcY7KomR
 C8MSVm3tKPtHd1gyFL5/7TZFZG7t/onXYb8gsMmrnkAhlroxE2mQRmlluenPzyvU+yUl
 86IJOFPDqlULo18SRcBsf+LG0MEWAC1wLvnwIV5l1RbgjJO9fmOEn0kpgn00AJF4C/Bb
 dq2rA+4k3FmZ2jOL+KUoFEYELX/D8pwgVXKAh4enHtFISgLO3hkRe+3SH0BjAkRCu4mR
 rclA==
X-Gm-Message-State: AGi0PuZp/zmch4WXZNnonxQUJgWA7Z6HYmpFXDupBXSiMYGXQBPWJbOp
 tXQRA2BwRyOQHP01edTdMqE=
X-Google-Smtp-Source: APiQypKgPX3t+vOJEeyj4pvhZH15r6VnpobtlBCeEn6P8paVe6JSM3adiGxoEVtV/+jQrRn6tgcvxA==
X-Received: by 2002:adf:92c2:: with SMTP id 60mr21461043wrn.379.1586894594044; 
 Tue, 14 Apr 2020 13:03:14 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id v10sm8236763wrq.45.2020.04.14.13.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:03:12 -0700 (PDT)
Date: Tue, 14 Apr 2020 22:03:11 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 10/14] memory: tegra: Add EMC scaling sequence code
 for Tegra210
Message-ID: <20200414200311.GD15932@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-11-thierry.reding@gmail.com>
 <682c661d-ea3a-7b9a-42f0-d5473b969aa2@gmail.com>
 <20200414154526.GP3593749@ulmo>
 <e050baee-89cb-dba1-544e-77b1662ac6b7@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e050baee-89cb-dba1-544e-77b1662ac6b7@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_130315_548475_B73F8AC9 
X-CRM114-Status: GOOD (  15.24  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2696737761429416581=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2696737761429416581==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZJcv+A0YCCLh2VIg"
Content-Disposition: inline


--ZJcv+A0YCCLh2VIg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2020 at 07:27:43PM +0300, Dmitry Osipenko wrote:
> 14.04.2020 18:45, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> >> What about to try to replace this massive egyptian construction with a
> >> single "u32 val;" ?
> >=20
> > I actually tried that after condensing what this used to look like into
> > the above. The result was a huge failure because some of these temporary
> > values end up being reused, so I ended up writing bogus values into some
> > of these registers.
>=20
> It should be fine to keep those variables that are getting re-used. It
> looks like there are much more variables that are never re-used, and
> thus, they could be replaced.

Okay, I made another pass over it and it looks slightly better now. I've
kept a couple of the "option"-type variables that are constant but in my
opinion make the code more readable compared to hard-coding them. In the
cases where I kept them, I declared them constants, so the compiler will
hopefully be able to optimize the code and their purpose should also be
clearer.

Thierry

--ZJcv+A0YCCLh2VIg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6WFv0ACgkQ3SOs138+
s6FzPBAAsxspbLBGVMeeFtVE44f5t8cfCBGGqafBdGqgKya9ZWRdsHhEsusz+GxT
aqf7mRltFdusi9G66Sc2gq/YgFkC4cZJ+jWXoaUf+GCh85/zUBobWJxuL3BAYLS+
+1nxcoPGekN+Vux0NpGT2o1TYOFY4tF8SN7MJjm6+6dStevEerMRopmrn6YdICng
YCbAoQhocSmmAgLOfXfwyXZqpShCrBBsW1hZnQLKZWwzCjHo20WuAqSWQtL/Izsr
4LSK1YZc8TRKZw7P4VBVirzAIibR8NemHTCfftksjcBbKGl/ya/c5s6c5xntKYoc
tszI33NOqlLXt3udgxcGtXUoGe9swC+oKcf5iCQIh72xazbJZrLkigvh3HzS+Ct4
nb9IaPrik+iWv8jupxpKdbCCD/IgxR8KDCnNcLnSIOacqTpxMIPWP7L266ifOHkc
2qmdvCD/n6I2CizHgINLaZzPcw99AdJ60lZQgelPtcMQ7gwefb8Zh4OhjuCTt4Os
rJqhMAJ3lfK8cdK8OrcjNgDPKi1+avp9Srm10dXpyats0MPJgpNO7g6v9wwMN3zN
cwDTJGCLezBG6oNwsxJLnCX1OflOZTa+STTOGvfndsWk7QJ5PmYXcBmY8grxSEiB
3zhbpRaOdVtut6WAGQ8c+tgx5UXGVtj2TwmPgtySlc1jdltV3Bg=
=ofH1
-----END PGP SIGNATURE-----

--ZJcv+A0YCCLh2VIg--


--===============2696737761429416581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2696737761429416581==--

