Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1B51A7655
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 10:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nk7/Zs6yByAEx8AOLb5yHpZTJ7RZMNQcm96jjyQmZzs=; b=cHMbue7LzodbJE
	mN8DlqK8Q0/xf6VbKOd6WVzkg7oGrbmpscnWFG9B8vHLh6PzxAFhfVBC5cFI01T7g0Wes4e5cBAMg
	Bsu4uCiJYH7GYaPhk4TNenARRFPdyFoE+StDHJW890vuWJBLuPIdDhkFMGalqr6EOkCXCvRoIw0MN
	S2UlOGOfF0Nvs2COTI9siJLX4ABK7VOQwv9gsqdsS0ZwDO1BfzgN4fJPOjr/p5dFlPWPcxsgNlYbt
	4+h/1FJEZSWSclCd4IdmkGutCWF3Grj/0xcmf4/mUGnzDX68NIdxRKokQxUq02I2OZQ4X6jB25Q3W
	ZMgYMgkD6FiAVRHtbJww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOH9C-0008HM-PU; Tue, 14 Apr 2020 08:42:22 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOH95-0008Gb-2q
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 08:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586853734; x=1618389734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YyqlXQy+5+tIBi9vWs7cGdgbh2uZRxgJymCKCnTpy+M=;
 b=vJTELp5OfGDq8N0JKpFF20iCXIwt49OKHhkbPgO4R3K+DgZ60ieneZcG
 DJ/bL4IrTUkNQU7qtX7J7afuK+7cF/hHZttXQcbYxciHQxDAZ6aZbHS0i
 h9Q6dYLK4XMtB4AyY5zNIfMIufVxdaRl6yAzhwKKVpfUWgMj7OkWIEq9s
 3AnrKODrWTbinxn/hyzFg+HjKgJA5YnHsiU8QJfrA6CuVrYekggTrLrnx
 Sufafqg5C6HwcAtrr0Khg+aAb9EdgegB/a7xe3Xuymy/t9ePWC91xT4LF
 uUrGxH/BvYYw2DmEsptfyv3dcOXoFjO8hfwa8bJp9xU/De97U15e+orTW g==;
IronPort-SDR: v4RgAcfhcgbYLdiH05blLF7t1UOCsUz8+DChRMq4qkHJRzWoxB9OJdL5Ht9IS4HZEH6WkaO4G3
 xbtMt1jjbQudI5fCsMyrt7N6DwHROtWYHonELN1m2q/pMOkNaYT0TdJqw9DSfEK00f0giUCImN
 2j6XZgS6k89EzFcFcX81Vb6T+2pumbbgPPQ5/w+d3onucoWH1p/3Dq4doa5GF0cK+8qlh+17xn
 4H7tSHalQiXe5RGLBtnlOHCh3bPWZ2VlQ6B9VyxeN1OP2XFA7TGWGReVxpab48XIr0zmF0Jx3n
 nE4=
