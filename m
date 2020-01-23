Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59570147373
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 22:54:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sZbw7kZk0DI7IZh8yAWxBJkhw9GWGXZ0/EvqaHR+hZA=; b=XOxaedTk+1Ni7JpRtkjh9S36h
	ZL2j06lxRDqpMWh/RA6/sYZ5JMH9/yocqOd5ghEStMdNG0FV2N/kLdwo2s185a/MDsNOCnyyqHeSx
	8sXe0ksm77hn6BZis90r6GLNuAMW/09QrXTZlpHkw6Ox/q0fOm+pYg4ilnNxHQo8QcFKqrDgN0flS
	X7AD1gyr2V/5aJXjI5T/i9Hubs1X/sI1C1jYrKMtlDD1UNNjZTtEqNKnHo7cz1vI7EBhN06FOyBqU
	GeNDG6I4+7IvBQdoZ0PUZc2kZ8W7Bc/Xyxn5rmQUeILiJDKIPAlXFrfiyo+KBHLhvhUbL/DJrFzoX
	8B0OZKbPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iukRB-0006Tn-4Z; Thu, 23 Jan 2020 21:54:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iukR3-0006TO-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 21:54:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5F6E328;
 Thu, 23 Jan 2020 13:54:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54F4F3F68E;
 Thu, 23 Jan 2020 13:54:40 -0800 (PST)
Date: Thu, 23 Jan 2020 21:54:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
Subject: Re: [PATCH] arm64: sedi: Annotate SEDI entry points using new style
 annotations
Message-ID: <20200123215438.GC5440@sirena.org.uk>
References: <20200122221045.24857-1-broonie@kernel.org>
 <87lfpynae4.fsf@kokedama.swc.toshiba.co.jp>
MIME-Version: 1.0
In-Reply-To: <87lfpynae4.fsf@kokedama.swc.toshiba.co.jp>
X-Cookie: ((lambda (foo) (bar foo)) (baz))
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_135445_378931_A343EDDB 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1236658967811166153=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1236658967811166153==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vEao7xgI/oilGqZ+"
Content-Disposition: inline


--vEao7xgI/oilGqZ+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 23, 2020 at 12:01:55PM +0900, Punit Agrawal wrote:

> There is a typo in $SUBJECT and the commit log. The code itself appears
> to be fine.

You're right, fixed locally thanks.

--vEao7xgI/oilGqZ+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4qFh4ACgkQJNaLcl1U
h9C2cAf7BG1wVoKTFWctMwQQcmJVq3lm175X9tKeMYR+xWiLRdU8+g6xkBuKI0po
v5lqgEDsoZO15YEqaWNADVTtfHctz4gmvUGxrPMJC6X5DdhkKi5jdGNHZ/K6f4r1
BpHHqEsG3yzNhVn8Q8ZHdsmjDpaAxhST/AeSn0gx1O7jmFBuKwggbfANCm57E7Aq
c/4U9qQ1WRQ7l9eVvSwEzIJdtwC0wfjo8K1JrVyWLPy3Y3JNhksJMLJj5B7zsQf9
cjWGfZMsxWfXY81Ao9ax7wozorP+FgmqVRJbyaG7jael1QQfDXFDDQBruv/Y262E
0XEIK6vGFwfxU8BYKEJz1Mz/TlSE9g==
=+a+5
-----END PGP SIGNATURE-----

--vEao7xgI/oilGqZ+--


--===============1236658967811166153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1236658967811166153==--

