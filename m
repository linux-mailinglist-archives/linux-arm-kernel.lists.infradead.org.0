Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A821E6320
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0eDAY+yo2SXvE4c/GNl+ZsQfC7dO6VR1NL2l1LHhtmo=; b=bfIZ6Gj0JdA0UMGmYYmm6NtCC
	2+Vjd7gh3mLqhypdKas5Ps1DZ3pcRnq6NP6Oa4ugZn5bbIWqNsFnITZQnAjzKNBE1mm7Kk7LbLfn5
	pbcWTws/xbr4ErRF2SgSSRveI8m6ABW30o92T2Ba7zZlW5NoqloXry3yMeXLPf1x4mYUsYaF9XaPG
	daj3TFew+R+Dum4zSd5/my1eCgBOXSlKbbbV/F8p6NUYRgmuWxzs5d/D4rtYavj4T/R/8uoQVLdug
	BCkv4m7ljH3xqzmp5s8ImIv3RonodBMVTXFbJjQOyzIcizZ4E14plopkJGY69q4AjLyRzlNahmiOC
	wBXu/M+fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJ3u-0008P1-LM; Thu, 28 May 2020 13:59:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJ3h-0008OX-Pf; Thu, 28 May 2020 13:58:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82E4920814;
 Thu, 28 May 2020 13:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590674337;
 bh=33GJz+mC9GeZY2YmgHy7gFnjO7ILb8Ua0jkAQw0Q7sk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MKEiduFi9xv+EojGxMx1IoYDAlTurQtN+OSRAuUZJnRvF59uZyaeYskhYnI+fCehj
 dv/3K90YBT4XIjE/cC2RUPfj6qlFxWFnQJzbXWJJSD1INMj7Wxfms5KsCxhDRUTest
 Wh4mmocELBuByjLJbVA4du7IBGZaPTdfE11eYZ3E=
Date: Thu, 28 May 2020 14:58:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 1/2] regmap: provide helpers for simple bit operations
Message-ID: <20200528135854.GF3606@sirena.org.uk>
References: <20200528123459.21168-1-brgl@bgdev.pl>
 <20200528123459.21168-2-brgl@bgdev.pl>
 <20200528132938.GC3606@sirena.org.uk>
 <CAMRc=MejeXv6vd5iRW_EB3XqBtdCWDcV=4BOCDDFd4D0-y9LUA@mail.gmail.com>
 <20200528134802.GE3606@sirena.org.uk>
 <CAMRc=MdL5dkJ+BPzvYXTnLQ_sGtU_7n=8jeSa5=hf8u9Pm+0FQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMRc=MdL5dkJ+BPzvYXTnLQ_sGtU_7n=8jeSa5=hf8u9Pm+0FQ@mail.gmail.com>
X-Cookie: Small is beautiful.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065857_858353_39D177B2 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1786605927556368046=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1786605927556368046==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xkXJwpr35CY/Lc3I"
Content-Disposition: inline


--xkXJwpr35CY/Lc3I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 28, 2020 at 03:57:24PM +0200, Bartosz Golaszewski wrote:

> Ok. So I'm seeing there are a lot of macros in regmap.h that could
> become static inlines but given the amount of regmap users: how about
> we do it separately and in the meantime I'll just modify this series
> to use static inlines?

Sure.

--xkXJwpr35CY/Lc3I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Pw50ACgkQJNaLcl1U
h9C0JAf/dNRWXvfYGQBfIcxntkKP8aep1vOHRifD1xl9zIeMOFNDJ+jgglCgD68t
LLZrN6cUDTo8C3G+FHwH6DGudq5wH8Ag7NsLhzL3SRn8Za4mDk1pxPBZ+tHJPizx
pqViqPY/vDilJVZ902oM2Fp6/9jFj20kbU7uxxr/xeAyARUeOETZDC/0KjXtqHVJ
tzq8L3i9Pz8trE7sZMCeZEf/xesIGKtC6+ZvXe3amr2x86TDxg3ikfIkjIe4+EJx
OjDpvAymwMPb8Y0THGwPr4UC7+9jCZlU9rVz+T1lwfvIKzfekY6YOIqopCBWRkBp
g/ew6KGinl54+fjsY3A++WgGXuWQZA==
=FKaC
-----END PGP SIGNATURE-----

--xkXJwpr35CY/Lc3I--


--===============1786605927556368046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1786605927556368046==--

