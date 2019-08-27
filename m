Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA7B9E712
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j5sqKupQBbUoFZHquQDhzlLiO5uj3e0hx2KvNX+EEfo=; b=CVnzwi3m6cEcmC8Ivh/3pIxym
	2s4OPOpAbzsROVrNQ4QQm8ukysb5LPfTZm7WvemRqBZYYDaSP1D4j4EtGoRFBhI7Jn96rDg10hFiJ
	mHjg1UTUpV9qYLmtxPN7tbi5tXTz7JmL3OxqdybXu0QRKwv7fBJdASXdP5IbCG67R3/ZJJ6iFZe/t
	73XqGAQ2m+ZDO92cybXbYJ4HYRACoYya9FJtLdpzrMeny5mowzVtO7fwQ6yHuzAXYHJNEyGXRJkot
	zL2kl2JvXrzstJnju45iBNQ13Ng5o0HUnMduaxX1oaE2r/35e8mpy9LLSDde1tVecMGJ0NhVIeE1h
	bMfap4XCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2a2g-0002hD-Fi; Tue, 27 Aug 2019 11:53:42 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2a2L-0002g7-Sw; Tue, 27 Aug 2019 11:53:23 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 04:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; 
 d="asc'?scan'208";a="187897310"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Aug 2019 04:53:15 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to platform_driver
In-Reply-To: <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com>
Date: Tue, 27 Aug 2019 14:53:04 +0300
Message-ID: <87v9uix1sv.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_045321_948706_8E709388 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1242517802175526518=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1242517802175526518==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi,

Vicente Bergas <vicencb@gmail.com> writes:
> On Saturday, August 17, 2019 7:41:40 PM CEST, Vicente Bergas wrote:
>> Otherwise the device keeps writing to memory after kexec and disturbs
>> the next kernel.
>>
>> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
>> ---
>>  drivers/usb/dwc3/dwc3-of-simple.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> Hi Felipe, Robin,
>> this version calls 'remove' from 'shutdown' instead of just asserting
>> a reset because it looks like a cleaner way to stop the device.
>>
>> Calling remove from shutdown in core.c instead of dwc3-of-simple.c does =
not
>> fix the issue either.
>>
>> It has been tested on the sapphire board, a RK3399 platform.
>>
>> Regards,
>>   Vicen=C3=A7.
>>
>> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c=20
>> b/drivers/usb/dwc3/dwc3-of-simple.c
>> index bdac3e7d7b18..d5fd45c64901 100644
>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>> @@ -133,6 +133,11 @@ static int dwc3_of_simple_remove(struct=20
>> platform_device *pdev)
>>  	return 0;
>>  }
>>=20=20
>> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
>> +{
>> +	dwc3_of_simple_remove(pdev);
>> +}
>> +
>>  static int __maybe_unused=20
>> dwc3_of_simple_runtime_suspend(struct device *dev)
>>  {
>>  	struct dwc3_of_simple	*simple =3D dev_get_drvdata(dev);
>> @@ -190,6 +195,7 @@ MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>>  static struct platform_driver dwc3_of_simple_driver =3D {
>>  	.probe		=3D dwc3_of_simple_probe,
>>  	.remove		=3D dwc3_of_simple_remove,
>> +	.shutdown	=3D dwc3_of_simple_shutdown,

why don't you just have shutdown use the same exact function as remove?
Frankly, though, I still don't fully understand what's going wrong
here. Why is the device still alive during kexec?

cheers

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl1lGaMACgkQzL64meEa
mQYhbg//VhxND+8PhfDrBF/4qjnYwMvid5sPaWU7iMCvwpngkWYuA8yj5YNy5wEk
DdAzw6EQfwct42C9ctv96b6Ozd8BvJ3OCok1vmdBu3UMd+Pb5BghuTMPy4ammXnn
kIUCql5/uAf5pl+RrpeRRX2GrQQ1R+pS2oyvdXa3RTEM6AlHemnMBKJuKn3gC97J
2gqegwIYVEd+1n7bq3iuW5CkWqB3DQvc5yz9vnb3+T5J9zR1hdPviE2zbwzb/lOw
2TNyjeH2iflgNmKRp0RWHNxyciddE6JsNSnq7SjyuaCuNpkI+gvJ9bO8uZxNMzfF
hi3cSOgFENS5i3p/obhVaUH62SUK8ata+6L5tuTvmZxTca0z0UYq7s4+27b96BHE
8aM3bWx3OQdM/NXey3lJuuyuY3cQ+U3UIcE9HOm/PRUswtuO1Yi5pl+13pitw/Gl
9udb+YCir3Vm9L8ElG2JpeMdLlKacZ1m55JHZy4VRQCKE+dqQXXKkETQP9eMqQI0
7sSGQsVzMKTseojtivTjOKKuGyEUfIW24oiwzlVEB1u+DtdKQ3OJH1aF98AcYtqG
GNXbN+6BVSt6l+j1uPE+oWVvdoAvN2Zne7Swe7nxFU3LH3KaL34SQkGbIgbLrHE5
7BsAETdxZ6ikVtIxP70rbxInG5RdoQAQ2bLHGjVhHMdIaQcls/s=
=z8FN
-----END PGP SIGNATURE-----
--=-=-=--


--===============1242517802175526518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1242517802175526518==--

