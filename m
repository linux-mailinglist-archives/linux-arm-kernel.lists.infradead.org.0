Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B246170F7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ptj5F53Awq5rYqSKGm/W+kqLWqhtGGiTFwUzJ7qw5Tk=; b=dlP2ufCMyzxeW+
	QIEsGj/0DGnFRfo1H3BqgLUYwwIK7c6OhTFvL6x5j9ErsckziCeuJSmefEh59NnmM7zXKw3mroomD
	TuCW39mQBP6gFTlhv34VAhHPrdQSFNfHjwZS5nsofePB6ql1/+axbPIlempRkQBtKNtsS925iX1L3
	8zPqrwdeddjj8rsWnGLZmZp4gsAcYlfWiVgsC81+BKcXEbX2kI7Tz8WugSR29Ggoz0sh5NdFjCOeW
	KEUhrw6rxNGQHG4QFHX3SfhwziCyrxbRg28VmWeXOI/K+sC4Bd+EbxB6e7WuCPFtpzB3TEXOkILP8
	wg7oa73dPU1wkquiEKPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AWm-0005vQ-6p; Thu, 27 Feb 2020 04:12:00 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7AWb-0005uJ-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:11:50 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R4AhSr022499
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:10:46 -0600
Message-ID: <c1f990ad2fd35deeba9e4e937cb19ee5080ea2a8.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 5/7] ARM: dts: aspeed-g5: add vhub port and endpoint
 properties
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:10:42 +1100
In-Reply-To: <20200226230346.672-6-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-6-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_201149_519612_1BE113F8 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-
> endpoints"
> properties to describe supported number of vhub ports and endpoints.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

> ---
>  No change in v2/v3/v4.
>    - It's given v4 to align with the version of the patch series.
> 
>  arch/arm/boot/dts/aspeed-g5.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi
> b/arch/arm/boot/dts/aspeed-g5.dtsi
> index ebec0fa8baa7..f12ec04d3cbc 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -195,6 +195,8 @@
>  			reg = <0x1e6a0000 0x300>;
>  			interrupts = <5>;
>  			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +			aspeed,vhub-downstream-ports = <5>;
> +			aspeed,vhub-generic-endpoints = <15>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_usb2ad_default>;
>  			status = "disabled";


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
