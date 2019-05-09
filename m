Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A727019561
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 00:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rD3Xjwwt3FQvOciBNz5ncdssqtUrHtKD+xSd2kLKMU4=; b=sT99UUosoULkEWi+eN/MYgTo/
	XCnHwEKv/QxUd/099o3YymPRgPH0Gn7K5qDWa57dmaPCC2c6QBjGAVsh5bEtFumPPWXMmT6UcuTqs
	5faDu0Ez03FJH/k8+r2AT0nXIt46ESnQS83XoHxj5NEO96zeOPlsLmdZN9jL4VVTgW2FtkkUeetgU
	QCAeCyo1WM/umhUPEc9zmQneV6sYrBxCICtJH2JjCxQGmNg+PeGU9N+FOg6Vm57k1MtxU/WkMGSNY
	lI990ELxv9H/eK54Enhe/9wYa2yFtrvXUU9sWsLOengTOs/1aGstu5n2R6UdA64xQwUECy5lzvTAs
	hbZ9/5laA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOroX-0007BB-0l; Thu, 09 May 2019 22:46:57 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOroP-0007A1-HD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 22:46:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 19B0310A34BF;
 Thu,  9 May 2019 15:46:45 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 3A3h2IW_Ahbv; Thu,  9 May 2019 15:46:44 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 3618210A34BD;
 Thu,  9 May 2019 15:46:44 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id CAC822FE3AA9; Thu,  9 May 2019 15:46:43 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] spi: Allow selecting BCM2835 SPI controllers on
 ARCH_BRCMSTB
In-Reply-To: <20190509203600.6867-1-f.fainelli@gmail.com>
References: <20190509203600.6867-1-f.fainelli@gmail.com>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Thu, 09 May 2019 15:46:43 -0700
Message-ID: <8736lns0to.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_154649_609094_AB7269F1 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@Broadcom.com,
 wahrenst@gmx.net
Content-Type: multipart/mixed; boundary="===============1036827515218928495=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1036827515218928495==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Florian Fainelli <f.fainelli@gmail.com> writes:

> ARCH_BRCMSTB platforms have the BCM2835 SPI controllers (normal and
> auxiliary), allow selecting the two drivers on such platforms.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzUrdMACgkQtdYpNtH8
nuhySA/+N/RO3Z8Yoc+fKHRBsufh8kvxUe7tTv6WBVdDwEN6bRS6KVjUflP2j7fE
CuwNjCCJJNzFudG7ufzYGy4p6AVr1YK89a7V1eIlAmujkIzX7dhiXNqg8QxmBheZ
erNrMFofbYI1Vw5/6ULrlb8jsyOEsGcp/OdQbnwpc/0Ww9Bil4tV7e8v8tG4Ig1y
pzMoUnSw8qRpa5lz5yrIBLEDLlAz7TfofZMAa42s1VpGhkDuqgm5ug9UMq23eJkN
cTU0DZhXHAd9m0AU3hyree8tOFoSyP9woPL3Q9VIjgpLN3YOiLtKMoye7yYVCLTl
V80B4VM4YPVFjCH+agq0Y1jtuq2eQ/YlZdTpdiqnsVVRQ+dsSgKec3oz5IQrokbN
a+SuVspTcJUElx//UYqVuJFJLdTwreGnzeWi2U+DuhyzOtS2OQqb+VkKRQXa4vff
Q888zRwVoBm7hVUPkg/Kk8xvAZDH1j6DNLexQ1nHOc/0uKUQw4UHX7GvErUP0kdr
IREH+o/42O98FRKSd033J6ZSwW5K1MfFLZjZighzj2fC6oJ1EEZ3BhOQEmRvlNtJ
myw2ML/IoSg4qcR61ON23pplfALWtOzZi2pwWTNgamaDgdgzIDDXEdVmcPP0V0yU
xppd+BACNw0YMATfRAWIUbIFM7OGA71a4mKJ6cTw7Rl0FUYKei0=
=O1Gq
-----END PGP SIGNATURE-----
--=-=-=--


--===============1036827515218928495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1036827515218928495==--

