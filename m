Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B48C49A73
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OVfrLnDig80lY72DJVdg2tk9k3Kihy/dlK/9U11xmBw=; b=m2gF3jHMTGYILj2iTSk6Kv9oi
	TM7VLxf+RgfNNNYZMAaxbqqYf2p4OhPVY2uTSgyTxZ61CkFHIqk/ZpKTqKwRVPWjwHp0bZ+/KBxkG
	xD3fcBRCUYS0wHyIcz6AhJT7JEeHsSzsIwXNPTr+cLYaUHtn12d295iEVNWNO1gNjbBz5zAwfxfBk
	348N9sWzaNNEiHnkt/t6iGWUjn57y1yJCBBFA/+Ok6Z1gk6TVT5N10EYkPsOLhArtzlBa54pHcecz
	tlodq7VmHU/AALkFnIrX30cyJkCJbilqqiXbNfLQHvfZzhqlkhpEaUEg0AKJ5VVZsk3tdIpn+oxyQ
	fkB/ExHFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8Sv-0001Lj-Mq; Tue, 18 Jun 2019 07:23:37 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8Sm-0001Ks-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:23:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 00:23:27 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga007.jf.intel.com with ESMTP; 18 Jun 2019 00:23:24 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RESEND v4 0/4] I2C: DWC3 USB: Add support for ACPI based AArch64
 Laptops
In-Reply-To: <20190617132349.GI16364@dell>
References: <20190617125105.6186-1-lee.jones@linaro.org>
 <87lfy0gym0.fsf@linux.intel.com> <20190617132349.GI16364@dell>
Date: Tue, 18 Jun 2019 10:23:20 +0300
Message-ID: <87a7efgxw7.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_002329_016160_656928F4 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: linux-kernel@vger.kernel.org, ard.biesheuvel@linaro.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, agross@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-arm-msm@vger.kernel.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1221742146463105739=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1221742146463105739==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Lee Jones <lee.jones@linaro.org> writes:
> On Mon, 17 Jun 2019, Felipe Balbi wrote:
>
>> Lee Jones <lee.jones@linaro.org> writes:
>>=20
>> > This patch-set ensures the kernel is bootable on the newly released
>> > AArch64 based Laptops using ACPI configuration tables.  The Pinctrl
>> > changes have been accepted, leaving only I2C (keyboard, touchpad,
>> > touchscreen, fingerprint, etc, HID device) and USB (root filesystem,
>> > camera, networking, etc) enablement.
>> >
>> > RESEND: Stripped I2C patches as they have also been merged into
>> >         their respective subsystem.
>> >
>> > v4:
>> >  * Collecting Acks
>> >  * Adding Andy Gross' new email
>> >  * Removing applied Pinctrl patches
>> >
>> > Lee Jones (4):
>> >   soc: qcom: geni: Add support for ACPI
>> >   usb: dwc3: qcom: Add support for booting with ACPI
>> >   usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
>> >   usb: dwc3: qcom: Improve error handling
>>=20
>> pushed to testing/next
>
> Sounds promising, thanks Felipe.
>
> OOI, what is your process?
>
> How does do the patches typically sit in there?

I'll probably merge to my 'next' branch today. I leave them in
testing/next for a couple days, usually, so 0-day can run its thing and
I get a chance of at least boot testing on our machines in the lab here.

Since this doesn't touch anything "generic", I don't _have_ to boot
test, so I'll probably merge to 'next' today.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0IkWgACgkQzL64meEa
mQZfuBAAuQZcnBloj3LoF6OISK9Br5hFTGB0GgLw0eVC0w8VavE1eR4HWJYAD9HU
OtpJSw049QWg5tdam9Se6Vuz6vxi3Hsd0ALTLxaSscinMd1YoMmpnmnX83uSbINn
V9OhiWwV7WmbGKSGAyvO9v+2tYsopxDyoFQr7uleNEF53w8hP4FEHY0BXmd7ZGqR
X5zr6hA03V/7huGC6zqQgtWzrqif3quk/dns882qvNsb5KbsF6nHvbpmYj/50ytn
jRJUG9XdqBgSKx9n4qdQNwtD1eJmpRm+Oa/M9MFwWMw/RZOciS0sfhcl7gHMJaGD
x328NQj80cTs+jq0OiqqYdnKy8R+x7UuKdnNgZW7QvENVJwmEUOwFjU1Btyz4TYH
FORe9XJiVXRUy9ytCykWNgj3jhlYeocnr9ZWGks5wTJkMKER+fUvMJfMSrW0PHDQ
dn1Rs/orlx3rdJ1TnpfBTgqMBWqtxSPaYTqd0gHMPkUSoLm1ion1et7QlGUnteYb
bsave1+35O6UT5b1hf6vUGWICU7zUdfMoQUD0pq+A6QlnvkpK7IBZhfvR0Z+5kNl
1F+ut0O8O+PCE93AKYyhIGKDhy/dZYIR26/0ukGhGwtk8fbS4FfaYEYQYsr0fJuV
myZ3TiG0YZXqgOKo8qauXRj0kZUw85lkzyeBCvpj3EgGzbtze28=
=UaAI
-----END PGP SIGNATURE-----
--=-=-=--


--===============1221742146463105739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1221742146463105739==--

