Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F401191D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:25:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1zWuL70i7n4mwd0tPBDEOBOczEMQKswz4zwLYJXRtw=; b=ME5+v+WtdvCh+2
	zoU7oJLh/RJmJz/6KCy5dIQM/A2XLq7/EpD3iEGi9b3lY1MjmzANf/ZSbg9g4FGchJ9akLqgMdHMj
	0MVy/ICXfmX81vaXanBaLw/Zfyq+kVxVijuTjGNQHRL/F4NmBLu6d9MaIUJiT0qgdwfRuvOzJ4GIo
	9qoS0hDBWthmKSbj+xBQ36u1x1wQhygtjZhr6o9MombofuPc23fQ9h7zCnJFu9nL5aaKnh5IeX1s6
	wTQiaA99gyT5LwnoV8XgYa8ArrSn0lmrmmykqWWXV/amKhMFw6+xM2ydaPioYUru61tKqtRrwIFR3
	nH5ruGb7U9eTfEXMwG3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iem3z-0005Ns-72; Tue, 10 Dec 2019 20:24:55 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iem3p-0005Mk-FB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:24:47 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C48BE806B6;
 Wed, 11 Dec 2019 09:24:38 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1576009478;
 bh=cCJ4IOUErdRXpS39JIAoWUSB/QOu2X0QuS4VhmhhzYk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=ivCMbiiPoyvBkAbJvQMZus7eq8oDUJHfmIBM1N7NGCtQqpKVHsA/ajVC3uOdTstzz
 jgn0EURerQBdDjnuUlyfyJtmjN599ppzwyI+I1IIVOCHaHl35SNN+Xe7RvWvCPmihJ
 AWYNw3dF0IARL5nL4XIWO9B0skzGA6/6ArtZQIjr0QLx7fwcnCwgihTX12HbDhRefy
 o8nuxg4JEPB2pFG5s541HgcoxEN20nwiWNOgxwK3kRXwn/oRaMWSMDsfgJ5hKXIrvH
 +CUX1Ap9W9ZY8ZYldbOP+/jRD8eNuG/IKy63zPYFayK47MMCA9YmuA11o3yufWD3wQ
 Yv9kAOoM8yP9g==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5defff000000>; Wed, 11 Dec 2019 09:24:37 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8)
 by svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with
 Microsoft SMTP Server (TLS) id 15.0.1156.6; Wed, 11 Dec 2019 09:24:33 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Wed, 11 Dec 2019 09:24:33 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "arnd@arndb.de" <arnd@arndb.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "bgolaszewski@baylibre.com"
 <bgolaszewski@baylibre.com>
Subject: Re: [PATCH] gpio: xgs-iproc: remove __exit annotation for
 iproc_gpio_remove
Thread-Topic: [PATCH] gpio: xgs-iproc: remove __exit annotation for
 iproc_gpio_remove
Thread-Index: AQHVr5OrBiJXFgirdU+/MD3yYsX4TKey9pWA
Date: Tue, 10 Dec 2019 20:24:33 +0000
Message-ID: <01669f6c5d0e40c7a410da2dcce6c9e825e4a1d4.camel@alliedtelesis.co.nz>
References: <20191210195414.705239-1-arnd@arndb.de>
In-Reply-To: <20191210195414.705239-1-arnd@arndb.de>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:8c06:5a00:1627:6912]
Content-ID: <E290714BFDB0144FA4F4989701784D39@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_122446_069145_3C36632C 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "yoshihiro.shimoda.uh@renesas.com" <yoshihiro.shimoda.uh@renesas.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-10 at 20:54 +0100, Arnd Bergmann wrote:
> When built into the kernel, the driver causes a link problem:
> 
> `iproc_gpio_remove' referenced in section `.data' of drivers/gpio/gpio-xgs-iproc.o: defined in discarded section `.exit.text' of drivers/gpio/gpio-xgs-iproc.o
> 
> Remove the incorrect annotation.
> 
> Fixes: 6a41b6c5fc20 ("gpio: Add xgs-iproc driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

What's the current best practice w.r.t.__init and __exit? I seem to
have messed this up on multiple fronts.

> ---
>  drivers/gpio/gpio-xgs-iproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpio/gpio-xgs-iproc.c b/drivers/gpio/gpio-xgs-iproc.c
> index 773e5c24309e..b21c2e436b61 100644
> --- a/drivers/gpio/gpio-xgs-iproc.c
> +++ b/drivers/gpio/gpio-xgs-iproc.c
> @@ -280,7 +280,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static int __exit iproc_gpio_remove(struct platform_device *pdev)
> +static int iproc_gpio_remove(struct platform_device *pdev)
>  {
>  	struct iproc_gpio_chip *chip;
>  
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
