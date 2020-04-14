Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE56B1A7BB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUVYYQgvsq+tadspZHphsFSxlrblOjPUPo18ZTHnt1E=; b=fENREij2UonU+b
	rdYiF55DE88jKxMJyf2NEZtYXhyi03fJ3utkMLB4Km46Apxn7ccQhQV9THNgj92wztyaMNKqbAWnR
	u568mPDzcRU2VSgbCssy92P5Ezvz0VsK2qNjNSzd6RdPYgah/F9rDDTdecU5sKG3GtIp91dfzJcb8
	pjFDaNeVra/+0EEfSCCZsozxQm9qeqe0XPZOfPxsbAOVeMaridwgqXeS1BbPNFBrrOirLIV20Kgyg
	vAdMU2fuGpUkBnp5nt8LcjG7GnVK6wjjROWzJGUhv6eGQzjDoUYfo7GirTrSpcl7WF1e9W6V2i2Of
	FNdA7sXBfT8BL7JM0Evg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLFj-0000QG-4v; Tue, 14 Apr 2020 13:05:23 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLFW-0000PL-8a
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586869510; x=1618405510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=z1sW6sRKIfZdG/DqO3/mKHPg+dh3EuVMiCHHmb4e78g=;
 b=X+3mvnz1mDDfDl+72BV4RrJRpp7+xAdnIuCFWOCOOjxknUP8ZlSTasDo
 O/H6DpB2XRIi17YzlWKUqZFR3XU0UG/YajWE8ve8GVeW4cu36vQYA9QYC
 PjDQiLI+JOUDQPthndAOc86pz7tWvhLYgI/84+geL+sEIYh+ucfdvV79Q
 MBEmjL0DMJuRx2hUgyYSawmI+JL0EAxU0XUhTY+oplSiZVOvIGZoO/sBo
 NxC1vDxGaz+FU5n+/ILh10hTIVVKvD0bgj+NftJ6URDEDlMdnKl8Ee0Ut
 LFAZsT2yGuwWFBVmfOIYJK7X8Uy4cuBnW2m4axtx1Da4z9CkOQmRCp5Qn A==;
IronPort-SDR: DUYKubzgYvEF+5mLwd1WHWzR0cwvcsvFqiTxZJjybLGYiQmxGA2BrK0qgfYroS0lyusFq7KLB6
 zUyK9PwjQLNSHBJxgsSeBdFgUk8Jo57tJD5CdfVdQ87Ac7R655pUdU53J88OQcNmTP/1uTG/Fv
 SRpZYQQtlFAqWZgKVk1ulLwtkOG9ba1hgZV8OA2XqKaAmAOkAkk+owiwntMvpE2/ZIWfB5JZK2
 BAdrhj2sZLjWkjlnlFKEIBOdF7csL5OKVm666UW7HwFgSa5Xqomi8Bd2M9ukXIXH24+IhUV9BI
 eUk=
