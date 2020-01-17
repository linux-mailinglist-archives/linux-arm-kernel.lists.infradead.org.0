Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234A3140A48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fu0jWgv+enXltAXNtvrrb+4XnPzzWWUjuHffedxWPvs=; b=WFTc0szyr7UoV+2jvFJ4EUOJB
	yYaKzPTcHHWdA9594Z4d34/9kYMXQwg8R3YTNGx2UxJh1OhuQtAcQKRCM+PzfC11WEoXU4IUnaCkM
	Pd9AEdv6aYV7zGfVktB3yjKd/h3Xp0LSpb06b/XzhKCRzMT2l8SWxmnB8dkcWBAKBJiyZ80FhhFOz
	8swgAN5YwzjDREMLVkdJQ9zHQ1yWUh4UIyhoM/ZVQlZvbEItOEX7iomjuMOaokYvVQq0lrXAIeWJT
	jBrO9FOCiUqpzZ6JMliopvMl/J9TbHDo3tE1/qmaizTOo77N2giUtPv+N3LcyYO9Hk1xXctuvde1Q
	2gdNUdAPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRBs-0006dR-TW; Fri, 17 Jan 2020 12:57:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRBh-0006cP-68
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:57:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00HCvJ5b114796;
 Fri, 17 Jan 2020 06:57:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579265839;
 bh=7f+i2QNUwMnAL6WTdKrrzAfyZ02OqWeNHk0Vudo0eYM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=wgYOwaSXw8xgh4vQUH/BXjRbkULW0IZWht1MGI2VrftJ7mEHmKlrv4/z1HASCmdN1
 qxMaGxA8RzMwI/GjBhY+TNI6sUGvuNlfdsxm8B5VPVbrtm65ru47/Ej7P2A2edqe0o
 5mMhBnAy84vEKVr00EWSRZWhJCxUpaBV8SyRPy8E=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00HCvJbg093236
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 17 Jan 2020 06:57:19 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 17
 Jan 2020 06:57:18 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 17 Jan 2020 06:57:18 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00HCvGTs044775;
 Fri, 17 Jan 2020 06:57:16 -0600
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-mcu: add system control module
 node
To: Grygorii Strashko <grygorii.strashko@ti.com>, Nishanth Menon <nm@ti.com>, 
 Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
References: <20191216193933.31429-1-grygorii.strashko@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <48f203a7-4010-c434-6046-0089811c442f@ti.com>
Date: Fri, 17 Jan 2020 14:57:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191216193933.31429-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_045721_307292_2936FAAB 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 16/12/2019 21:39, Grygorii Strashko wrote:
> The MCU System control module support is added to the device tree to allow
> drivers to access to their System control module registers.
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>

Queued up for 5.6, thanks!

-Tero

> ---
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi | 8 ++++++++
>   arch/arm64/boot/dts/ti/k3-am65.dtsi     | 2 ++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> index 27fc73f94cf9..3f76c2120b95 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> @@ -6,6 +6,14 @@
>    */
>   
>   &cbass_mcu {
> +	mcu_conf: scm_conf@40f00000 {
> +		compatible = "syscon", "simple-mfd";
> +		reg = <0x0 0x40f00000 0x0 0x20000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x40f00000 0x20000>;
> +	};
> +
>   	mcu_uart0: serial@40a00000 {
>   		compatible = "ti,am654-uart";
>   			reg = <0x00 0x40a00000 0x00 0x100>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> index 6dfccd5d56c8..0923e71f663a 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> @@ -74,6 +74,7 @@
>   			 /* MCUSS Range */
>   			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>   			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
> +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
>   			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
>   			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
>   			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>,
> @@ -88,6 +89,7 @@
>   			#size-cells = <2>;
>   			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
>   				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>, /* First peripheral window */
> +				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
>   				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
>   				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
>   				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00080000>, /* MCU SRAM */
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
