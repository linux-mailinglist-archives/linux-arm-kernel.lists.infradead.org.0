Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500F61EB83B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lxw0j9hx5X2FcQgHoFfpK+/bhhQA4OGnyvMp6kTto9g=; b=iT5LZaiiTW+fJR
	kBLJri7LIylo3xSAF5qXawW4HE//naoKPMF6enmppZFnCTzd4sYODQ/uof4172jB2w5NflXPlKI7r
	CRUZJIxOyVCo+1hYXb7LROUG7hn1py7wEEX4Ktli7ZshijjEEzi7dxVr5dg8VXljlAQUFVhCj4O2L
	1c2dk87Q5pvVojVNr57HMI4AxgMfrx1QzM3OysMbx7Ij+8cS0e9dERni/a5Wg9EfLqQADXuWyF1ca
	6RMSASjHsAaCV+PDoJJr/HbJFUiN3UzE+uhN6xtqxA9I0v+9kV8Z9K372MPhrd/+5wiJLGLOyxgiI
	Fp+7kRrTQrNsTnKykUFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg34H-0008Sl-R1; Tue, 02 Jun 2020 09:18:45 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg34B-0008S8-6Z
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:18:40 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0529IKFD068269;
 Tue, 2 Jun 2020 04:18:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591089500;
 bh=HRp5NJcgpD5M8lfp1dgBCoU2NWUCFTruXvAY9gBzvvk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xoz6eOIKkhtxgQJsERCAN6s8rjW8N8YLGgcl2MBUUz5p2Eg03KD9IMxMAXsfnQBjh
 Qdn3DOiIf9P8UdT4a2RJ1CLUB/UNAOlMlBb0bcN6j+Xic98hxZBNq2rB+kegFpFNeO
 SXKjKsec1cIcDMAGrlIeSuHj9e5q1kricH+7kB0w=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0529IKYx121479
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 2 Jun 2020 04:18:20 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 2 Jun
 2020 04:18:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 2 Jun 2020 04:18:19 -0500
Received: from feketebors.localnet (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0529IH14004338; 
 Tue, 2 Jun 2020 04:18:18 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: Sekhar Nori <nsekhar@ti.com>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: davinci: fix build failure without I2C
Date: Tue, 2 Jun 2020 12:19:00 +0300
Message-ID: <2499396.lGaqSPkdTl@feketebors>
In-Reply-To: <20200527133746.643895-1-arnd@arndb.de>
References: <20200527133746.643895-1-arnd@arndb.de>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_021839_339709_AD27705D 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 soc@kernel.org, Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Wednesday, 27 May 2020 16.37.34 EEST Arnd Bergmann wrote:
> The two supplies are referenced outside of #ifdef CONFIG_I2C but
> defined inside, which breaks the build if that is not built-in:
> =

> mach-davinci/board-dm644x-evm.c:861:21: error: use of undeclared identifi=
er 'fixed_supplies_1_8v'
>                                      ARRAY_SIZE(fixed_supplies_1_8v), 180=
0000);
>                                                 ^
> mach-davinci/board-dm644x-evm.c:861:21: error: use of undeclared identifi=
er 'fixed_supplies_1_8v'
> mach-davinci/board-dm644x-evm.c:861:21: error: use of undeclared identifi=
er 'fixed_supplies_1_8v'
> mach-davinci/board-dm644x-evm.c:860:49: error: use of undeclared identifi=
er 'fixed_supplies_1_8v'
>         regulator_register_always_on(0, "fixed-dummy", fixed_supplies_1_8=
v,
> =

> I don't know if the regulators are used anywhere without I2C, but
> always registering them seems to be the safe choice here.

Thanks for fixing this,
Reviewed-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
 =

> On a related note, it might be best to also deal with CONFIG_I2C=3Dm
> across the file, unless this is going to be moved to DT and removed
> really soon anyway.
> =

> Fixes: 5e06d19694a4 ("ARM: davinci: dm644x-evm: Add Fixed regulators need=
ed for tlv320aic33")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-davinci/board-dm644x-evm.c | 26 ++++++++++++------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> =

> diff --git a/arch/arm/mach-davinci/board-dm644x-evm.c b/arch/arm/mach-dav=
inci/board-dm644x-evm.c
> index 3461d12bbfc0..a5d3708fedf6 100644
> --- a/arch/arm/mach-davinci/board-dm644x-evm.c
> +++ b/arch/arm/mach-davinci/board-dm644x-evm.c
> @@ -655,19 +655,6 @@ static struct i2c_board_info __initdata i2c_info[] =
=3D  {
>  	},
>  };
>  =

> -/* Fixed regulator support */
> -static struct regulator_consumer_supply fixed_supplies_3_3v[] =3D {
> -	/* Baseboard 3.3V: 5V -> TPS54310PWP -> 3.3V */
> -	REGULATOR_SUPPLY("AVDD", "1-001b"),
> -	REGULATOR_SUPPLY("DRVDD", "1-001b"),
> -};
> -
> -static struct regulator_consumer_supply fixed_supplies_1_8v[] =3D {
> -	/* Baseboard 1.8V: 5V -> TPS54310PWP -> 1.8V */
> -	REGULATOR_SUPPLY("IOVDD", "1-001b"),
> -	REGULATOR_SUPPLY("DVDD", "1-001b"),
> -};
> -
>  #define DM644X_I2C_SDA_PIN	GPIO_TO_PIN(2, 12)
>  #define DM644X_I2C_SCL_PIN	GPIO_TO_PIN(2, 11)
>  =

> @@ -700,6 +687,19 @@ static void __init evm_init_i2c(void)
>  }
>  #endif
>  =

> +/* Fixed regulator support */
> +static struct regulator_consumer_supply fixed_supplies_3_3v[] =3D {
> +	/* Baseboard 3.3V: 5V -> TPS54310PWP -> 3.3V */
> +	REGULATOR_SUPPLY("AVDD", "1-001b"),
> +	REGULATOR_SUPPLY("DRVDD", "1-001b"),
> +};
> +
> +static struct regulator_consumer_supply fixed_supplies_1_8v[] =3D {
> +	/* Baseboard 1.8V: 5V -> TPS54310PWP -> 1.8V */
> +	REGULATOR_SUPPLY("IOVDD", "1-001b"),
> +	REGULATOR_SUPPLY("DVDD", "1-001b"),
> +};
> +
>  #define VENC_STD_ALL	(V4L2_STD_NTSC | V4L2_STD_PAL)
>  =

>  /* venc standard timings */
> =


- P=E9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Bu=
siness ID: 0615521-4. Kotipaikka/Domicile: Helsinki



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
