Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8727648273
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uVUhhM2qXKKyqz2nlM2lPsK7cVz72GkfPNeQ80NusNg=; b=f6J6N4bnpsYkezoRsYhDGh/H5
	PJ6qniLStswBwbGRWib4klJmUzMlzuAqrmb7jCg25JArNLDPilui/sAxIK3cLDBJX1W1ZYM7YzaNQ
	7AXVR+OmA6ZeZNYbF6+0YSRWheMDV5aaasyxHAWE6ldwTnzwCshGmA0G3gjiUsNB0FSLmN46LnbwB
	KeOVNdEafOxkQl0/8qEQRNdBKuCn3/+/VYVCkGvZqxTefvxcAE5mOiVtDuoVhjeAqAyrguF1KUR+0
	CRcgZobQ1Tuj8nUzkDLaeiU8mSGI5kBQXNlvUncd6eL+MWPdJ1Uw2iGjcw5S9OviSw1Csn0ghvxj+
	rIHpx21DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqoI-0002lB-GS; Mon, 17 Jun 2019 12:32:30 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqo7-0002kV-ID
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:32:20 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 05:32:17 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga005.jf.intel.com with ESMTP; 17 Jun 2019 05:32:13 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Lee Jones <lee.jones@linaro.org>, alokc@codeaurora.org, agross@kernel.org,
 david.brown@linaro.org, wsa+renesas@sang-engineering.com,
 bjorn.andersson@linaro.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com
Subject: Re: [PATCH v4 4/6] usb: dwc3: qcom: Add support for booting with ACPI
In-Reply-To: <20190617102146.GG16364@dell>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-5-lee.jones@linaro.org> <20190617102146.GG16364@dell>
Date: Mon, 17 Jun 2019 15:32:07 +0300
Message-ID: <87y320gzp4.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_053219_655295_655D812D 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3591687229756965132=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3591687229756965132==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

Lee Jones <lee.jones@linaro.org> writes:
>> In Linux, the DWC3 core exists as its own independent platform device.
>> Thus when describing relationships in Device Tree, the current default
>> boot configuration table option, the DWC3 core often resides as a child
>> of the platform specific node.  Both of which are given their own
>> address space descriptions and the drivers can be mostly agnostic to
>> each other.
>>=20
>> However, other Operating Systems have taken a more monolithic approach,
>> which is evident in the configuration ACPI tables for the Qualcomm
>> Snapdragon SDM850, where all DWC3 (core and platform) components are
>> described under a single IO memory region.
>>=20
>> To ensure successful booting using the supplied ACPI tables, we need to
>> devise a way to chop up the address regions provided and subsequently
>> register the DWC3 core with the resultant information, which is
>> precisely what this patch aims to achieve.
>>=20
>> Signed-off-by: Lee Jones <lee.jones@linaro.org>
>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> ---
>>  drivers/usb/dwc3/Kconfig     |   2 +-
>>  drivers/usb/dwc3/dwc3-qcom.c | 206 ++++++++++++++++++++++++++++++-----
>>  2 files changed, 179 insertions(+), 29 deletions(-)
>
> I'm starting to get a little twitchy about these patches now.  Due to
> the release cadence of the larger Linux distros, it's pretty important
> that these changes land in v5.3.  Without them, it is impossible to
> install Linux on some pretty high profile emerging platforms.
>
> It's already -rc5 and I'm concerned that we're going to miss the
> merge-window.  Would you be kind enough to review these patches
> please?  The Pinctrl and I2C parts of the set have already been
> merged.

I don't seem to have this series in my inbox. This is the only email I
have in this series.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0HiEkACgkQzL64meEa
mQZgTg/+MvWLo+0fVFNR04KSqTX6nZcqLk/4KwBc7uy1RsD4WMFa3zcKE/jB8scd
KN48Szwr6TxXj6/nboP7PeKF+u2ftbYw8L1Ggtd1Okq/Fn8mUcM+vY1xGotjgrao
ZXbOLcI393gCADUuEgHbOZDXPeLtgF2K/RQ06CPJ+wPunpx3pDwJVaMumW5Inocu
Yz/eMkd5XP2QXDfL8F+27ZfnZQ6oNbEa+RV0cakbyvjHWDbkeiCW2DN5YFM3gJpC
T9RXeqzKIUkfWd3mLcBq54Z3wCh51nw2UfThE1bQK2XlPKPXnU9P/Oi7ZIJYn5X4
hF9PoBRoYWoaS5v9TJxL+78F+salna/FVsr6jKtbmVQjr4t3H+2i3SKXUmcMtaP9
/jXg8jRCni44640ri7F4xN52TdkE/K7eAShOTp2izyRydKkZRxCOgW0xPh1Yi6Yx
DGFxy4TQPUc6uAchzWfB/DIQywLYMDChFGMc525vTiw3ATnWf5dK7c/G0FufNs+g
YcXsD9HyhYs9puAp4DBUZmXZGiuPHT8Se78aTfYqAvY7oFH5puh2Mg8UDLeeiatr
A67I1jpWh9RvTGFPpBABobbaItB4lMcitFy2MqxByxNmJt9l5bbExTRmdXLFzbZK
db8+BiVaO0xw70s0j9BuGwO/YolXOiX2i4lP4Qzhc7WjniL3FPw=
=l8qE
-----END PGP SIGNATURE-----
--=-=-=--


--===============3591687229756965132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3591687229756965132==--

