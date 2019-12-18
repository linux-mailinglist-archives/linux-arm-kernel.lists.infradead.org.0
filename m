Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7FA124679
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K702pagTd1qdqDmasRSXUao6dYhtdQLK/wJgrqVrfSU=; b=fFj97zPM6drEArwWipa3Bm5XNI
	TEXEMrSuZwcwTT5NYH+eOTzGVAGECc4/Mp4RnVJqvB3F5ICvmzO99AHdhxNt1ZIpq/eCQe9OQSsgy
	hrIwmZgHrfro+ifLroiFje33NvN9kAVsMNIBo7fn7hUBzlHYREjKE4nqJhI+aW9sXCpQaoTLP56dw
	M2qjBg48PoEk5PVnBBaufglfKArbJjafVtbEtxqrVpkX13MArJs46OyUoHSwymGMZ3rp0xb4CGo3K
	yyTDA/5cRlosVT77sJri7YkDyjSxECTVa/Yw04m9SFuLjnWImmXH6B4qam1b3qAO3q088RxFN96AQ
	vq8nUlqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihY7g-0001pn-Ob; Wed, 18 Dec 2019 12:08:12 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihY7Y-0001oT-4h
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:08:06 +0000
Received: from tarshish (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 6D1D44405B0;
 Wed, 18 Dec 2019 14:07:57 +0200 (IST)
References: <1576670430-14226-1-git-send-email-peng.fan@nxp.com>
User-agent: mu4e 1.2.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm: dts: imx7ulp: fix reg of cpu node
In-reply-to: <1576670430-14226-1-git-send-email-peng.fan@nxp.com>
Date: Wed, 18 Dec 2019 14:07:57 +0200
Message-ID: <87lfr9suoy.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_040804_419039_BC4895CC 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On Wed, Dec 18 2019, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> According to arm cpus binding doc,
> "
>       On 32-bit ARM v7 or later systems this property is
>         required and matches the CPU MPIDR[23:0] register
>         bits.
>
>         Bits [23:0] in the reg cell must be set to
>         bits [23:0] in MPIDR.
>
>         All other bits in the reg cell must be set to 0.
> "
>
> In i.MX7ULP, the MPIDR[23:0] is 0xf00, not 0, so fix it.
> Otherwise there will be warning:
> "DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map"
>
> Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/boot/dts/imx7ulp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
> index d37a1927c88e..aa9e50178d6b 100644
> --- a/arch/arm/boot/dts/imx7ulp.dtsi
> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> @@ -40,7 +40,7 @@
>  		cpu0: cpu@0 {

The address suffix in the node name should update to match 'reg'.

>  			compatible = "arm,cortex-a7";
>  			device_type = "cpu";
> -			reg = <0>;
> +			reg = <0xf00>;
>  		};
>  	};

baruch

--
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
