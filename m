Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B154A440
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:44:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vZPY068K5c8UNoixEV5srHGjf4By3KTOQHHFGINZ34w=; b=GlO2BTX/pfA2OWrx0UjHwBe8s
	vM00t6IlzBieMLNUjTrmcjC/GzbFYTfHMnL4nkIClouuXLsve9FQAz/nJXnNHZpx7iQ0zqcWJBR2d
	nQRob2OSk+xV1nLfbVQSrIyg2voD/0VZ0uZBBbJSmAq7L9ekwGOYJRaDYkwG8BZoxtgmVAFIm2O/r
	NltpMv/aHT6GOSNZgTF49uRfcLZXuRv8lF2URmvzyUS1xTYT+U0QopFTv/VDZJBYQ54KqjymGL7MR
	eiNMh+66hfPwiVD0r02xnn2axtzPe4PQZ6rRaWeZdQhHQ6Y1ZIWKJoTlOsCG5ymcB3CY/pJG/fbPq
	GkuhXSEgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFLA-0000iV-GD; Tue, 18 Jun 2019 14:44:04 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFKu-0000hG-8B
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:43:50 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhlcs118446;
 Tue, 18 Jun 2019 09:43:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560869027;
 bh=bPvWDl2Vi9YLEjn+FrKS5fj4iYwTZRUUg0e1CYrL5iY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=E/OoWcdmWePXp/vfcuFUbvEaoqavso7KSdYF1t/V3zWeZDxRhOfTAaoLZLsRTU4s7
 W66S0KAW6rmQ5J+WH7huF/Gd4w986Vy9ZcbwKoTymmV3XaIWqPxrTp32uhsiUyrxeB
 sJouCVymHPng/VGDHGtsSsfea7efhZNle/IKrfbI=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEhlXe019388
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 09:43:47 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:43:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:43:47 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEhjot016738;
 Tue, 18 Jun 2019 09:43:46 -0500
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-j721e: Add the MCU SRAM node
To: Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
 <20190605163434.23173-4-s-anna@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <cfcfe8c9-a6dd-648d-8ce2-b0115b558892@ti.com>
Date: Tue, 18 Jun 2019 17:43:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605163434.23173-4-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074348_377481_0863536D 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/06/2019 19:34, Suman Anna wrote:
> Add the on-chip SRAM present within the MCU domain as a mmio-sram node.
> The K3 J721E SoCs have 1 MB of such memory. Any specific memory range
> within this RAM needed by a driver/software module ought to be reserved
> using an appropriate child node.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Queuing for 5.3, thanks.

-Tero

> ---
>   arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index b72e033fa159..397ef715e145 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -44,6 +44,14 @@
>   		pinctrl-single,function-mask = <0xffffffff>;
>   	};
>   
> +	mcu_ram: sram@41c00000 {
> +		compatible = "mmio-sram";
> +		reg = <0x00 0x41c00000 0x00 0x100000>;
> +		ranges = <0x0 0x00 0x41c00000 0x100000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +
>   	wkup_uart0: serial@42300000 {
>   		compatible = "ti,j721e-uart", "ti,am654-uart";
>   		reg = <0x00 0x42300000 0x00 0x100>;
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
