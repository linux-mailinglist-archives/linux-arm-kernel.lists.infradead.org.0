Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703F81C03AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o+ShRa+AIvgPDRB/g5JDPhrXGPlT0/711uRv9I2SsjM=; b=Z+w+1FtNCYhYwzH3ZEKF0rOHk
	8SeCr/BjhIOoSJMyfU6JmNFiLTIrZ6YbQbqjXak7lllCM72egVwk/In1y83ILXWSNEZy7qyXsOrGy
	icgBVExydC6prLxwVYN/FNZvGls3wBBjh/LvXLhZj2lbrAhY3k6PB1asAuPX50A3Wlv4lSIEA2Ebi
	c0FbOfElRPqjEWZnvXwhzMhTpT1YPQpMq0rb0UzkipzS2z9HTDpimjsAsfvNAgnYVfavxoF17nY2s
	1nm4YO5x9YgS9B7sGSofQ580QLK09ZLTlHq5t4O3DgLFRC+Av8TXHwn+U385O7Qz37YxVu3qtnCU/
	t09ArduXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCo0-0002LG-OL; Thu, 30 Apr 2020 17:17:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCnq-0002KG-G8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:16:51 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E5B72082E;
 Thu, 30 Apr 2020 17:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588267007;
 bh=qTjutJv9Y1lL9gN8JC6DeMU4LX3mRzkbINvwplEXmmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mp+dBwmed5aq1Z/kTvkEAZRPYxxMU25ro0fy9WCmjgs0hwDIZ416oyd+YYiUALtF5
 /eXk/bs5cliRRqjY36+w7qicNLXH6s/8tcjUnMuV5B9NViK83jwAJX7ATdyLiNfdTk
 jPAXW9gVJ8a8ki3ma0EFX7mkFiTFgBTKkw/Eo2AM=
Date: Thu, 30 Apr 2020 18:16:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200430171645.GG4633@sirena.org.uk>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-4-broonie@kernel.org>
 <20200430160928.GD25258@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200430160928.GD25258@willie-the-truck>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_101650_558601_00BAB7EB 
X-CRM114-Status: GOOD (  11.39  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7103447637510167374=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7103447637510167374==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5UGlQXeG3ziZS81+"
Content-Disposition: inline


--5UGlQXeG3ziZS81+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 05:09:29PM +0100, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 06:24:33PM +0100, Mark Brown wrote:

> > +	/*
> > +	 * The PAC and BTI instructons are not strictly NOPs but until
> > +	 * better support is added we can treat them as such.
> > +	 */
> >  	switch (insn & 0xFE0) {

> Are you deliberately omitting XPACLRI? If so, maybe add a comment to say
> why, since it looks a bit weird without it.

Not deliberately, no - I'm not sure I'd heard of it before and it's one
of those cases where the spec doesn't call out the instruction as being
in the hint space.

--5UGlQXeG3ziZS81+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6rB/wACgkQJNaLcl1U
h9B/QAf/VM+ZqY1ZOr2a2d3xuglw+Y9GzKH9feare475i09TvZ2psVG7fEbs0Dpt
Nrp891J+jJEt1cOZrsBOCh3lBoP/QNpAEvUmG0QVmLsk+f4eQkXrzHNx9YMUUAFh
II4JTfW0K8bn82JfLwx/Z4uKv5k3F55ZSSG9o2UNJ9AS74FoqpdRpVMXqFQhS1WW
5/LQbL3QFQ8a8yzlQNEJshFk1bqPER71hmw3FgBXShY7B8nmID+KvZfBqTdTF93T
gP+Iu/MH4khShydn/h7dFMNd/4BsIi/0wt1g/JmzYBahdItGiqQiD/Tls9Y95vxF
5sMHA+JEeTjaZ2NMRT3WMSDLoc4cmA==
=kNg9
-----END PGP SIGNATURE-----

--5UGlQXeG3ziZS81+--


--===============7103447637510167374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7103447637510167374==--

