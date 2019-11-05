Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D58EF68A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ey1ZynHnfgaaBgKMPZwd22/pv23lviNP7GGsSSCuVY0=; b=A0ZwdqkK9cYv7t
	eqcxFEmf5PeYXu/Knhikr6C8S36bV3hd/Cs7xZCljBZWYur0D6ArMHqihSmjOEnhhq8OKnq/BCfEH
	vX01LkYaNxkUD7nVPwV7cQOyPt2pw8lknCdg6GzXcQE81J1cajlf9/IlW9i+Y4mM5suKaL3W6DLoN
	VOYFKpSCUcwezg9E6SOlNAGI5/HGN3hycfsnNl1N8Mp5K4Uk+AMj2mtmAH1xa/d+5TH7xL8I6tlLE
	GDEoyso8F6ajcNHR1PHAsqrPp3++hNJOPNbyb6/W8o1LsF8zKlEmcW4W+EZ3RhiO5QHno8x+o4kBo
	o4oc2KFJ1xbuEiGBrbAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtTa-0002Zb-Bi; Tue, 05 Nov 2019 07:42:06 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtTR-0002Yp-Gl
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 07:41:59 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 8EE5460C223;
 Tue,  5 Nov 2019 08:41:51 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 5 Nov 2019
 08:41:51 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 5 Nov 2019 08:41:51 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Stefan Roese <sr@denx.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR
 probing
Thread-Topic: [PATCH] ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR
 probing
Thread-Index: AQHVk6uHF8qnpI/jmUW628iLLH5NMqd8IN0A
Date: Tue, 5 Nov 2019 07:41:51 +0000
Message-ID: <9ad792f8-6042-6df8-9cad-4bc02d28bcf9@kontron.de>
References: <20191105073413.23129-1-sr@denx.de>
In-Reply-To: <20191105073413.23129-1-sr@denx.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <7026EFBD9B16F24EB4B678343D531504@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 8EE5460C223.ACBC0
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 sr@denx.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_234157_718245_60FB8FC0 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.11.19 08:34, Stefan Roese wrote:
> Without this "jedec,spi-nor" compatible property, probing of the SPI NOR
> does not work on the NXP i.MX6ULL EVK. Fix this by adding this
> compatible property to the DT.
> 
> Signed-off-by: Stefan Roese <sr@denx.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: Shawn Guo <shawnguo@kernel.org>

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>

> ---
>   arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> index c2a9dd57e56a..aa86341adaaa 100644
> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> @@ -215,7 +215,7 @@
>   	flash0: n25q256a@0 {
>   		#address-cells = <1>;
>   		#size-cells = <1>;
> -		compatible = "micron,n25q256a";
> +		compatible = "micron,n25q256a", "jedec,spi-nor";
>   		spi-max-frequency = <29000000>;
>   		spi-rx-bus-width = <4>;
>   		spi-tx-bus-width = <4>;
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
