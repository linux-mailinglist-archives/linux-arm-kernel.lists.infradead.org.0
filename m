Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775291D193C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K3h53/K7hmsTEhUIZW/E7BMJ98QwyK0zZtDVuQRnm2s=; b=oVQsfsQ8Vfc5YAYACJ5eQsI0r
	XJnwGVAMuIoJ4zAfIO/+rIpkPLZ1nLT+HviXgGOMZgydXAzXGOleezGSfkF04PYGUld/vkMOxk+dY
	gXCkqYPgOH9D0lE/r37BpnwJhZ5m9zs0PMIPiizwp3dQ16/XuFOzks5rUlI6IZN4Sea91lyqKEpwk
	ecKvCWQ4/WF7dIacdznIkBmNhU22rM/NcpHagYmfoBKrTVzuNYMIr2Nlhez8UvCH4zFKqyh+3J8dN
	fex6Y5YtsSMMZdTyRdQ3aJPP2F6KAJanV3uX5EvE6hKLT2igoB3en7qP+O28yKbON6Dpal9v5Q74F
	J37XIzosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtDW-0001PK-NI; Wed, 13 May 2020 15:22:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtDK-0001OC-9E
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:22:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04DFMQ0p077086
 for <linux-arm-kernel@lists.infradead.org>; Wed, 13 May 2020 10:22:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589383346;
 bh=aOnQL9ElSS4Mylkv7IA4wtNjH8cOXFY0YY6SrC2x7S0=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=IEMf5Z1+VZgTAnkmgbxLYgqk5+jtpvSYC83uSnbEyeW6ybKhXPP9N2Fjc9VPbj/4B
 ++6MlWam5svq/VRkqPoropLBeHOIvlxN4OFvtMcxg/IC0nB3LJDZWn2Ty4CSKvrbVk
 Fuh6x9dMMF1ubMLTXZysHKxhkZa7JPZnLDkn49yw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04DFMQjl063242
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 13 May 2020 10:22:26 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 13
 May 2020 10:22:26 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 13 May 2020 10:22:25 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04DFMJuj100332;
 Wed, 13 May 2020 10:22:23 -0500
Subject: Re: [RESEND PATCHv4] arm64: dts: ti: k3-j721e-main: Add main domain
 watchdog entries
From: Tero Kristo <t-kristo@ti.com>
To: <linux-arm-kernel@lists.infradead.org>
References: <20200427103919.431-1-t-kristo@ti.com>
Message-ID: <0bd1459a-ae41-2232-38ac-daf08655f320@ti.com>
Date: Wed, 13 May 2020 18:22:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200427103919.431-1-t-kristo@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082233_582003_A051512E 
X-CRM114-Status: GOOD (  17.71  )
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
Cc: nm@ti.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/04/2020 13:39, Tero Kristo wrote:
> Add DT entries for main domain watchdog0 and 1 instances.
> 
> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> ---
> Resending this to ARM mailing list, was earlier delivered only with the
> main watchdog series itself. The driver side + binding are in linux-next
> already so planning to pick this up myself towards 5.8.

Queued up for 5.8, thanks.

-Tero

> 
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 0b9d14b838a1..aa525bc321f1 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -963,4 +963,22 @@
>   
>   		status = "disabled";
>   	};
> +
> +	watchdog0: watchdog@2200000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x0 0x2200000 0x0 0x100>;
> +		clocks = <&k3_clks 252 1>;
> +		power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 252 1>;
> +		assigned-clock-parents = <&k3_clks 252 5>;
> +	};
> +
> +	watchdog1: watchdog@2210000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x0 0x2210000 0x0 0x100>;
> +		clocks = <&k3_clks 253 1>;
> +		power-domains = <&k3_pds 253 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 253 1>;
> +		assigned-clock-parents = <&k3_clks 253 5>;
> +	};
>   };
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
