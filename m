Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF14419BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KGhsQCKdDqU+MhvpdAU9ELeS3g6c/JvpuMVs/ss+hLg=; b=DS59vjJSpQjOvl6OUNfJfZEC3
	3Yy/BmJ6/PjqsFIiyoYtEeuuHVtrmJ4lxmCKQfe2U3ddaX6cmFz5dxJGKU3y9v8OzAp9NVlMYFJEi
	wKjSl0LymniMVLtSJf/MrZMi62QrGCkVhC/Q2F+5vhgiHftMzPthP7t2teVU4LmXs0+Qa777V13K+
	azW5W8NSucQqTBrSfmhVVMihjJINuF8vwsXweurCjYmmL2ctel3jqZRXQVxh/yBEDoB59TNE3LFwr
	crslvUIXitS7xDbvtOy1uDPxsoXRD3caOs/RuTZnOojFybhWtrCsA47lyiHGG8CU81aXqKIz0bv84
	CIJazOaYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harXn-0002Sj-K2; Wed, 12 Jun 2019 00:55:15 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1harXX-0002Pa-Df
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:55:00 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45NpLP2K5tz9s00;
 Wed, 12 Jun 2019 10:54:53 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1560300894;
 bh=jJVvQRYv+RNct+AwT6tYADRT40DSB6dPMv1XUCrWfrQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GRfIjh5qO9TFHNI6LP9yAJ+evoY6UDmuBo/eJPcDq47EE/3P/6Y7Hh/O98St9VyuH
 Xgmz51MjoE/Aqxz9qyrw4gdZjBl+VYOUu3lBl98r+XQSA3ZRU53kWgP0dCRLssonnH
 y3GGqJBtaM1cJAPJRhq4BjoRKykv07tqDrfxSggWgxuwnSz4Tx62ouOvuGZmnI7ZiO
 lP8U6VbaLGqWbjo7IDXk++gJ4Ek8VUlLFo6LZW83dGv0sn3egQ36wSzZm3dLuCf4LH
 YiHXm23S+L2pnPHK/LnsWbN54EjUX29x/y9ySKlIbfaijgfMlHwpz/FizpKKztibuk
 BaHtOMH00Zh9w==
Date: Wed, 12 Jun 2019 10:54:51 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [RESEND PATCH net-next] net: ethernet: ti: cpts: fix build
 failure for powerpc
Message-ID: <20190612105451.4d2e9aa3@canb.auug.org.au>
In-Reply-To: <20190611111632.9444-1-grygorii.strashko@ti.com>
References: <20190611111632.9444-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_175459_686270_50CFE001 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-next@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7527163924973558190=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7527163924973558190==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/2bUUK0tUc_lYIUql4YF9vie"; protocol="application/pgp-signature"

--Sig_/2bUUK0tUc_lYIUql4YF9vie
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Tue, 11 Jun 2019 14:16:32 +0300 Grygorii Strashko <grygorii.strashko@ti.=
com> wrote:
>
> Add dependency to TI CPTS from Common CLK framework COMMON_CLK to fix
> allyesconfig build for Powerpc:
>=20
> drivers/net/ethernet/ti/cpts.c: In function 'cpts_of_mux_clk_setup':
> drivers/net/ethernet/ti/cpts.c:567:2: error: implicit declaration of func=
tion 'of_clk_parent_fill'; did you mean 'of_clk_get_parent_name'? [-Werror=
=3Dimplicit-function-declaration]
>   of_clk_parent_fill(refclk_np, parent_names, num_parents);
>   ^~~~~~~~~~~~~~~~~~
>   of_clk_get_parent_name
>=20
> Fixes: a3047a81ba13 ("net: ethernet: ti: cpts: add support for ext rftclk=
 selection")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>

I have applied this to linu-next today instead of reverting a3047a81ba13.

--=20
Cheers,
Stephen Rothwell

--Sig_/2bUUK0tUc_lYIUql4YF9vie
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0ATVsACgkQAVBC80lX
0GxUiQf8DC0a5Zd5gWjOT5FiuKW9u3jmojquQB/VqM7zhVpf/34wTw93JvoiIAd1
I59WfIfDCzPwFE3bFMjxeReBhZStQocz5ADc5lGleJ0qHX7z3rbEcbgGILSWOEsm
r10tVBmqphIvQdQLzkL2WIYdE0fVC931lkcUf1UV/qc7MdsKrAi3wG72YWNjfMXM
zYlhw6DI3nrwlUaiiAbo3FhdeIVmlUdaEBJI6BDDB/dPjo4u8YFj9OGeNldl4+2L
3L3q5ZPggrEF4VbF/CBnL3uEMzGHU2PhkMxAexpzCZmUpNzF2MDbsN6RqjgN+KpX
5DO2V/Uv91jWR4z8BmxK/rwXZoQAsw==
=Cbkw
-----END PGP SIGNATURE-----

--Sig_/2bUUK0tUc_lYIUql4YF9vie--


--===============7527163924973558190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7527163924973558190==--

