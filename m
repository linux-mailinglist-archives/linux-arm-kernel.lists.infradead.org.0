Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC6A3585E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rxBzM6jeiW/3Z9RIT7m2A0uEYA+gA4XRSxMG2gTxJ6A=; b=Pm1q2F1d8Jl8ofmoTkGpzHwX5
	81ztJ24G1a/I/5jjaorxeW0+FFeBRjf+ZS6S2D2FsXWJeY8qKo+me114jkHplaWXUiRmLCgUTvSaD
	vNLsHlQmdxstqrUXPTVVxzGchhfkcdTKc9zWBXIbPUGvB72uN/DXIvD1vPbgGjgJAPaelS8jCfsOZ
	zQixmQjqklRSzR8A4xvJm5AU4fTbhGnvXS/O3bpeEPrJPfj9T2hu7dpow6TwTtzl23P+X78fiygE0
	EwLzM+9HZl4gx+t3ac0GPGnaA6nyfyzzybTyEiJI+uEePp6ZWRStqJ5hjkiwebxqCOYZ5ul9VxPWL
	EgZ8b4oAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYR6d-0004DD-1B; Wed, 05 Jun 2019 08:17:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYR6V-0004CW-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:17:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so15436526wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jHrQ2ViHC6ifLalAaSSqgrKue9yDQo29kYzFlYumPcs=;
 b=j6vpjuKnpyo21ngEULtEY5xsZfMvu4tT2SbyqZa3H4cX4xjiACNfpU9oEoTS31j3XE
 Tuk9pkrd+QmBMMxjR/GNYeRBN2Gh1HlwkWxtK3qIKeBFp5oCQcIYbSN1njntViL8DSs0
 LZTnNXPJ1ido7zp6UWhjKYq0wJggbRxhm1sPsN8VHdyk4Yz/QXkAUtwH8dLxD6dbXKTR
 Ao0xnzhJ14TfN8JfQrwpSX1uAAUtElE6dkO69X8TxW7C1SoQhKVYB0iuC3zcMJW28PLO
 9vVQ7PFUBLNQ9O+mODkib7bupxPYmB7ccgtW9ELwvmXszO89Q9PvvEm/+s+uaWlwRDo2
 obsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jHrQ2ViHC6ifLalAaSSqgrKue9yDQo29kYzFlYumPcs=;
 b=dCQhTi0H4k64OVD812yq7DOOZLuOxbPElpqo1/Q35bkdi7I5S6QsorxIw4D6C0hFEZ
 HZPK64B2Sk6AC73anTde2gm9hyQEkcnK9CG0+z53ekZPUmNfTAVukHanrCFZlXnQ/n/L
 QxoNPzJW1m+lq6dJJ9+rHZcAOWAnAlIL4nw0GyslseK6X7GPK4Rro/s6UQsYXkJWNcxs
 wMA8HFAJ30TMpzFV6Nj/YFMAOQh5mIfNYNYODDyQeVQBsrYR07tlDgmsyXGwZKRms7On
 s8I9hICYpq5Co1Az6e4o3upUqBTZc1k1SDVNuehjRrSemSR2zUZyF2/WBs4DfH2NzgNV
 jb/w==
X-Gm-Message-State: APjAAAUqMzbEQY0fr9R8B96L4yJgoW2fJ8+eSG/LmWu7f6Yc2mU+nSkM
 hmYYRxvliq5sjf3vkO0ao2Q=
X-Google-Smtp-Source: APXvYqxdtYU0TN4tcHBGe/ALeaQPGkNBSVE8fkGRnZRjA2BpzcDNSYlFnLXVgs8/xEqgmVVL7JUNhQ==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr23024876wrt.111.1559722621712; 
 Wed, 05 Jun 2019 01:17:01 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id h84sm7348943wmf.43.2019.06.05.01.17.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 01:17:00 -0700 (PDT)
Date: Wed, 5 Jun 2019 10:16:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Joseph Lo <josephl@nvidia.com>
Subject: Re: [PATCH V2] arm64: tegra: add CPU cache topology for Tegra186
Message-ID: <20190605081659.GA10944@ulmo>
References: <20190605022640.17837-1-josephl@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190605022640.17837-1-josephl@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_011703_746008_AFE2FECF 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Jonathan Hunter <jonathanh@nvidia.com>
Content-Type: multipart/mixed; boundary="===============5389831247136737110=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5389831247136737110==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 05, 2019 at 10:26:40AM +0800, Joseph Lo wrote:
> Tegra186 has two CPU clusters with its own cache hierarchy. This patch
> adds them with the cache information of each of the CPUs.
>=20
> Signed-off-by: Joseph Lo <josephl@nvidia.com>
> ---
> v2:
>  - add detail cache information
> ---
>  arch/arm64/boot/dts/nvidia/tegra186.dtsi | 60 ++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)

Applied, thanks.

Thierry

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlz3enYACgkQ3SOs138+
s6Ft9g//YhdzpDxT8SmLLJxJ+RqnMTzqOtGr5Gn6zGrVsJqu9rOnscmSY3aYVqoj
Tsp+6ZEQp2IqmzxfCKF3Dmbnd7d3tgnUI2iAb3DyF24e4TGJH76ivK9hnVaxNteX
3vGtfKjalTkw1cbGFGi7KeRc3Rkmz7GIJtw7T8b75NQ20bT8XKBO2znIs48GRFoE
vnlCsEt4JAzH9EgQpllYZzO9re69JnVCUNS6TXJ6DLGkyR7h1lAWgKXW4bKo0PMN
vV/Dr51VPRLc5j6177mWh8sUryxiYmDnNsdqhNpXpLXSVUjZuSoW724bdsSPK7oq
p0YzmjxiMUG+inBgeneypDt9Uic3ozJnUoWnm/JiiDYxgfb6yq3SZ+A9mq945lvg
2iLK/Axg8y3hhCuiGNqYeJFPyHh6OQoMTMqyP3PY08ngW86NcYlrx22zTRKDqPR9
5MlRPsv0ewj94M0PR8yvShupwl8irJ9RfLr1zWCbWvV8EHFO7zFKHBOOYHAXew6x
x+Rkp5Qj1eQEwE5oNTTasePntVFfMVB+bSTfTDTYEyV6xXA96DvwNrGL5tW10mYl
Xf+5g6MAtN+CKCDKvJaK9GM6s0ybmgH7v8QY3ZxNiNHKpo5fjLib6CbxPCxvLjjL
LA0QHleueeSZHC1PHURdXU3L//y9GrykEDP1BCkhXt3nzf2yJQk=
=yybJ
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--


--===============5389831247136737110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5389831247136737110==--

