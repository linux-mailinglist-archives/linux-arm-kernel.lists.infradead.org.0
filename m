Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DCB8D432
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GZuxiSxmGyo8lh5JLLX07m4L2xFFV4/0kg5lTTtgeiE=; b=rnIynJ/k13wYp9AGiBkjsqMwt
	pd+Ec2H+2NjtarKHnGXEkuKuDfOFyH92NGQp8lsKCrSy+cZaTJDQ+Bu/GfMjkLmKqcn/Mc9UHVvgF
	MuxxWUk8Rifb5alKbttmZGzGtAnHnsawIQrHiid5GNA2i7mNwYNXDC0chuDxoqAiMSC2LcRsOLVGH
	QMkcQ7gai6JKKncg7QdIuYffOG4u49u0DjLfQHU9ukooD1fmaaubIBXiXIG/xumF7kaa0cTBuTNDB
	vidwzxliqgFIS8UYhNNqsX7uRmn7+iJwQcy25vGofPIiawrMguKkNd/BuKJ4ce5HLqxBOkQdxEqqH
	vIFtiWVCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsyx-0004Jj-9o; Wed, 14 Aug 2019 13:06:27 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsyk-0004IK-3q; Wed, 14 Aug 2019 13:06:15 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 06:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; 
 d="asc'?scan'208";a="328044176"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga004.jf.intel.com with ESMTP; 14 Aug 2019 06:06:08 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: kexec on rk3399
In-Reply-To: <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
Date: Wed, 14 Aug 2019 16:06:04 +0300
Message-ID: <87v9uzaocj.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_060614_166681_5A384B09 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2373004482386164243=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2373004482386164243==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Vicente Bergas <vicencb@gmail.com> writes:
> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote:
>> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
>> From 5.2 onwards, there are memory corruption issues as reported here:
>> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
>> kexec has been identified as the principal reason for the issues.
>>
>> It turns out that kexec has never worked reliably on this platform,
>> i was just lucky until recently.
>>
>> Please, can you provide some directions on how to debug the issue?
>
> Thank you all for your suggestions on where the issue could be.
>
> It seems that it was the USB driver.
> Now using v5.2.8 booted with kexec from v5.2.8 with a workaround and
> so far so good. It is being tested on the Sapphire board.
>
> The workaround is:
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -133,6 +133,13 @@
>  	return 0;
>  }
>=20=20
> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
> +{
> +	struct dwc3_of_simple *simple =3D platform_get_drvdata(pdev);
> +
> +	reset_control_assert(simple->resets);
> +}
> +
>  static int __maybe_unused dwc3_of_simple_runtime_suspend(struct device=20
> *dev)
>  {
>  	struct dwc3_of_simple	*simple =3D dev_get_drvdata(dev);
> @@ -190,6 +197,7 @@
>  static struct platform_driver dwc3_of_simple_driver =3D {
>  	.probe		=3D dwc3_of_simple_probe,
>  	.remove		=3D dwc3_of_simple_remove,
> +	.shutdown	=3D dwc3_of_simple_shutdown,
>  	.driver		=3D {
>  		.name	=3D "dwc3-of-simple",
>  		.of_match_table =3D of_dwc3_simple_match,
>
> If this patch is OK after review i can resubmit it as a pull request.

not a pull request, just send a patch using git send-email

> Should a similar change be applied to drivers/usb/dwc3/core.c ?

Is it necessary? We haven't had any bug reports regarding that. Also, if
we have reset control support in the core driver, why do we need it in
of_simple? Seems like of_simple could just rely on what core does.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl1UBzwACgkQzL64meEa
mQYOVQ//eKd2UVl0Lk/iBF9be4Qe4UnhUTXChWgQRk4zD9Xvjfgx16lvKHRd202Y
tDKEYXDrOeSfQZTopKUfO8d3vjPkxfqYMeLyiiXTA983oXVwc6ZeaE6+VA3AO9m1
nWdQthWGnpSiBaXhceBgMmAaKkvuFe/dDua9OhGkLz/aOYFQ5iLEVT/Ffkj8sr5g
u9oXIq/Vs49XFoymk8s+9qGip9l3ZbQNEkUkJbL4+hw83IiFR5SWtGG7kf/Uv/bI
sA6JUkcTDvOXkqI/9cSk9ZeCePbOQpu5lk9C5B78//hdDNpkopJ8OeIW6YOBh5HF
HIOZzyBgWjXu6fRM1XiqoRjWZvfpv/76CGml0zNKdDs5bvN4tbcUoJtf655JWdav
S+0cEGfvLMsh5UiFcsBTT63S7+/Gh/d8Z/m3JsgSw9i0TBZLhbGQ36SYX+RpNSrr
LNZsCbl67wc12ftHZOJaUTsdHy6MU4O5nf5vlSFTJCkRJtNKV65hODulCRMiTdkh
kgyjs98yUegt2siGNHbVg8LC14GjWQaAxRLB7BN4pCx4243vmpapRRWjHG63f2Jh
VZvYCB8hj5MBy+2BZ5S94siSoMS6+qaZ8DQ2L065EwdrlKLly4Rofh0FNhtbL5I5
F5P6V1xEnd0TN75wevzsI57lsNB2Cov8WoSeFQ0D7OSrS6eN38s=
=9b3X
-----END PGP SIGNATURE-----
--=-=-=--


--===============2373004482386164243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2373004482386164243==--

