Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAACDEC8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2soAxw/m4ocSxbY2v4b82qz/3HFiKQuRCSYqmLAcDs=; b=qc2+BvBebIbIZg
	tksECtRexbBAJyAQ5LiT1Kfl2Dsc/8Bem2gf48Jlymg9JmqReJHsK+2bRq/rQGfIMHqQuKS1VW8Fl
	ScNPYDvXpGfcIy0EKUfz4A8y0pZ5w2NhS40qg8o/LcH8jz7vUQbli8sRauj18HO/dotPxZhU+yhxh
	U4dVOCU2fMVWOv/3ZUoIH1bk1wsyrZiCQKzAI/nujNKoGcN/1R3m0TYSUfiJXHLX3IJcMXSVQu5Az
	zAIia7EGW1TjHkvy4A1jQWBBE+i/DxA/IL6H4NtevbV/+5c3GSWV93yl5yp7OOS3qll8y3YVysStI
	YTO7Ta5k9779fjWbKbrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMX3J-000439-Hw; Mon, 21 Oct 2019 12:44:49 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMX31-0003w7-7m
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:44:33 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 071276272E0;
 Mon, 21 Oct 2019 14:44:29 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 21 Oct
 2019 14:44:28 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 21 Oct 2019 14:44:28 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: "krzk@kernel.org" <krzk@kernel.org>
Subject: Re: [PATCH 03/10] ARM: dts: imx6ul-kontron-n6310-s: Move common nodes
 to a separate file
Thread-Topic: [PATCH 03/10] ARM: dts: imx6ul-kontron-n6310-s: Move common
 nodes to a separate file
Thread-Index: AQHVhDNridwU/x73F0y3lESzDZ9q0qdkzUwAgAAjUoA=
Date: Mon, 21 Oct 2019 12:44:28 +0000
Message-ID: <cb88a237-3d5b-a7b2-8ff9-51d192b5d0d7@kontron.de>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191016150622.21753-4-frieder.schrempf@kontron.de>
 <20191021103802.GC1934@pi3>
In-Reply-To: <20191021103802.GC1934@pi3>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <FE7C61A8E785454F8AF7F0B5D380FEC3@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 071276272E0.A1A22
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
X-CRM114-CacheID: sfid-20191021_054431_617627_18EF2DFE 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 21.10.19 12:38, krzk@kernel.org wrote:
> On Wed, Oct 16, 2019 at 03:07:25PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> The baseboard for the Kontron N6310 SoM is also used for other SoMs
>> such as N6311 and N6411. In order to share the code, we move the
>> definitions of the baseboard to a separate dtsi file.
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> ---
>>   arch/arm/boot/dts/imx6ul-kontron-n6310-s.dts  | 405 +----------------
>>   arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 412 ++++++++++++++++++
>>   2 files changed, 413 insertions(+), 404 deletions(-)
>>   create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>>
[...]
>> diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> new file mode 100644
>> index 000000000000..08a326ce2cbe
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
>> @@ -0,0 +1,412 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2017 exceet electronics GmbH
>> + * Copyright (C) 2018 Kontron Electronics GmbH
>> + * Copyright (c) 2019 Krzysztof Kozlowski <krzk@kernel.org>
>> + */
>> +
> 
> This file does not include anything else but uses defines (GPIO flags,
> clocks, pins). Usually sources should not rely on inclusions coming from
> unrelated files so here you should include necessary headers. In case of
> future refactorings or reuse one might not know which defines you wanted
> to use (in other platforms for example there might be multiple defines
> in multiple header files with same name).

Right, I need to include the proper headers here. I will also check the 
other files.

Thanks for reviewing!
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
