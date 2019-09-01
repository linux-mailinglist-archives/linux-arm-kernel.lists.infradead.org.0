Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DB3A4C60
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 23:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUvVJrYyVXT3NKcigWTzFYSiGf0YzmUC3v4hhjfmQHk=; b=GbZSJY8lQmefxj
	olDTxsoDdzb4r8Jzjob783AgpiEgFnFUUaNyEj57m1h9KRv+EF1sLgqJLIsCYo/G03A5qaz458qnH
	P8Cglt+82i0myZFXhicyi/G4UQV44G7ctgaWb9/LuLpHvX8oVEerVfTG2thJOCnESKonCq2vzX+7h
	FefO4O3Ni4UNibOmUTe7r5ZUZH879PG0LuMaymec02Dwze8IYQaN66/5NinR7KgtN3blR4bzwwRQr
	YkrY2wsJBonfS6VcEPFxvS1/ajROPnpkgd5C/8ulO9AjLbuKZFTMFqlQPlyVOe00WStj+Ukf36dpb
	G9PGkTRQ3mix6ocYHeEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Xlu-0001Hf-Dy; Sun, 01 Sep 2019 21:52:30 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Xlh-0001HH-K2
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 21:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1567374734; bh=jrClwa09Qi/Ap8hefr9nEz2+uFGxRJka1O26L0HZtjI=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=Gs/DjpJRQwS7k3GdVo1K8Mn4c10BiFj3iWCueQ+Eo7FUh8Em/o+SIw7lnOOqAsAbI
 9w8oMEwqviwHd70mKfz2VBAUtI/Xo8ftiC3Ph7R1lOTF3l5cEN2efKdvf40fcER5I9
 +OF110QXIozgqHCzD12if1ILel/HvTGPJCGZaEdM=
Date: Sun, 1 Sep 2019 23:52:14 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 00/18] add thermal driver for h6
Message-ID: <20190901215214.f4vbxemdd7mf3gun@core.my.home>
Mail-Followup-To: Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, maxime.ripard@bootlin.com, wens@csie.org,
 mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_145218_158936_749A2AD0 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 mchehab+samsung@kernel.org, rui.zhang@intel.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Yangtao,

On Sat, Aug 10, 2019 at 05:28:11AM +0000, Yangtao Li wrote:
> This patchset add support for A64, H3, H5, H6 and R40 thermal sensor.
> 
> Thx to Icenowy and Vasily.
> 
> BTY, do a cleanup in thermal makfile.

I've added support for A83T and also some cleanups, according to my
feedback:

https://megous.com/git/linux/log/?h=ths-5.3

Feel free to pick up whatever you like from that tree.

For others, there are also DTS patches in that tree for H3, H5, A83T, and H6, so
that shoul make testing of this driver easier.

regards,
	Ondrej

> Icenowy Zheng (3):
>   thermal: sun8i: allow to use custom temperature calculation function
>   thermal: sun8i: add support for Allwinner H5 thermal sensor
>   thermal: sun8i: add support for Allwinner R40 thermal sensor
> 
> Vasily Khoruzhick (1):
>   thermal: sun8i: add thermal driver for A64
> 
> Yangtao Li (14):
>   thermal: sun8i: add thermal driver for h6
>   dt-bindings: thermal: add binding document for h6 thermal controller
>   thermal: fix indentation in makefile
>   thermal: sun8i: get ths sensor number from device compatible
>   thermal: sun8i: rework for sun8i_ths_get_temp()
>   thermal: sun8i: get ths init func from device compatible
>   thermal: sun8i: rework for ths irq handler func
>   thermal: sun8i: support mod clocks
>   thermal: sun8i: rework for ths calibrate func
>   dt-bindings: thermal: add binding document for h3 thermal controller
>   thermal: sun8i: add thermal driver for h3
>   dt-bindings: thermal: add binding document for a64 thermal controller
>   dt-bindings: thermal: add binding document for h5 thermal controller
>   dt-bindings: thermal: add binding document for r40 thermal controller
> 
>  .../bindings/thermal/sun8i-thermal.yaml       | 157 +++++
>  MAINTAINERS                                   |   7 +
>  drivers/thermal/Kconfig                       |  14 +
>  drivers/thermal/Makefile                      |   9 +-
>  drivers/thermal/sun8i_thermal.c               | 596 ++++++++++++++++++
>  5 files changed, 779 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
>  create mode 100644 drivers/thermal/sun8i_thermal.c
> 
> ---
> v5:
> -add more support
> -some trival fix
> ---
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
