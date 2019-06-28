Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990335A28F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 19:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/YmrZ5DIH8AyAejFE7oN3TWTLMXYGfl4fC8X5s8iUuY=; b=IQcpMo+C6isMSgRbAMKp5aPg+
	gpEmZZ64hBxqXiP9jCsrEO3VaQ6w//ynaFdIPeFNlnPU2pEju7124bzT6V9bIAPt8umIcphJoY7IY
	3lWPU8m7jRFA4KuHNJMYBAHkdQOq3ez0V60kKzAeOPHnZqTaOCWjn4ZMlSKmbXQbvVeIrWNTwPt1u
	Y6C/Rv04LmytFjKP9XR7nc4ae+Ebr6uFnvsyCB+ueCsVrctWejCAbjGsj2MGttvj/xwxkw1yQIYQi
	ZwCNwcc+ACGRad7KERPTtjjnu8FczOVH1H6KUvCJnnS220ekjHKFuJywjB9sssWKMs1b/JErbFXvL
	DiPok5bww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hguqb-0002Ut-Qa; Fri, 28 Jun 2019 17:39:41 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hguqN-0002UM-Qs
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 17:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EJVY8PpEfmwKGp5JBR9QWYoJRFzRaseDHP1AL12WcKc=; b=wBMq9EOIKMTw5Kr5km61dHFr3
 RA+1JxzCu5nkWvxqx5yDoO/iwQWu8wu+q/4j8IwbMmiHAzb3OpXEV/a1S+8pyZkmSj5B7o0ZE3By6
 5iSzjwWjXwg7wxczXj3OO0TmZ0RTKAZmfOTDecfQ07lYuAN2WESTWtY1I2DW1rdhnECjE=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hguqH-0007HV-IS; Fri, 28 Jun 2019 17:39:21 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id BEDA3440046; Fri, 28 Jun 2019 18:39:20 +0100 (BST)
Date: Fri, 28 Jun 2019 18:39:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: Add initial support for E0PD
Message-ID: <20190628173920.GA2793@sirena.org.uk>
References: <20190627141532.6452-1-broonie@kernel.org>
 <20190628110430.ffdqy5on3retyr42@willie-the-truck>
 <20190628123040.GG5379@sirena.org.uk>
 <20190628163642.GB56463@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190628163642.GB56463@arrakis.emea.arm.com>
X-Cookie: This sentence no verb.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_103928_020334_807C4D54 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5512753528871181515=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5512753528871181515==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 28, 2019 at 05:36:42PM +0100, Catalin Marinas wrote:
> On Fri, Jun 28, 2019 at 01:30:40PM +0100, Mark Brown wrote:

> > It's largely on the general theory that it's better to carry less out of
> > tree code - there's less diff to manage, less chance of collisions with
> > other work (in either direction), and less pending review to worry about.
> > So long as something represents forward progress I tend to work on the
> > basis of why not rather than why.

> A reason is that once we add the support for disabling kpti based on
> the E0PD feature, this patch may turn out to be slightly different (for
> example, you may add a common has_e0pd() check that is called from
> both unmap_kernel_at_el0() and the E0PD arm64_features[] entry). Given

Hrm, I don't really get that - incremental patches can always be done
(indeed they're often really helpful for people trying to understand how
the code got to be the way it is).  Obviously you can go too far in the
other direction as well, a middle ground is generally best.

> that both patches would be relatively small, I agree with Will that
> there is no rush to merge them independently.

I guess.

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0WUMcACgkQJNaLcl1U
h9COdwf+I1PJG+BIpdhoPojlqyRTW8ij54l3EhqXCC+SYKw4usHJZ0wS6PjLyUaQ
+qzK1C4sxkIo70aBd2lIrMpR60ONABeXNUamQjuUFm8D0i95V6cFta2HnB/PH+X/
pOMoN7r+Or2XycMj9l2md+4HUJaM1SrI2fGlpLuOZcUZBSdTJonUtudEr28KFRnq
w5nYdUeLvOKjqyXnzQtKB/7GBV0KyzAMEcpGrgSnzi8ecfFtjIKVa3AdRkNZlvug
V0HYHVH5hhEgd3CFZc6PlAk/FKVqCIonhYNB02aHrug0hzVl2SsOM7qzXORU1aK9
tTplqzo4IIq85gVgoutb0/Y8V93YYQ==
=1vB8
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--


--===============5512753528871181515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5512753528871181515==--

