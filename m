Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45D88A8EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRMRkbZr2tHjMzpjdX0Szgy4B3qaLfHY/V2y3ZzTW3Y=; b=gibu9KEMNKrcgL
	7IT7VIjaKwKjTSPYuRikJI+lZxdP30qFnoUCKgvuWu/AqAfdPIUQd/wtWGfbdXRzzzjTYQoa7gtVX
	48nBqxUqmR7s3YQhVXPmCajqZqCpy1B/qRSqXBDvwcNm69IRunoyGKjpTTsp/qZPGQZe9pVkysg68
	2njJ6vDQww59z+sdgaBZZ3AGNqBa+0XewqDyMU4dU17Gt+YrYBbzanmGGnBC8QjDOB8ADrg5z0eGb
	lzP2DkkTQJlHJtvX9cjJ65HDtO5aYfn2/WzeiAnDDVmxhxdeHctjzmdcB/wWARfq5omc3YseGp0m6
	X6ey0Te0e7ahvRKoHv5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHU9-0001Ru-Mj; Mon, 12 Aug 2019 21:04:09 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHTv-0001RU-Lj; Mon, 12 Aug 2019 21:03:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565643821;
 bh=Z4dob6QFbBn2pjPUd/UPBrkeB6mcJHKlMV0DqcboR08=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=B4NG0dM8FysyLubkeDJwulk//hiefE+vWC0zHl0jeJUr4J/wKse1+Ie3RPn+YYT7t
 4ZBAfJyOqSwGvQlPB7Ker8RPVXP8aphQmmVEhdHMSBLmT1i6DPszA4zi5JBr91K21y
 K0GzfZoThtVjl9dCddbRLIlTosEFax2tc9KW6S2M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.106]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MUZG7-1hoj2U0bBb-00RFGz; Mon, 12
 Aug 2019 23:03:41 +0200
Subject: Re: [PATCH 04/18] ARM: dts: bcm283x: Define MMC interfaces at board
 level
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-5-git-send-email-wahrenst@gmx.net>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <b9ed2030-25de-4e21-7fc0-9382f6250630@gmx.net>
Date: Mon, 12 Aug 2019 23:03:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1563774880-8061-5-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:uXhaVTZBIdtkgpQUvDbG0jujSsYTCHrV4MMU4Fp2mY1BMnzmFcu
 dj2zho2p1mWt4W8P9ca6cb4FZqTkfvwYrgsdpjsbunb2+OCQ26HuB5DQvg48g0xDpcdlvKS
 PKWvKVNaDW0nB3RUbs8GYcGeMbePtCkVYxcbQ/bcw7SN/CGkwcrSxiZq7HYkHxdcU9wlpbU
 5oKyiopkh2L982OwP3whA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m77DRGs/jQw=:SUOdNsS/ZqhCJsJlR6MruL
 UMB+vVPWVjHskJr9GgrZboRMpxMbTP5+ajj+wh17Rb8Xrpm5qOdmm/sgaalaJQmiYcuOJA8B0
 ZFQ7m/CYO7oj78rnADsnr6FsDNvMRFEPJIDYDzq/mrIdtoFYBptRWmfVZY3KcAoOcljhOlpMj
 f9cisBARzc7TjkABHr7cgOjOQ1UvAFSDSetanMqSorRtK970Mzv1LyEMvP+0oDi81ACfXJTyj
 tgRgb8WO/d2Qei9frV1O3ILKY0zP3u9UoBON+WRlsn4RWh/MX/xvtr/ctgIfa2F0TKN+yHuxz
 VvGar7T1VwWLaGdDZSlV5bOrEVJIpDQMKJ92LMYNyF4q5xS5P6bdsFV/czPqcxlV8d7jQP93K
 U2MPwt6vWCqTUW4mONbuErQ2USTKHq7kfn2OnlIdyGqjALEnt6aQ5G5fA9znnqU44ZEI2UdTx
 CxrTPuIha5Y4b0vkb2XnXWyPv6oHgm4fE6ufHW8HT2I5HUM4ATpNE+BC8EP7t11NiqrDd4C5p
 WmiXgHlU198hAIxp+XeUd9qCRk7msfUWEDqCun4JcCklGHpYBEWjfpbHgZEQFAlZW5dMu1dt3
 ZZBM4KuWfKktyXqephuS9NeWQGDzkFaTYIKLlYqq3uBZt52lpo364MWDT05PVM3FOpRq7N0jZ
 tRUEOWhyHvGOYnTD0X+4JkZ6nzfUQTIJn05ln8AZTFI3SuywiJbwOXKQHgZyCpk4cmVHtC++s
 TO7IW2E/scQ7zwVraGsChU6QKlR6z5Vl53zGL78cHNah8fJTxWNcd3sOTxpncrLErZy5EqIP6
 om551ZL2ZtLz5VrfiTooZHHFrm0i4W8r3K7GBJFIm8g7zxSCE0evcnEtbAe2KI8l4JQAdjZ7I
 BnT3ais0cuF/FUCmJD8tg9Tdrk2CRfPMd7IsF+zYM1lalHCWGKjRigq8WwcFmRt8BVJM2pl9f
 +GQf0QRXDNQUGS6ImJGNFEJd9SE9sfgDwMeND3ZKI75uvqSA/5Em4VY4Q2dgTEMJyRR1d7C5E
 legBB0PgKurO3SDe3zf4uwZ+5l8Zo0meuYjB4bm/zG27xbuEfk0A+ecfa3/T/zy7VeHNhg8I2
 1YkyUA7vsdAygpN9A4xIIyd9SISAvtTBASpIbRxdZ6QUA+jsqDdhpkcUI1H+cPCo2JNllosGt
 Lx3Hc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_140356_007858_2A21B88E 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 22.07.19 um 07:54 schrieb Stefan Wahren:
> Starting with RPi 4 this is the first board, which doesn't use sdhost
> as default SD interface. So the MMC interfaces should be defined finally at
> board level. Since all boards using sdhci already does this, we can drop the
> pinctrl part from bcm2835-rpi.dtsi.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Applied to bcm2835-dt-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