X-IronPort-AV: E=Sophos;i="5.72,382,1580799600"; 
   d="scan'208";a="9052643"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Apr 2020 01:42:11 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 01:42:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Apr 2020 01:42:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M9Fn42FfZuwhniiAYbK2AwV8Z8DZyrpnDKj9mfQg+GRdAQpWthAvZWzl44qak6LxhVu3bWwnV0E1hmIZiY1f7DlGUEaQHJAxcXisaJb0VPBfwvjGwEwqcRRmfhHh9pNkQspnbtXN3G0JbTT+yug2XjTEehKPQNwMhe5ziuZDa8LTRDcMnBYb8znFNN8xBqOPWkHX2WOfvgXEYubKXSLMq66Q+bImwSjU9WNc9XvBW6pYSbXFDHVRwqxbcrbh1s7Dope4ytHh/eRJEcsxVhbW3tEjq3HSslYA7O4acX9V9qIxg0bByk41Gq7r3o/DbqpPR5YDfKmRkaF0HgR7xJNTcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YyqlXQy+5+tIBi9vWs7cGdgbh2uZRxgJymCKCnTpy+M=;
 b=AKmzy/Lx6pvUPy7pHfE/hR1IKD2+FFyqz+HiyBRP7Y110mdljJGdRMG0pKDA8qgsAHkpA7dJ2eeRnx4mVna85Vx5p4UCcGLSDIbptcrHmRUPCCwnVrMS22n5qX7R0RJltmgHb2gMLBNSphDt5pBK10q8v5dmh4ufCuMLykaQzB/H9goLrC/8EAr+hbJY7VsDzEXcN24jSVR7Z62Wky3ZyVFzVeBXqNDKdfcCZseI5heID2V1CKc37laj9q2/L7yvxP7Mxvc5ONH54aRATuq9wEvJ3fc06BnLawLhvjs1oLArwvu778fAOvutG8vWTWYgYcU5P6V7ouPsliAtWke6Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YyqlXQy+5+tIBi9vWs7cGdgbh2uZRxgJymCKCnTpy+M=;
 b=QSsHB+AA1ULtYkB09qBMp4w11qcxzfacvpjJLXGkdUaWeivriJIm4S+Ioish+lMX7SpoOEr/r2vUPgYsCAWuZRD6zFV79Y4s0ujf+D7mLOLqzQ5FvzuYd26c7Sn2LxSLirO9mOyvYcwKrpsjRn2Ee2RB3Dwb/Km5cVHDCjc+L5I=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3962.namprd11.prod.outlook.com (2603:10b6:5:192::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.26; Tue, 14 Apr 2020 08:42:08 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 08:42:08 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Topic: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Index: AQHWEXCuyP8yxRbKYUqiuXPeALwxyw==
Date: Tue, 14 Apr 2020 08:42:08 +0000
Message-ID: <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
In-Reply-To: <20200413104652.GE3628@piout.net>
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
x-ms-office365-filtering-correlation-id: 013119d4-b562-4d37-51ce-08d7e04fb7c7
x-ms-traffictypediagnostic: DM6PR11MB3962:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3962783B69C37EB3E839ED0387DA0@DM6PR11MB3962.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(6506007)(53546011)(186003)(5660300002)(64756008)(7416002)(31686004)(6486002)(76116006)(66446008)(2906002)(26005)(6512007)(66476007)(66946007)(6916009)(66556008)(8936002)(498600001)(36756003)(54906003)(4326008)(71200400001)(2616005)(81156014)(91956017)(966005)(86362001)(31696002)(8676002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ISctB5nizLt110GeaQxYM2RymcColc5kT4AFlycr+FXOZpdI69iNFiBx9pLwajcPJppkgxkz0wCUMfhQPeBMrFl0hV9xORjNxyuGxwlAhHQquYFFySBGSIK60K99v8O2Ycdz797y2t0e04btdjJqhTprca6TSHbG5NrH4L4P0wEXDzV4w8Tx4AuSadhqOW0+FAqZ/i2Z6ZCHpRn9hiZp/wCENrhhkWKglRTdoesNTsXEr4WbaodNGTahlOoz8m4VO8A9MI5zPbo+RKTk/m/r35hteTZPU+SMEVtLrnjyBK9MH75WxVa9u2arwqdGXRhTGOevIzDv4mKR14wq2GJh9O4Y8ecgoao/SiJJbP8CwAw/dsGa0b/KUy6iASVdxK5FmQeDq6SX+FSKGnT5FHDQliqKqbkZdPu/nd5SDHlbAHOLUmoepOyaZCgcUPJv0km0pPbxK9iv7YCFcCMD4ZU358rnaQhUJkM6UaaY1yOXSC0Ckim+bnDaEqKECkrT7cAeOG4aqd0xX/tgS2GT9Bu8LQ==
x-ms-exchange-antispam-messagedata: MwIS9kDZotA19AurzirqH41oxj0KXddKOkRwblq0C3+OeCZgMaQrzR61YZmiuW56nvyEL/9DTwXsJGfKK2KuT6tQHEnAIyU8fbjtIjj+ucd7CYf9Yv50Pqll5Zrvizqc2THUH6clfA6dTJ1pq3FGCw==
Content-ID: <F36CB46DEE071B4BB9A3E12636A192D4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 013119d4-b562-4d37-51ce-08d7e04fb7c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 08:42:08.4616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z8yjNyIz+OqCl2srr3rOSs6cTmUa+bu0wqrzoXKusIsZWL4d8PqadMpZf0uqG2PxoIqpNfzjO8jKAJSXMYpcMIHsRnJp+UcEZwFC7j7gMfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_014215_257033_5904E966 
X-CRM114-Status: GOOD (  25.36  )
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



On 13.04.2020 13:46, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 13/04/2020 08:51:12+0000, Claudiu.Beznea@microchip.com wrote:
>>
>>
>> On 11.04.2020 01:26, Alexandre Belloni wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 10/04/2020 19:26:58+0300, Claudiu Beznea wrote:
>>>> Add RTT.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
>>>> ---
>>>>  arch/arm/boot/dts/at91-sam9x60ek.dts | 5 +++++
>>>>  arch/arm/boot/dts/sam9x60.dtsi       | 7 +++++++
>>>>  2 files changed, 12 insertions(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
>>>> index ab3d2d9a420a..4020e79a958e 100644
>>>> --- a/arch/arm/boot/dts/at91-sam9x60ek.dts
>>>> +++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
>>>> @@ -617,6 +617,11 @@
>>>>       };
>>>>  };
>>>>
>>>> +&rtt {
>>>> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
>>>> +     status = "okay";
>>>
>>> Is there any point using a gpbr register while there is already a much
>>> better RTC in the system?
>>
>> Only to have it also enabled.
>>
> 
> Why would one use the RTT while the RTC is far superior?

I didn't enabled this for a particular use case, but: couldn't this be used
by some user that wants to generate multiple alarms? from multiple RTCs?

Moreover, this IP's counter has the possibility of being clocked at 1Hz.
Couldn't this minimize the power consumption while being in a power saving
mode?

> 
>>>
>>> In any case, this diff should be merge with the other at91-sam9x60ek.dts
>>> change instead of being with the dtsi change.
>>
>> The changes in this patch are related to enabling the RTT. The other dts
>> change is related to enabling gpbr. The RTT uses that enabled gpbr -> one
>> change per patch.
>>
>> If you still want to merge then, I'll do it, but then it becomes mixed.
>>
> 
> This patch is already mixing add the gpbr in sam9x60ek and add the node
> in sam9x60.dtsi which is worse.

This patch is like this:

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts
b/arch/arm/boot/dts/at91-sam9x60ek.dts
index ab3d2d9a420a..4020e79a958e 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -617,6 +617,11 @@
 	};
 };

