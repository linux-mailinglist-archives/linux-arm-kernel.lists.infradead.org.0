Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4831FAE59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:18:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9gd2rMFUCFnu/Iou5dwwF2xTolY0mFEZe071dIdXAwI=; b=C8BlH94spx/7+uF94csWSGFkN
	gNgLBS5MsnGE2XXhZqLdHvvLSNDVeShScYxZHiAX995eOpG0aoXzV1U7CMSkorYEE/N1ff4+fLCY0
	e5f3H3tza8D/VgQWPZrfsxddzyo0t1XAyxNsJqGiL2It1RbTZgBLzdktk+MWNt0B7TTS0ICm/K0fe
	3IYaycqGw6yN5jDyLqgLWzNjFFzUNeQOBHOUSb2F84MD5xPTT9uuOg4TkFYnC6EIoIYuQ/XXmVwMN
	/+g6Y0zMFIVzpaXgatdg3FQgkXIUJ/24C68zWmPQHSw5z6+d5mVqVbZr72ZHsrxGhIFxNzrO4/9GJ
	mxGAbMF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpjc-0002dB-Df; Wed, 13 Nov 2019 10:18:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpjI-0002cu-VF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:18:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CE8D6B547;
 Wed, 13 Nov 2019 10:18:26 +0000 (UTC)
Message-ID: <fc488c5ff7dc7e1b9d96660f0da9b423b3f5094a.camel@suse.de>
Subject: Re: unify the dma_capable definition
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>, iommu@lists.linux-foundation.org, 
 Russell King <linux@armlinux.org.uk>
Date: Wed, 13 Nov 2019 11:18:25 +0100
In-Reply-To: <20191113073539.9660-1-hch@lst.de>
References: <20191113073539.9660-1-hch@lst.de>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_021829_205264_44CD8F62 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2793581529030726349=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2793581529030726349==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-cvyL9zADiQPcce4MqJVv"


--=-cvyL9zADiQPcce4MqJVv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-13 at 08:35 +0100, Christoph Hellwig wrote:
> Hi all,
>=20
> there is no good reason to have different version of dma_capable.
> This series removes the arch overrides and also adds a few cleanups
> in the same area.

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

for the whole series,
Thanks!


--=-cvyL9zADiQPcce4MqJVv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3L2HEACgkQlfZmHno8
x/4wSQf/XC3BfmBQXcl1ZtWzTr+4bUfUUlsKGdPH0jSKURaYqy7S86ww5oUlbFMC
GIc3I7oN23Q6+p5XDoS/T+tZytUy7HyMB8Z6JRrMjigkV8t0gW58PbjzcHeYQxVL
XnfiZTwo/uVYqJyaPQFDmeHn2H8FpeJkX9oGPohHAY4QX6Iw/dc4cO9S6be933vr
ri4Hau+t8D6/9iT2Wkl7x7hUqinW1yo/6MXhyx44tCpT6RxAimXnK01Gb2G35hiO
t+qRXCA6dvnKlkm4wBQExVT9w1hJt0rHQpcnA5Psb16thfClv3X7esvIMAS4NiJO
mn9iwYlDzdlqgyHT8Qz+Q7qTS9YZog==
=EWiZ
-----END PGP SIGNATURE-----

--=-cvyL9zADiQPcce4MqJVv--



--===============2793581529030726349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2793581529030726349==--


