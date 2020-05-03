Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FCE1C2CBA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 15:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DnRAKXQYCUG8dcno2AmmqlBi0Fb16qsvrZaiSO0c4m4=; b=NlsJlcRQgFMBDOgxBHSoaPYRH
	xDNw4wMDb+uwWEltAgqcmcSA1qnsGs7vKD5l6+PrDfWLKj4anvEXWq7oBMWwOqaowwMRuDY+PPERq
	/kjOKVN5WfmqjTRVQ8NCCCa+be8t48gHbsLudqH3PBom+/6CplgRVpQsx8TieSDt8WqScfouUB6AY
	jXHQmtFaG0N9dLP7ZeJxIw28Qv3dq4ccPqGNykVnn4S+FkuKikSHzcnoP1RejIOER83xPHWNuHM21
	546SQrlglt+8s4E8rVrF5szKfzUwfHwjR4PASVSJ/NjG6DUaRGv+veHT8Ukg2Its67HVNWOOvK5Jd
	qU1NhJ77Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVEgK-0006xw-0l; Sun, 03 May 2020 13:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVEgE-0006xd-1M
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 13:29:15 +0000
Received: from localhost (p54B33FBF.dip0.t-ipconnect.de [84.179.63.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B538020752;
 Sun,  3 May 2020 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588512552;
 bh=4JWSkq2cpw2BiP+K3FyaxSJGQXjScmAftWrqg7rnk0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ncI0ibVX7g2+5ycsBniA1qkCTQNyqh8iKYA5g9e/xNfr4HnaUpBD099vKdhn7pGME
 6IdSJSIQegG79efK+SFITq4Defjn+ABBATGj37/P8H7mxcUIfUtydEI4OxLXP31CRP
 uCvDzwn2TkjePdkmMFF9UPEogPrdtgZj9te6QmPE=
Date: Sun, 3 May 2020 15:29:06 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Subject: Re: [PATCH] i2c: uniphier: Remove superfluous error message in
 uniphier_i2c_probe()
Message-ID: <20200503132906.GA32207@ninjato>
References: <20200503120847.13528-1-aishwaryarj100@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200503120847.13528-1-aishwaryarj100@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_062914_098802_3E87847B 
X-CRM114-Status: UNSURE (   9.63  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1490888877645369115=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1490888877645369115==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 03, 2020 at 05:38:47PM +0530, Aishwarya Ramakrishnan wrote:
> The function platform_get_irq can log an error by itself.
> This omit a redundant message for exception handling in the
> calling function.
>=20
> Suggested by Coccinelle.
>=20
> Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>

Please send only one patch for the whole I2C subsystem.


--zhXaljGHf11kAtnf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6uxx4ACgkQFA3kzBSg
KbZdtA//Y6lCK360CUvB9MxuvS/hhnxeaVtnqwL+5QEFQjabnOTw1EFXji4ihhAX
IBvWE6pLYag6SHHC3GN224jR6b5AS+8wLBGmy052fFCn5/DrphXupF7+wCgjZZVG
q5/i1XUlJeqwxLBGfQ8JuyBkfQhmSp1K0xUpcPZfT7eso/mE0L3ZJ3TskesoubWi
VKpelcUTuCJ3QgP9llXlwhMnbn4GQARDzThv4mdogCbfkh8t+YKUVMy9t9vo/BZ0
X7xRjBlFq7slq4Ua+Y/QWeTmyo7sj6IgG4KB23fUvouGqYzPXJnD/pAl/IOf8Q8b
/YLQSKD3lEs1V0zn/WaI1q+H+bd5qwJSk0wOVeL3UoCPJACVtWzJhTM8PJrm5i1+
Gt6YFZ9KFdRDB8rCR6J0bcuGYw85QZ+egAnrRz/0jy1dbx3NcYSlrEpgt9+jC5uN
reJTbrCKoG1EeWGqY6klbE67C8Fg+4uHLf4ipAMc/74BV3+YD4fXu/hYjERdjhWp
jADtF4tpkFw8mKQdv+r8auhVR8Gu2mcR6MFkZDbwStXpTAlvKZkfPUU6Ue/n//De
aASsTid88R9o5INCqIHNyisKSOwdlJlnX/WU5wTXYbvAeIoGa/Ay4ZETy2eBcFMM
9Fi81whNJNI6g9w1hgcT0MquELnDHiY3tiizj1yHeOn7o5MYQkA=
=gWoi
-----END PGP SIGNATURE-----

--zhXaljGHf11kAtnf--


--===============1490888877645369115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1490888877645369115==--

