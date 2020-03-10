Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABF717F76B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U/63gjRSlHZP9OpF5ZpwP2lSTcZGZf/YQ/q5/6pMkU8=; b=PdkowNi7SrSXWRWqAYTcNavFV
	tcHt0ibtZmRlTwXnHpfJrcViUb+//HzgERzB12E3k+X5NAD4Q99Y/UByIZLKhQj4YJEWvM4lwMIzB
	EroYO7eov5aVC+wwhToeHP7foTnsyVOhltKH1yIeIe6pC/71HSBz2ySEoKt+SCYySBK46oE0gFnPB
	dzvFxIZti9T1PAgV8h5W2hEg+J52qVOKkq5BXy0k9z/J+ElkTaLdjPubE807j9m3/feu18gty8xyn
	sJMd0Sz+xxLP/Dc+jjHBZzKksKQ+AxCWq8SQQN1oIe0PyKkIcMIXqEaZzT5ySffjYhymNOUGTVc4L
	uAbhca+IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBe0a-0001cm-3b; Tue, 10 Mar 2020 12:29:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBe0R-0001c6-WA; Tue, 10 Mar 2020 12:29:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 801ECAF7E;
 Tue, 10 Mar 2020 12:29:06 +0000 (UTC)
Message-ID: <5cff48d9bb0f774c3668811165435bf3d5ef1152.camel@suse.de>
Subject: [GIT PULL RESEND 2/2]  bcm2835-defconfig-next-2020-03-09
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Date: Tue, 10 Mar 2020 13:29:05 +0100
In-Reply-To: <91044910d494a12d06e7098561fe1be86a61f033.camel@suse.de>
References: <91044910d494a12d06e7098561fe1be86a61f033.camel@suse.de>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_052908_208274_4093F038 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8644764485489169576=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8644764485489169576==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3CcWMWcsO0R7REj/5MFP"


--=-3CcWMWcsO0R7REj/5MFP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9=
:

Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

git://git.kernel.org/pub/scm/linux/kernel/git/nsaenz/linux-rpi.git tags/bcm=
2835- defconfig-next-2020-03-09

for you to fetch changes up to 93d3ae352bb5cda928570cfa2247d9c529605bef:

ARM: bcm2835_defconfig: add support for Raspberry Pi4 (2020-03-09 20:36:30 =
+0100)

----------------------------------------------------------------
This tag introduces configuration options in bcm2835_defconfig for basic RP=
i4 support.

----------------------------------------------------------------
Marek Szyprowski (1):
ARM: bcm2835_defconfig: add support for Raspberry Pi4

arch/arm/configs/bcm2835_defconfig | 5 +++++
1 file changed, 5 insertions(+)


--=-3CcWMWcsO0R7REj/5MFP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5niBEACgkQlfZmHno8
x/4obQgAsF+08eqx5XTxfdxIQTMg1ryd2T/l7nGTjyutjycc5gWJ5LKcpRUviQtj
oLiIYC+/QnLMBQ04wROK2YvzaVp/7XAFep0YR9jHMXUp2+BbqaiY6FtAoCXUxevW
ZqoWuxPM/GM85hKWJH6hTBmDUazPZ2t+zClKNvUKRLRFUwS3HmI8q1A1gvw+c90G
w8Ap6Yfd+n7be88+TqpvMT3/hvrqJc1Op710NMqkqlCCGDGUhgMks78qy4qXllTh
+iBCvYMHW3a/OQ4GfywSpXswiihfgbk+LwEAYbJ/4Av13ZiULcV5WslXnixDEOo4
9GR/lAfifMSq24mvfDv0GWgN4C5HLg==
=cAsx
-----END PGP SIGNATURE-----

--=-3CcWMWcsO0R7REj/5MFP--



--===============8644764485489169576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8644764485489169576==--


