Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 020EE1ADF0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpqwJaXzWyWjMeozsgWoo+LsskTMEtnNn6TGBXJryaY=; b=jTv9efSzr74Y2s
	Y3SpDijRikE/KdoyZtdJLsg+DyLCNI1EqB/77HNUW3DxpebTQ6KfdE3vWjsp7TsoUWfLDLyAw5/mi
	VrUaWgl75U1BLOAHzmEKk3qKMLVGMHD/uSbKsErUrTpuQNepJ3BsF4GwfNxhMUw/isC+fROWbva/E
	5KKjHgmNGyvbhYeViUo7UHvS4/aGRjTRm1RkPsUs+CS/jPFL6GqcxonizdZaFYab7ASi23EQCWee3
	t/W9/xMe2Saz5WsIV4y4NMwGYhLJZPqXOdYuw8j7IgR+HVEUAWTogaVKe4vvaR2K3wY11SFBhwqbB
	Glqa+ZdbPNKxX/wpDlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRfT-0000yt-Gn; Fri, 17 Apr 2020 14:08:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRfD-0000vA-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:08:17 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200417140813euoutp010cf72b51a192edee6b871ec51fb6fff3~GoJgYgOWn1980719807euoutp01r
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 14:08:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200417140813euoutp010cf72b51a192edee6b871ec51fb6fff3~GoJgYgOWn1980719807euoutp01r
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587132493;
 bh=qVg+SEPM/0z9YTKcycy9JZ5Y8q2c4j3uO9BHU0S+quk=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=I3LAcE0BZCdT4EfmFPslD/K0EZJwrdoUotaq1bnRt0xaE8+lgXOXb6m1jNICrzOqI
 Eu122Y54Smi7FkrGudChQJUcYJKgcCxrLndfk36VHLZP+BiBw0jr/8G7VshxCMGIUW
 2CeoF6B+UapiYx/HJivWgXuga64tiXAJ5hGz6xkw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200417140813eucas1p295aee26f71362573e63be4bf24402a19~GoJgP40-72062420624eucas1p2G;
 Fri, 17 Apr 2020 14:08:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id B4.FF.60679.D48B99E5; Fri, 17
 Apr 2020 15:08:13 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200417140813eucas1p1ba86eef1887aa2ba94ee623556b96ce4~GoJgBExEv1657716577eucas1p1A;
 Fri, 17 Apr 2020 14:08:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417140813eusmtrp1a59efe181cbea78acf7f2ad6e3e6ae6b~GoJgAgcb-2264522645eusmtrp1Q;
 Fri, 17 Apr 2020 14:08:13 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-08-5e99b84d74f2
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FF.C2.08375.D48B99E5; Fri, 17
 Apr 2020 15:08:13 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200417140813eusmtip259dc3efbf64561e1c2e54f6396455b30~GoJfxI_p50111701117eusmtip28;
 Fri, 17 Apr 2020 14:08:13 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH v2 RESEND] ARM/fbdev: sa11x0: Switch to use GPIO
 descriptors
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <3d59b361-f03d-72fd-21a5-1249cd204346@samsung.com>
Date: Fri, 17 Apr 2020 16:08:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200415165055.193113-1-linus.walleij@linaro.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHKsWRmVeSWpSXmKPExsWy7djP87q+O2bGGXzqVrO48vU9m8WUP8uZ
 LDY9vsZqcaLvA6vFoal7GR1YPS5fu8jscefaHjaP+93HmTw2L6n3+LxJLoA1issmJTUnsyy1
 SN8ugSvj78q9bAVdqhWnu36zNzBulOti5OSQEDCReNB/jb2LkYtDSGAFo8SkNReZQRJCAl8Y
 JeZeFIRIfGaUuHDyBlMXIwdYx6/LPBDx5YwS2zfuYoNw3jJK/Ni0iR2km03ASmJi+ypGEFtY
 IEji05FLLCC2iICORPe2n6wgDcwCfYwS7YchErwCdhJLHz9lArFZBFQlfh+8B3aGqECExKcH
 h1khagQlTs58AlbPKWAvsfDiTbAaZgFxiVtP5jNB2PIS29/OYYb4bRm7xKz9KRC2i8Tzg+uh
 4sISr45vYYewZSROT+5hATlIQmAdo8TfjhfMEM52Ronlk/+xQVRZS9w594sN5H9mAU2J9bv0
 IUHhKLHhjAyEySdx460gxAl8EpO2TWeGCPNKdLQJQcxQk9iwbAMbzNaunSuZJzAqzULy2Cwk
 z8xC8swshLULGFlWMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBKaa0/+Of9nBuOtP0iFG
 AQ5GJR5eg56ZcUKsiWXFlbmHGCU4mJVEeA+6AYV4UxIrq1KL8uOLSnNSiw8xSnOwKInzGi96
 GSskkJ5YkpqdmlqQWgSTZeLglGpg3Mn4V8pUZTJz2PfudRIX023DWLboFX3oNFrkOlslTOSq
 8s81lR8sJxw/uyLUpW/zCtGV+rla32R3dm94VOQWdeJfStByyfzvwp3ppg57bjW3bGWqvmt4
 7mlJiMcP/cMM0Rfnr/0ddP3e1YoT1/2NJse5H1lbnR5+rWVDqZSfVudKrU1RqxfmK7EUZyQa
 ajEXFScCAIYNTJAxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEIsWRmVeSWpSXmKPExsVy+t/xe7q+O2bGGfRuEbe48vU9m8WUP8uZ
 LDY9vsZqcaLvA6vFoal7GR1YPS5fu8jscefaHjaP+93HmTw2L6n3+LxJLoA1Ss+mKL+0JFUh
 I7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUnsyy1SN8uQS/j78q9bAVdqhWnu36z
 NzBulOti5OCQEDCR+HWZp4uRi0NIYCmjRH/fNzaIuIzE8fVlXYycQKawxJ9rXWwQNa8ZJTp2
 3mIBSbAJWElMbF/FCGILCwRJfDpyCSwuIqAj0b3tJytIA7NAH6PE2f3bmCG6JzFKzF93lhWk
 ilfATmLp46dMIDaLgKrE74P3mEFsUYEIicM7ZjFC1AhKnJz5BGwqp4C9xMKLN8FqmAXUJf7M
 uwRli0vcejKfCcKWl9j+dg7zBEahWUjaZyFpmYWkZRaSlgWMLKsYRVJLi3PTc4sN9YoTc4tL
 89L1kvNzNzEC42vbsZ+bdzBe2hh8iFGAg1GJh9egZ2acEGtiWXFl7iFGCQ5mJRHeg25AId6U
 xMqq1KL8+KLSnNTiQ4ymQM9NZJYSTc4Hxn5eSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS
 1OzU1ILUIpg+Jg5OqQbGCQbXAtInKLjtu79dp+Fl4BvvG1nhh6RsVB9Y9m14uuHM/OIXX1vW
 RDJGLzB+uqNcMXFarsuP1J3Z637VLBU/EOj6KDFB9vysY0e3f1vGqiHS33DmpUCmjewsxX1H
 87prpmV0f/9qqDFbPCOtIejBMcftV0yuqvC4vw271CFYsyifw8RwX/09JZbijERDLeai4kQA
 CxjLc8UCAAA=
