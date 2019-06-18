Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9807149C4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sMBJTrAoG+2KzQ9n92M5h1iT5tsV3KoXSW6Aatzd4bc=; b=I+qtI/ThcBMFhTpS9davXmuDo
	3gciCzgU8V3SQ1BZK2zWukqYTVVrzqPyL1iUR8yuOYgpjSEi/mmrQHZmjBiNU6ho9QdaSJ0jREzz9
	tWIRLXVMrE1YK+h3s3j1UVcbiFos87hRW5yCahp2bvvXm8RZM5yTkIjF77EzZ3dE1Y4RHnqSULZbx
	v3j9VES1pMT+tJgnY2ii+3TC+qnJ0KohdXXbsoy65/UJAZthvCXNGxOqF96W3r2mzEpqR2LzrJU88
	vnv6/1pXFENzml/O6ukyfdOuD/0ITjwUhTp1TDd/7ukQj5i+85SOY+VkJq8n0dJK+NzKfPf5rphHC
	npSYF+H4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9jt-0000fg-Ai; Tue, 18 Jun 2019 08:45:13 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9jb-0000f5-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:44:57 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 01:44:55 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Jun 2019 01:44:52 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RESEND v4 0/4] I2C: DWC3 USB: Add support for ACPI based AArch64
 Laptops
In-Reply-To: <20190618080828.GJ16364@dell>
References: <20190617125105.6186-1-lee.jones@linaro.org>
 <87lfy0gym0.fsf@linux.intel.com> <20190617132349.GI16364@dell>
 <87a7efgxw7.fsf@linux.intel.com> <20190618080828.GJ16364@dell>
Date: Tue, 18 Jun 2019 11:44:48 +0300
Message-ID: <87wohjffjz.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_014455_840639_633628FC 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-kernel@vger.kernel.org, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8908417747279095453=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8908417747279095453==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Lee Jones <lee.jones@linaro.org> writes:
> On Tue, 18 Jun 2019, Felipe Balbi wrote:
>> Lee Jones <lee.jones@linaro.org> writes:
>> > On Mon, 17 Jun 2019, Felipe Balbi wrote:
>> >
>> >> Lee Jones <lee.jones@linaro.org> writes:
>> >>=20
>> >> > This patch-set ensures the kernel is bootable on the newly released
>> >> > AArch64 based Laptops using ACPI configuration tables.  The Pinctrl
>> >> > changes have been accepted, leaving only I2C (keyboard, touchpad,
>> >> > touchscreen, fingerprint, etc, HID device) and USB (root filesystem,
>> >> > camera, networking, etc) enablement.
>> >> >
>> >> > RESEND: Stripped I2C patches as they have also been merged into
>> >> >         their respective subsystem.
>> >> >
>> >> > v4:
>> >> >  * Collecting Acks
>> >> >  * Adding Andy Gross' new email
>> >> >  * Removing applied Pinctrl patches
>> >> >
>> >> > Lee Jones (4):
>> >> >   soc: qcom: geni: Add support for ACPI
>> >> >   usb: dwc3: qcom: Add support for booting with ACPI
>> >> >   usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
>> >> >   usb: dwc3: qcom: Improve error handling
>> >>=20
>> >> pushed to testing/next
>> >
>> > Sounds promising, thanks Felipe.
>> >
>> > OOI, what is your process?
>> >
>> > How does do the patches typically sit in there?
>>=20
>> I'll probably merge to my 'next' branch today. I leave them in
>> testing/next for a couple days, usually, so 0-day can run its thing and
>> I get a chance of at least boot testing on our machines in the lab here.
>>=20
>> Since this doesn't touch anything "generic", I don't _have_ to boot
>> test, so I'll probably merge to 'next' today.
>
> You're a star.  Thanks Felipe.

it's in my 'next' now. Should be in tomorrow's linux next.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0IpIAACgkQzL64meEa
mQbfwxAAiJetJXp+PQT5+Erhw0RVJLt2IbC6/mEQKg82EfTN4MVOBIRu0W3HIl6O
4dCCBxcDa2YvpSIZZTyxfx/2uyrxQo1qctq5GW2uXCutmMBndc6+c3ttvROphyO5
GYwhzp2bey9uGAO0FsDxXLoeIhJ2wOt30/cgslh2E4a6ql4RHRbCGaTGqQAh+snG
RT5cZeGCvFtwj0R7NEqutqIqDkXAjf3NmHR5vzeNATpaM9WruHUu1kElsMxpDUhb
1lK7GS/4KnRqkKnR3SSTGHiAq4XrVl58BGzPFrj/v9Km/C+XYhClb5m3Tr6yQl07
fIGMmi5oQ3ylEUStFu1aA7U2xWpotPVQak8skMBxTQPGPyZWW6CAOA2dNcYvtJPl
1SV7PSWppLi66p8ienUDmZWhIa5kXW+p79p5kssnsU9yNy6aR7RCnUR9BInr+siq
6vZszRKkdcvadUTYS+yTvMGtxDegzPgetX8SI3jnvWpcxwkMSyCh6Dqa8rtKu8fN
QMzl8eaKXOWCxOPGf87r9irnC+KagFRlKIdpSLJKu2UEHZvLVHCjyEKwwINzyMMz
f21PMcHPZ/WBsiVqgHiiOC3mV6ELT0wioOI1kSSLC0nvMS8zaIALtt19QonF88uW
bg1mNfyOz4mqbwn3up4axpMwLnUUgGy+bvuVtWDP3dPcA/LE1TU=
=iXuK
-----END PGP SIGNATURE-----
--=-=-=--


--===============8908417747279095453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8908417747279095453==--

