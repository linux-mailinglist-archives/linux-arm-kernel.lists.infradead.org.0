Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3421FA9E26
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Idsrspr/6njLkqpcIXR4p96uRDWHpcgCZgl2jOKPC14=; b=NpGp4zj2bjbR6+lT+zJ1hwWIr
	9HXG/EjDYf8C85qav9Mzg8BBqeSo1/kjlXzhQcekFbQc1jrj/6O0Z/bb6drusI3Wk0KD3ok/M3v+0
	D4OB+wJUaE1lot2FPlzHbsf/z0UmfR8e3pzCSTwvpQGU2VTiigPq9nOd2QFNm9tS+pFkoS8U76onT
	EbI8s8A/zW7R0AnwQm1v376enL6MFVQ7Ke5t17oaoKnJwytGba15aEoIw31klA7ONNZ1zKblVtVXn
	/95zl1SEGYEsR2h6i/bIkbvCIoIDYWSR7EeWbH9musAEEjSUffcFTZ5GM04tqb+RBih3H5AdbyWPo
	yRQ83JVEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nwk-0004Ch-BB; Thu, 05 Sep 2019 09:20:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nwY-0004CF-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:20:43 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D6C28300BEAD;
 Thu,  5 Sep 2019 09:20:41 +0000 (UTC)
Received: from localhost (ovpn-117-222.ams2.redhat.com [10.36.117.222])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3589119C6A;
 Thu,  5 Sep 2019 09:20:41 +0000 (UTC)
Date: Thu, 5 Sep 2019 10:20:39 +0100
From: Stefan Hajnoczi <stefanha@redhat.com>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
Message-ID: <20190905092039.GG32415@stefanha-x1.localdomain>
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
MIME-Version: 1.0
In-Reply-To: <20190904180736.29009-1-xypron.glpk@gmx.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 05 Sep 2019 09:20:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_022042_663631_21D1BEB2 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Daniel P =?iso-8859-1?Q?=2E_Berrang=E9?= <berrange@redhat.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8187101152422294122=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8187101152422294122==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="E69HUUNAyIJqGpVn"
Content-Disposition: inline


--E69HUUNAyIJqGpVn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 04, 2019 at 08:07:36PM +0200, Heinrich Schuchardt wrote:
> If an application tries to access memory that is not mapped, an error
> ENOSYS, "load/store instruction decoding not implemented" may occur.
> QEMU will hang with a register dump.
>=20
> Instead create a data abort that can be handled gracefully by the
> application running in the virtual environment.
>=20
> Now the virtual machine can react to the event in the most appropriate
> way - by recovering, by writing an informative log, or by rebooting.
>=20
> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> ---
>  virt/kvm/arm/mmio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
> index a8a6a0c883f1..0cbed7d6a0f4 100644
> --- a/virt/kvm/arm/mmio.c
> +++ b/virt/kvm/arm/mmio.c
> @@ -161,8 +161,8 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_ru=
n *run,
>  		if (ret)
>  			return ret;
>  	} else {
> -		kvm_err("load/store instruction decoding not implemented\n");
> -		return -ENOSYS;
> +		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
> +		return 1;

I see this more as a temporary debugging hack than something to merge.

It sounds like in your case the guest environment provided good
debugging information and you preferred it over debugging this from the
host side.  That's fine, but allowing the guest to continue running in
the general case makes it much harder to track down the root cause of a
problem because many guest CPU instructions may be executed after the
original problem occurs.  Other guest software may fail silently in
weird ways.  IMO it's best to fail early.

Stefan

--E69HUUNAyIJqGpVn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhpWov9P5fNqsNXdanKSrs4Grc8gFAl1w02cACgkQnKSrs4Gr
c8iE9ggAkVjIf2fI/kBs4N9RcmSgCefJV12cMWzxOU0i+Z3Z6eMCCf3aDRvN5Znu
AO5aNxnimfSJ/yP1Zp1qZjeSdPpsMs5ox3CXdHmNOAEtzTb5tC4NeSvVeP1MaCi8
LzpKOB7uZpZVulFwf9vuWcMww/LBIP0AwJSQ9MWUJncQ3UMZd3vNXXfD8QlnECVd
alfe2r6hsp3ijEdkLLx92pNOl3/sgeFiK7WRQ07hrQHh2jJ9h2kZslsEZHeEsaj5
CLuPe76KL4o25UFhS17Cg3hTsROX2BBgYub5uY+K02b54bVY2X3ypNE80H91ip+k
VKuTCZk89Bpnyb3Shu6NIhJskSO1PA==
=tj/0
-----END PGP SIGNATURE-----

--E69HUUNAyIJqGpVn--


--===============8187101152422294122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8187101152422294122==--

