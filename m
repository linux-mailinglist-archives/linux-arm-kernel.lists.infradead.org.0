Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F0C2FA83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJbTs4JiDhEw3P/kRuSPQGCWxpRV6kcSbbVqj+z0Ij8=; b=o8E82t4g19f4ER
	BBMt7+xbOhUGUm9RdL0erOcyBWEHfjhM3ivVkgf2V2TCniACoqAcV5ZnqD0q/HyVaM1n48JzI++Vp
	Pa5SmW2xYfZE8vg8X13GZu4AFNQ6Cp/Nf/qEzI1LzkMOw0l/VmoZpGfMaxbxf4xLui/nNHQnaM9nr
	18Z+h+BEOO7I53aJvlN0nyl1lNK6408T6xMcAFOPuEkdqdvbtFWj1iNt4sD4+JF89UnGm4qHjh04V
	T7rSLkyQCVZy1eySLaacm1Xe26EuEIUrKpnyQ3JOi8U2mD0TzL5PeAalZrtcSnrCswYPswMNp2sZq
	GK+w3hXHeAoobUFCAlog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIca-0008O2-0y; Thu, 30 May 2019 10:49:20 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIcS-0008NX-I5
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:49:14 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4UAn3m4001170;
 Thu, 30 May 2019 05:49:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559213343;
 bh=zESXW5EtamOTtmBA+ydMjmOz1arrUTtIScAj+pTVAvY=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=w/1B8ZPv8eUL4pzsFwc/Ym7ocpk6KhqZkAPEeSExs7SR2ELfTnzSQfDjugiS2CByb
 JJpbSId1jQ8grgdjZq1IMkUhbGaI3jdhMb5wpkC94MaVloLbHQeQbP2VJlMWi7AqeP
 Ho+d82yOAHcy0FCl1zPy80uNLp9BN3LB1zwXlw4Y=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4UAn3Zi108225
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 05:49:03 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 05:49:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 05:49:03 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4UAn3x0078277;
 Thu, 30 May 2019 05:49:03 -0500
Date: Thu, 30 May 2019 05:49:03 -0500
From: Nishanth Menon <nm@ti.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
Message-ID: <20190530104903.ldcmkunjnk7a5y3c@akan>
References: <20190529211344.18014-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529211344.18014-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_034912_747697_356E3E0C 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16:13-20190529, Suman Anna wrote:
> From: Roger Quadros <rogerq@ti.com>
> 
> Add the MSCM RAM address space to the ranges property of the cbass_main
> interconnect node so that the addresses can be translated properly.
> 
> This fixes the probe failure in the sram driver for the MSMC RAM node.
> 
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> 
> The following error message is seen without this:
> [    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
> [    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22
> 
> regards
> Suman
> 
>  arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> index 50f4be2047a9..68b3f954f1d1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> @@ -68,6 +68,7 @@
>  			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
>  			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
>  			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
>  			 /* MCUSS Range */
>  			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>  			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
> -- 
> 2.21.0
> 

Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
of early rc fixes please.

Acked-by: Nishanth Menon <nm@ti.com>

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
