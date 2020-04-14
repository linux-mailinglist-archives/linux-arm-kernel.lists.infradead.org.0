Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 380591A7A6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bEHMWFovcr8dhPicrEbomvjpCa695j1WHM2s4piMl0=; b=ZOzyRcBsO0jFDM
	oYRKDPuNmVxQUf75TShEqtTnWVKjyL2hzqEm+wWkYGmPeash+FZVBHQa0MqYTd50XyQ5k+Cr1T3xE
	YLM3XKQkJwCcBEuw0DC+swPpfz9Mhnj2N5YJfyh77YX+GVGGMVMRr8GsWeCg1KnmDPqlAvjdr0DJf
	ZE8Vu0dpB61yJy5tdgTQugcWUAVJcazfzhNlbu3w0xXleljR34w7OxB9F+IlT0Lf9A9EOuK0r/0r4
	wMAkxfy/aIlJYdqdTVhKU5sxZr8b+PDaOu3bKUwVj8N7Mowv+cWc3xU5A7IGKnuDCzvFcFuQ2kyJR
	Dq3SP4Rwp65yzz4EaXYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKS8-0003Qm-1y; Tue, 14 Apr 2020 12:14:08 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKRx-0003Pm-G0
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586866437; x=1618402437;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Yp0Wt+g6nKCxTjnWZD5r9njz9ZUGFJHI/hM5bHlZy5U=;
 b=QmiEd7TXA4eHqNrRQOpGQDty2frEjBFYcg9/yBD3bTnOCq+DJYGocoNh
 EPckqgBmxBfNVvHRn9i5S1FPybW7JnGCkZCR22TVKNREJNtZKYokDGLcq
 cerG33W9H9ZypLSdSTt9TOoSytoUuf11te/POMsjuVpoDADdu+4MmqBXq
 Hc26Tk/+CI6ONHn9EUpGLoYUcRl7xacLC2vLp3jWNIAwc0u6rT0BuMaJJ
 wrjPKmakscuuADVbg/cAi3oM6OWbPcE3wr/NYhZdrASxHhAPUC1hEwzus
 vypntuXHHXUZeccIOEt7kkmVW9v6tm2CRUqHnnRZm3OmeEvzgWXyqsGmT A==;
IronPort-SDR: +TSyZYp0sij5y5X1jFmMz0AbmKfbRqgRKuq2HIqxSRjBCYhNpwXpHezO/R8yG18CVytNiyPBcm
 PL+PynfS8r1OW0BBPyhQ4/mjHdmaLVnIwGtbRVelGzCWj0JwWmiTIzkIuwYrNkPQa8yzXffL22
 6yIlylBTm4em1Lk2hzU1O8oAOvnia9qbeL6CcPXLgEuAg0Y9jLEieZh+wiDiauPl6CaQWS41zW
 67xKYrs75IAnH//J6JhpeIeqhUX1fWFaiLYjPHhCm53Ec8ETFQc9swenfd26aGEW3+UJcNMqwI
 UrE=
X-IronPort-AV: E=Sophos;i="5.72,382,1580799600"; 
   d="scan'208";a="9072711"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Apr 2020 05:13:49 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 05:13:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Apr 2020 05:13:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1tOx8y/qucLI7zqbWRIbIpI9qEVn4xwCU8vVIEMXLYtpVPbsFsKfZQK6QY9hrDgPhzPVywn3gkV92JaQ3EgY+aI4qy3ekh0um7DH8jGnlNpkk6ahGIxzCC4D3YiYQAbK/6TbQGnTpF3WlLPchthvs4pttIXGmQqQ2tmarpL543u5A9RH4O8MQgl1EfsP5SCefLhzH2aqkOViMBno9mO0OREd1fZWy0TiReex/0ZTqdsILIzUM2tWsbEmA+U5K7U0hJiXCzKiHE5/6ryLLJTaa3XKULuthBM/t20uNkIyBlCWPIdNRgvlfW/yrd3d7nWF7d3SWxU9jtw8I4Jr0rm8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yp0Wt+g6nKCxTjnWZD5r9njz9ZUGFJHI/hM5bHlZy5U=;
 b=CF+BCK9YqX8ucYjWSoZnng/SFqHoFh3P+Jz5LsqIPStAEaLUBBwxuFqSHEx1E7pat33ZeTM4hAdSbrBecJkgVb8CGK8n+WeCF6UoDjJ29VmYyyW/beXKXUJ2ze10hNvoFWidn3NzDr/wKcaoriZ54OeMZcnPyIupSY9G+qh6NvDUA/do0R7bgff7RZBYU8Sg1oIFoPD9t9IlwpJZdlzFhzsMZyCRmMIRoYlo/7Uti+i8Wa0uj3fI/RMp11oaL7gY2v8CogOPgbNwZ+2kqYqHlGaCqyMc88e7bsgEM35qngxoSE1m40wnVWllbilJ+0vG5ngLZ32zQ3H7MkXskLjoqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yp0Wt+g6nKCxTjnWZD5r9njz9ZUGFJHI/hM5bHlZy5U=;
 b=fQZfQX049RxVtANdV2aUGbWjfGM5p0aplgjKGa9zXXJWQ1giDnMl9/z3o430aMwAIT1csCudpwYdfCcBonAOr53u0qctofrmIMyCepp/YnLR+/4Gr7l7KgWLkdZoNqIS2bjDMx6DBjkKzL3kcwjwm8ABHp4USiFaPBazppXk5gI=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.28; Tue, 14 Apr 2020 12:13:47 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 12:13:47 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Topic: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Index: AQHWEXCuyP8yxRbKYUqiuXPeALwxyw==
