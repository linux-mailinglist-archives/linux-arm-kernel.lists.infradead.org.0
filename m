Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB0716358
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnCM4n9jjKJLbi//6SsSiIKzLZb9aCJd3x+eZJ6E5IU=; b=LYPXKKyAoUQHNv
	+VKD1LMw7rAhNDzDrIjljZ2Qb5IZv1SEkudKjs8Ba76JHfi9sZRGWz56eyZpp06keM52EfLqKUxu9
	9ZYQh3flljUrfs1Thib0ncvc+rfRT6R+gBq4WEjRDcD/3j8EFGq3xz6Z5dvnnmFmGny0UVGQQXBZ8
	iwBxI2BF7ZdaAKmAUX/VEx6yogKZRuMwehgVi9KxbU5yvxYXH4DsFuanL1qgWpudKu5f+eJLfpzbj
	WWiOp+rtW6KCt4O+F/zVOyO6w6t7SCy2TgD6reuKTI3sSr9IjphM0AITz+GZYdm3Q0Ogus0LbiSsH
	a6e98qw1G2R5rhQje0UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNynu-00058k-U9; Tue, 07 May 2019 12:02:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNynm-00057D-Gv; Tue, 07 May 2019 12:02:31 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNyng-0008JL-Cc; Tue, 07 May 2019 14:02:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Make rk3288-veyron-mickey's emmc work
 again
Date: Tue, 07 May 2019 14:02:23 +0200
Message-ID: <3454489.epEtZypnqP@phil>
In-Reply-To: <20190503234537.230177-1-dianders@chromium.org>
References: <20190503234537.230177-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_050230_713256_B2CFF646 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 amstan@chromium.org, Shawn Lin <shawn.lin@rock-chips.com>,
 briannorris@chromium.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 4. Mai 2019, 01:45:37 CEST schrieb Douglas Anderson:
> When I try to boot rk3288-veyron-mickey I totally fail to make the
> eMMC work.  Specifically my logs (on Chrome OS 4.19):
> 
>   mmc_host mmc1: card is non-removable.
>   mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
>   mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
>   mmc1: switch to bus width 8 failed
>   mmc1: switch to bus width 4 failed
>   mmc1: new high speed MMC card at address 0001
>   mmcblk1: mmc1:0001 HAG2e 14.7 GiB
>   mmcblk1boot0: mmc1:0001 HAG2e partition 1 4.00 MiB
>   mmcblk1boot1: mmc1:0001 HAG2e partition 2 4.00 MiB
>   mmcblk1rpmb: mmc1:0001 HAG2e partition 3 4.00 MiB, chardev (243:0)
>   mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
>   mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
>   mmc1: switch to bus width 8 failed
>   mmc1: switch to bus width 4 failed
>   mmc1: tried to HW reset card, got error -110
>   mmcblk1: error -110 requesting status
>   mmcblk1: recovery failed!
>   print_req_error: I/O error, dev mmcblk1, sector 0
>   ...
> 
> When I remove the '/delete-property/mmc-hs200-1_8v' then everything is
> hunky dory.
> 
> That line comes from the original submission of the mickey dts
> upstream, so presumably at the time the HS200 was failing and just
> enumerating things as a high speed device was fine.  ...or maybe it's
> just that some mickey devices work when enumerating at "high speed",
> just not mine?
> 
> In any case, hs200 seems good now.  Let's turn it on.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
