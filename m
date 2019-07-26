Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD44176326
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wihzI1+CPTAImRikhPx+RceYmyaMIGtncwBVWg5TlJs=; b=SiYUJm98WnF0Jm
	o0Yt2vBz08ydXswPoj76sbcAWmmSf6PEK9SDjZaRyzYbc73f6hLlAgY5o3sw8wvFFzAYpzkmpZ9Yo
	d9KAO/yLLwBoQIgTU9KcKBeDg/mC1A/1tM9RFABaJcJ7ugJ4uedrz9H2KFNcy0gv64c4CIZvvEZNq
	D6MxX/lfOtMqOHKyx8L87JlvyJT9uvalt5hGm87Ryv12nFn6luIo8xwGwgejNLuE2WJopQhv9maUf
	XZjeFKkt0LBnWXOV9pC4bQk0XAN8CWXOvDmpLAyh/MwAJpGYfA8sCXz8KXrsp72FTqzLUoCIsiAHL
	jKtNwRFUwM1Dbg/3XwAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqx8C-0004hX-Cy; Fri, 26 Jul 2019 10:07:20 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqx7x-0004gV-9m
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:07:06 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id E9BC367A931;
 Fri, 26 Jul 2019 12:07:02 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 26 Jul
 2019 12:07:02 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Fri, 26 Jul 2019 12:07:02 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: vendor-prefixes: Add Admatec AG
Thread-Topic: [PATCH v2 1/2] dt-bindings: vendor-prefixes: Add Admatec AG
Thread-Index: AQHVQ3nM8O6SL9DjWUGGlVFpIsOB6KbchhcAgAAD4YCAAAFJgA==
Date: Fri, 26 Jul 2019 10:07:02 +0000
Message-ID: <5a61b9f1-86d5-438e-204b-0db3ef0796e3@kontron.de>
References: <20190726061705.14764-1-krzk@kernel.org>
 <963ba555-dde0-9c3c-1e15-740ca200853f@kontron.de>
 <CAJKOXPdbBXEy0zzjZ1ytts0y5STQ5x9xQVBmU1vn46tmu8uCGg@mail.gmail.com>
In-Reply-To: <CAJKOXPdbBXEy0zzjZ1ytts0y5STQ5x9xQVBmU1vn46tmu8uCGg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <F58E547739A13444B5B7088FBEE0A607@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: E9BC367A931.AFBCE
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
X-CRM114-CacheID: sfid-20190726_030705_507027_A383EFC9 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26.07.19 12:02, Krzysztof Kozlowski wrote:
> On Fri, 26 Jul 2019 at 11:48, Schrempf Frieder
> <frieder.schrempf@kontron.de> wrote:
>>
>> On 26.07.19 08:17, Krzysztof Kozlowski wrote:
>>> Add vendor prefix for Admatec AG.
>>
>> We get the displays used with the Kontron eval kits from "admatec GmbH"
>> in Hamburg, not "Admatec AG" in Switzerland. I think we have to
>> differentiate here.
>>
>> I will review patch 2/2 soon...
> 
> What a coincidence... they have so similar portfolio. After looking at
> vendor prefixes that would be the first duplication of name.

I have no idea, whether they are related somehow or have a common history...

> 
> To avoid conflict, how about: "admatecde"?

Would be ok, I guess.

> 
> Best regards,
> Krzysztof
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
