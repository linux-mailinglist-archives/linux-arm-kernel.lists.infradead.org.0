Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C981A7836
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MWRXfrDGJLhhSq27Ok09L3dByKTWC0Q2CV2f3tvJZ2M=; b=Kerh3vNpyDKq3LUrwLOkJy9Po
	bq3Sn2zlaZSHZ9fo0nxGLZ6kEDalHry3mSP87i7W4DIpLuB9cVtLr87BDCAQxzgxFlOE81QJuvKqc
	Eh0wYPqiLpMUP8h/+Oo2UxGHNE3nHNYAp3fXRl2pk52nWNpTiEQ0tgWhL0dtvli1iLghyZRCcUpXM
	s6k1xa2cJyeUmORc9r+FeyUD2lEi/j23mtH7ON8cFRpwimXC7z7YoFfWBFPQs2izGLYwyuZX0Z/SY
	2NkJ43o0fCJ6vPkp99Ea6RVFH9GdtyRvr0NPpGMrsJODzcvoij9Jn5zhhu9HO1IEVXev6Qa+q7c3m
	+Zgv2sD8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIZj-00042F-9L; Tue, 14 Apr 2020 10:13:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIZY-00041Z-3R; Tue, 14 Apr 2020 10:13:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 86AE4AD9F;
 Tue, 14 Apr 2020 10:13:34 +0000 (UTC)
Message-ID: <aa55686f19ce8afaa383b9c9ef52d0a87f5c6eb6.camel@suse.de>
Subject: Re: [PATCH] staging: vc04_services: remove set but not used
 'local_entity_uc'
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jason Yan <yanaijie@huawei.com>, gregkh@linuxfoundation.org, 
 marcgonzalez@google.com, jamal.k.shareef@gmail.com,
 nishkadg.linux@gmail.com,  bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 14 Apr 2020 12:13:33 +0200
In-Reply-To: <20200409085339.47255-1-yanaijie@huawei.com>
References: <20200409085339.47255-1-yanaijie@huawei.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_031340_295482_0989F1FC 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Type: multipart/mixed; boundary="===============0753511642212265693=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0753511642212265693==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-juXL22/nRsflnczJYuVl"


--=-juXL22/nRsflnczJYuVl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-04-09 at 16:53 +0800, Jason Yan wrote:
> Fix the following gcc warning:
>=20
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2356:16:
> warning: variable =E2=80=98local_entity_uc=E2=80=99 set but not used
> [-Wunused-but-set-variable]
>   int local_uc, local_entity_uc;
>                 ^~~~~~~~~~~~~~~
>=20
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas


--=-juXL22/nRsflnczJYuVl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl6VjM0ACgkQlfZmHno8
x/6KtQf/WWaeBaE3Fg3/MPD+6pLhpA1yJ8ifZMJQ7lV2vGPy27O/uYxGO3vP6dF/
ATOajy2Ua1PzffJ8799dQLDV6WUAXnZM0/s1wIicj3CKpOywNDpvvax/8+RCpWOb
CxPorX454DgecibOHfzA/7wy2lrCV6zvc14F3lLB6o45ylKCEpygIBZC85KPEBnV
bBgxSo3VOcgrQDMieB0bcb6m2Sz/niEqmf2PxSo3vD85oMTYgYrADf1Le+Jbam02
3D+JmZKv3BkAzHkxHMhMGIWATzlo1Ub4BshVpgU4sy2Ru90dl4WBuiOrzgItRf4s
GzgoEf75Ky0YWFolvldyijhZ1DHF0g==
=4j5h
-----END PGP SIGNATURE-----

--=-juXL22/nRsflnczJYuVl--



--===============0753511642212265693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0753511642212265693==--


