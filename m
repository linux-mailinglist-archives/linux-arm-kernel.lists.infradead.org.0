Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8D482DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wfywak120/QEjcnuRQmH5LhfDAONMhtZdFNWbVylLok=; b=n9y/x6F0calOoheHuyQb53TxD
	HzDM6gA2ZvQko6gu4g6Y2m+1xQKunHCZUSmFJc+Xa70NjvP94Vv+iDLQM1oZYJGURaQzPFtdBp0CG
	m886XW/ZiU0VNkEM54hZNPIZyujcbOJMgOJiEKNK7vPzW4CiulWLzKLr4pmfWdfhguiUbsznoSEpz
	eTh/P6UQpzPpvXXiBHudkxRKFD1BLHEzrhTWbNuKfpcG0B//OSI4hmoZDfA8tan7Ky5SyomW6k8pV
	dumofrbhN4sWyTJivhgbmPjUubZjoBITioAY6reJIq8ECuyffe/sm/PH0va6AIyocK/Rec8gZqJdQ
	Ue+ZQepWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcr1N-0002x6-Ct; Mon, 17 Jun 2019 12:46:01 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcr1E-0002wY-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:45:53 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 05:45:52 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga008.jf.intel.com with ESMTP; 17 Jun 2019 05:45:48 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 4/6] usb: dwc3: qcom: Add support for booting with ACPI
In-Reply-To: <20190617124329.GH16364@dell>
References: <20190612142654.9639-1-lee.jones@linaro.org>
 <20190612142654.9639-5-lee.jones@linaro.org> <20190617102146.GG16364@dell>
 <87y320gzp4.fsf@linux.intel.com> <20190617124329.GH16364@dell>
Date: Mon, 17 Jun 2019 15:45:44 +0300
Message-ID: <87r27sgz2f.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_054552_776993_0F62FE21 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-gpio@vger.kernel.org, ard.biesheuvel@linaro.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4276915027000681630=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4276915027000681630==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Lee Jones <lee.jones@linaro.org> writes:
> On Mon, 17 Jun 2019, Felipe Balbi wrote:
>
>> Hi,
>>=20
>> Lee Jones <lee.jones@linaro.org> writes:
>> >> In Linux, the DWC3 core exists as its own independent platform device.
>> >> Thus when describing relationships in Device Tree, the current default
>> >> boot configuration table option, the DWC3 core often resides as a chi=
ld
>> >> of the platform specific node.  Both of which are given their own
>> >> address space descriptions and the drivers can be mostly agnostic to
>> >> each other.
>> >>=20
>> >> However, other Operating Systems have taken a more monolithic approac=
h,
>> >> which is evident in the configuration ACPI tables for the Qualcomm
>> >> Snapdragon SDM850, where all DWC3 (core and platform) components are
>> >> described under a single IO memory region.
>> >>=20
>> >> To ensure successful booting using the supplied ACPI tables, we need =
to
>> >> devise a way to chop up the address regions provided and subsequently
>> >> register the DWC3 core with the resultant information, which is
>> >> precisely what this patch aims to achieve.
>> >>=20
>> >> Signed-off-by: Lee Jones <lee.jones@linaro.org>
>> >> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> >> ---
>> >>  drivers/usb/dwc3/Kconfig     |   2 +-
>> >>  drivers/usb/dwc3/dwc3-qcom.c | 206 ++++++++++++++++++++++++++++++---=
--
>> >>  2 files changed, 179 insertions(+), 29 deletions(-)
>> >
>> > I'm starting to get a little twitchy about these patches now.  Due to
>> > the release cadence of the larger Linux distros, it's pretty important
>> > that these changes land in v5.3.  Without them, it is impossible to
>> > install Linux on some pretty high profile emerging platforms.
>> >
>> > It's already -rc5 and I'm concerned that we're going to miss the
>> > merge-window.  Would you be kind enough to review these patches
>> > please?  The Pinctrl and I2C parts of the set have already been
>> > merged.
>>=20
>> I don't seem to have this series in my inbox. This is the only email I
>> have in this series.
>
> I did wonder, which is why I made sure I sent this to your Intel
> address as well.  Is your @kernel.org address broken?

not really, that drops in a valid inbox. I didn't receive it in either,
however. :-s

> Will re-send the patches to your Intel address, give me a few
> minutes.

Thanks.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0Hi3gACgkQzL64meEa
mQY6cw//UR0+y5aHXtLn2hjlVUhYgBlcnFJr3gT/bI+asF95lLJrC5erexaMReya
oVXaqMIj1FicOrT8LH6BQrAO7pCkK1nzMRa1Zzz0eaP02V+4KBw2rQdY3DqPN2UR
cFRTPiG3rLyKTtFvjGbbg7T4eA7x5sXsgW95up5xFl3xWNMNvwk0Lhem+sIZgFFW
SdEyfrkdqOEmKTXvLS+4FuEt3SHvPRjNfqHLR//JRSpRa9JFYak2GvFiSeJUfj1o
Slw074pz4bcsUa2XGXElFv2FqG0SbsTlYWS2D8u3s5XaKk2zAMo35Be9JT2uFvL5
kQyHVoNowkSXm27o19tBiqaidyRhEnQUxs8sBLNyVvr5dI7rKzTAbXY3F5zr4nVd
7BNohgUx1c+UDbagD3hYJ4uP40lGGTgLx8UjU0V/iigzOdIqNJLZm4vJ3CxkBDI4
OS9Xgvg6keTCk/PwEoM6QevioGBta7+nlLYHkFZD2NaCoRc1u5iQqfLe0TmCuFJh
pP+m7g0yCXX9BXikm1XnPBcaA4sZ1BsYx7JN9LczYM6paqPm4vWwnxVkAbIv0bwe
baDR7JtlY9ISajgV40UArHLkcN7+2/XHVNxgrTHfnluw/AFUfGkCl+soPC/CrTg4
gPuvGPbuYM2oRfaWRGJJNyW/7yz4FUutnBFGdmZqD3JubShRE34=
=FCzN
-----END PGP SIGNATURE-----
--=-=-=--


--===============4276915027000681630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4276915027000681630==--

