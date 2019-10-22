Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C31E0923
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eFlYilLHon7GvxfrB7trl2dvSUE9qWuuU2KppifC3LQ=; b=r3sgV6Ct8LD7AQTb32uQbYh4v
	tr9KSElulaeIr3/GAIuDaikSmJ6OnWmyhUtG7qAiWlCaJZRduwg6hsML7vHmb+ztfw3/h5JQsXtQl
	L+h7H2KzcQVBRRBTaHys3IkTO8wRuiQ4rF4UBfYkXbkOuoNC9fO1MhlwW5SzDPE0Zkbh/JdwNvgfc
	Gd6vsfc+O8evwrOCt9mjINx9tSwOjvP6z74sGpNuhiI3VhhTVT1qzx+6R1e7pyUyOjZmbuf6mqnHO
	esF6J+Y2eZRQJIouz6oH0jM+bRqlHXK+ynz76ZR0Ae/RThCCms1n5PhImfBJUS393tL4abbBvwH4f
	iAi260bDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxAL-0005pS-M6; Tue, 22 Oct 2019 16:37:49 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMx9s-0005ig-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KE3k2qtREHq2WSAx2j2NdF3H3/H8sD/ouUddWgPXv28=; b=eOAcQcS9c6+WTa+FPZOPzXMhe
 SMgi0tuc/9AnHyEr8LTJ0sXnHTPCz5zQxHp1UQvm6z7tgsKUQ0UrZfcnYNszrrsvPI6Oc96pOlZv7
 KpI0AHhvpC6xodzQa47uWAknJaV+4Y8z6bo+FW33y2TIHSSSsSkGNyr3fMb3HS8j7jOQc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMx9p-000736-QP; Tue, 22 Oct 2019 16:37:17 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 509272743259; Tue, 22 Oct 2019 17:37:17 +0100 (BST)
Date: Tue, 22 Oct 2019 17:37:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 17/46] ARM: pxa: poodle: use platform data for poodle
 asoc driver
Message-ID: <20191022163717.GO5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-17-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-17-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093720_663523_0C6767E5 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5704583645158091082=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5704583645158091082==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LwbuP8dfxhLLLUfV"
Content-Disposition: inline


--LwbuP8dfxhLLLUfV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:32PM +0200, Arnd Bergmann wrote:
> The poodle audio driver shows its age by using a custom
> gpio api for the "locomo" support chip.

Acked-by: Mark Brown <broonie@kernel.org>

--LwbuP8dfxhLLLUfV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMDwACgkQJNaLcl1U
h9DXTAf+PkYfGUBycQh1ObnY5bFiUcm4IhRh9mkwhL2PRO3lCRN+TN++wyL3vtDP
j9AV1y/qAcZDELhOX9eGoVocwR9EZdeJCbrFz5DVr9g5E7L41Ay26w36YQ8aWWzj
WHe2vbhfLclIUrnIeEKuEWXwpPXZOq1hC7jJ/ihh2wJGHVIRCO0MkZ+ZqUEUk3E2
86C3Z9OzamRZhOlie6EuqmhSw3gNQQdjjDGTOQvdC7zS2MazZxxNJTpOntv78Bs7
Vp+DtdJ7vT0vr8c7xCfWcWlgv2Bc4mq0ky/YJtIUAXJckc23KDsJjYbuynBlSTXC
eNjL3dLyNzIsUdsHUsh7h6YXjp9vAA==
=dGNL
-----END PGP SIGNATURE-----

--LwbuP8dfxhLLLUfV--


--===============5704583645158091082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5704583645158091082==--

