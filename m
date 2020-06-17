Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEED1FC98C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MvjIU1+PW547XYzBFCVqOs9qW4dCM2vubOHk6E4BdQQ=; b=TDR4d2kXNRIm6DTHQl+oY+mYL
	3pooUi5FO+37ZqbR5ii2hlTlLHLAGKNIcAXq16a45fJW7vGRLYGMf+HbzVbY3IMiLduoWwXURGnyL
	zlf9KPGbmIlbdPxJmpu++hwLtFs0shzdobzHATvhulIZNGpHL4MiHH6qONSEeup0qTtxg0xpupyOn
	JzZCqeapqN8SGWXv12rM79DCCXeRAUOmNNHI7f4lgrlzAHTzPGRnPJ5blFaiATFYN7TQPMbLlHrw/
	4W6EIZZ95dWHCR21iLooKlT8aJtKpwYv6b/6alUBC6sPGFK7H19vczVfUT46TIrBEDn/xcvcinY5I
	e0UBkcm/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlU4p-0006cJ-1i; Wed, 17 Jun 2020 09:09:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlU4V-0006VZ-84
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:09:28 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72B24207DD;
 Wed, 17 Jun 2020 09:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592384966;
 bh=ieEhBHn0zjZVdmCJs0hpHz+m0bC8GBa6T/TMMAW6fY0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j2cHRRCuWYs5Awh2tGXZFYvtiwOCqwrzEgAuCfDCL2/TeD1+FU4yiXV/D774EOFwS
 MWLJOEWozrUHXRnZMUm5yvSyy4FL/TXNT5QdA4X6GmdJf5rBqjjUQ30OtaGVuJRtbA
 hHlwlV9KmZRXYvEy2+W7SzBYKC/ae0r9Owk+lzQ4=
Date: Wed, 17 Jun 2020 10:09:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Message-ID: <20200617090923.GA4613@sirena.org.uk>
References: <20200616183630.2445-1-will@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200616183630.2445-1-will@kernel.org>
X-Cookie: This fortune is false.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_020927_341153_F2968A6D 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tom Stellard <tstellar@redhat.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============5850433726379895838=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5850433726379895838==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
> Unfortunately, most versions of clang that support BTI are capable of
> miscompiling the kernel when converting a switch statement into a jump
> table. As an example, attempting to spawn a KVM guest results in a panic:

Reviewed-by: Mark Brown <broonie@kernel.org>

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7p3b4ACgkQJNaLcl1U
h9BE5wf/as6VaLvXELFzdA6mxgqPgBFParFFa7i/JsgBzdb7hd5Z5q8GeeqMpYJu
udyuxtHuSlduMup4htT/qb5XPSOcg3QbNLd2ug/3T/RnYLgCx4kO+yDdy7JVf1Wj
ZAiDT+y9texULXRy1ZctkZXD7mpV88tWzhJV/wAPHNK6WxUBQwjhZNWvB3W9dJGe
6gkuFlgPcBTVoMMWUia0hHArQz5KViX43YufS3i3UwCvklxeBZg4v3QAqq/JMntP
Orm/xhUxn28HMNVKsdRt5lIDTP07d3PsHzI1YLHfH6LrCbEoUvrl6IDMZJkPKy+I
czd7jKX598iWtg+GhKJlpiEWeAV9Iw==
=WE9k
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--


--===============5850433726379895838==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5850433726379895838==--

