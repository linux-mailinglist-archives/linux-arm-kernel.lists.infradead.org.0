Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27316113C91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 08:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3LwCk1RWD0K5FXZvMzQPhXFxXPMnr5VeLZQLYAJBGg=; b=e45LXH757HDh2W
	jxaaqwEI+CeAiVs7+IWIKp8Say3B/GOd7IbVTXIYMHzw9SNIrpV4EE8RWBzuPsiEew4pq85qeFF/F
	bLVRym7XObFrcGqOGQQ/XkI/6alJhbjHhmChxuUISvI7UY8McMmb07QyrMl3RASK5DT2NIawyvYpE
	fQDGL/ktYboGvYmQGOq6QeJvC0vSHBt/bCqOJCcAfCMqQCWZpZOtOhk97hOKTkorl7SSptd3MN3sn
	ZDfmJ51qITjLd1WFj9Llu6m2jOp9rkbU3tlaLAgVhpT4jcYu+K4ypmURvOvBnG4HjRLdnqWLRkoE6
	xxJoafmyujumUOwir31A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iclpK-0005Ig-Mr; Thu, 05 Dec 2019 07:45:30 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclpC-0005Hh-KY
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:45:24 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: blMtPCkpoLZhBVQvN2vxT8EawB2qs0VXYwEp5OJdKCM2yBppFRuQpBviAhDeCZpNrTcDqam2AR
 3LeGiQjgHsdfQebCh2rSfcOfhZe7mv5g5235s0TxF7e2N99oVy7oPiRqiMLA8xPnG4Q1jLhAdW
 q4b5XqmSUvFWbY+TJI3F9ZzH+I0nLh/i0QLIpNd45NHtselp3w96At+s3DWsWMGN4OMAd3uwfj
 BOXvOu/daNhHEriyLCuyVBJVU/tQk+Q1maJpAT5tGiHAc+51Ym4M5l2d3yhoIClGH8j3hLJ5Ok
 js0=
X-IronPort-AV: E=Sophos;i="5.69,280,1571727600"; d="scan'208";a="59341252"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Dec 2019 00:45:03 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Dec 2019 00:45:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Dec 2019 00:45:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E08b5vZCZ7R+/vkuos+uWyylR+SBXiqDXlYlmGVi1+JywBk/iycvHkQAz874NDi/s10dcPYGY7xnEXZH1/2r0V7ya0us9aFuCEbzhJ0eNk3RQ7haOivAETIGmu9vVZfa9yfOx0NuG1vN6RUPMS1ZJlpvuTkLPws0dcLGK5IIevNsIFL5cF2LpY+ipwhHEz0qVQLYd4yjasUe2Jl3PTTmrEZX34MUkxKI2EREF8SYQQs9nsLty2Kjwv5b8EUL22OqlXKe38czYrFXrQOhdCEm/pvL9UD5XJ6llf6gzV8FuvSPAIwxLqn46uZ/5cx3dWcf5MWKouJ2Wsq4x/vGu84BAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2xC3jReT8OL+ItYm7fWigXNH5IVM9Lukn9Rbw3i7d+w=;
 b=OrLDA3VBXsBAX6minNzvUEtlsXq91jG13T1+sNR5PhjziZiSZ62YVZIRHFDj7BI8f9oLoHSBEtdUD2otCIXl13PnP2puwYPhVrxCcuXnMjTAUYQ+LyAU5fxDcAV+Xcr2T7qPvjC02fpa+YgQBALEkrGiweeActJhoJ8Jd5w51+yGUJedTxa5bULtOdQn+Eo1isumzf9uRk93RoeICLOD/r/lEUIj8B2BFLH110FmgZdzUMC3dxgRAH6moMI3NQrnDOnUt+iZQy4CAYSbzEx1XjEvVfkeyYNbIGiQQqaLfe5ZDeUcLmF3rxT/Kt2bpw9j4JPRk3TiMSAx0dh+48kGlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2xC3jReT8OL+ItYm7fWigXNH5IVM9Lukn9Rbw3i7d+w=;
 b=TrzbnsgfDj67xybiJmCMAHeV5YIODYUvuU5l0XOyxSMdm63Mn6x0zVjY5mxywzUHbHIqwTp5y+LjAovlLQjb0vK1IBGl7QFC7Mn63rU3gUbABbT1d6mQH5JngAPnBFMXNLUA8/UzEUGdKeTzuIJQP2aJ2Rn3/4HlXX8nFN0jBlU=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1979.namprd11.prod.outlook.com (10.175.87.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Thu, 5 Dec 2019 07:45:00 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 07:45:00 +0000
From: <Eugen.Hristev@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] ARM: dts: at91: sama5d27_som1_ek: add i2c filters
 properties
