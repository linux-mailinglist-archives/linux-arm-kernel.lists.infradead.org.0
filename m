Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3746F1F87F7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 11:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t1Y+6fLqgOLgJnnAbVdzFwM0aZnFmxHvyobLPm38ENQ=; b=TL13kK+wtvhdcOZBYdHteiy3D
	wvt3MokUWIISJmUcWXn0elqAbWpHa7zxFnh9owWMbHHcgtKWq4LKM7IsXtv4MsOJ3SWGnU38HY2Rj
	DF2DdSvGFMuaNcLNh/6KAJpqoFX6Xi5IsOKPjD+I7rZ31cBujZYRpB7fOgIUbfYtgMDI/0hNhN9Qi
	TsW4upTKTbBkQHiH05ZBZzx5ErhXLbuzlxXPVvL6+YG1T9yIip+U0YQ0rJ5DAHnea07oyV4QrbqZr
	oynqRWnFkb54+2G3o87L793DWnPjqVNh0JjNXKEq1bdXkyFOr5oN+esEVGTo1fj3kYMb808AI87+d
	CijqTxNBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkOeg-0007a3-6B; Sun, 14 Jun 2020 09:10:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkOeK-0007Zj-Ul
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 09:09:58 +0000
Received: from localhost (p5486c990.dip0.t-ipconnect.de [84.134.201.144])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 57D4B206B7;
 Sun, 14 Jun 2020 09:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592125793;
 bh=GyWN7fwCZHMu/ACIxItEJPZwDRM38mgAnMbmho6SoLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gyNdZIM7IHGZgb4axJGxNbUz/L5LJBNw8Fp8y5s6kZniCTgX/FW0OS8gk2ySwiQqq
 h3ZtVcEBjBvX8hq+pimwyK0wBcU3fIcKEphF2i6pfwpobZ8cqUdpdU27nCPTiqjRAE
 YmMsfWx4MuLJNhMA/yUv5DidGzaiLbXqbvDzQ/ac=
Date: Sun, 14 Jun 2020 11:09:50 +0200
From: Wolfram Sang <wsa@kernel.org>
To: wu000273@umn.edu
Subject: Re: [PATCH] i2c: xiic: Fix reference count leaks.
Message-ID: <20200614090950.GB2878@kunai>
References: <20200613215923.2611-1-wu000273@umn.edu>
MIME-Version: 1.0
In-Reply-To: <20200613215923.2611-1-wu000273@umn.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_020957_012458_D3D4B69D 
X-CRM114-Status: UNSURE (   8.51  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, kjlu@umn.edu,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, Shubhrajyoti Datta <shubhraj@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1015322249349028257=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1015322249349028257==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 13, 2020 at 04:59:23PM -0500, wu000273@umn.edu wrote:
> From: Qiushi Wu <wu000273@umn.edu>
>=20
> pm_runtime_get_sync() increments the runtime PM usage counter even
> when it returns an error code. Thus call pm_runtime_put_noidle()
> if pm_runtime_get_sync() fails.

Can you point me to a discussion where it was decided that this is a
proper fix? I'd think we rather should fix pm_runtime_get_sync() but
maybe there are technical reasons against it.


--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7l6V4ACgkQFA3kzBSg
KbacZw/8CozQWe7U1m+g1iWgjOxVuE65mf+56wzqLkcKyULNknbdqa6A3cLA/BXE
MjpMsuLzwrfVw/KI4eMRvFaYdUE1hYx3UIiwQJNTW06ZvafZ+nmhijnB8xTMQ6VV
ZAR1biiz1Wd9xpaU4Q2s543Hn2Z0a/l4Fip4lZYuvmT09IRKJrrT6zAvNbeXla53
7YKsf0OmFLYUQEzjES7jVf/t9v0z6g9Iy5lTRQqki1VjZT1RspIlu+M2GFiIsT53
y+wbn2QNGCGHh23OrUMByPw2Ni8apZluLR/kKYv3n//+PCVDhuMT999VMuh/aJ9Y
w4dsxEyZdfwTpUgAZGGm8gLaxFYX0AIkJaqC3M+gy+sDc7ZkKNRtnc7DvBR5r7ax
wtbjONMGUsb0uu5q247hjFZsyTWqkl+5oJbkL8a77XODZ/2ppqSHjlzsay0mFwoA
1MsaFdxOnTTwZQSqSwLXTQ0sBsLuS//mAwVt1v4cykRydP1mIeAXiKSc0ezvWlo0
sOC6xh3snVbEH16jMy1j2+NzALqjyiOVNz81cttL9CyTjcpr+7jAzTYLoEKYAHcN
HDYROLWOg6z5RJ9kdpv2iPEF3XOvnkPT4xNkgkI1bl70K8gg4/B3iLtvF88kj7cd
32XVac17Ca6kejsX6PDCUw3bjWG6oVh7NeTWmESC/bv1lgot6xo=
=mHF9
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============1015322249349028257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1015322249349028257==--

