Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1FBDC4A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/mGOJqu6TM6rb/FVlmSajOimIcYUR8UiDUrSdkQ254=; b=E4xVeWHUnclTeVsUwIlyvbEDF
	wyj75c9uRn9NK7xUN33l86ZdF/fkTDvXj2SM3ZwExEJf3rAuOsLD3UzvdF0d38PPDRoAf0GpFxHK3
	ZkTHcQ0jALrzD43W2YdfOBqEtK7CX8LkbRHBfN7RBntemyuL41ASDoty+Xqivi4rJEIX68JZIm/LA
	tpYdQBUz7K+vAsS26o+i73pw4axqRvC2jL7pIbXwSKCnUg1gpdGfOzZtO4r9DUTmZ8YEoKsRXuleb
	rZIIT+nvK82ND9DZyTi+MEO4UVNTReXtfuwfq7Ls+PrHil/Domi/88pNIZ+IVmm3m5O287mhNb1pO
	BpBtXnJKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRIV-0001ev-Pv; Fri, 18 Oct 2019 12:23:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRHn-0001Ek-0l
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:23:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9ICN9Yf013215;
 Fri, 18 Oct 2019 07:23:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571401389;
 bh=I4qPIv3TfJomROlJ51jMxTwuDPaA3EB49Ea1gtA/Jko=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bn/UYDgeGgGNFmMAAiWvSKqtuZFAHubxGv06IYeTTPmKm9TxpuiwSTQaEo9s4NS77
 Jl/ry4jaSCy7V7kWJLvYXy/bxgdh2exp1AnTIYbRBnpNqcnxwze+G61jiDowvFuoDp
 /xXabzz+n6YMFvx7DD4QHNCsRT5Sgr/WmxhPiPc8=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9ICN99P088786;
 Fri, 18 Oct 2019 07:23:09 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 18
 Oct 2019 07:23:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 18 Oct 2019 07:23:09 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9ICN6Yl096018;
 Fri, 18 Oct 2019 07:23:07 -0500
Subject: Re: [PATCH] arm64: dts: ti: k3-am654-base-board: Add disable-wp for
 mmc0
To: Faiz Abbas <faiz_abbas@ti.com>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20191003114251.20533-1-faiz_abbas@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <ea838a43-4ee7-3e40-e610-fe4bdbef81c9@ti.com>
Date: Fri, 18 Oct 2019 15:23:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191003114251.20533-1-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052315_115734_6BD7BB94 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 14:42, Faiz Abbas wrote:
> MMC0_SDWP is not connected to the card. Indicate this by adding a
> disable-wp flag.
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index 1102b84f853d..143474119328 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -221,6 +221,7 @@
>   	bus-width = <8>;
>   	non-removable;
>   	ti,driver-strength-ohm = <50>;
> +	disable-wp;
>   };
>   
>   &dwc3_1 {
> 

Queuing up towards 5.5, thanks.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
