Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDAA181673
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 12:01:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X3DgWozmhkxcbvJmHZMKdlkCMcRrxT3tvcv9rT+mrP8=; b=WBYIAwnnrtAI1AE9OMUaOAvqH
	Npv9nsl8WDPMhPu83CN6hYchrTf0vGg9T2j3kDk0hXBj19IGjs9w4qZihyMDsg/W4z7Q8SV6Hr3wy
	n945K2eFCKVIMqukbVECZVxumyLixw9UxDL3M8lMY6BaRpQ7xralR8rzYPMUnyfypb/4ZBy13WChC
	39oph9wvQ9K2B1elaZmJjRCn5KfYS32ly7y/lJOmK6orE3XnMHMb0HfJ0s4kRC+kXVH0dUv9XJjBc
	DmeZV33YsQGvWM10FHnBxIGdi23kg2fUbpH4dLGz1IHtRb/W/eA2PA2zBeJhc0IZ9WcM+sdtj4V3x
	+sEbbvBsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBz7L-0005P2-B9; Wed, 11 Mar 2020 11:01:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBz7B-0005Od-QT
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 11:01:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD15F1FB;
 Wed, 11 Mar 2020 04:01:28 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 42FD33F6CF;
 Wed, 11 Mar 2020 04:01:28 -0700 (PDT)
Date: Wed, 11 Mar 2020 11:01:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH] arm64: entry-ftrace.S: Fix missing argument for
 CONFIG_FUNCTION_GRAPH_TRACER=y
Message-ID: <20200311110126.GA5411@sirena.org.uk>
References: <1583894213-7633-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
In-Reply-To: <1583894213-7633-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Cookie: I'm a Lisp variable -- bind me!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_040129_902215_AC082647 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3618583028335248981=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3618583028335248981==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 11, 2020 at 11:36:53AM +0900, Kunihiko Hayashi wrote:
> Missing argument of another SYM_INNER_LABEL() breaks build for
> CONFIG_FUNCTION_GRAPH_TRACER=y.

Acked-by: Mark Brown <broonie@kernel.org>

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5oxQMACgkQJNaLcl1U
h9CeWgf7Bzv1s2eTPsMd1oDrdWw4fbak3ACJ/ynsFM2lhEQI3DdhGMYCsAgoLlRX
HS/K+7ydBUZEEyxDPnMLPCAEB3iOAWGEaSwhFlvxJzBOZzK1fLs2JrJCHvDGN6fY
Ex7/OkteIo16ppA8UwzINYOAUX4x1zimrvWEyX8mmOQn+k+Na9SO1Zl7TUBINiir
Gtk/gv3fcM4WV15B83bFE9N4o3JLw3t+PY8rtijIqYEHqcYHuzXi7d4A+GBZlHlZ
VS0rq49bFboQ81SnbbpsLXEXXROWxD+hOfcTzxvN8W95g0+HNmNvZQlnn5SttzHl
3Q3GptTWpuPLyNU9QjL0TOuJFRDggA==
=R3/C
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--


--===============3618583028335248981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3618583028335248981==--

