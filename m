Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6390F1D28EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gd6BByMA58KZNOKafIf8W13RhcGeEmh1atCBQ6RYz5w=; b=itw8HtrVsCyB/S7prlhYKBn5x
	4grsD35TqtBpirAj/JZbkl11FSTuV9GAMQJW0YpzNMtMPUyXz8WYl8W6y/2IqnXeQBymDuPPiwOxw
	+2tzaZdnX/AAHresNLvNH/nmRzq1hcu4xGRMIAHqPq7jf2lRBa/oxkXBbzCB7xMjrYwjxJ+y4xm30
	uowCsLaZmvyB7XdGC7qARnpEG1lTv8d4c9Vub85rgBThpdj69xitjUS6S4m2AN1SnEUKT5evXQo6R
	jAG4PG/WqlFHe8wfKxgAm05yr35jYG3gh45Pos9Pr8xjrAhUS2uM9beI7Af9PhaiZbg25mcGNqDdI
	beKB9PDNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8TN-0002oE-5A; Thu, 14 May 2020 07:40:05 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8TB-0002nh-J7
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:39:54 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04E7doce052134;
 Thu, 14 May 2020 02:39:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589441990;
 bh=ryFOyIaFBEK0w40rlL9mZPW1Hpsa6/doKlcHGdfFZrs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HVU1KG3W920JxGoNxgLnFb89UftFKP1YpSOoq/+zqDnGYUng0P6/+PW9os/HNSUaO
 1nDUcHkWGvtH0CgWdd3PNvXAiRNQ3E8skYLfrzT5Tb9B/bE5w7HlGqjHe3Lx8GXbD5
 lGiENlxoqnZqMnQfeSQ24jM2R2wnYRU1uwJQjTSM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04E7doZS005715
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 May 2020 02:39:50 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 02:39:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 02:39:49 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04E7dhPm014653;
 Thu, 14 May 2020 02:39:46 -0500
Subject: Re: [PATCH 1/6] dt-bindings: omap: Update PRM binding for genpd
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20200512203852.29499-1-tony@atomide.com>
 <20200512203852.29499-2-tony@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <352b8c4d-1233-e208-63ce-c116632546a9@ti.com>
Date: Thu, 14 May 2020 10:39:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200512203852.29499-2-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_003953_708182_0E4BE31B 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/05/2020 23:38, Tony Lindgren wrote:
> The PRM (Power and Reset Module) has registers to enable and disable
> power domains, so let's update the binding for that.
> 
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   Documentation/devicetree/bindings/arm/omap/prm-inst.txt | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> --- a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> +++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> @@ -18,12 +18,16 @@ Required properties:
>   		(base address and length)
>   
>   Optional properties:
> +- #power-domain-cells:	Should be 0 if the PRM instance is a power domain.
>   - #reset-cells:	Should be 1 if the PRM instance in question supports resets.
> +- clocks: Functional and interface clocks managed by the power domain
> +- clock-names: Names for the clocks using "fck" and "ick" naming

Whats the purpose of the clocks for PRM? It looks like you are using 
this with ABE domain on omap4/omap5, but why is this needed?

-Tero

>   
>   Example:
>   
>   prm_dsp2: prm@1b00 {
>   	compatible = "ti,dra7-prm-inst", "ti,omap-prm-inst";
>   	reg = <0x1b00 0x40>;
> +	#power-domain-cells = <0>;
>   	#reset-cells = <1>;
>   };
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
