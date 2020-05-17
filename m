Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A8A1D68BA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q7EMeKmr8OiyMxkpe1rFHFLusWYlCnVpbnOqHFPsQ4=; b=iBvW2F8tdlzOuO
	Cxp6IQYuyby31Imxro4PdYBtHBLdK2aV0nz+d5BKiq2Rf6bVTdOdM378ajPKc7Gid+t+zZNaZmag7
	p3nWzN7/0GqgenmWVRCBfIijsgV1tFWgnE0jEGmrk/ERL1ArOjQJpz5EWRyh7eKUw+vOmEkCwvnLe
	hPruyueRn1OYwLBoQrNxFahE+GK9UAHj3Pq7eqnDsG68DHo741gmTcHBBkRbpP5XZPQLBa2MWNgVm
	IuDMOgJxyahKuAXuf/5j1yudqAPZF8vno9hQe5h0Auu2uxXvS/EHd+Eq5Bq52JWPvJhcMBqz3XKya
	1C8Lj+ZkVY7Qqv/zqXaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaLjg-0005cM-Du; Sun, 17 May 2020 16:01:56 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaLjY-0005bK-KB
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:01:50 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 54695FF804;
 Sun, 17 May 2020 16:01:32 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: marvell: drop i2c timeout-ms property
In-Reply-To: <26aad6ac18993b78496ea224337d9944878fcc81.1588134636.git.baruch@tkos.co.il>
References: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
 <26aad6ac18993b78496ea224337d9944878fcc81.1588134636.git.baruch@tkos.co.il>
Date: Sun, 17 May 2020 18:01:32 +0200
Message-ID: <87mu66h7oj.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_090148_804287_3C8C3C2A 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Baruch,

> The timeout-ms property for i2c master nodes is undocumented, and as
> never been supported. Drop it.
>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
> index e7438c21ccee..7f9b9a647717 100644
> --- a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
> @@ -201,7 +201,6 @@ i2c0: i2c@511000 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
> -				timeout-ms = <1000>;
>  				clocks = <&ap_clk 3>;
>  				status = "disabled";
>  			};
> -- 
> 2.26.2
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
