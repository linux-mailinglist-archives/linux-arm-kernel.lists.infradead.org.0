Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8792FE0831
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BnB+1htBQw5gS+Wx8/C+dDMBFYVxFyBhIiQf8ucRwI=; b=q/irMmjmB88R6R
	3j1FO6j+IGR4hYPZDaA5IJ47y89Ka0DHFRGnDCaAa2RKxLxF9MBBlLSJAsCs12cTcTIYtl+uE0H6r
	OlvkjQ++TTuMglSdqCVDcbwg+tLm6onuDyufvCklKo6nZMD5GCSwW3jI2HzGuRg5dEN25XlaHJykT
	x3ejE9EFBhNzxlHLUfspNnzX5E8i3Dm4SMyKXMrU6CcJxkCYKjXwa69cll4C7IGQ4jaemAiZAo5pU
	aJhl56bwz/5rBGJ7qb03YUuaE/zk+hobyULIAC57OaDWXW/urokJPxhEXR+ulAQrghaXoLFRod7bv
	dmn6Pd7Iq0lQ2zLQgtBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwdr-0004AA-Ly; Tue, 22 Oct 2019 16:04:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwdi-000495-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:04:07 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iMwdg-0007pH-Oh; Tue, 22 Oct 2019 18:04:05 +0200
Message-ID: <b42947d0d5cc2266073b85d8302442de395ed02b.camel@pengutronix.de>
Subject: Re: [PATCH 3/3] ARM: dts: imx6qdl-zii-rdu2: Specify supplies for
 accelerometer
From: Lucas Stach <l.stach@pengutronix.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Tue, 22 Oct 2019 18:03:49 +0200
In-Reply-To: <20191022040500.18548-3-andrew.smirnov@gmail.com>
References: <20191022040500.18548-1-andrew.smirnov@gmail.com>
 <20191022040500.18548-3-andrew.smirnov@gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_090406_404062_28FB43F5 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, den 21.10.2019, 21:05 -0700 schrieb Andrey Smirnov:
> Specify 'vdd' and 'vddio' supplies for accelerometer to avoid warnings
> during boot.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org,
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> index a8c86e621b49..42c0a728216d 100644
> --- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
> @@ -360,6 +360,8 @@
>  		interrupt-parent = <&gpio1>;
>  		interrupt-names = "INT2";
>  		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
> +		vdd-supply = <&reg_3p3v>;
> +		vddio-supply = <&reg_3p3v>;
>  	};
>  
>  	hpa2: amp@60 {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
