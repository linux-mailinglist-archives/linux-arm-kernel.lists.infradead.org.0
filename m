Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6197FC199B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 23:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNWB1e0JiCGqPes2WXQWunM9//HtHcQx/s0vyC9koOU=; b=GIiKB3SlH8l6PX
	5WlDFY8CN3bANpn5fRjYrzHzfUycEG6Uf80OABSUICS35GSzmQJ9bvLsSq6xobCfqXv1mx/mgtJqt
	LRVBowev0mXhjpJ9Po6UjRbU6AqvkIKxT+YPpIPDM5mxEpedfmqD01UmP1NkccrK0kBjBlG9bpX/1
	G4W9Trmoluo0hQjEoYU0BSu3Kbz1CzY+GLo4Aao31D2bklDU+4TapNW/zJYeFIr7+5JEn1n74HOcB
	f6U2IgzjKDNvX8YlR3BiOy/TJndsE3OYuSmoYbW99zoxhUjOue/tI/amwSk3RE+IJReoj1LPd8LVO
	28HdBvTmVUMhsjFr6hNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEgo3-0005CF-MU; Sun, 29 Sep 2019 21:32:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEgnr-0005Bh-4u; Sun, 29 Sep 2019 21:32:28 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iEgnj-0001dK-PT; Sun, 29 Sep 2019 23:32:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Rename roc-pc with libretech
 notation
Date: Sun, 29 Sep 2019 23:32:18 +0200
Message-ID: <4177305.6QI6aNXrAv@phil>
In-Reply-To: <20190919052822.10403-5-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-5-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_143227_338326_9217104D 
X-CRM114-Status: GOOD (  16.59  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Da Xue <da@lessconfused.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jagan,

Am Donnerstag, 19. September 2019, 07:28:20 CEST schrieb Jagan Teki:
> Though the ROC-PC is manufactured by firefly, it is co-designed
> by libretch like other Libretech computer boards from allwinner,
> amlogic does.
> 
> So, it is always meaningful to keep maintain those vendors who
> are part of design participation so-that the linux mainline
> code will expose outside world who are the makers of such
> hardware prototypes.
> 
> So, rename the existing rk3399-roc-pc.dts with libretch notation,
> rk3399-libretech-roc-rk3399-pc.dts
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile                           | 2 +-
>  .../{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts}   | 0

Somewhat "randomly" renaming files for "exposure" of the maker isn't the
way to go. Especially as the file name itself is merely a handle and not
meant for fame. The board filename should mainly enable developers to
hopefully the correct board file to use/change - and "rk3399-roc-pc"
is sufficiently unique to do that.

Similar to how the NanoPi boards do that.

And renames not only loose the history of changes but also in this case
the file is in the kernel since july 2018 - more than a year, so this might
actually affect the workflow of someone.

So I'd really expect an actual technical reason for a rename.

Heiko


>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename arch/arm64/boot/dts/rockchip/{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts} (100%)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 1f18a9392d15..73c10ddb4300 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -21,12 +21,12 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-captain.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-v.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-leez-p710.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-libretech-roc-rk3399-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
> similarity index 100%
> rename from arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> rename to arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