X-IronPort-AV: E=Sophos;i="5.72,382,1580799600"; d="scan'208";a="70269006"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Apr 2020 06:05:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Apr 2020 06:05:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 14 Apr 2020 06:05:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uzk7eMzQFms44MT0n/NpUC/+PoE6BORzrc8h3v3CMgRHzN0SNpo1U8Tm0t19voNDmujmnk2EoIQJ0aOafvE/g2KfVWV5hmnoxknVmdGIH1b8O3x6Okd4CtAeR+gmvs2/KXQLS4x0fQDXAgfuGyrF6aPNlTu1eTUyvzf68+slHA2hRwr6dbWZ5lXLjrXmJpaU5h2gn2vfqfiQWYayUwXzBWap98CBUFEyXHk81xG8ASymX2EOcWJ5V6ZMJh6pZKOPmRQIxHMfpKRe34RgOZl5JFgQdrSNWClHlmCJoQjxEVUxVJo555ttDu0yph9O7ocAKu7gZj0LiU37YFWSDw2/TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1sW6sRKIfZdG/DqO3/mKHPg+dh3EuVMiCHHmb4e78g=;
 b=VeGEzQcnJDDhiKdW+AffwLdXklaO6UwU5q9Re71J9/uFy36DM6zP4KKBoQ73pn6Z38qt8oOYp7b39jUeYXKWwJLRxpWNmibzd6XpYbgffp1/4NxWhwUInBvZIRmxNJlVwVLvJq6GNMK9nV8gFXBruVIDScChMH86XiPXFmXCzuXu5P43TLdSQz9hq3tcf5/QAwVEaURaGYbG9uf13f7E1a3vwPCw2jahlNl8lZSnv996hUwc7eFht00ya5EM0wOSYYHe+i1PJL5mbpFGzmWFKcSxUndAX1TMbXtXtB/mu7O89N3DdLHhyptnj27zpGyT6th3kTrstCAzsWWj4xQApw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1sW6sRKIfZdG/DqO3/mKHPg+dh3EuVMiCHHmb4e78g=;
 b=jn73sKs9h/Pli9/p7hHAab//mlNst1L6i45Tu66oNFeC9B8/vL9OUzuhNg4+VxXCN+umdxmhXhB1/xnqD7EjYpeeaUF7B1hUxm5Ee+e7vS8iqik23JkmrojuZUoEchUg7V/jYiYvN9nuUw1/x87bd690r3sYxJ0CN+GLrp9nzM8=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3962.namprd11.prod.outlook.com (2603:10b6:5:192::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.26; Tue, 14 Apr 2020 13:05:03 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 13:05:03 +0000
From: <Claudiu.Beznea@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Topic: [PATCH 4/5] ARM: dts: sam9x60: add rtt
Thread-Index: AQHWEXCuyP8yxRbKYUqiuXPeALwxyw==
Date: Tue, 14 Apr 2020 13:05:03 +0000
Message-ID: <ae278226-7616-5306-a8b5-3f937aa6b322@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
 <1586536019-12348-5-git-send-email-claudiu.beznea@microchip.com>
 <20200410222658.GB3628@piout.net>
 <c4d46198-488b-c5d6-2a66-865a16840dc4@microchip.com>
 <20200413104652.GE3628@piout.net>
 <3116d1fc-af96-1e0c-aa07-3b34cbd58209@microchip.com>
 <20200414111600.GE34509@piout.net>
 <a07d841e-efa9-6c01-69e2-0ed33f9759c5@microchip.com>
 <20200414124741.GJ34509@piout.net>
