Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA199F06A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 21:08:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Tvrrlyow+XjKQ0oJqAIydZypMd7epdC4617NNgMuH8=; b=ENNCR9vBKhGvLk
	roUhnp4Ezac5O+SjYbPH8pUj04CL9wgQPF+u4JV99RbhFlwmmr/XDM0LBRu3fh2aITWnI6zxB+V14
	0VeBdg+VU1vBtnSD19z8taMJLuDF5qJg89fJ5rFZ7Qz3ifXK3npd2/bz4PrW0PK1M4wiGWbDE83zK
	kbPhW1nskfTVfs27xGa/Mi4lhAo/8yzdM+BgK43shkVxOZo4oNDYCDpIrV03McFpHWCWd+j3XjF2t
	CeitB1fSgXpLCVP3tiYWW4bG7/tfsm+0TR67xEVnZK+lPVD+sU1+n35FlWN8DPihgoPvxe1J5dwzK
	gcd4gKT5oyFu8+DIm9hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS57a-0006mU-KP; Tue, 05 Nov 2019 20:08:10 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS57Q-0006kt-Ng
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 20:08:03 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id B13C28365A;
 Wed,  6 Nov 2019 09:07:49 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1572984469;
 bh=lHjwz71E/Xg4m738q0J/T5/3YlB+63AdTckR6CbpTf8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=sbMfx1ncLH2xNDcnnjsrpyEOYMV4A5Xmp1wQ+aoovd95E2gMR8deiWjdQIHC6A/gc
 flkdKoFwf4E8fcA8d3cA+m8dJADMOshyt1pbTwCLaPCGjeWXFxnNWh+s2r/ZRRUrxt
 /lSTb31yObZniMqgDlnlXZ0sPrajuUNC3ec1HkGYW17UQnNVTigsiAwhK+czrwX8H1
 rbow6hqbGlimL09AgB6m3fpde6IXLNJsFPIGCZXXR3mZxMi3jBEKvMwTU3YIW0eo2N
 3nzqhmysAaOk/BAZXud2j1E/PnJ4tosJZmiHSWIcK94NZ+ENnGNbQThOfcRfxSQwZy
 p5B0SEZ29LGbw==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dc1d6940000>; Wed, 06 Nov 2019 09:07:49 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Wed, 6 Nov 2019 09:07:47 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Wed, 6 Nov 2019 09:07:47 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "broonie@kernel.org" <broonie@kernel.org>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "bgolaszewski@baylibre.com"
 <bgolaszewski@baylibre.com>
Subject: Re: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree
 match table
Thread-Topic: [PATCH] gpio: xgs-iproc: Fix section mismatch on device tree
 match table
Thread-Index: AQHVk9d2GHMYQw+EyUqkZ/V+4uyDVad8J8QA
Date: Tue, 5 Nov 2019 20:07:47 +0000
Message-ID: <b8563b7fde5bf3fa7ac255e8d3149dcd6d773f7f.camel@alliedtelesis.co.nz>
References: <20191105124915.34100-1-broonie@kernel.org>
In-Reply-To: <20191105124915.34100-1-broonie@kernel.org>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:d4b1:92dc:7823:3af2]
Content-ID: <212704B755D168488BFC89B45BF894EA@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_120802_107852_9101A8B7 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Tue, 2019-11-05 at 12:49 +0000, Mark Brown wrote:
> The table of devicetree identifiers is annotated as __initconst
> indicating that it can be discarded after kernel boot but it is
> referenced from the driver struct which has no init annotation leading
> to a linker warning:
> 
> WARNING: vmlinux.o(.data+0x82d58): Section mismatch in reference from the variable bcm_iproc_gpio_driver to the variable .init.rodata:bcm_iproc_gpio_of_match
> The variable bcm_iproc_gpio_driver references
> the variable __initconst bcm_iproc_gpio_of_match
> 
> Since drivers can be probed after init the lack of annotation on the
> driver struct is correct so remove the annotation from the match table.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Thanks for picking this up

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Is it worth including 'Fixes: 6a41b6c5fc20 ("gpio: Add xgs-iproc
driver")'?

> ---
>  drivers/gpio/gpio-xgs-iproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
> index a3fdd95cc9e6..bb183f584d92 100644
> --- a/drivers/gpio/gpio-xgs-iproc.c
> +++ b/drivers/gpio/gpio-xgs-iproc.c
> @@ -299,7 +299,7 @@ static int __exit iproc_gpio_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static const struct of_device_id bcm_iproc_gpio_of_match[] __initconst = {
> +static const struct of_device_id bcm_iproc_gpio_of_match[] = {
>  	{ .compatible = "brcm,iproc-gpio-cca" },
>  	{}
>  };
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
