Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC571BF06B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 08:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CH4T2QDmfMnAqFPFgMrp+Oiu1OLX0IKm2DZkqttW/8c=; b=NP2XNOh3PWjb+w
	y8hSB8JoHIBXvCzVCdqFPwpHzo1TitbP8iENoiVh3v3f3Nqm8FVtBcShCw6e9U24jhJumnrCsA2iY
	GZjEApH4wOlqao+JJm+LvotsgpU1AsgT8GKyvxb5hoU3v7y/tv7NC3AMQd6vlb+pdMsJPWE86wiSj
	1QSDJ69cq7FCVaBZET7yHoqZb6+W+8Q+/sTl305kl1z4VcwBOaGT3bkz7nH+ZKx0QWpZ1sg4trV+Y
	Jl5QPS6VFw2PR4SYuqzMDMAvdk9s3VdnVLjLlxW0Ak/LXBtt8+cOc5azc3+1+/0KTG1m3O/PiVygu
	8hDCCB6SPqECwKkDSa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU2th-00008N-28; Thu, 30 Apr 2020 06:42:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU2tW-00007b-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 06:42:03 +0000
X-UUID: 6279d88d8cb648b1bacdf9ba09074d3e-20200429
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=s2dkEOMGbr8zmnRl4873RwL4QHEhugqZDl7HL1k+ZTg=; 
 b=mHGWABDsM1tx4gU6tNElmsxKjMk5PfejytxRcMxEuSG1XUJiQG116Nkb9RlcG+ngwTpbqik2rI192R0qqdTEUuOwQfOyMlbKu0BKlSwPMjZ3rxzYKVOF+DsmK1wrsx3W2I8R5wPkouWlwa4psDcvr0uIQ7PmWL7GItcI7UladqY=;
X-UUID: 6279d88d8cb648b1bacdf9ba09074d3e-20200429
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1448646041; Wed, 29 Apr 2020 22:41:51 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 23:41:52 -0700
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 30 Apr 2020 14:41:53 +0800
Message-ID: <1588228913.3817.6.camel@mtkswgap22>
Subject: Re: [PATCH] pinctrl: mediatek: fix mtk_eint link error
From: Light Hsieh <light.hsieh@mediatek.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 30 Apr 2020 14:41:53 +0800
In-Reply-To: <20200429132443.1295194-1-arnd@arndb.de>
References: <20200429132443.1295194-1-arnd@arndb.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_234202_145685_95ABA2EF 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Sean Wang <sean.wang@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-04-29 at 15:24 +0200, Arnd Bergmann wrote:
> In a configuration with CONFIG_PINCTRL_MTK_MOORE=y and CONFIG_PINCTRL_MTK_PARIS=m,
> we end up with the mtk_eint driver as a loadable module that cannot be
> linked from built-in code:

How did you set all MTK-related PINCTRL configs?
and what is the generated result of .config?



> aarch64-linux-ld: drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.o: in function `mtk_build_eint':
> (.text+0x304): undefined reference to `mtk_eint_do_init'
> aarch64-linux-ld: drivers/pinctrl/mediatek/pinctrl-moore.o: in function `mtk_gpio_set_config':
> pinctrl-moore.c:(.text+0xf80): undefined reference to `mtk_eint_set_debounce'
> aarch64-linux-ld: drivers/pinctrl/mediatek/pinctrl-moore.o: in function `mtk_gpio_to_irq':
> pinctrl-moore.c:(.text+0x1028): undefined reference to `mtk_eint_find_irq'
> 
> Simplify the Kconfig logic to always select EINT_MTK when it is needed, and
> remove the 'default' statements.
> 
> Fixes: 8174a8512e3e ("pinctrl: mediatek: make MediaTek pinctrl v2 driver ready for buidling loadable module")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/pinctrl/mediatek/Kconfig    |  4 +---
>  drivers/pinctrl/mediatek/mtk-eint.h | 28 ----------------------------
>  2 files changed, 1 insertion(+), 31 deletions(-)
> 
> diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
> index f32d3644c509..b6a8d91f4885 100644
> --- a/drivers/pinctrl/mediatek/Kconfig
> +++ b/drivers/pinctrl/mediatek/Kconfig
> @@ -7,8 +7,6 @@ config EINT_MTK
>  	depends on PINCTRL_MTK || PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS || COMPILE_TEST
>  	select GPIOLIB
>  	select IRQ_DOMAIN
> -	default y if PINCTRL_MTK || PINCTRL_MTK_MOORE
> -	default PINCTRL_MTK_PARIS
>  
>  config PINCTRL_MTK
>  	bool
> @@ -20,6 +18,7 @@ config PINCTRL_MTK
>  	select OF_GPIO
>  
>  config PINCTRL_MTK_V2
> +	select EINT_MTK
>  	tristate
>  
>  config PINCTRL_MTK_MOORE
> @@ -38,7 +37,6 @@ config PINCTRL_MTK_PARIS
>  	select PINMUX
>  	select GENERIC_PINCONF
>  	select GPIOLIB
> -	select EINT_MTK
>  	select OF_GPIO
>  	select PINCTRL_MTK_V2

With this modification,PINCTRK_MTK_MOORE always select EINT_MTK
(indirectly via select PINCTRL_MTK_V2).
However, in previous review, Sean Wang said that PINCTRL_MTK_MOORE does
not always use EINT_MTK so PINCTRL_MTK_MOORE shall not select EINT_MTK
un-conditionally.


>  
> diff --git a/drivers/pinctrl/mediatek/mtk-eint.h b/drivers/pinctrl/mediatek/mtk-eint.h
> index 48468d0fae68..f40dab50a5f3 100644
> --- a/drivers/pinctrl/mediatek/mtk-eint.h
> +++ b/drivers/pinctrl/mediatek/mtk-eint.h
> @@ -68,7 +68,6 @@ struct mtk_eint {
>  	const struct mtk_eint_xt *gpio_xlate;
>  };
>  
> -#if IS_ENABLED(CONFIG_EINT_MTK)
>  int mtk_eint_do_init(struct mtk_eint *eint);
>  int mtk_eint_do_suspend(struct mtk_eint *eint);
>  int mtk_eint_do_resume(struct mtk_eint *eint);
> @@ -76,31 +75,4 @@ int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_n,
>  			  unsigned int debounce);
>  int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n);
>  
> -#else
> -static inline int mtk_eint_do_init(struct mtk_eint *eint)
> -{
> -	return -EOPNOTSUPP;
> -}
> -
> -static inline int mtk_eint_do_suspend(struct mtk_eint *eint)
> -{
> -	return -EOPNOTSUPP;
> -}
> -
> -static inline int mtk_eint_do_resume(struct mtk_eint *eint)
> -{
> -	return -EOPNOTSUPP;
> -}
> -
> -static inline int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_n,
> -			  unsigned int debounce)
> -{
> -	return -EOPNOTSUPP;
> -}
> -
> -static inline int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
> -{
> -	return -EOPNOTSUPP;
> -}
> -#endif
>  #endif /* __MTK_EINT_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
