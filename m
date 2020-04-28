Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68631BBCB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FLt1PrV/cAqWgobK984Luw7rBj4TSQ99sCdICuMNqPo=; b=ZPj+Ev9tHwI53feK/fEAveAKP
	Vw7CViQa/XwLsD1ti0d1psD5HvtmyWbcU/koSQdWiohJ9r0g/fBYvYK6V6iBz8IVIAcpraf/keHWO
	2LOzWG3gERRmPlkV77UJxozX6GfosL4jIk/YL5VNVX6ndicOG90PluUTjpOACQBvJgnp7JrDXP7g0
	dC0fxVQSVcRcx/BQiZUuzY8J+5t/UoIN0Y7dhHUrKQM0s0JUzyj4WiQ+QBBKI9uJ5RybRYRT6yde6
	EUlqVREjT/OzI3dzXEmgyzgrUBb9Jl/3Em5RbInR9Lc5jmnAcVlBPEyT0As/WfcH8W85oN/Kt82zL
	LMcmwkL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOel-0004fi-GE; Tue, 28 Apr 2020 11:44:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOeb-0004ev-Ll
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:43:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73BFD206A1;
 Tue, 28 Apr 2020 11:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588074236;
 bh=T8a0KFMa+4DTl7rcY6VU6nGLVzta/PtI5iqHx0AQKMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d4GRYVwtZHYh4jq9OVPLiIcnhbCISfMwb4qwvH34sm3ME7AwLKYJCWTK2hL3VWOi5
 iAqiOmsISZeBs/EbB+Wn521hBEWcCv5/Zg6+bzvAGG4NGe/zlPbV4+zxYvjlO8wIHf
 HTF2V6qf+V1IBH++AeXetXK84VcpcDca6JTmIaF4=
Date: Tue, 28 Apr 2020 12:43:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/3] arm64: insn: Add constants for PAC and BTI
 instruction decode
Message-ID: <20200428114353.GG5677@sirena.org.uk>
References: <20200324194822.15682-1-broonie@kernel.org>
 <20200324194822.15682-3-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200324194822.15682-3-broonie@kernel.org>
X-Cookie: Eschew obfuscation.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_044357_733479_E4E422FC 
X-CRM114-Status: UNSURE (   9.02  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6607879771156694261=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6607879771156694261==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fCcDWlUEdh43YKr8"
Content-Disposition: inline


--fCcDWlUEdh43YKr8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 24, 2020 at 07:48:21PM +0000, Mark Brown wrote:

> +	AARCH64_INSN_HINT_BTI   = 0x40 << 5,
> +	AARCH64_INSN_HINT_BTIC  = 0x42 << 5,
> +	AARCH64_INSN_HINT_BTIJ  = 0x44 << 5,
> +	AARCH64_INSN_HINT_BTIJC = 0x4C << 5,

These constants are wrong (I checked the others, they're fine) - I'll
send out a fixed version as part of the next version of the BTI kernel
patches since they will depend on these.

--fCcDWlUEdh43YKr8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6oFvgACgkQJNaLcl1U
h9BAOwf/W8i0YKV3+1F766lmXdMW6813Z6aLcsAxuOx1p5f70KDKurXiyOKN116d
PDURWvxevHNB87XA2ZYvXdLXLxKfnD/kSYjELonmI4ivK5+8zcbSc9+7h9ImMVEC
UmKf9yXDZZGlor9B+hG3Y39MGq57ahGLwZ0iqa2Nh5l3vOMwaWz8Ljv/o5kW/mYs
Nykep0DXQOTeiC0qGn9KVilgukPUkqjUjkibYYl4nDvuSsgOBJmEtdf/B5hXUdwO
MNWqNddQXHT9+DN+Qjxe6PgXDvIbu9c2yOzcjSrybdNdRgQfG1mIEOn7p6DF7FBl
6Hg+mF51fFued5GPvvTcX3AH/ZkEEQ==
=QaHd
-----END PGP SIGNATURE-----

--fCcDWlUEdh43YKr8--


--===============6607879771156694261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6607879771156694261==--

