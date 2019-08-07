Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDED854DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 23:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vSxFDYvtxXdF3sh8avL7LJwL28uLqRABHNk0ikDG7Y=; b=dJ56dYMiQSzaOb
	pKEx45r9q/qaEIfT3+ooXAY1SsHTnNOw//pD1IUcrj9uBxqQ9bNUDgmfPe2pwBwNCCxmx06GPBFZm
	0ao+3xYSn706D83ZCBe3f0MD0OfyBEJnCKvHzzRV8NXjjcGGxREwhd50NUnq8V+5/usFcSelPKEJ6
	/IH61G4XED1lGQkxwu4wK1wG0bVUPN/hOGjqjlBx2Ye/f3LYVrS3LAvLd6e/VwimD3ztaxT8hX8TI
	uD5ZI9jmyc7ASdIacb4UvyzzxXKoFWH4zK+ZKyph4Vgk+VgiZFHUdnOy38hkMgC2OQtUuibbx5COo
	Kh5h+HJ7g12mumfZqneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvT5e-0002kJ-5L; Wed, 07 Aug 2019 21:03:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvT5R-0002jW-09; Wed, 07 Aug 2019 21:03:10 +0000
Received: from ip5f5a6044.dynamic.kabel-deutschland.de ([95.90.96.68]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hvT5G-0003Vr-GS; Wed, 07 Aug 2019 23:02:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Nathan Chancellor <natechancellor@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] phy-rockchip-inno-hdmi: Fix
 RK3328_TERM_RESISTOR_CALIB_SPEED_7_0's third value
Date: Wed, 07 Aug 2019 23:02:57 +0200
Message-ID: <5866399.zOWMQKR7fF@diego>
In-Reply-To: <20190807192305.6604-1-natechancellor@gmail.com>
References: <20190807192305.6604-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_140309_195862_07C4CC6E 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "kernelci . org bot" <bot@kernelci.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 7. August 2019, 21:23:05 CEST schrieb Nathan Chancellor:
> After commit "linux/bits.h: Add compile time sanity check of GENMASK
> inputs" [1], arm64 defconfig builds started failing:
> 
> In file included from ../include/linux/bits.h:22,
>                  from ../include/linux/bitops.h:5,
>                  from ../include/linux/kernel.h:12,
>                  from ../include/linux/clk.h:13,
>                  from ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:9:
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c: In function 'inno_hdmi_phy_rk3328_power_on':
> ../include/linux/build_bug.h:16:45: error: negative width in bit-field '<anonymous>'
>    16 | #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
>       |                                             ^
> ../include/linux/bits.h:24:18: note: in expansion of macro 'BUILD_BUG_ON_ZERO'
>    24 |  ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
>       |                  ^~~~~~~~~~~~~~~~~
> ../include/linux/bits.h:39:3: note: in expansion of macro 'GENMASK_INPUT_CHECK'
>    39 |  (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
>       |   ^~~~~~~~~~~~~~~~~~~
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: in expansion of macro 'GENMASK'
>    24 | #define UPDATE(x, h, l)  (((x) << (l)) & GENMASK((h), (l)))
>       |                                          ^~~~~~~
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note: in expansion of macro 'UPDATE'
>   201 | #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)  UPDATE(x, 7, 9)
>       |                                                  ^~~~~~
> ../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: note: in expansion of macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
>  1046 |   inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
>       |                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> As pointed out by Robin and Guenter, inno_write's val argument is an
> 8-bit value so having a mask larger than that doesn't make sense. This
> also matches the rest of the *_7_0 macros in this driver.
> 
> [1]: https://lore.kernel.org/lkml/20190801230358.4193-2-rikard.falkeborn@gmail.com/
> 
> Reported-by: Andrzej Hajda <a.hajda@samsung.com>
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

on a rk3328-rock64 hdmi output still works
Tested-by: Heiko Stuebner <heiko@sntech.de>

@Kishon: Would probably be good to get this fast into 5.3-rc.


Heiko


>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> index b10a84cab4a7..2b97fb1185a0 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -198,7 +198,7 @@
>  #define RK3328_BYPASS_TERM_RESISTOR_CALIB		BIT(7)
>  #define RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(x)	UPDATE((x) >> 8, 6, 0)
>  /* REG:0xc6 */
> -#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 9)
> +#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 0)
>  /* REG:0xc7 */
>  #define RK3328_TERM_RESISTOR_50				UPDATE(0, 2, 1)
>  #define RK3328_TERM_RESISTOR_62_5			UPDATE(1, 2, 1)
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
