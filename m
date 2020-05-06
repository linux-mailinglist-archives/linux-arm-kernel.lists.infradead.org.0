Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74971C77B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 19:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syOIDWfLOknsPHcKgUyrRQyf9kCRDK4lYQ2GJASC0dQ=; b=t1qUJsIJT54eKF
	QA4pSkk0bcyUhQm3VHjsem9gM51LNTVZxIG+9RYUWPwtGV8M7fieoaz+9u7ikpDvcoOZKXFM8koX7
	tnFUvRDdNxIHLeexxYuDpfcNQb8f0n9UQeZr5PSq7+7a5rs6F2GDpdEc2zFo9KJCAXOP5vdXM9hUk
	7gaiRkm5y0xZS9S82TMJUmiXlDytztdzGJmrVJe+b3U+Dn9tu7Ce6RarPr0QQ8j1eyc20BjMVIyqH
	wLljTa+bGXt234pA8fCDtcDGdiz2X0vAcs5MAKiGB2R4jcWUIl6NABVn/419Ss5ACpUTQl7Dpo0C9
	F5EMGwBejrTqapgLW3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNk5-0007g6-UR; Wed, 06 May 2020 17:21:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWNjy-0007fM-0l; Wed, 06 May 2020 17:21:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 00E752A1E8A
Subject: Re: [PATCH] soc: mediatek: mmsys: Drop <linux/clk-provider.h>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Matthias Brugger <matthias.bgg@gmail.com>, CK Hu <ck.hu@mediatek.com>
References: <20200506120204.31422-1-geert+renesas@glider.be>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <56149461-e60a-a1a0-a43c-67a9913bd7f6@collabora.com>
Date: Wed, 6 May 2020 19:21:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506120204.31422-1-geert+renesas@glider.be>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_102150_197904_BE822F7A 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thank you for your patch.

On 6/5/20 14:02, Geert Uytterhoeven wrote:
> After the split, the mt8173 MMSYS driver is no longer a clock provider,
> and thus does not need to include <linux/clk-provider.h>.
> 
> Fixes: 13032709e2328553 ("clk / soc: mediatek: Move mt8173 MMSYS to platform driver")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>  drivers/soc/mediatek/mtk-mmsys.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
> index 05e322c9c301ad91..bb5ccd5b0386c041 100644
> --- a/drivers/soc/mediatek/mtk-mmsys.c
> +++ b/drivers/soc/mediatek/mtk-mmsys.c
> @@ -4,7 +4,6 @@
>   * Author: James Liao <jamesjj.liao@mediatek.com>
>   */
>  
> -#include <linux/clk-provider.h>
>  #include <linux/device.h>
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
