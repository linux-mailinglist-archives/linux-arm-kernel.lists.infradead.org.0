Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF71EFBD2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5Qnco1XNQvRGjNioecOY68sGkcPtBqqo5ftyZZkZvo=; b=tssDiokNKp4Rym
	TM2kawoD244yjYDR6uT4oNshbXvFz4948hFTmettcL2emYqITikx/sGLw1H8XN6+G2JPHL9MGV9i1
	aKfUHZJVhEECAqsE1ZXAlh32JbQHuyPPtQyYGAY/EIGFg1kvnq0A8//diDQYX1RKcnmsWvOsaVFPH
	zBoKqPCSGnrXBQjEqgy+kJxaoulw3cYEGL44xHD4vSSzaJ/KyjmJRSmvTwLukOxcQeG9Dln6CpQD3
	szfUHOcDQ9iXuXXFmKVRTRDAqhCZHRupEoxD7R0WyjrupINhsE6huSL2eAsucQxeQYmtKuFp3jmg6
	iEZN6A/+ccU3laPFAH+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwQy-0006FW-2S; Tue, 05 Nov 2019 10:51:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwQj-0006DS-4v; Tue, 05 Nov 2019 10:51:22 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iRwQf-00073a-7H; Tue, 05 Nov 2019 11:51:17 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] phy-rockchip-inno-hdmi: fix spelling mistake "Innosilion"
 -> "Innosilicon"
Date: Tue, 05 Nov 2019 11:51:16 +0100
Message-ID: <1850187.4m7IYqKVMe@diego>
In-Reply-To: <20191105105026.50581-1-colin.king@canonical.com>
References: <20191105105026.50581-1-colin.king@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_025121_335183_D14F6A8A 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Dienstag, 5. November 2019, 11:50:26 CET schrieb Colin King:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in the module description. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> index 2b97fb1185a0..91923209a026 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
> @@ -1273,5 +1273,5 @@ static struct platform_driver inno_hdmi_phy_driver = {
>  module_platform_driver(inno_hdmi_phy_driver);
>  
>  MODULE_AUTHOR("Zheng Yang <zhengyang@rock-chips.com>");
> -MODULE_DESCRIPTION("Innosilion HDMI 2.0 Transmitter PHY Driver");
> +MODULE_DESCRIPTION("Innosilicon HDMI 2.0 Transmitter PHY Driver");
>  MODULE_LICENSE("GPL v2");
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
