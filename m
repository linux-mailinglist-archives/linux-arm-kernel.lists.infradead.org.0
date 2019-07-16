Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1609B6A376
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwK93rlNrrVF/6JSop0wHxBy5Tcs//sFw4MZiqmAUlc=; b=asqQkTR0PmZ6y/
	02eIIUIusQwcSE/A0kEK6jO4tj1E0TdzK09by34tiHNwx5Q1pC5gTDIdJE6wRuqHf66Gndwk0s0pz
	ZCP5vvcddU8CPoNePf9VCi534Jx14TeXiNzTOeq/JQykuYV7gupzoJwOwfz3kIs43Rr7lx/6Q6kpF
	G1hy9bdMwieSQW2N8SdMxMD9qabwjx6XC/Gez8RgykEQMDbYN2sxa853LUUGZO40SZO/QVrOODIDl
	H2N/9U+sg+RYEh66XlnE0LGTOZ2/iB8FcbugTe98Z3WyWVivcMuwP97ZaBo9I3Z60lzIciTXvIUIX
	GQ58zUOF1reIV3dChzyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIQF-0006WY-M9; Tue, 16 Jul 2019 08:02:51 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIQ1-0006VW-EI
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:02:39 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 215CF67AB4D;
 Tue, 16 Jul 2019 10:02:23 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 16 Jul
 2019 10:02:22 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Tue, 16 Jul 2019 10:02:22 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx6ul-kontron-ul2: Add Exceet/Kontron iMX6-UL2
 SoM
Thread-Topic: [PATCH] ARM: dts: imx6ul-kontron-ul2: Add Exceet/Kontron
 iMX6-UL2 SoM
Thread-Index: AQHVOL1dBqnDgiFo/UyQBjMEMaNniabG+AIAgAXLSACAAANMAA==
Date: Tue, 16 Jul 2019 08:02:22 +0000
Message-ID: <74823caa-ace4-7f24-98f3-7da6f2a4e5c2@kontron.de>
References: <20190712141242.4915-1-krzk@kernel.org>
 <5cbd8bb2-6ecb-7e55-1580-e580e2c340dd@kontron.de>
 <CAJKOXPdq5e1OPmxamicAVf4ZDoSAuD=yvfOgZD04aQD9PtnCEQ@mail.gmail.com>
In-Reply-To: <CAJKOXPdq5e1OPmxamicAVf4ZDoSAuD=yvfOgZD04aQD9PtnCEQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <8338E8458D9FB44BA707B7261589B984@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 215CF67AB4D.AEE78
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_010237_814830_168295CF 
X-CRM114-Status: GOOD (  18.14  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16.07.19 09:50, Krzysztof Kozlowski wrote:
> On Fri, 12 Jul 2019 at 17:21, Schrempf Frieder
> <frieder.schrempf@kontron.de> wrote:
>>
>> Hi Krzysztof,
>>
>> On 12.07.19 16:12, Krzysztof Kozlowski wrote:
>>> Add support for iMX6-UL2 modules from Kontron Electronics GmbH (before
>>> acquisition: Exceet Electronics) and evalkit boards based on it:
>>>
>>> 1. i.MX6 UL System-on-Module, a 25x25 mm solderable module (LGA pads and
>>>      pin castellations) with 256 MB RAM, 1 MB NOR-Flash, 256 MB NAND and
>>>      other interfaces,
>>> 1. UL2 evalkit, w/wo eMMC, without display,
>>> 2. UL2 evalkit with 4.3" display,
>>> 3. UL2 evalkit with 5.0" display.
>>>
>>> This includes device nodes for unsupported displays (Admatec
>>> T043C004800272T2A and T070P133T0S301).
>>>
>>> The work is based on Exceet source code (GPLv2) with numerous changes:
>>> 1. Reorganize files,
>>> 2. Rename Exceet -> Kontron,
>>> 3. Fix coding style errors,
>>> 4. Fix DTC warnings,
>>> 5. Extend compatibles so eval boards inherit the SoM compatible,
>>> 6. Use defines instead of GPIO flag values,
>>> 7. Adjust operating points of CPU0,
>>> 8. Sort nodes alphabetically.
>>>
>>> In downstream BSP the Exceet name still appears in multiple places
>>> therefore I left it in the model names.
>>
>> First, thanks for your work. I planned to upstream these boards myself
>> after the FSL QSPI spi-mem driver was merged in 5.1, but didn't have
>> time to finalize and send the patches.
>>
>> Meanwhile we came up with a new naming scheme for our boards, that
>> hasn't been implemented yet. But I would like to take this chance to
>> implement the new scheme.
> 
> Sure, I see no problem in using different names, matching downstream
> kernel. Just point me to proper names.
> 
>> Also there are some more flavors of the SoM (with i.MX6ULL instead of
>> i.MX6UL, with 512MiB instead of 256MiB flash/RAM), that I would like to
>> add and for which common parts of the SoM dtsi would need to be factored
>> out to a separate file.
> 
> I have only this one particular flavor so I would prefer to upstream
> only this one. I do not know all the possible combinations or for
> example the most interesting ones. I think after this patchset we can
> refactor the DTS whenever its needed - split common parts, add new
> files.
> 
>> I would prefer to at least apply the naming changes before merging. The
>> additional board flavors could be added before merging or I could send
>> them as follow-up patches. What do you think?
> 
> Let's change the naming and add new flavors as follow ups?

Ok, let's do it like this. I will soon send another reply to the 
original patch with the proposed naming changes.

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
