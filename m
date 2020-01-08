Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4C133ECD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJi7xFPrNsjieNNbyIApPcb3C5Vt1GxYkuro61AumAE=; b=RRlU2J84KIvJm7
	I8r/PmjkE0s2MPOrw7FDtpx9m8bqXRfcbhDwAnsPA4yFQqdYGqcn91TWOpx72rpqdVDHOMjbIFJvO
	Kpm2oEpujGM8NztGSG8VcFEnK9UhZ0TMUBr2O8E3YgAzyz+Hz+FkQg3gwh4bQrZ+KznBc/LTqPipE
	9w3ISxDp1tGVMO6TjAwZarg/U8HCtxqdssS/ZKvfMMD3Zw2sxasCuOAouVbSbwIrrUGDynFUUPc8F
	A5l7326Ew3luJMCAzNnaXUUrTWUJrFu3Z9zWHVSvtv1wV+PqhszmdE8e3C5J0CZF5SL5wcwsllszY
	TPPOma6xH2HF9NbJKZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip88n-0001MS-6u; Wed, 08 Jan 2020 10:00:41 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip88c-0001LL-LK
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:00:32 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7CE52200019;
 Wed,  8 Jan 2020 10:00:26 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH] arm64: dts: marvell: clearfog-gt-8k: fix switch cpu port
 node
In-Reply-To: <18a7fd3e75a172a7bca9feecfb8a77ecb802d8af.1576751325.git.baruch@tkos.co.il>
References: <18a7fd3e75a172a7bca9feecfb8a77ecb802d8af.1576751325.git.baruch@tkos.co.il>
Date: Wed, 08 Jan 2020 11:00:26 +0100
Message-ID: <875zhmb745.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_020030_833103_33C2E271 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hubert Feurstein <h.feurstein@gmail.com>, Baruch Siach <baruch@tkos.co.il>,
 Denis Odintsov <d.odintsov@traviangames.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baruch,

> Explicitly set the switch cpu (upstream) port phy-mode and managed
> properties. This fixes the Marvell 88E6141 switch serdes configuration
> with the recently enabled phylink layer.
>
> Fixes: a612083327 ("arm64: dts: add support for SolidRun Clearfog GT 8K")
> Reported-by: Denis Odintsov <d.odintsov@traviangames.com>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>


Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index bd881497b872..a211a046b2f2 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -408,6 +408,8 @@ port@5 {
>  				reg = <5>;
>  				label = "cpu";
>  				ethernet = <&cp1_eth2>;
> +				phy-mode = "2500base-x";
> +				managed = "in-band-status";
>  			};
>  		};
>  
> -- 
> 2.24.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
