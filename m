Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A596C48343
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WCovt3cb7xkiracH2g/McPUso5Oz2DptMdW/EdkXiwU=; b=TzA2IGxRsLQ0XQsuLAZosnLO3
	2la1st6PTqEbU+Z98w95SHMqDafV1cksKsshxnag0j+sSQ4O2u1AX+1xICJhvNodzrk8JbrxfwN0O
	Qnk/eAXiSa+gGn6+8nJEqm4OyTnNAbVGAVrOoAx2OqpgEqtwwZ0riOI45eEkpeQyyP/PiqWFOiMhI
	Vprthk63FpWemWkY5wVzNRsJaXZi4sMSBPCWhAJuuW+YwwLfABORH3zThpp4d4NZQtN/+UeL0v8r4
	586dz+9J2yI6loFmR9KKO7OiDf9bctH51KVxevHmctAwKgJ8l52ll1ng3yTRB2giHJuHcCdbpjmEz
	ToYQ9xyQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrB8-0007ei-1f; Mon, 17 Jun 2019 12:56:06 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrAn-0007Wh-KO
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:55:46 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 05:55:42 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jun 2019 05:55:39 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Lee Jones <lee.jones@linaro.org>, alokc@codeaurora.org, agross@kernel.org,
 david.brown@linaro.org, bjorn.andersson@linaro.org, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, jlhugo@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [RESEND v4 0/4] I2C: DWC3 USB: Add support for ACPI based AArch64
 Laptops
In-Reply-To: <20190617125105.6186-1-lee.jones@linaro.org>
References: <20190617125105.6186-1-lee.jones@linaro.org>
Date: Mon, 17 Jun 2019 15:55:35 +0300
Message-ID: <87lfy0gym0.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_055545_743895_01056634 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0660436024342603222=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============0660436024342603222==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Lee Jones <lee.jones@linaro.org> writes:

> This patch-set ensures the kernel is bootable on the newly released
> AArch64 based Laptops using ACPI configuration tables.  The Pinctrl
> changes have been accepted, leaving only I2C (keyboard, touchpad,
> touchscreen, fingerprint, etc, HID device) and USB (root filesystem,
> camera, networking, etc) enablement.
>
> RESEND: Stripped I2C patches as they have also been merged into
>         their respective subsystem.
>
> v4:
>  * Collecting Acks
>  * Adding Andy Gross' new email
>  * Removing applied Pinctrl patches
>
> Lee Jones (4):
>   soc: qcom: geni: Add support for ACPI
>   usb: dwc3: qcom: Add support for booting with ACPI
>   usb: dwc3: qcom: Start USB in 'host mode' on the SDM845
>   usb: dwc3: qcom: Improve error handling

pushed to testing/next

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0HjccACgkQzL64meEa
mQZhsA/9GPXGmz10q8n644hKI3owpJviGwOTfR0L0fAavSjDtLvI3avmcYMZ1a+h
oYvJDVOAZNvc97WMt8JeF1Dc9rfutyq+jtmkpRwTAZ1Xy8cg+9nu1GLSaajLu/OU
kECtbgtUXf76/srOfseNyRk8aFnEW6YZXviTW0q1L6ayYhtxHibF8y1Z3ltKl8Wq
xgFLb1EeffqtNfQze/6Fg7y20XfPA2VeeJGqy+e3IFN6p4GJsRtGhLtJUObxmclR
vSaelq0UrPylodnFK+5GhcPHhXwYZKA28JNlZmw91kplKCvLHR32goJsfTY6fq4W
xTZvHn54vnQ6xoNgxQCtzpFa4A9m5Eqabsq2HzrRzha/HbzCj5kKnFIhHxLV+N4a
CGtDJzcB9nZbuspSsjTGrumTtKPKedrmwHkbxD9sWW/mMwTbavqu0MAiRqBkm/eU
v1lGqBNjIvMX+246KG/iCLvfYZjANYM84cLxz//ODfKjS67WKrIgqCFHXGflEpd0
DBjFHGtIX2JJKtCFOcSkzyxyPo4qiRvdM5wP+MStR2YNa9e+DZrd+DgRV1HlkOBR
A/r4yTd8mqlCCw7F1gkP689+zCQUhZn4SASDwWeuXtqaQigXDFYuA8gMMbVbBG/Z
ieiHtc8WmhlI11GgO5Qbj6ucJHNuzKhJcpKMeMf5d6jR1nNACdo=
=yt0c
-----END PGP SIGNATURE-----
--=-=-=--


--===============0660436024342603222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0660436024342603222==--

