Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24A8DEC1E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RA+lnVoV0mB8mcutszA4ZebGs3Y811/rrcMrhkmwxt8=; b=Uq0bD2Rei9s1ZB
	qtlrtx2Vgbbj4jsafMrX4IEyZhaKm5RrVDUEIxe9DRqvotiSs1rftio0VBrlfPDeVgxbIOGhfI3gF
	ZkOwDCH9uYSY7lLjZiaeQpCOV1hPcUFDVIzOG9Am+WaoiOh2h8dChRBbhiyet0imLvlXGqn3i5n7+
	pQMGOtYcZFIuUUPu3Qhkn8I4JqQmSFy6v2YsEn5dlvzyCAJ3M+0F7Dvs8Q/sw925kS2DUrzl/BAcE
	C7zj3Nzbo81zLrBPr5LgxGVSgjbFt9l5KfsiDHd5/A6x13d9UkqpdGoOwt7tnQC6noqKempMG42l+
	K1icLGYmxQuEU8uhMf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWk9-0000c6-PC; Mon, 21 Oct 2019 12:25:01 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWjz-0000bT-85
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:24:53 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id D14ED601DAF;
 Mon, 21 Oct 2019 14:24:39 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 21 Oct
 2019 14:24:39 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 21 Oct 2019 14:24:39 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 00/10] Add support for more Kontron i.MX6UL/ULL SoMs and
 boards
Thread-Topic: [PATCH 00/10] Add support for more Kontron i.MX6UL/ULL SoMs and
 boards
Thread-Index: AQHVhDNGmnCbI2WJmkisIF0qUQi7cqdeW9UAgAAC0ACABoDlgIAAC4sA
Date: Mon, 21 Oct 2019 12:24:39 +0000
Message-ID: <76484360-c868-a784-11f2-7fec696e3061@kontron.de>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191017081422.65m5dtqznsanfftp@pengutronix.de>
 <6e6f9cf4-85b3-35e3-1238-11e39855bc08@kontron.de>
 <20191021114319.krrhdtvycu7zxxie@pengutronix.de>
In-Reply-To: <20191021114319.krrhdtvycu7zxxie@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <5CD73DCB632EB64AA83D2754D99E78A7@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: D14ED601DAF.A2522
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aisheng.dong@nxp.com, andrew.smirnov@gmail.com,
 davem@davemloft.net, devicetree@vger.kernel.org, festevam@gmail.com,
 gregkh@linuxfoundation.org, jonathan.cameron@huawei.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, m.felsch@pengutronix.de,
 manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 robh+dt@kernel.org, robh@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_052451_621395_C8CE35AF 
X-CRM114-Status: GOOD (  16.26  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Rob Herring <robh@kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP
 Linux Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On 21.10.19 13:43, Marco Felsch wrote:
> Hi Frieder,
> 
> On 19-10-17 08:24, Schrempf Frieder wrote:
>> Hi Marco,
>>
>> On 17.10.19 10:14, Marco Felsch wrote:
>>> Hi Frieder,
>>>
>>> On 19-10-16 15:06, Schrempf Frieder wrote:
>>>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>>>
>>>> In order to support more of the i.MX6UL/ULL-based SoMs and boards by
>>>> Kontron Electronics GmbH, we restructure the devicetrees to share common
>>>> parts and add new devicetrees for the missing boards.
>>>>
>>>> Currently there are the following SoM flavors:
>>>>     * N6310: SoM with i.MX6UL-2, 256MB RAM, 256MB SPI NAND
>>>>     * N6311: SoM with i.MX6UL-2, 512MB RAM, 512MB SPI NAND (new)
>>>>     * N6411: SoM with i.MX6ULL, 512MB RAM, 512MB SPI NAND (new)
>>>>
>>>> Each of the SoMs also features 1MB SPI NOR and an Ethernet PHY. The carrier
>>>> board for the evalkit is the same for all SoMs.
>>>>
>>>> Frieder Schrempf (10):
>>>>     ARM: dts: imx6ul-kontron-n6310: Move common SoM nodes to a separate
>>>>       file
>>>>     ARM: dts: Add support for two more Kontron SoMs N6311 and N6411
>>>>     ARM: dts: imx6ul-kontron-n6310-s: Move common nodes to a separate file
>>>>     ARM: dts: Add support for two more Kontron evalkit boards 'N6311 S'
>>>>       and 'N6411 S'
>>>>     ARM: dts: imx6ul-kontron-n6x1x: Add 'chosen' node with 'stdout-path'
>>>>     ARM: dts: imx6ul-kontron-n6x1x-s: Specify bus-width for SD card and
>>>>       eMMC
>>>>     ARM: dts: imx6ul-kontron-n6x1x-s: Add vbus-supply and overcurrent
>>>>       polarity to usb nodes
>>>>     ARM: dts: imx6ul-kontron-n6x1x-s: Remove an obsolete comment and fix
>>>>       indentation
>>>>     dt-bindings: arm: fsl: Add more Kontron i.MX6UL/ULL compatibles
>>>>     MAINTAINERS: Add an entry for Kontron Electronics ARM board support
>>>
>>> Did you send all patches to same To: and Cc:?
>>
>> No, I have a script that runs get_maintainer.pl for each patch. So the
>> recipients might differ. I only had Krzysztof and Rob as hard-coded
>> recipients for the whole series.
>>
>> Do you think I should change this so each recipient receives the whole
>> series?
> 
> I do it that way because sometimes it is better for the reviewer to see
> the whole context.

Sounds reasonable. Thanks for the feedback.
Sometimes it just feels like it will cause a lot of useless mail traffic 
when sending all patches to all people suggested by get_maintainer.pl, 
but in general I agree, it is definitely useful to receive all the 
context. I might have to tweak my get_maintainer arguments, to trim the 
list of recipients and then send the whole series to these people.

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