In-Reply-To: <20200414124741.GJ34509@piout.net>
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
x-ms-office365-filtering-correlation-id: d7737939-4ca9-46f1-5867-08d7e0747216
x-ms-traffictypediagnostic: DM6PR11MB3962:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB39621441B0D53BFA61C3431A87DA0@DM6PR11MB3962.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(376002)(346002)(366004)(39850400004)(396003)(136003)(4326008)(316002)(54906003)(8936002)(36756003)(478600001)(86362001)(31696002)(91956017)(71200400001)(2616005)(966005)(81156014)(8676002)(5660300002)(7416002)(6506007)(53546011)(186003)(64756008)(66476007)(26005)(6512007)(6916009)(66556008)(66446008)(66946007)(76116006)(31686004)(6486002)(2906002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RqsAoPtzAPmLc2qK4BLD1k9ZpO6M2rHHzBlKeNCiWQ3Y/0/7oQCmiBIJYjO9S+Fijo23FrqPPlErn4Lv9ec89Be8veZgaeGVy3Qrgi1IkhxVe9Tr8TFkRGerDMVm5i4x55aivqx2hjoZYTG9jnxVCLltoJ2B+GD5JRuGh75KHI3fiBDeajkOyxO96Z0TZUMJQs8xTX0KcXDCPzSjh7D/BXkKuxo/uS83idNWuL7G8rswNjpLbOxnLmKXnhMozzOGi0SlQkoIXS/gUJ/2cz5E3FDBpLmHDhxp6INurYY4BsP28GksnQRP6dZyjpKcwyNVqBSI4IH9s1aPhx2teZ7DaT4DR+eCPRbDSato5M7DaCnd21I95YLskpUWzzuNC22sD3ulhjiS+8D+0B3TozeqE00O+fq1ZBmxQ/GxdusjosS0472+xLp+ZPu+szALIEBSkHlhhPu5+ubSmq6AtVSBlMcg3nFx5tD05nNvEKNsTqcmnZsagywYP/9XlMP0kV/OYYpV4KpKMXR9y1KZZSS50A==
x-ms-exchange-antispam-messagedata: ykRNuuRbD4N1mm2ZNJ4ftKnml+xc0m+4VQo0l+u6k7FfOoUMFq2DTdyP6cF1U3tWdZj/b3XKO6Rb24HQoWMqf7k5z34El7Og9t6Kssm46uGI8klMtLoPBks8oPh7++OREuXI2bhBSVRQEJ8ncVj+bg==
Content-ID: <581017C240885A4CB296F260B8203CDB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d7737939-4ca9-46f1-5867-08d7e0747216
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 13:05:03.0160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uiMyjKdkEiu6+bvEYJA260MnIaMNhkA+bxhzzvx5u6UYTK8lQbHBvSFCYajmXXcZ46ruLnFZMCEZoJrdSSA7Qq4/b9tY2pVxNtIZn0uXKCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3962
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_060510_375998_4D77A750 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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



On 14.04.2020 15:47, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On 14/04/2020 12:13:46+0000, Claudiu.Beznea@microchip.com wrote:
>>
>>
>> On 14.04.2020 14:16, Alexandre Belloni wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 14/04/2020 08:42:08+0000, Claudiu.Beznea@microchip.com wrote:
>>>>> Why would one use the RTT while the RTC is far superior?
>>>>
>>>> I didn't enabled this for a particular use case, but: couldn't this be used
>>>> by some user that wants to generate multiple alarms? from multiple RTCs?
>>>>
>>>
>>> I very much doubt that as Linux is able to properly multiplex alarms and
>>> basically, the only one we are interested in is actually wakeup.
>>
>> I think you can use the wakealarm sysfs exported file to prepare an alarm
>> and take user space actions based on that without being suspended.
>>
>>>
>>>> Moreover, this IP's counter has the possibility of being clocked at 1Hz.
>>>> Couldn't this minimize the power consumption while being in a power saving
>>>> mode?
>>>>
>>>
>>> And that 1Hz clock is coming from the RTC so using the RTC is
>>> definitively consuming less power.
>>
>> Datasheet specifies this: "Configuring the RTPRES field value to 0x8000
>> (default value) corresponds to feeding the real-time counter with a
>>
>> 1Hz signal (if the slow clock is 32.768 kHz)."
>>
>> So, it is not the RTC, it is the slow clock divided by 32768.
> 
> This is not what you described previously,

I said this way: "this *IP's counter* has the possibility of being clocked at 1Hz"

> using RTPRES means running
> the RTT at 32kHz. This is exactly what happens with the RTC but you get
> the added clock calibration circuitry that is probably not drawing to
> much power but the added consumption of the configurable prescaler
> versus the static prescaler of the RTC is probably similar.
> 
> Using RTC1HZ would be driving the RTT at 1Hz.
> 
>>> But this is very unlikely to happen because this would be limited to a
>>> single board device tree instead of impact every sam9x60 based boards.
>>
>> Very unlikely but a having a patch with diff like this:
>>
>> +&gpbr {
>> +     status = "okay";
>> +};
>> +
>> +&rtt {
>> +     atmel,rtt-rtc-time-reg = <&gpbr 0x0>;
>> +     status = "okay";
>> +};
>> +
>>
>> and reverting it may affect the other users of gpbr in sam9x60ek.dts.
>>
> 
> Again, this affects only sam9x60ek.dts instead of possibly multiple DTs
> that may be out of tree. So the risk of doing that is null.

Anyway... I'll merge it although I don't consider is the right way.

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
