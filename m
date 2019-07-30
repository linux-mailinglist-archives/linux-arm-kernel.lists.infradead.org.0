Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E40B7A312
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 10:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHHtSsc31t4n9BjO9OgGkgcUVANWasuUkYr71M+NgRY=; b=tAqK5NTbBOTJDn
	kcqkIVTOJVNxPrecY5ld6J31IebKOhtm6hWoEiZjJdw48uQ80b2qID1tjwLn53+yjPxdgiJWcz3n2
	kDlq76IvhcNq3MToP+FGnKM2PL/7tuoUl3UZgKZte2VNEs+6NlnCKVpRvJOl9nxXZfZo29vtpUvRm
	xjWSp7X2g2n6faq29pbbzng46HGMKffmEONr2Veunjn2/oxV3QITfxHp6/wfWo9Rbz39m6mNc/9SH
	ZtYb3bpCVIO/7iie4SJafIgalCC9/5o3wh5lW9gRAfYBTQDTAbd2D7z/shT/OLvFVwzOjD3+mauLD
	Bnxp5C+Waj7/kx8oXR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNU0-0001Fm-P7; Tue, 30 Jul 2019 08:27:44 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNTe-00010a-AR
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 08:27:24 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 262BF67A918;
 Tue, 30 Jul 2019 10:27:15 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 30 Jul
 2019 10:27:14 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 30 Jul 2019 10:27:14 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>, "Sascha
 Hauer" <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
Thread-Topic: [PATCH v3 2/2] ARM: dts: imx6ul-kontron-n6310: Add Kontron
 i.MX6UL N6310 SoM and boards
Thread-Index: AQHVRjH02WMnvqVtME2ER52FoUT5GKbis0MA
Date: Tue, 30 Jul 2019 08:27:14 +0000
Message-ID: <f33dfd63-23c2-0316-fad9-e59b96bd5814@kontron.de>
References: <20190729172007.3275-1-krzk@kernel.org>
 <20190729172007.3275-2-krzk@kernel.org>
In-Reply-To: <20190729172007.3275-2-krzk@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <5D6D7FF85AE64B41808BCE3C3F611E61@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 262BF67A918.AE303
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_012722_724363_33DCF084 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29.07.19 19:20, Krzysztof Kozlowski wrote:
> Add support for i.MX6UL modules from Kontron Electronics GmbH (before
> acquisition: Exceet Electronics) and evalkit boards based on it:
> 
> 1. N6310 SOM: i.MX6 UL System-on-Module, a 25x25 mm solderable module
>     (LGA pads and pin castellations) with 256 MB RAM, 1 MB NOR-Flash,
>     256 MB NAND and other interfaces,
> 2. N6310 S: evalkit, w/wo eMMC, without display,
> 3. N6310 S 43: evalkit with 4.3" display,
> 4. N6310 S 50: evalkit with 5.0" display.
> 
> This includes device nodes for unsupported displays (Admatec
> T043C004800272T2A and T070P133T0S301).
> 
> The work is based on Exceet/Kontron source code (GPLv2) with numerous
> changes:
> 1. Reorganize files,
> 2. Rename Exceet -> Kontron,
> 3. Rename models/compatibles to match newest Kontron product naming,
> 4. Fix coding style errors and adjust to device tree coding guidelines,
> 5. Fix DTC warnings,
> 6. Extend compatibles so eval boards inherit the SoM compatible,
> 7. Use defines instead of GPIO and interrupt flag values,
> 8. Use proper vendor compatible for Macronix SPI NOR,
> 9. Sort nodes alphabetically.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2, after Fabio's review:
> 1. Add "imx6ul" compatible to board name (that's what I understood from
>     review),
> 2. Add vendor/device prefix to eeprom and document the compatible,
> 3. Use "admatecde" as vendor compatible to avoid confusion with Admatec
>     AG in Switzerland (also making LCD panels),
> 4. Use generic names for nodes,
> 5. Use IRQ_TYPE_LEVEL_LOW,
> 6. Move iomux to the end of files,
> 7. Remove regulators node (include regulators in top level),
> 8. Remove cpu clock-frequency,
> 9. Other minor fixes pointed by Fabio.
> 
> Changes since v1, after Frieder's review:
> 1. Remove unneeded license notes,
> 2. Add Kontron copyright (2018),
> 3. Rename the files/models/compatibles to new naming - N6310,
> 4. Remove unneeded CPU operating points override,
> 5. Switch regulator nodes into simple children nodes without addresses
>     (so not simple bus),
> 6. Use proper vendor compatible for Macronix SPI NOR.
> ---
>   .../devicetree/bindings/arm/fsl.yaml          |   4 +
>   .../devicetree/bindings/eeprom/at25.txt       |   1 +
>   arch/arm/boot/dts/Makefile                    |   3 +
>   .../boot/dts/imx6ul-kontron-n6310-s-43.dts    | 119 +++++
>   .../boot/dts/imx6ul-kontron-n6310-s-50.dts    | 119 +++++
>   arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 420 ++++++++++++++++++
>   .../boot/dts/imx6ul-kontron-n6310-som.dtsi    | 134 ++++++
>   7 files changed, 800 insertions(+)
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s-43.dts
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s-50.dts
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts
>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6310-som.dtsi

Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