X-CMS-MailID: 20200417140813eucas1p1ba86eef1887aa2ba94ee623556b96ce4
X-Msg-Generator: CA
X-RootMTR: 20200415165304eucas1p10c482d296221ac1087d35c9cc6045171
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415165304eucas1p10c482d296221ac1087d35c9cc6045171
References: <CGME20200415165304eucas1p10c482d296221ac1087d35c9cc6045171@eucas1p1.samsung.com>
 <20200415165055.193113-1-linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_070815_450615_E88F6427 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


[ added dri-devel ML to Cc: ]

On 4/15/20 6:50 PM, Linus Walleij wrote:
> This converts the SA11x0 frame buffer driver to use
> GPIO descriptors. Get the GPIO optional and register
> a look-up table specifically for the Shannon machine.
> 
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Patch queued for v5.8, thanks.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> ---
> ChangeLog v1->v2:
> - Rename the GPIO line to "shannon-lcden" as this GPIO
>   line has semantics that are particular to the Shannon
>   platform.
> ---
>  arch/arm/mach-sa1100/shannon.c |  9 +++++++++
>  drivers/video/fbdev/sa1100fb.c | 20 +++++++++-----------
>  drivers/video/fbdev/sa1100fb.h |  3 +++
>  3 files changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/mach-sa1100/shannon.c b/arch/arm/mach-sa1100/shannon.c
> index 5bc82e2671c6..351f891b4842 100644
> --- a/arch/arm/mach-sa1100/shannon.c
> +++ b/arch/arm/mach-sa1100/shannon.c
> @@ -104,6 +104,14 @@ static struct fixed_voltage_config shannon_cf_vcc_pdata __initdata = {
>  	.enabled_at_boot = 1,
>  };
>  
> +static struct gpiod_lookup_table shannon_display_gpio_table = {
> +	.dev_id = "sa11x0-fb",
> +	.table = {
> +		GPIO_LOOKUP("gpio", 22, "shannon-lcden", GPIO_ACTIVE_HIGH),
> +		{ },
> +	},
> +};
> +
>  static void __init shannon_init(void)
>  {
>  	sa11x0_register_fixed_regulator(0, &shannon_cf_vcc_pdata,
> @@ -113,6 +121,7 @@ static void __init shannon_init(void)
>  	sa11x0_register_pcmcia(0, &shannon_pcmcia0_gpio_table);
>  	sa11x0_register_pcmcia(1, &shannon_pcmcia1_gpio_table);
>  	sa11x0_ppc_configure_mcp();
> +	gpiod_add_lookup_table(&shannon_display_gpio_table);
>  	sa11x0_register_lcd(&shannon_lcd_info);
>  	sa11x0_register_mtd(&shannon_flash_data, &shannon_flash_resource, 1);
>  	sa11x0_register_mcp(&shannon_mcp_data);
> diff --git a/drivers/video/fbdev/sa1100fb.c b/drivers/video/fbdev/sa1100fb.c
> index 2d285cc384cf..3e6e13f7a831 100644
> --- a/drivers/video/fbdev/sa1100fb.c
> +++ b/drivers/video/fbdev/sa1100fb.c
> @@ -173,7 +173,7 @@
>  #include <linux/init.h>
>  #include <linux/ioport.h>
>  #include <linux/cpufreq.h>
> -#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/mutex.h>
> @@ -799,8 +799,8 @@ static void sa1100fb_enable_controller(struct sa1100fb_info *fbi)
>  	writel_relaxed(fbi->dbar2, fbi->base + DBAR2);
>  	writel_relaxed(fbi->reg_lccr0 | LCCR0_LEN, fbi->base + LCCR0);
>  
> -	if (machine_is_shannon())
> -		gpio_set_value(SHANNON_GPIO_DISP_EN, 1);
> +	if (fbi->shannon_lcden)
> +		gpiod_set_value(fbi->shannon_lcden, 1);
>  
>  	dev_dbg(fbi->dev, "DBAR1: 0x%08x\n", readl_relaxed(fbi->base + DBAR1));
>  	dev_dbg(fbi->dev, "DBAR2: 0x%08x\n", readl_relaxed(fbi->base + DBAR2));
> @@ -817,8 +817,8 @@ static void sa1100fb_disable_controller(struct sa1100fb_info *fbi)
>  
>  	dev_dbg(fbi->dev, "Disabling LCD controller\n");
>  
> -	if (machine_is_shannon())
> -		gpio_set_value(SHANNON_GPIO_DISP_EN, 0);
> +	if (fbi->shannon_lcden)
> +		gpiod_set_value(fbi->shannon_lcden, 0);
>  
>  	set_current_state(TASK_UNINTERRUPTIBLE);
>  	add_wait_queue(&fbi->ctrlr_wait, &wait);
> @@ -1173,12 +1173,10 @@ static int sa1100fb_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	if (machine_is_shannon()) {
> -		ret = devm_gpio_request_one(&pdev->dev, SHANNON_GPIO_DISP_EN,
> -			GPIOF_OUT_INIT_LOW, "display enable");
> -		if (ret)
> -			return ret;
> -	}
> +	fbi->shannon_lcden = gpiod_get_optional(&pdev->dev, "shannon-lcden",
> +						GPIOD_OUT_LOW);
> +	if (IS_ERR(fbi->shannon_lcden))
> +		return PTR_ERR(fbi->shannon_lcden);
>  
>  	/* Initialize video memory */
>  	ret = sa1100fb_map_video_memory(fbi);
> diff --git a/drivers/video/fbdev/sa1100fb.h b/drivers/video/fbdev/sa1100fb.h
> index d0aa33b0b88a..b4363444fa5d 100644
> --- a/drivers/video/fbdev/sa1100fb.h
> +++ b/drivers/video/fbdev/sa1100fb.h
> @@ -10,6 +10,8 @@
>   * for more details.
>   */
>  
> +struct gpio_desc;
> +
>  #define LCCR0           0x0000          /* LCD Control Reg. 0 */
>  #define LCSR            0x0004          /* LCD Status Reg. */
>  #define DBAR1           0x0010          /* LCD DMA Base Address Reg. channel 1 */
> @@ -33,6 +35,7 @@ struct sa1100fb_info {
>  	struct device		*dev;
>  	const struct sa1100fb_rgb *rgb[NR_RGB];
>  	void __iomem		*base;
> +	struct gpio_desc	*shannon_lcden;
>  
>  	/*
>  	 * These are the addresses we mapped
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
