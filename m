Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AED330CB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 12:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auKKYHalVj2Ou3MVgBY0s61vI6tliTDofGAhZFvaW4I=; b=izs3Czrdm04DDi
	Boj9gqysQY/O5blsumIUJsrKm8R87e0WUpDNzrCt/LA0VB1Oxvkuz4AaKVIJ5+WvOyff9Bab238E2
	P2ueiX6H7UDwmJNJVIp6Tjgf5L3u3YX5ah+bila+6nuofP8smhaZlcn3UKAGrhPeJhH1tEJf/buW0
	jVMMYJS4xQkqnb+64bjz/HYeQrQfPmnH6XYzlvemKcdVyUeH+nb3j2zdn1smtm4DQXrOdo3zxA5T8
	fALzwEmQZCJkuj4aNL+LS4USRZ2iRFYeV39bVbC7tfnBEUIMYcb+pNhIvQGWRAF8ngmGUsqpALXSA
	IJM7aCrcYJE9EuOYk2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeuD-0007pz-Gr; Fri, 31 May 2019 10:37:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeu4-0007oy-WD; Fri, 31 May 2019 10:36:54 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4VAapmv036779;
 Fri, 31 May 2019 05:36:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559299011;
 bh=CzbjU0Ihjxmyqaja+55JLIFIki74kmD3t8bDbSvqjsQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vVlAAbHFR3U3keZIRpkjALJwT5cp/90mvTFOeqLELeyEU9sgLoIrDGEQ7hd8QEBxz
 Hm7MeR2XjhsFPSe1WLj01JlcCJf82rr8qc1KXZ+ccvOb2S/JJLw1vvnj0eSQQ8cLkV
 tip2379nJ5CzMkyE3nf29eQdwFAGqVZrkfgjwgqA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4VAappj058923
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 31 May 2019 05:36:51 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 31
 May 2019 05:36:50 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 31 May 2019 05:36:51 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4VAalDs032476;
 Fri, 31 May 2019 05:36:50 -0500
Subject: Re: [PATCH] phy: meson-g12a-usb3-pcie: disable locking for cr_regmap
To: Neil Armstrong <narmstrong@baylibre.com>
References: <20190531103137.14901-1-narmstrong@baylibre.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <4dc22a2e-66ca-0556-3aa3-4ed8887c2b1b@ti.com>
Date: Fri, 31 May 2019 16:05:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190531103137.14901-1-narmstrong@baylibre.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_033653_131744_9A8D15AC 
X-CRM114-Status: GOOD (  17.42  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 31/05/19 4:01 PM, Neil Armstrong wrote:
> Fix the following BUG by disabling locking for the cr_regmap config.

What caused the BUG in the first place? The commit log needs more details or
else this looks like a workaround to mask a BUG.

Thanks
Kishon

> 
> BUG: sleeping function called from invalid context at drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c:85
> in_atomic(): 1, irqs_disabled(): 128, pid: 60, name: kworker/3:1
> [snip]
> Workqueue: events deferred_probe_work_func
> Call trace:
>  dump_backtrace+0x0/0x190
>  show_stack+0x14/0x20
>  dump_stack+0x90/0xb4
>  ___might_sleep+0xec/0x110
>  __might_sleep+0x50/0x88
>  phy_g12a_usb3_pcie_cr_bus_addr.isra.0+0x80/0x1a8
>  phy_g12a_usb3_pcie_cr_bus_read+0x34/0x1d8
>  _regmap_read+0x60/0xe0
>  _regmap_update_bits+0xc4/0x110
>  regmap_update_bits_base+0x60/0x90
>  phy_g12a_usb3_pcie_init+0xdc/0x210
>  phy_init+0x74/0xd0
>  dwc3_meson_g12a_probe+0x2cc/0x4d0
>  platform_drv_probe+0x50/0xa0
>  really_probe+0x20c/0x3b8
>  driver_probe_device+0x68/0x150
>  __device_attach_driver+0xa8/0x170
>  bus_for_each_drv+0x64/0xc8
>  __device_attach+0xd8/0x158
>  device_initial_probe+0x10/0x18
>  bus_probe_device+0x90/0x98
>  deferred_probe_work_func+0x94/0xe8
>  process_one_work+0x1e0/0x338
>  worker_thread+0x230/0x458
>  kthread+0x134/0x138
>  ret_from_fork+0x10/0x1c
> 
> Fixes: 36077e16c050 ("phy: amlogic: Add Amlogic G12A USB3 + PCIE Combo PHY Driver")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> index 6233a7979a93..ac322d643c7a 100644
> --- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
> @@ -188,7 +188,7 @@ static const struct regmap_config phy_g12a_usb3_pcie_cr_regmap_conf = {
>  	.reg_read = phy_g12a_usb3_pcie_cr_bus_read,
>  	.reg_write = phy_g12a_usb3_pcie_cr_bus_write,
>  	.max_register = 0xffff,
> -	.fast_io = true,
> +	.disable_locking = true,
>  };
>  
>  static int phy_g12a_usb3_init(struct phy *phy)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
