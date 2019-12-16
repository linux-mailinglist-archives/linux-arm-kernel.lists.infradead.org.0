Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25487121A17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TATDIHdxSYHwEdSbY37+SiYAWUl51qT2OJlSY8eMwZ4=; b=kxRUqltn4Zxph8udvJmJjj1LY
	ob8oDC70V6PFyfZqZr8/2JEciTT7tJ/JOqFdAF5evca1K6BvI8h1T3RiuzLtugpOrs2/ra2zBks/b
	M+gPr2et4V6916Y5L8wk92MrXkzqF6ly6pzrF6/a5U0bgW80SKloB+yu5kfmYsl5TV0i569JhTlot
	TSG7WvrB0LAZJJcXb5xp6RmOsE56VMQKhWNF5NG0ohktzFc94PeuMaGwkR+4mz7vLaWoKXjgl4PCL
	YJ1EUcYPAm1JctEfvhVLfG6EcYJZmSFI/IOht9aQPVbOfX8P1uEXhEdaynJ6fF+5QvUn7XuIk8ZPm
	OhyT4+iyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwDR-0002P0-0p; Mon, 16 Dec 2019 19:39:37 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwDJ-0002Ns-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:39:30 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBGJdOj3115233;
 Mon, 16 Dec 2019 13:39:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576525164;
 bh=vCabfj6+uoFYGOCcB6wnIJ2lDm1TOSkgjhyBX1IgwgI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ce0JkAaZ1zfcH19gaXbXctW9eDGOI2v98/etQOtrPVORgjAgNzstbSOh2wxlHkPge
 7qKDnkYChgPW8NknN6iO12Ne2oIXYFGuv/Cwm0GoXYodV8s8IjzTu//cSAQrSKvy9Y
 Hr0UAakYNRFzYpW204a9Dbt3RuE5ZiKsRzo1LiO0=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBGJdOQX046541;
 Mon, 16 Dec 2019 13:39:24 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 13:39:23 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 13:39:23 -0600
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBGJdLtG095374;
 Mon, 16 Dec 2019 13:39:21 -0600
Subject: Re: [PATCH] ARM: dts: omap3: name mdio node properly
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
References: <20191216193022.30201-1-grygorii.strashko@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <0b341b95-9d59-8053-09fc-db009e1099b9@ti.com>
Date: Mon, 16 Dec 2019 21:39:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191216193022.30201-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_113929_440033_99D0304A 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

Pls. Ignore this mail.

On 16/12/2019 21:30, Grygorii Strashko wrote:
> Rename davinci_mdio DT node "ethernet"->"mdio"
> This fixes the following DT schemas check errors:
> am3517-craneboard.dt.yaml: ethernet@5c030000: $nodename:0: 'ethernet@5c030000' does not match '^mdio(@.*)?'
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> ---
>   arch/arm/boot/dts/am3517.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/am3517.dtsi b/arch/arm/boot/dts/am3517.dtsi
> index 76f819f4ba48..84e13778a64a 100644
> --- a/arch/arm/boot/dts/am3517.dtsi
> +++ b/arch/arm/boot/dts/am3517.dtsi
> @@ -74,7 +74,7 @@
>   			clock-names = "ick";
>   		};
>   
> -		davinci_mdio: ethernet@5c030000 {
> +		davinci_mdio: mdio@5c030000 {
>   			compatible = "ti,davinci_mdio";
>   			ti,hwmods = "davinci_mdio";
>   			status = "disabled";
> 

Pls. Ignore this mail.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
