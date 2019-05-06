Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9302B145E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPf98QttDYixxvG+WV1FYg4mZ+AVQQIr/NJGdSiiNaQ=; b=o5YSxCMTjUNDc7
	tV9EgQ4fZweCN7TZvwasMGcPynqwaG4apGqq2C61aFHctZrAyumRLlsTYVSQ8+sNsG4CLxdnZEPqo
	g/KP4SzaR+/8keNqQKd/H1Q70jR1oJ2NX0IqFbzpAUZwI8goldvD1PbjSEyj5W42R+o62J1kkncml
	LyN6MBk/8AJcZATD5i+TLSDq5HWWX5ZXJXwwIQ/PiDdaXpD7ThleMCZIc5kM4mp1ICDOCowZz4qsn
	ZC5xK/q50VxEVdbL1RlI3THMQ6GZ52KaBthxnIhpJ7yWKPG5YAGYtQoHGY+4G9C6X5bfXQSeWa2qy
	Nwi8ZYB+UQz49mEmRjfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYqh-0002wO-3D; Mon, 06 May 2019 08:19:47 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYqU-0002vG-Mv
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:19:38 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,437,1549954800"; d="scan'208";a="29222845"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 06 May 2019 01:19:16 -0700
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.38) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Mon, 6 May 2019 01:19:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBlhBobYIfYdbvDMBQaROIlc45WK9NdkdCcSbzWWgwM=;
 b=Jg3Phdk73lmsjNOMsUGnv1Q5lFU+PD0k4kb30dVkflBNdE7lWmlPr9WE3O0w2X6TLca2/LtOSQqrS4xW7UqqKlHR6v2BG2RDqiF6XME3e6wBac7/Z49+zE3P0xlwDyops0y3tQ+02lEPeMKRn+AD+CzonaaiQ64n7Ags5GoUhHM=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB0073.namprd11.prod.outlook.com (10.164.155.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Mon, 6 May 2019 08:19:01 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e0e3:1d51:9e3e:6dc]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::e0e3:1d51:9e3e:6dc%3]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:19:01 +0000
From: <Eugen.Hristev@microchip.com>
To: <raagjadav@gmail.com>, <Ludovic.Desroches@microchip.com>
Subject: Re: [PATCH] i2c: at91: handle TXRDY interrupt spam
Thread-Topic: [PATCH] i2c: at91: handle TXRDY interrupt spam
Thread-Index: AQHU+afGtB2DltHUaUutNg+MltWZ66ZS4JCAgADjRgCABCfeAIACOUyAgAOvEgA=
Date: Mon, 6 May 2019 08:19:01 +0000
Message-ID: <408ff580-3633-f510-4223-50064f93024a@microchip.com>
References: <1556005008-6318-1-git-send-email-raagjadav@gmail.com>
 <20190429090005.f6ydghzu5n5yruav@M43218.corp.atmel.com>
 <20190429223332.GA3908@pc>
 <20190502140116.rim72idpgvq4h4vc@M43218.corp.atmel.com>
 <20190503235851.GA4242@pc>
