Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599011BD7DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wz2QkVySAWT8rOZ2uH4PSpQOF1P71w8cRJnQ3MXSXog=; b=nZimvXO/5AMMkzKfByAwjsANX
	MeQxr1W+H7kmgFdIn2/ztWldhI11lGSWePLj5DgqUXvjTUAxz2s/Mk+VhdNFAavDKNxMy9vLcwEcE
	eqgZFDz+YR4m4a9t7F6kNSdoYpkPcthBuKVw2nu5u3v5mLiXwyr9kn3rq/n644S390uTYnkXwuLnM
	0w/kFqXPhuUpPHWASQ7SjOAoaJKZ2wMnSmiNa+Vp3mJz3qKYlRm6CvV0qMBHI1enJiHIBssGQ6VFV
	VDM2J8cjpeQB+hg/oZcmla/W8YGuXxf4o2jLW9yE6TPIpWSYT+PLfeRYM6wFzZG92Ql0PnPQrHFkZ
	VkVFJwUDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTidW-0005pn-7C; Wed, 29 Apr 2020 09:04:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTidK-0005pS-3O
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:03:59 +0000
Received: from localhost (p54B330EB.dip0.t-ipconnect.de [84.179.48.235])
 by pokefinder.org (Postfix) with ESMTPSA id 266772C08B2;
 Wed, 29 Apr 2020 11:03:56 +0200 (CEST)
Date: Wed, 29 Apr 2020 11:03:55 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Subject: Re: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Message-ID: <20200429090355.GA2891@kunai>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
 <20200429075357.GA1957@kunai>
 <56add9c6e6b5410986325a1360466e4b@TWMBX02.aspeed.com>
MIME-Version: 1.0
In-Reply-To: <56add9c6e6b5410986325a1360466e4b@TWMBX02.aspeed.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_020358_301950_6C3232F6 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============9113018677528771180=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9113018677528771180==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> And is there maybe a Fixes: tag for it?
> [Ryan Chen] Yes it is a fix patch.

I meant this (from submitting-patches.rst):

===

If your patch fixes a bug in a specific commit, e.g. you found an issue using
``git bisect``, please use the 'Fixes:' tag with the first 12 characters of
the SHA-1 ID, and the one line summary.  Do not split the tag across multiple
lines, tags are exempt from the "wrap at 75 columns" rule in order to simplify
parsing scripts.  For example::

        Fixes: 54a4f0239f2e ("KVM: MMU: make kvm_mmu_zap_page() return the number of pages it actually freed")

===

So, is it possible to identify a commit introducing the problem?

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6pQvgACgkQFA3kzBSg
KbbFHQ/+K57P1NyZRw5B1Rv9WNar6q/eQ41eSy2AlAGuIpeszu87HBT8bm06Pgqo
A7YRNyGbNNxxwFpp237SnxaQuaiaunkM47dv+nodutzcc84onXviG9XbkuLzuQRv
OTXdVQ87+u1xXwcmIP1tY0xSBVyM8S51yCcpWqfdGbJ6NjQg/QHMBJv0keVQDc2h
BwSHJW/UcJBvSn7yMReQb1GPCSomhHu66tG1CRxbM1ZCJ2wh0tjqUvTTH8btXs4o
cji5F23YM9DvUR9iKXayc6ETAsM8uhbahgkSfgp5ZimhOjud5kZyyi1H4DyoG0a+
chWZn1UoyfKbqQoCZMlmGsDizl2u9yvOF0VUclcx0PpGhXeR7cUJkFCtW02aY1B0
2/rh1MLyho2HzLOPZwDuF6/X17Tj+QdhdOJd/Oq8AqZNHvvUB+fXClXFWxnzksEx
qJACY88BqtX6PiXRRtbjjJAxCyhszZbKohVVYwoOHz15DARLRYJfetseC5e2Pvlk
D2ppvmggfk8o8YsgI3f29FquAkVn9cYHzef4A32NVJ/jviug9vmouv0AgAon63dM
UKGd+Ue5zghpD8DR2Vgq5V+VR749W6Q/f0R914xlIMvDzbPVOvggu9391U9aEaa5
XHsi/4GmOYnrGwSo+Ql1O0vF0g4RwppQiHgYN13QjevcgWqZJH8=
=8XDO
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--


--===============9113018677528771180==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9113018677528771180==--

