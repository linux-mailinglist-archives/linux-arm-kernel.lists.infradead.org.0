Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE3F387DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IcnrM1TCnACtpIegDJJ6cRK2V7JEepC/X4YpOQyiqF8=; b=oAIzTYUDQd0hBZ0E2uCXFI8kp
	VtGOdgdLmXKcOqiv7O7WJet50tRsO5/Gjr8xyE2S3n2Lck0akWmvwplVxXdzMg0Sap5/2EzHclPpY
	le2oTZF5B7fxgObLlouwEsbWRl7T7KIcUoUirmibvA24gfbygyBclfmOO1fIzifl7Ds50FDfOOZMo
	c+8vncJ0LjRdiW5RAwEGcRTRdedtjGRMaFP9TLXaoifHgw7WhgFh0Y6qs7CUXYONcm+qdPoDVsolk
	rED1RFo3ReKVntTmy9a2bihR36GC8oDU267oNPmZ8UwA70/GdWSQ4S3FENz482mTSJuAnXNhf/oav
	g2+gQmN5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZC3t-0001PP-SB; Fri, 07 Jun 2019 10:25:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZC3m-0001On-EY; Fri, 07 Jun 2019 10:25:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DEFAEAE0C;
 Fri,  7 Jun 2019 10:25:20 +0000 (UTC)
Message-ID: <86849329e38cc30e6ea6c51bcd77da56012a0d26.camel@suse.de>
Subject: Re: [PATCH v2 7/7] arm64: defconfig: enable cpufreq support for RPi3
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, linux-kernel@vger.kernel.org
Date: Fri, 07 Jun 2019 12:25:18 +0200
In-Reply-To: <431a1f0c-8bc8-5c9b-7fa2-f293a2846ce3@i2se.com>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-8-nsaenzjulienne@suse.de>
 <431a1f0c-8bc8-5c9b-7fa2-f293a2846ce3@i2se.com>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_032522_636924_18F233C2 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mturquette@baylibre.com,
 ptesarik@suse.com, rjw@rjwysocki.net, Will Deacon <will.deacon@arm.com>,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, viresh.kumar@linaro.org,
 linux-clk@vger.kernel.org, mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============0183046499993988194=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0183046499993988194==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-TkNebld2DAQffR2+uUDI"


--=-TkNebld2DAQffR2+uUDI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-06-07 at 12:19 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 06.06.19 um 16:23 schrieb Nicolas Saenz Julienne:
> > This enables both the new firmware clock driver and cpufreq driver
> > available for the RPi3 family of boards.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  arch/arm64/configs/defconfig | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfi=
g
> > index 4d583514258c..3b7baffb3087 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -82,6 +82,7 @@ CONFIG_CPUFREQ_DT=3Dy
> >  CONFIG_ACPI_CPPC_CPUFREQ=3Dm
> >  CONFIG_ARM_ARMADA_37XX_CPUFREQ=3Dy
> >  CONFIG_ARM_SCPI_CPUFREQ=3Dy
> > +CONFIG_ARM_RASPBERRYPI_CPUFREQ=3Dy
>=20
> the arm64 kernel tends to get very big, so i suggested to build it as a
> kernel module.
>=20
> Any reason why you choose to make it builtin?

Not really, I missed your suggestion. I'll fix in v3.


--=-TkNebld2DAQffR2+uUDI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz6O44ACgkQlfZmHno8
x/5xQAf/X/nfz6c1KdJtThHJ9SE8+XZyStaD20tWInaqg3MbPIpDHnG6/+6xiWYZ
RG1Y5qAjwu8VpzgqJOEFUA4++ynaOP9fsteiRpCHjMjoHOdaUJl8reqpXXksqUEL
n9Ej57VmhMvg1vlCO0gY59Lq9k6WIkbKHME/tBXozid0M3BYxDig+T8OBna+KHFV
gXQxkAEagdd05kQbMzSrfQ5hhjtSEStzRWY7jl/qIP5f0fMkF0IoyHEPijLCSFNv
qgwTGiYJiX/pFMFNP9nPfVt6JeeydWUK/H7Y0/Fh+CRTa1F7lNS8DvFV2lOrF1Ka
LAnXECYSAwfeRJB8kIJHFw0urT42LQ==
=teQM
-----END PGP SIGNATURE-----

--=-TkNebld2DAQffR2+uUDI--



--===============0183046499993988194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0183046499993988194==--