In-Reply-To: <20190503235851.GA4242@pc>
Accept-Language: ro-RO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0801CA0085.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::29) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190506111414120
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cec940af-5dc7-4b9b-555c-08d6d1fb7e62
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR11MB0073; 
x-ms-traffictypediagnostic: DM5PR11MB0073:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM5PR11MB007389977600C95281287B33E8300@DM5PR11MB0073.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(366004)(136003)(396003)(39860400002)(346002)(129404003)(199004)(189003)(14454004)(54906003)(53936002)(72206003)(110136005)(5660300002)(966005)(6306002)(6246003)(6512007)(256004)(14444005)(8936002)(6436002)(99286004)(76176011)(71200400001)(71190400001)(66066001)(52116002)(68736007)(31686004)(229853002)(478600001)(36756003)(6486002)(31696002)(8676002)(81156014)(81166006)(86362001)(6636002)(476003)(11346002)(2616005)(486006)(4326008)(446003)(3846002)(6116002)(2906002)(7736002)(305945005)(6506007)(73956011)(66476007)(66556008)(64756008)(66446008)(53546011)(186003)(26005)(316002)(25786009)(102836004)(386003)(66946007)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB0073;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5mkIm/M7mX1VyrvPdi9ugSfWWXVc80FpDfBhXxAYIeb1LhQSStlrEAIdQ/bWU0X8aLLAXmcOLdBhAqJOQyI9O6RXcHyXj45NpZ/EHdg641PImjKhYmlLpVAv18lIdwsQZuYv+rz92l4BP4duhJrHYqb5RX2gT7Mi/pQczL+nrjpl4NWfHnrRc1Vxw02NFOyVP3NPR8UbiNroEK15GIb1POBVdwAGM35UG8+w2S8I2GWaG28RGZj4HDz9BGg/yBbW4RYpJQGZbyqSyMcAx8ZtGQ/MonFsOYxuiM8SFzFxKlLN4ogcSHLM3J4O6mzwXC1+0ae20BhM86yeA9CGOBWTGKlI6pO/gwHV+bGP2o96pvkvfvkuqXer6lh2aj9JUAzQsbsnSeBYUWjV80K+oOilSpVThfcMvAOaCXMsfDSOrkQ=
Content-ID: <2241B9E8772E5F4287F8CB6B00D5A453@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cec940af-5dc7-4b9b-555c-08d6d1fb7e62
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:19:01.0436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0073
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_011934_781820_7F83DC40 
X-CRM114-Status: GOOD (  27.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04.05.2019 02:58, Raag Jadav wrote:

> On Thu, May 02, 2019 at 04:01:16PM +0200, Ludovic Desroches wrote:
>> On Tue, Apr 30, 2019 at 04:03:32AM +0530, Raag Jadav wrote:
>>> External E-Mail
>>>
>>>
>>> On Mon, Apr 29, 2019 at 11:00:05AM +0200, Ludovic Desroches wrote:
>>>> Hello Raag,
>>>>
>>>> On Tue, Apr 23, 2019 at 01:06:48PM +0530, Raag Jadav wrote:
>>>>> External E-Mail
>>>>>
>>>>>
>>>>> Performing i2c write operation while SDA or SCL line is held
>>>>> or grounded by slave device, we go into infinite at91_twi_write_next_byte
>>>>> loop with TXRDY interrupt spam.
>>>>
>>>> Sorry but I am not sure to have the full picture, the controller is in
>>>> slave or master mode?
>>>>
>>>> SVREAD is only used in slave mode. When SVREAD is set, it means that a read
>>>> access is performed and your issue concerns the write operation.
>>>>
>>>> Regards
>>>>
>>>> Ludovic
>>>
>>> Yes, even though the datasheet suggests that SVREAD is irrelevant in master mode,
>>> TXRDY and SVREAD are the only ones being set in status register upon reproducing the issue.
>>> Couldn't think of a better way to handle such strange behaviour.
>>> Any suggestions would be appreciated.
>>
>> I have the confirmation that you can't rely on the SVREAD flag when in
>> master mode. This flag should always have the same value.
>>
>> I am trying to understand what could lead to your situation. Can you
>> give me more details. What kind of device it is? What does lead to this
>> situation? Does it happen randomly or not?
> 
> One of the sama5d2 based board I worked on, was having trouble complete its boot
> because of a faulty i2c device, which was randomly holding down the SDA line
> on i2c write operation, not allowing the controller to complete its transmission,
> causing a massive TXRDY interrupt spam, ultimately hanging the processor.
> 
> Another strange observation was that SVREAD was being set in the status register
> along with TXRDY, every time I reproduced the issue.
> You can reproduce it by simply grounding the SDA line and performing i2c write
> on the bus.
> 
> Note that NACK, LOCK or TXCOMP are never set as the transmission never completes.
> I'm not sure why slave bits are being set in master mode,
> but it's been working reliably for me.
> 
> This patch doesn't recover the SDA line. It just prevents the processor from
> getting hanged in case of i2c bus lockup.

Hello,

I have noticed the same hanging at some points... In my case it is 
because of this patch:

commit e8f39e9fc0e0b7bce24922da925af820bacb8ef8
Author: David Engraf <david.engraf@sysgo.com>
Date:   Thu Apr 26 11:53:14 2018 +0200


diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index bfd1fdf..3f3e8b3 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -518,8 +518,16 @@ static irqreturn_t atmel_twi_interrupt(int irq, 
void *dev_id)
          * the RXRDY interrupt first in order to not keep garbage data 
in the
          * Receive Holding Register for the next transfer.
          */
-       if (irqstatus & AT91_TWI_RXRDY)
-               at91_twi_read_next_byte(dev);
+       if (irqstatus & AT91_TWI_RXRDY) {
+               /*
+                * Read all available bytes at once by polling RXRDY 
usable w/
+                * and w/o FIFO. With FIFO enabled we could also read 
RXFL and
+                * avoid polling RXRDY.
+                */
+               do {
+                       at91_twi_read_next_byte(dev);
+               } while (at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_RXRDY);
+       }


In my opinion having a do/while with an exit condition relying solely on 
a bit read from hardware is unacceptable in IRQ context - kernel can 
hang here.
A timeout would be a solution...

For me, reverting this patch solves hanging issues.

Hope this helps,

Eugen

> 
> Cheers,
> Raag
> 
>>
>> Regards
>>
>> Ludovic
>>
>>>
>>> Cheers,
>>> Raag
>>>
>>>>
>>>>>
>>>>> Signed-off-by: Raag Jadav <raagjadav@gmail.com>
>>>>> ---
>>>>>   drivers/i2c/busses/i2c-at91.c | 6 +++++-
>>>>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
>>>>> index 3f3e8b3..b2f5fdb 100644
>>>>> --- a/drivers/i2c/busses/i2c-at91.c
>>>>> +++ b/drivers/i2c/busses/i2c-at91.c
>>>>> @@ -72,6 +72,7 @@
>>>>>   #define	AT91_TWI_TXCOMP		BIT(0)	/* Transmission Complete */
>>>>>   #define	AT91_TWI_RXRDY		BIT(1)	/* Receive Holding Register Ready */
>>>>>   #define	AT91_TWI_TXRDY		BIT(2)	/* Transmit Holding Register Ready */
>>>>> +#define	AT91_TWI_SVREAD		BIT(3)	/* Slave Read */
>>>>>   #define	AT91_TWI_OVRE		BIT(6)	/* Overrun Error */
>>>>>   #define	AT91_TWI_UNRE		BIT(7)	/* Underrun Error */
>>>>>   #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
>>>>> @@ -571,7 +572,10 @@ static irqreturn_t atmel_twi_interrupt(int irq, void *dev_id)
>>>>>   		at91_disable_twi_interrupts(dev);
>>>>>   		complete(&dev->cmd_complete);
>>>>>   	} else if (irqstatus & AT91_TWI_TXRDY) {
>>>>> -		at91_twi_write_next_byte(dev);
>>>>> +		if ((status & AT91_TWI_SVREAD) && (dev->buf_len == 0))
>>>>> +			at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
>>>>> +		else
>>>>> +			at91_twi_write_next_byte(dev);
>>>>>   	}
>>>>>   
>>>>>   	/* catch error flags */
>>>>> -- 
>>>>> 2.7.4
>>>>>
>>>>>
>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
