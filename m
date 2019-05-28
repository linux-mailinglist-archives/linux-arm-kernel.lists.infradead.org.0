Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF2E2D189
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 00:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ukQoBOJfNnB1Bt9NjNOcuWGM/lnNGUmfQqSYxpTHN5A=; b=kI3eW8jUK5TiGWlmyxLSdqUSp
	ow0e4cB7QkAfrIyx95X55UlVMJCDLH9GgO/AWttO9IaKG4JABswBGZtlU35Kc81IXkhAJuBt3tTe+
	/TN+gxk9N1Ryq6eXdHa3thpZL5UiyRI7SX0zjFqqkxdFHd3wxHrMoQkzRpcrnKIDDFP9d+E5uV5Pv
	SC04mP/9mUCZyoZnb/9ByAcedKqeVq/2CIYJFdA7kLmyMTFkY5KfX+WXcHttNeeyaRCkj6vrEpFYy
	U/suqxCzGYPwd5tAoxIH//JiI+Wox8UqYG9mzDjDqdUdC45pYogzrGBS0FvNPPcMrnbcq0VVoP+fo
	osTxpoIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVkXp-0006LJ-0B; Tue, 28 May 2019 22:26:09 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVkXg-0006IB-KN; Tue, 28 May 2019 22:26:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id 07A3E10A03D5;
 Tue, 28 May 2019 15:25:56 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id f67l0HYwfo6f; Tue, 28 May 2019 15:25:54 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id B19BC10A1201;
 Tue, 28 May 2019 15:25:54 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 40E792FE3AAE; Tue, 28 May 2019 17:25:54 -0500 (CDT)
From: Eric Anholt <eric@anholt.net>
To: Annaliese McDermond <nh6z@nh6z.net>, Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v2] i2c: bcm2835: Model Divider in CCF
In-Reply-To: <E711B8C3-85B8-435C-97FD-E62BCB88B679@nh6z.net>
References: <20190508071227.18609-1-nh6z@nh6z.net>
 <4174B26B-4E3A-4CCA-A5ED-BE62A3B5E66A@nh6z.net> <20190516075848.GA1033@kunai>
 <2E6EDCD1-E0B1-4859-BD75-EF411D3D4C6B@nh6z.net> <20190527191534.GD8808@kunai>
 <E711B8C3-85B8-435C-97FD-E62BCB88B679@nh6z.net>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Tue, 28 May 2019 15:25:53 -0700
Message-ID: <87r28ijjwu.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_152600_694407_6C596F55 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, swarren@wwwdotorg.org,
 NWDR Team <team@nwdigitalradio.com>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6583301510921339892=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6583301510921339892==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Annaliese McDermond <nh6z@nh6z.net> writes:

>> On May 27, 2019, at 12:15 PM, Wolfram Sang <wsa@the-dreams.de> wrote:
>>=20
>> Regardless which solution is favoured, I am going to apply this patch in
>> a minute:
>>=20
>> http://patchwork.ozlabs.org/patch/1097688/
>>=20
>> It enables this driver for ARCH_BRCMSTB. So, the solution should work
>> for this as well. (I don't know any of these platforms well)
>
> I did some looking the other day, and I had forgotten that the RPi has 3
> of the i2c-bcm2835 devices each with their own divider that sits in their
> register space.  This makes me think the correct solution would be for
> the divider to be controlled in the driver as was in my original patch.
> Otherwise we=E2=80=99d have to make three different dividers in the bcm28=
35-clk
> driver, and the i2c driver would no longer work for other platforms.

Control of the divider should definitely be in the i2c driver, not in
clk-bcm2835.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAlzttXIACgkQtdYpNtH8
nuiAbg//X0j7M7BOUJsCvwPSJpLQIHbCOYkYw5Ei6i+7Qz0SEnTtCGPVkXkBGC3A
ZtKw5mR5T114FxhJL3GS40LwcUoW6nowzgaxop06/HCGCBP6pA98JRgbWhWznXHi
vCkhqBhK9gNsD+JbW8RqDQ10YovQJg6poZ9f6fehxhPl37Vts2HV70RtKaenV8FO
xoo1gw1wtcapre6nA7k1wy10+7DRAD3GVlCPu7vK29+Ih9sZcYkYLHmf6leIAQUp
2qM0lZkzGcW24O0vqCFW9g2vU2PXiebLzGQVq6s0s0oV11zXjilCAgP3C0Z8hj6P
+iqwQeUFFQGrzaN+okFp/O9f84caHuDF4btgboZ+zqgSvIVi5ZxWYa9EDdlnM3pK
HdYb5Nqcf+0rggfhj+L5EsIr1gO8w38JUT30KigbPnYb2Ps/lRrGFvqUnY1mnUCR
tE9CUa793+/j2JS9ETX1bo6yJph6JtlqIHqLq/rED0PxbPjAIRHx8dj7RsIpFuCD
/Ifk2KOzF/POKktZhXS0NYw2OQZaF8CPhs/bwiRix95WQlS3oF69DG4VKmI0V+0J
p6MHf1EZrGr3k23x9+poohIcEN7zpeaYA/SOULdhoKxTT7BWNRrJ9QS1gQ51wY6E
tZIMOXIBzptS4GoHjeeTm00GszKJsOMJQn4TeMWbf0WW6TvjPiQ=
=I88g
-----END PGP SIGNATURE-----
--=-=-=--


--===============6583301510921339892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6583301510921339892==--

