Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E937618477C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x2+La/iyXBWR0yoLGXM9r/2w7eymaU3oSJigqyL5TIw=; b=CJbcajJgkb9lTZzlXlz2aaYzL
	ckKG8IjG+JMqRNfnEXSZAdeSRUUs/Twdx6VFGs3NUlDFjbbfXSMzVkS+PwsIe6kz/fwFLksQEeniV
	k7oOAmvXzvBQz3qKChdBipTsMCxUVk/rs8yOrYHW5c2fmDD4PhI8LtLu1XDRwKXaQ62eKXOyWmYWK
	CcK8rVbxf1Uw0WQt52Hc0Ma4/jwKk/8tg2VXum8A+dsQoh6mePEWbXaaQK29u8TTEsPjNp4bUrKCd
	KMGUjwVD1t/RbqFt36CAAOBSO6qQCxkDMvVbh7MoqnO8FXSoBtuc0H4qg7aFhWsxcubMdADEwLFfq
	DW88Q304Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCk42-0006qx-VM; Fri, 13 Mar 2020 13:09:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCk3u-0006qe-Ky
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:09:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDCB130E;
 Fri, 13 Mar 2020 06:09:12 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61ED73F67D;
 Fri, 13 Mar 2020 06:09:12 -0700 (PDT)
Date: Fri, 13 Mar 2020 13:09:10 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: Current status about arm64 livepatch support
Message-ID: <20200313130910.GF5528@sirena.org.uk>
References: <5E5F5647.3040705@cn.fujitsu.com> <5E6AEF8B.4090905@cn.fujitsu.com>
 <20200313122244.GI42546@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200313122244.GI42546@lakrids.cambridge.arm.com>
X-Cookie: This page intentionally left blank.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_060914_732935_80DF5AD6 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Torsten Duwe <duwe@suse.de>, Torsten Duwe <duwe@lst.de>,
 Xiao Yang <yangx.jy@cn.fujitsu.com>, linux-arm-kernel@lists.infradead.org,
 Julien Thierry <jthierry@redhat.com>
Content-Type: multipart/mixed; boundary="===============3802974374304378645=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3802974374304378645==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SxgehGEc6vB0cZwN"
Content-Disposition: inline


--SxgehGEc6vB0cZwN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 13, 2020 at 12:22:45PM +0000, Mark Rutland wrote:

>    For reliable stack tracing we may need to rework some assemvly and/or
>    rework the stack tracing code. That will likely depend on the objtool
>    bits.

I'm looking a bit at the stack tracing part - most immediately at
converting arm64 over to the newer arch_stack_walk() interfaces.
There's a couple of other bits of work that have higher priority though,
but they're getting to the point where there's gaps for review so I will
hopefully have some time.

--SxgehGEc6vB0cZwN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5rhfYACgkQJNaLcl1U
h9ABPgf+IV0c/uzCefZTLUMqkNjG0RiPoV+iz4eg4Aulmxom5gnmHKG8dkiy2mXT
AB17e+TkPKxImk1n4i3y9h+GSTNVvnTQ3sH1D11TOiuwpp5aHaXww+/KcIArLPDC
/IfrWYgNdALGHg2c6wy516hg8i5Uq34SFKQ3RF+8ctFR7NzCgn5UpsGoBf/6yi+D
H10OwxGShDAD1d3YsiWvC0qusqtLhlv+x1cM9eL0wGPdZ8aGy1NtLoo+yyLzTj67
98Tj2beJSajDsiaZ3YD2cd6UOzZVVBRsC8d8V+owg5cYoio/uypnPkocr1WJ4lm+
ajr3BmX1mb+GnyqgR6zFvYvIKNrGcg==
=26ei
-----END PGP SIGNATURE-----

--SxgehGEc6vB0cZwN--


--===============3802974374304378645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3802974374304378645==--