+&rtt {
+	atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
+	status = "okay";
+};
+
 &shutdown_controller {
 	atmel,shdwc-debouncer = <976>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index 326b39328b58..e1d8e3a4cb0b 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -661,6 +661,13 @@
 				status = "disabled";
 			};

+			rtt: rtt@fffffe20 {
+				compatible = "microchip,sam9x60-rtt";
+				reg = <0xfffffe20 0x20>;
+				interrupts = <1 IRQ_TYPE_LEVEL_HIGH 7>;
+				clocks = <&clk32k 0>;
+			};
+

It doesn't adds the GPBR in sam9x60ek, it adds rtt in sam9x60ek which uses
GPBR.

> 
> Just have one patch adding the rtt node to the sam9x60.dtsi and then a
> patch adding the RTT to sam9x60ek.

Ok, I understand this.

> Because the RTT uses the gpbr, it is
> a good time to add enable the gpbr, this is a single functionnal change.
> 
> Let's say that for some reason, the RTT patch on sam9x60ek has to be
> reverted, then the RTT node is still defined which is good for all the
> other eventual users.

RTT node would still be defined but GPBR node will not be enabled.

If RTT patch contains this change that I understand you want me to merge here:

+&gpbr {
+	status = "okay";
+};
+

then, theoretically, some other IPs using the GPBR (RTC have the
possibility of doing this), may be broken by reverting the RTT patch that
includes the GPBR enabling patch.

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
