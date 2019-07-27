Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A588677A4A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 17:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4ZxMVQefIfJFSY1PfVsCoRunqJeuSeNac6G3dTI6A8=; b=X1gyd0QYbqFPdl
	trMvpoHiCzvltNJRNWDMbjIzOcSlacolpJ4yYKnww4T8XAb8GaOCJTQLFrZfdBeXA8mHETRHkzcPn
	uiFGSRjvWmZhFLua8QVdqeqNgXL6PdCF/JjUFP6rMuxc0R9Hbwzmpsy4/Zx//BuX+lDhvS3OqIRkf
	vDkSMWrxf5v9i8lOLbVM5RIAvI7BA5SOuxPGYplCwjFjZI55V7SWDEDj7+Ezvi654dzFSJo4THQjX
	C36luUHws1Zz37mL9K1ninHRoBJTE2DG7AyKYYckMNoViD5tr7aKIbotgA7UgkneImwu01an9mzhE
	599PT7IvGG64T78BycTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOhq-0008RU-9K; Sat, 27 Jul 2019 15:33:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOhc-0008Qw-5X; Sat, 27 Jul 2019 15:33:45 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hrOhX-0002VP-9k; Sat, 27 Jul 2019 17:33:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Add missing unit address to
 memory node on rk3288-veyron
Date: Sat, 27 Jul 2019 17:33:38 +0200
Message-ID: <86910491.m50tbimVMv@phil>
In-Reply-To: <20190727142736.23188-2-krzk@kernel.org>
References: <20190727142736.23188-1-krzk@kernel.org>
 <20190727142736.23188-2-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_083344_354964_47E5F8C0 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

Am Samstag, 27. Juli 2019, 16:27:36 CEST schrieb Krzysztof Kozlowski:
> Fix DTC warning:
> 
>     arch/arm/boot/dts/rk3288-veyron.dtsi:21.9-24.4:
>     Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name

please see the comment directly above the memory node on why that needs
to stay that way. So no, we'll keep the veyron memory node as is.


Heiko

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 8fc8eac699bf..02243ff46a65 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -18,7 +18,7 @@
>  	 * The default coreboot on veyron devices ignores memory@0 nodes
>  	 * and would instead create another memory node.
>  	 */
> -	memory {
> +	memory@0 {
>  		device_type = "memory";
>  		reg = <0x0 0x0 0x0 0x80000000>;
>  	};
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