Thread-Topic: [PATCH] ARM: dts: at91: sama5d27_som1_ek: add i2c filters
 properties
Thread-Index: AQHVo3KV0xMhN6t/20m55125H3GPJKenJySAgAQRrgA=
Date: Thu, 5 Dec 2019 07:45:00 +0000
Message-ID: <35ba1327-ff76-0eed-d481-f07196b20fb1@microchip.com>
References: <1574674036-5589-1-git-send-email-eugen.hristev@microchip.com>
 <20191202173625.GG909634@piout.net>
In-Reply-To: <20191202173625.GG909634@piout.net>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: ZRAP278CA0009.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::19) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191205094444311
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3decf607-bf6d-408e-98e7-08d779570827
x-ms-traffictypediagnostic: DM5PR11MB1979:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1979FB8A3CC3419B6739915BE85C0@DM5PR11MB1979.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(39860400002)(136003)(366004)(199004)(189003)(99286004)(478600001)(25786009)(66946007)(52116002)(4326008)(14454004)(102836004)(31686004)(26005)(8676002)(6506007)(966005)(186003)(6436002)(316002)(4744005)(53546011)(66446008)(76176011)(5660300002)(66556008)(64756008)(54906003)(66476007)(71200400001)(2616005)(86362001)(81156014)(81166006)(36756003)(8936002)(305945005)(7736002)(11346002)(6512007)(2906002)(6246003)(3846002)(6486002)(6916009)(71190400001)(31696002)(229853002)(6306002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1979;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aQU66Pd/MEdt7J4BrDnR+D+ia/uLDPzuvzmfBw1r8J0iow04vUi7xlcHqNvklbUD9E/oLuR111Nt9nrrlleIdjqM45Wjh/1uJOO7F4ZOd60ZrUXYECaBjOhjOjBz/42XJo7QM0HVI1t+nesiUxGviywqi7nmNGc0CBP8ipY21LQ51jQeXrEIF48v2KZht0cao0gS43CIHwTFD8ZHsbEJe981+vgceE56lO9Eo1+Ie4BnlII+J4ypoNETQRMZ0zn25u2XTMSu0BpsKfmqof6OP9o1sXV+EoY61/u9ZEVxyAMgluXdS8A1Vg7sOpZOsebdJev6PuSdh71vBZ3407BMX/ycFsDsywZ7VrmaMlGkeWlZB/QVFY37h58Jb1EOZBSWjFmudoVV2cQDACcYnOxQtSrZQB/PbS9OwqXeazDcQ4OOSiSrwVxqKe/E0b7+6vBer3sD5iocHjK82lgj27GVmQDdCyLLC2R5qHAPj9MrdSk=
Content-ID: <041C6DC314442247B623CE879BA2A932@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3decf607-bf6d-408e-98e7-08d779570827
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 07:45:00.5401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mXpIwh9/+MSR4eFHXwjiJbDjU1xYn63SSfHXQ6oUm4awSy1gb5i7XxCDrgY4YOn3mnIT4MAyjS8crroJIorRo35RevZf6HQPbJAUJHJN9xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_234522_685476_FDA80DFF 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02.12.2019 19:36, Alexandre Belloni wrote:

> On 25/11/2019 09:27:41+0000, Eugen.Hristev@microchip.com wrote:
>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Add properties for i2c filters for i2c0 and i2c1 on sama5d27_som1_ek.
>> Noise is affecting communication on i2c for example when connecting i2c
>> camera sensors.
>>
>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>> ---
>>   arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
> Applied, thanks.

Hi Alexandre,

The properties for i2c0 are at the wrong node. Should be at the child 
node. I sent a v2 to correct it. If it's too late let me know and I can 
make a fix patch instead.

Thanks and sorry,
Eugen

> 
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