Date: Tue, 14 Apr 2020 12:13:46 +0000
Message-ID: <a07d841e-efa9-6c01-69e2-0ed33f9759c5@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
 <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
 <20200414111600.GE34509@piout.net>
In-Reply-To: <20200414111600.GE34509@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Claudiu.Beznea@microchip.com; 
x-originating-ip: [86.120.235.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29e2f627-24f5-42d5-4f92-08d7e06d489b
x-ms-traffictypediagnostic: DM6PR11MB4707:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4707FD3554A80DC7E6755FEB87DA0@DM6PR11MB4707.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(396003)(376002)(39840400004)(136003)(316002)(478600001)(54906003)(4326008)(26005)(8936002)(81156014)(71200400001)(86362001)(53546011)(6506007)(31686004)(36756003)(6486002)(66556008)(66476007)(6512007)(66946007)(91956017)(76116006)(2616005)(66446008)(64756008)(186003)(7416002)(6916009)(8676002)(966005)(2906002)(5660300002)(31696002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VsH+a4yBr74lwB42DfJyotIld8kAbOTYuRAQjg3CliwmoKMceNUWxkB7GHGlAp5mRSo/woZOEixmz8x5rg/cf1bWNIs8nCXwFRY9kZRqP8YGNrIcnQvNssOcsr63zX260k9KK5t4HH37m9Es1iVuq5dITn7SglYpOEFnlZX2Su5zcZr62jc6wk4rkrXzs7Pmmi8zeoZjw7R4WrA3VMxFud6F0N33hnc2tSfoSdJWe/5aplBOPL9s0Z6K4FDLOpn92tadiZ5gZPWNeG1tUX5semxhDE8XcGGyT8D2V1ocwRWAoD3eznvg+erWDrHdkdUe1nSSHlvJjQ+AIwwsGKaObugQCblVd9dye0xhdjEl+ym8xObY9sxeKuV1bLWdt2ySYPchQw0BDrwIe4zm0ARzXuZo5KLHq+JeVsbhc5QgG3BnOUXlL3wmk7q+WDcpGZTDHjM2vk+LkSLBARi0oRkQ6q3+K4iI9zkQ1nX21MpRONiAqD3BzT57iZtWaUxczVrpr6h4fpdbtRhGNgAvFEV/hw==
x-ms-exchange-antispam-messagedata: C4VOBQDbFEC2BFNLQcm0Ckk72oRL54P+B8uFzIk82Z1+SLO1Wk06VMLdt4QlKWHlNkeHoU9VkIwUeqhzpEZ5abr1eBi+Yv7Ua2WG/3gv+Rl7w2z7GMmaB8OkePIyUR5G9BJX2YcpWBraGAQCQpkQYg==
Content-ID: <1633ABC1A9D01F4CB5723A45EFD7BD51@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e2f627-24f5-42d5-4f92-08d7e06d489b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 12:13:46.9060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D0GrjWDB31wELKKeylQKCPpLh9Qe+tT+tHhC3jRiOh6I3RD3Ilr3Vv/A5Io8g+MPJ2r+636BixM5thn6NAXLDVn1RuCr0Dln5UYeqFFaIoY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_051357_632797_823367D3 
X-CRM114-Status: GOOD (  24.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14.04.2020 14:16, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/04/2020 08:42:08+0000, Claudiu.Beznea@microchip.com wrote:
>>> Why would one use the RTT while the RTC is far superior?
>>
>> I didn't enabled this for a particular use case, but: couldn't this be used
>> by some user that wants to generate multiple alarms? from multiple RTCs?
>>
> 
> I very much doubt that as Linux is able to properly multiplex alarms and
> basically, the only one we are interested in is actually wakeup.

I think you can use the wakealarm sysfs exported file to prepare an alarm
and take user space actions based on that without being suspended.

> 
>> Moreover, this IP's counter has the possibility of being clocked at 1Hz.
>> Couldn't this minimize the power consumption while being in a power saving
>> mode?
>>
> 
> And that 1Hz clock is coming from the RTC so using the RTC is
> definitively consuming less power.

Datasheet specifies this: "Configuring the RTPRES field value to 0x8000
(default value) corresponds to feeding the real-time counter with a

1Hz signal (if the slow clock is 32.768 kHz)."

So, it is not the RTC, it is the slow clock divided by 32768.

> 
>>>
>>>>>
>>>>> In any case, this diff should be merge with the other at91-sam9x60ek.dts
>>>>> change instead of being with the dtsi change.
>>>>
>>>> The changes in this patch are related to enabling the RTT. The other dts
>>>> change is related to enabling gpbr. The RTT uses that enabled gpbr -> one
>>>> change per patch.
>>>>
>>>> If you still want to merge then, I'll do it, but then it becomes mixed.
>>>>
>>>
>>> This patch is already mixing add the gpbr in sam9x60ek and add the node
>>> in sam9x60.dtsi which is worse.
>>
>> This patch is like this:
>>
>> diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts
>> b/arch/arm/boot/dts/at91-sam9x60ek.dts
>> index ab3d2d9a420a..4020e79a958e 100644
>> --- a/arch/arm/boot/dts/at91-sam9x60ek.dts
>> +++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
>> @@ -617,6 +617,11 @@
>>       };
>>  };
>>
>> +&rtt {
>> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
>> +     status = "okay";
>> +};
>> +
>>  &shutdown_controller {
>>       atmel,shdwc-debouncer = <976>;
>>       status = "okay";
>> diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
>> index 326b39328b58..e1d8e3a4cb0b 100644
>> --- a/arch/arm/boot/dts/sam9x60.dtsi
>> +++ b/arch/arm/boot/dts/sam9x60.dtsi
>> @@ -661,6 +661,13 @@
>>                               status = "disabled";
>>                       };
>>
>> +                     rtt: rtt@fffffe20 {
>> +                             compatible = "microchip,sam9x60-rtt";
>> +                             reg = <0xfffffe20 0x20>;
>> +                             interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
>> +                             clocks = <&clk32k 0>;
>> +                     };
>> +
>>
>> It doesn't adds the GPBR in sam9x60ek, it adds rtt in sam9x60ek which uses
>> GPBR.
>>
>>>
>>> Just have one patch adding the rtt node to the sam9x60.dtsi and then a
>>> patch adding the RTT to sam9x60ek.
>>
>> Ok, I understand this.
>>
>>> Because the RTT uses the gpbr, it is
>>> a good time to add enable the gpbr, this is a single functionnal change.
>>>
>>> Let's say that for some reason, the RTT patch on sam9x60ek has to be
>>> reverted, then the RTT node is still defined which is good for all the
>>> other eventual users.
>>
>> RTT node would still be defined but GPBR node will not be enabled.
>>
>> If RTT patch contains this change that I understand you want me to merge here:
>>
>> +&gpbr {
>> +     status = "okay";
>> +};
>> +
>>
>> then, theoretically, some other IPs using the GPBR (RTC have the
>> possibility of doing this), may be broken by reverting the RTT patch that
>> includes the GPBR enabling patch.
>>
> 
> But this is very unlikely to happen because this would be limited to a
> single board device tree instead of impact every sam9x60 based boards.

Very unlikely but a having a patch with diff like this:

+&gpbr {
+     status = "okay";
+};
+
+&rtt {
+     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
+     status = "okay";
+};
+

and reverting it may affect the other users of gpbr in sam9x60ek.dts.

> 
> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
