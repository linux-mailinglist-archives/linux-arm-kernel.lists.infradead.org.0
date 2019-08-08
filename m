Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3592E86877
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 20:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPHNlanmNbv42+GLkVZKDtje/s5S+q8kp5gpXXQQ094=; b=cuU5V2m9Xw70Yi
	d+9RPzW0crGeLGyRioLZUY+1RNAZk1yLqyUI2QJsDjBUuDcUNbdPZ0qNm3YcNMuT4ZsWErjyGBcOZ
	RY4Wk35e9jiAFJHMc+zZmHHXzP4G/emx6hroGon7vWFJ7qN/3exkJ5Gw23G/B4jpmuKDVGeXgzs3x
	UNPAwn8Qc0JO4cGrXkfH4OUgG+/ik+Z3/9nikRRkAAyDOi9WU3DybXO9vkJ6keX2D3mSWXHlQQcZE
	mxgbSbk1zXSCvcbsTS9c6ufsUe5GLWA0nwbQfSVJ9yC1/3Pl1j7igy0s+Mu1CMbDiydIJYISucOKI
	TVLkqXhw/vXeOkB7YS6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmqn-0002oc-C2; Thu, 08 Aug 2019 18:09:21 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmqe-0002ng-AB
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 18:09:14 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id C03B467A8D8;
 Thu,  8 Aug 2019 20:09:05 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 8 Aug 2019
 20:09:05 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 8 Aug 2019 20:09:05 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>, "Sascha
 Hauer" <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: eeprom: at25: Add Anvo ANV32E61W
Thread-Topic: [PATCH v4 2/3] dt-bindings: eeprom: at25: Add Anvo ANV32E61W
Thread-Index: AQHVTg5uKuaOwni6qUqr2zRHpkgjtKbxaxUA
Date: Thu, 8 Aug 2019 18:09:05 +0000
Message-ID: <de032954-2b6e-5aa9-0d91-c37417c8e162@kontron.de>
References: <20190808172616.11728-1-krzk@kernel.org>
 <20190808172616.11728-2-krzk@kernel.org>
In-Reply-To: <20190808172616.11728-2-krzk@kernel.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <3C7E3CA83525024C90313252A9756400@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: C03B467A8D8.A186B
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 notify@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_110912_684661_6200C52C 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "notify@kernel.org" <notify@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08.08.19 19:26, Krzysztof Kozlowski wrote:
> Document the compatible for ANV32E61W EEPROM chip.

This chip is actually not an EEPROM, but a SPI nvSRAM. It can be 
interfaced by the at25 driver similar to an EEPROM. This is not the 
ideal solution, but it works until there's a proper driver for such 
chips. Maybe you can add some of these details to the commit message 
here. Also there is more information on this topic here: 
https://patchwork.ozlabs.org/patch/1043950/.

> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
> ---
> 
> New patch
> ---
>   Documentation/devicetree/bindings/eeprom/at25.txt | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/eeprom/at25.txt b/Documentation/devicetree/bindings/eeprom/at25.txt
> index b3bde97dc199..42577dd113dd 100644
> --- a/Documentation/devicetree/bindings/eeprom/at25.txt
> +++ b/Documentation/devicetree/bindings/eeprom/at25.txt
> @@ -3,6 +3,7 @@ EEPROMs (SPI) compatible with Atmel at25.
>   Required properties:
>   - compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
>     Example "<vendor>,<type>" values:
> +    "anvo,anv32e61w"
>       "microchip,25lc040"
>       "st,m95m02"
>       "st,m95256"
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
