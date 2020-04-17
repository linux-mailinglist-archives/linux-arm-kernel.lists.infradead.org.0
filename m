Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F29E1ADBD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 13:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXK9b70I/eIwnfLjl16dxP4tDiPr1wDfVM+6yO34In8=; b=G+nTApl+viwi2E
	uINARiypdVaQ2PVh0N0HSRHMC2T6QBbwtOShBxkl2TQwmGBMTvhNfGvsyeppU8tfZBd8Hm6BQ/p5L
	7pPvSXNE3lH9jnH5y4ON3tDVgaOpJWONrrfOU/yJbSpMD/cTQJg3EgmMh0HWhBwm1h7CrIbJzWGys
	W+Ix2jeFv3wpU9iChrTpPTSsNStmDWH9xv+coH5h5h/cWxNIuE2sDgTe4aFhw/Iq1zU7/B+M0gnBS
	mT7toVt0fjoLIRyaVzVA65VuNX6cBxYt2NdzNYJ0Q7ySHPsCX7Rb9pbyN4g0rnBFodoYrNFITZLug
	SognRyNnTlY7uNH/un2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOoW-0003Gf-1r; Fri, 17 Apr 2020 11:05:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOoN-0003Fm-8C; Fri, 17 Apr 2020 11:05:33 +0000
Received: from p57b77c7a.dip0.t-ipconnect.de ([87.183.124.122]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jPOoK-0003KN-CI; Fri, 17 Apr 2020 13:05:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: add core devicetree for rk3318
Date: Fri, 17 Apr 2020 13:05:27 +0200
Message-ID: <2141402.AJMLQ3pQEO@phil>
In-Reply-To: <20200417105739.3718-1-jbx6244@gmail.com>
References: <20200417105739.3718-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_040531_292450_4450A949 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 17. April 2020, 12:57:39 CEST schrieb Johan Jonker:
> The rk3318 is basically a rk3328 with improved gpu,
> so add a dtsi based on that.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Please don't add dangling dtsi files.
I'd expect at least a board dts to actually use that and
also the updated gpu node.

From a cursory glance it looks like it gets upgraded from
450-MP2 to 450MP3 or so, so that would at least mean
another set of interrupts.

Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3318.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3318.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3318.dtsi b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
> new file mode 100644
> index 000000000..a32f771bc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3318.dtsi
> @@ -0,0 +1,3 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +#include "rk3328.dtsi"
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
