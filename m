Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F53311DE23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 07:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jh5nUofIyuAMzTe8DZ6VywekZpDz1R2Z58JfB632ntI=; b=DAUpBjech5mTnEyPZ2Tl0MIrz
	hJBmw0HvFPHbtl/xSEIqgjKNdrifc4i49iz3+n68/4lm72ePXToNj44PrEDu05CbHkhwWnD8UOIPz
	kHeOghNtILnQrHO6YIalCz/tRVILxfZJqVTLG6VsAF9aPaHVkhK11M7U8zlT8wUZs33dSaXmeMVYt
	iN/lq14vB+JidwI6lOkgKFol3mC/fqc432ZcqZ2+P7Q9CQuNZJeyVnHaPDq0l8yqtyCbUZyQtjMUE
	Pk/WgPRKv7loU1+030rrKwavGIXFxBuvNxDLL5kP5GJSGCXGRGPinRVFF7l+RHwWqu5D/ffSGUF5d
	+TvN/dFnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifeAW-0004RI-7J; Fri, 13 Dec 2019 06:11:16 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifeAN-0004QZ-GB
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 06:11:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD6B4dh052061;
 Fri, 13 Dec 2019 00:11:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576217464;
 bh=R7se8/t9MflGkAXnSQai3sRXG4U4CFURFyo8zcdiJF8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=SwHSo1ZTOEpNgriyoaMYi7V6PrSfQPcgbtDfIiIRrFaaze4d+9fkapYuqyHM1kuGW
 Jm2L7wfeQ4yp7u0+UuZxowPB/xXVErmeaIxnn1PLgdaqP+LbUrd0bIDGSjS1znmmgk
 maiNClbXvaYmmEuDd+QjhvK+xvdaW+v3MfnxnE6k=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD6B4Jd051660;
 Fri, 13 Dec 2019 00:11:04 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Dec 2019 00:11:04 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Dec 2019 00:11:04 -0600
Received: from [10.24.69.174] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD6Ax07082936;
 Fri, 13 Dec 2019 00:11:00 -0600
Subject: Re: [PATCH] bus: ti-sysc: Fix missing reset delay handling
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20191211185901.9879-1-tony@atomide.com>
From: Keerthy <j-keerthy@ti.com>
X-Pep-Version: 2.0
Message-ID: <3ffb7088-8a10-c75a-1ad5-27701fad18e0@ti.com>
Date: Fri, 13 Dec 2019 11:41:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191211185901.9879-1-tony@atomide.com>
Content-Type: multipart/mixed; boundary="------------950C312003D33B2A83474718"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_221107_618761_E37613D2 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--------------950C312003D33B2A83474718
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable



On 12/12/19 12:29 am, Tony Lindgren wrote:
> We have dts property for "ti,sysc-delay-us", and we're using it, but th=
e
> wait after OCP softreset only happens if devices are probed in legacy m=
ode.
>=20
> Let's add a delay after writing the OCP softreset when specified.


Hi Tony,

Boot tested on DRA72 & DRA76.

Tested for RTC+DDR mode and DS0 mode on AM437x.
Tested for DS0 on am335x-evm & am335x-beagle-bone-black.

FWIW

Tested-by: Keerthy <j-keerthy@ti.com>

- Keerthy


>=20
> Fixes: e0db94fe87da ("bus: ti-sysc: Make OCP reset work for sysstatus a=
nd sysconfig reset bits")
> Cc: Keerthy <j-keerthy@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/bus/ti-sysc.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -1590,6 +1590,10 @@ static int sysc_reset(struct sysc *ddata)
>  	sysc_val |=3D sysc_mask;
>  	sysc_write(ddata, sysc_offset, sysc_val);
> =20
> +	if (ddata->cfg.srst_udelay)
> +		usleep_range(ddata->cfg.srst_udelay,
> +			     ddata->cfg.srst_udelay * 2);
> +
>  	if (ddata->clk_enable_quirk)
>  		ddata->clk_enable_quirk(ddata);
> =20
>=20

--------------950C312003D33B2A83474718
Content-Type: application/pgp-keys; name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
Xpo=3D
=3DNfsW
-----END PGP PUBLIC KEY BLOCK-----

--------------950C312003D33B2A83474718
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------950C312003D33B2A83474718--

