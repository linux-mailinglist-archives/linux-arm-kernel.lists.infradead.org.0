Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A035FA064
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 02:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=is1dvgpZrpL5HktA1Z1U+D7kYq9kd5To7/lCqpT5rtc=; b=j0k21te4AIr1sRRWRLE4X5L/k
	WiM1MHAnzh2Oqp72kAtzL9yNF9GXT8XAVuSngot9EV500a4TFzbK3IQTXb6IK7G0SDXpcilYgj2Fy
	GINLD9UjTtFgEE9Ve09VMfyUvQFqPL4vb1CYgqiphwCfGeAcx+jCW2jNmd8PHRjiZGtaivmYwFwEC
	qvpwzGpZolz/U/mqooopo3ATGgXbt3Hws5KVyLjsajoTBbipfejQwTSDqxfA8neCWAXQ7ia2Q/j98
	9BWiiEeVXG0EY6pGX5BKxhSNSy5eBnubPPw2RQiAxf4MPLio0k7R1SGAYLvIgRyl+vnoMXy5ET0mn
	oT/TSkUcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhgF-0008RJ-Po; Wed, 13 Nov 2019 01:42:47 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhg7-0008QW-9v
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 01:42:41 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 7728aa5d;
 Wed, 13 Nov 2019 01:40:56 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id dbce4b5a;
 Wed, 13 Nov 2019 01:40:56 +0000 (UTC)
Date: Tue, 12 Nov 2019 16:50:05 +0100
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] ARM: dts: add touchkey nodes for midas
Message-ID: <20191112165005.459d3cf6@primarylaptop.localdomain>
In-Reply-To: <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
References: <20190806165749.29468-1-GNUtoo@cyberdimension.org>
 <CAJKOXPcuPQa-jVtFMfiseuXq3P=mxc6DecCCj_j-y2NauMqTdA@mail.gmail.com>
 <20191111195219.768cee6d@primarylaptop.localdomain>
 <CAJKOXPc+6zjkHq70FQ7NZN3U_=zcS_KhF+x7KcctngEWdPBPJw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_174239_641669_9D497A06 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Simon Shields <simon@lineageos.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0849542784812790441=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0849542784812790441==
Content-Type: multipart/signed; boundary="Sig_/RbCC.N601veE4LeHSSFZ1To";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/RbCC.N601veE4LeHSSFZ1To
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 12 Nov 2019 02:25:41 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> With this change you break the s5c73m3  by making it disabled.
Thanks, I see it now, I didn't look at enough patch context.

I'll send a v2.

Denis.

--Sig_/RbCC.N601veE4LeHSSFZ1To
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEeC+d2+Nrp/PU3kkGX138wUF34mMFAl3K1K8ACgkQX138wUF3
4mPEIBAAphiknqx+yF3jAoG8SklqQmoQfQaBTmOGfTviDThfnsXlXHuWDpCCwJ4w
PBXOEIGUGZtSUp7gPJVh2NF1yV7Sh1EW+nKELynndYBKhNdVyJJtVt5mZ8xZWkIK
y+ZTB+ygfghpYuViJenQcc+3+Z8qYavRBrTCA9qvsuEA5Y4handLj7faDxnGGgSg
lFeDtDVQTNnhfn/fo4JsRmFdEWTF9cFStoic6dih1NsS5mBkO7ebJJAzQdJFK8qr
8il5VEiuop9XGgiYI4bezSVD0LPBIv03d/DTFob5nTMdPIbdQtuxAKODIAsKpMdd
PAoqTIy+XLBpzGJGa0wHSpSJ0xvArG58TcLAxZT4q/mcRE7EEQiYoSuvFJ76bi5Y
Kno8Ka2we2Dj0TOdoNE8eMdmPklqUVL5cuIGWM1QGTd0BGyyoKYi73wCV1wLLDUi
S9MGoXNwVAO5wupMnpF1Ac300qYaw/YiGPQz7537keaH5od8apAfFKZC09Jbx7Vb
eUdyPRZ9w85otJTnc9xngb7AiJHdj/qZoZNJdoEi1inJ5wzxBPPOn5KjomLGYbzx
4G/Ij5CQWhvwV0V6wRoFYuVmHO1OG1k2/utE+dYUWIZMy9DiVN1ECmmkXOhGBECV
gjNHJrnyeiIx1d4IX9kx+adq61CyvRUcmpDMkpVCIoKwQixuL94=
=Ba9i
-----END PGP SIGNATURE-----

--Sig_/RbCC.N601veE4LeHSSFZ1To--


--===============0849542784812790441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0849542784812790441==--

