Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EAE11406E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 13:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iZqRgGOGQYWUVUo9HnPW99WzkObr2+RmqgX8AqWpEhM=; b=XRdzvrvWXfrhgZvi6j6yF82G3
	Opx0jMGDqbVHLzlVrbRD1rruOXng9Y8kgJzAAXl9IHVCbvLoX5Psh3RLiP1l08NKoEl/i793snKzP
	ebXjgZQNk4b3xyhBECAL7Ivq4jsv2DnMdryywC0n1U4lCpBeyeURzz9Auhtk1VssuOP7LUfluhkOK
	Gys27SXJoi59XTnGO8RQzhe10XpVYXPc2vClEDVPJJcz1LVRBetmZDMleZGaXgaC+01PhgxM+2OBn
	h3MD6M4R0tS1EphvNum9GcuWF4Zuw8Y3+hLVN+dGCLe2wm2RrkJqE8pXyfBb1iA3jQCv+gyDl9mtJ
	pvZX4c+HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icpoN-0004z8-OP; Thu, 05 Dec 2019 12:00:47 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icpoG-0004yd-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 12:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575547236; x=1578139236;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EvV3aStBdBw1WEWTKzmdCU/hSOVnmFzlrGvrHHBA8ZE=;
 b=ejDd4zhT5+ir2YzytlSQZOwUCxeAJYCWLUamX72KkRgi4voyYrZj325y0Rx8c3U4
 0ZprF+oacZ3RGg017mGuogidR73qveYO4A51pwFNzbGw8uE9svzlp5OLRHzEPiZO
 mhZQecNgBcdIr4k8zNaDUUcIxT0srfAFBVWp/jGKN28=;
X-AuditID: c39127d2-e0fff7000000408f-c0-5de8f1645bf0
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 17.70.16527.461F8ED5;
 Thu,  5 Dec 2019 13:00:36 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120513003611-48228 ;
 Thu, 5 Dec 2019 13:00:36 +0100 
Subject: Re: [PATCH 2/3] ARM: dts: imx6: phycore-som: fix emmc supply
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <20191129164859.15632-2-m.felsch@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <6eece2d7-4695-ef2a-7376-cff39aaef8be@phytec.de>
Date: Thu, 5 Dec 2019 13:00:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191129164859.15632-2-m.felsch@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 05.12.2019 13:00:36,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 05.12.2019 13:00:36, Serialize complete at 05.12.2019 13:00:36
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGLMWRmVeSWpSXmKPExsWyRoCBSzfl44tYg3OfxS2e3bzFZvHwqr/F
 qqk7WSw2Pb7GatH1ayWzxYddV5ktWvceYbd4sUXcgcNj56y77B5PJ0xm99i0qpPNY/OSeo+N
 73YwefT/NQhgi+KySUnNySxLLdK3S+DK+PR7C2vBTq6KiQeOMzYw7ufoYuTgkBAwkXjzU7WL
 kYtDSGAro8SlIxsZIZxTjBITf1xj62Lk5BAWcAUqmscOYosIaEn8bf/PClLELHCeUeLWkyNM
 IAkhgXyJLc/nM4PYbAJOEovPd7CBbOAVsJG438MCEmYRUJG4dWQRmC0qECHxfPsNRhCbV0BQ
 4uTMJ2BxTgFbiceNr8DmSwg0Mkmsu3aJFSQhISAkcXrxWbD5zALyEtvfzoGyzSTmbX4IZYsD
 3TOfaQKj0Cwkc2chaZmFpGUWkpYFjCyrGIVyM5OzU4sys/UKMipLUpP1UlI3MQLj5vBE9Us7
 GPvmeBxiZOJgPMQowcGsJMK7TeJprBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeDbwlYUIC6Ykl
 qdmpqQWpRTBZJg5OqQbG7TZcM5dMyWSrvm7SVfnc0Ie/4/MF1Rll+sK+2/ulzyc6zP+evOq6
 143mUz6K50/XxyWp/8sxcmm0buqYvnbKTZeqjZUHD6qoPb09y+CV2l1njy2vD93QuiW5WFTy
 py/zuvZUHkHu40W7sieadm7tX3teLPrCGe8fkWbOIdoMvScSemsWtP5SYinOSDTUYi4qTgQA
 /K44MIkCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_040040_817422_2694A666 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: s.christ@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On 29.11.19 17:48, Marco Felsch wrote:
> Currently the vmmc is supplied by the 1.8V pmic rail but this is wrong.
> The 1.8V pmic rail is connected to the emmc vccq (vqmmc).

I just checked the schematics again and actually both VCC and VCCQ are 
connected to the 3.3V power rail. VCCQ can be connected to the 1.8V PMIC 
power rail by solder jumper but default is 3.3V.

So I think either both should be connected to a fixed 3.3V regulator or 
removed, since the default system does not support switching these voltages.

Regards,
Stefan

> 
> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>   arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index 46d4953c5588..44e333848b4d 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -183,7 +183,7 @@
>   	pinctrl-0 = <&pinctrl_usdhc4>;
>   	bus-width = <8>;
>   	non-removable;
> -	vmmc-supply = <&vdd_emmc_1p8>;
> +	vqmmc-supply = <&vdd_emmc_1p8>;
>   	status = "disabled";
>   };
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
