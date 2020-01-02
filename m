Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBCE12E471
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mahqu5srB/WEaQu0MAcXJ2DI1swl3Zfb9X8mO1SQrWw=; b=lsS4sZQL8l3TLZD070Ppi62OX
	pWRNuz8+RM0wcDUD4KvycsbZjqnMFHYwkuChOQlBcV9N25Qq0YmK+H59SKWqN2DQj5oeMzeb4Bfnm
	MBaPGritTdSMLmu9m+W4DmQSN7zNcOj2lJJdRqrMpGYj0XykIxhDcWKcJmpLzwxHDBKHUR9JqSmG2
	5Bd/oXm1y6gPDW4HpotoQPWNN0WhikkU1d5cLYCRSrhjbKeGPgTcNOXQHPdzt80JBFxRtJQUJ7t/v
	djethFFyLLzDgH8Q3nBpehdBwAMtdj3tfKKVKuljGXPuA80X1GCRX9r01iN9Wm3qwnZp8F8YoA2Z5
	WUkQd6LQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwog-0006Fx-2u; Thu, 02 Jan 2020 09:30:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwoY-0006FK-0Y
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:30:47 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 433F7217F4;
 Thu,  2 Jan 2020 09:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577957445;
 bh=elsGuMFot+33Av4FGSNOajGfxnc8N4DN5vUSx+tOYSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jwVoClvRVKseM3M0tfQSJuj82PWp7sxKT4AvgdaYkdQven5XJQHeeArupeJvjrs+e
 v1yzZEqg13F4KrmLs10PK4PEgy/VlNavLoQPR71yIy9nho4xnZzIxuOPyTYWU9Zyh1
 PonelYCTAQe+imirBrqBo0fSRyWc9Ehlg/l+JTR0=
Date: Thu, 2 Jan 2020 10:30:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] arm64: defconfig: Enable DRM_SUN6I_DSI
Message-ID: <20200102093043.v3apgtbex3xo76cu@gilmour.lan>
References: <20191231065508.12649-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191231065508.12649-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_013046_085509_D9D7C44A 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: multipart/mixed; boundary="===============6521696934790436422=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6521696934790436422==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="apso4hjgcko6pumn"
Content-Disposition: inline


--apso4hjgcko6pumn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 31, 2019 at 12:25:08PM +0530, Jagan Teki wrote:
> Now, Allwiner MIPI-DSI support is available for ARM64
> Allwinner SoC like A64. So, let's build it as a module.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Applied, thanks!
Maxime

--apso4hjgcko6pumn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg24QwAKCRDj7w1vZxhR
xQ78AQD5XsHB4uXdgbX0OqVKJf80XBy5yljIptaMn2mt0qeewAD/Vi5Nc2D2zYaZ
xY+pPlx1L9e1Hr8cg7l2kkav57Ku3gs=
=v0GZ
-----END PGP SIGNATURE-----

--apso4hjgcko6pumn--


--===============6521696934790436422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6521696934790436422==--

