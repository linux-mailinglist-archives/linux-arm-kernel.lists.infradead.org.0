Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F761A0ECB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 16:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFd4jlJrSauBKCEZjiognMLBIBR8r/YFqpEYdv9oz/0=; b=cld86JKzQQgqTq
	8Szll4CiY0WE08LXMj/AZKymgWe8eotaSZa55ftTSeIHIvH+Fmk+EwnPsncMq/ylFiNhtEIFjSQEq
	eqY4uY1Ei6hoXqK60rJzksVN2MSDytVcymkzzdAYJnnSVHjphcZdVGR1GcKxbgp4gpKaWsL3zwmym
	5dFddqiTD25L9qVXpnjMF/2poZiez9bm1CxUyYYqXMb76ZJCJ4Ny+fMgRCfxYZGJ3f5V7vmYIOngl
	3ZmvXVYmflxdPUMUOCNwVnrcTCi+/LTOb7100vurjfhWk5WzRIs/+Tg5/bUZ42EJR2IRN41FJZ8MC
	1cv/tOpolDdehNJ4WX6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLom0-0000Gz-Kf; Tue, 07 Apr 2020 14:00:16 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLolm-0007KZ-E2
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 14:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586268002; x=1617804002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qb3gjOxZ0FbCXsCymi1eabHPolKrTsKUMQiXr7TtMgQ=;
 b=2AOcyAyKE3XnkpU5esM6ZpT0SQ5zWFijhlt8FS3JsXnWvOxZZqnoImOD
 mYkJqOzplBpzvuWWypk1+0IPsR3ZnRObI4bxUVnGacVO5xBE+3vzjsqjN
 b88qUEEUOmOsLyifS3ZFdpbZkfu+ffnE8eR25VEzqmKT+eSkTrW8gI3PL
 axZNKIpMExedb+j7tbJJXQDaTI2p8VJRDx5EIvH60dKyo+/Jd1RvVAxha
 Rt90lzRqIt9wHmoeLTUkg04vpGB3dS86bF2ptu8m5J7UuHnxtqH1BCjpu
 2DtyvulO4VvmK1obw4JFiGly8+y2NmvE5h8neCVIAks8Si/4TgLS4Mtru A==;
IronPort-SDR: bnK1tPDhk3HS/4keqChHg1gtGhxoe7Wt8ZeUk3fvj0pGIf6weSDh3Vm9uPnj0O5U3RbaEtDYYa
 yxE7bi4yalLv+39hscvzo5mWDlg+IA3KsWsqhtDspEtLYCs90p2DSJfKcDbiTYRbdezrDLnIQs
 mB/8Mc3oAJvz4k+TBr416zCjFMN1K4qPaKlAFzrUHrkkJV6vvCaZfsWSEjFeVH9D0DQmtXAJrV
 yee3Udpda2v4MPnxErjRo5aHNpYJ9WVRfBlbPd7CbaPo6INFC4HV5NVsdhhX2d1guntEPt1vHQ
 Nho=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="71484074"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 06:59:56 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 06:59:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 7 Apr 2020 07:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VklxJc84nbjmswrOFP8XSAXMvF2OL3JavnsJXNiNLlqoQQkeII8JBvxxKfcttKL8yG/NtT1zzJNr8aoi+dRM1gBjxMcs7kEmAiJGgP63OmXlfuxj9FSeUNcIhAoSWbiPrB8oQoVsF2Vd8N4P5L0E1KsB7YzCCk0XOXGqrZ/bOlSnytrb1CWg0avL0eiJVYNYnmiL9QO7z/pIdswPFKdrE1E+2Y9Bsrt72ffUyfjsCyJMeSmZUFA4bTCgaugJ5dzgoom7TrJpCvQYXlM8rhMs+a3WGmcEla9aMKpisn74djwzIysE3m8ormLeSHwlSvUMLuhOMVqAqerPebh/UQOiuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qb3gjOxZ0FbCXsCymi1eabHPolKrTsKUMQiXr7TtMgQ=;
 b=iEPIu103svvJIIJGuL/3pg9+fqKDZMII5cPWajai6h6I/V3j1zWL3IMnUnx9YBIkJomtYG6T5izvwDL82SNFSk1f/Rmg/vC2S/oUyhxGAfbVYpKv11owqel5dLtjEoU895afVOt+zJidsG+4Y1C2mea3kJKV/I87Uayp3fJ04GHIIEyqZLL4MRwF2iQgeeeEtEgYkGepYitcpC/OjHRTft+b+wRBdqPSGs8Z7Hep+OKmZSuApagPHOlwGc6HR792b46kMkEd9xg+l7GW3cD50LrzFml58Ply7rxyx96fWCS6DuN1Fz5+jL0zGTuao1KcSWYiXV6f1rkgX3ioxfLpMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qb3gjOxZ0FbCXsCymi1eabHPolKrTsKUMQiXr7TtMgQ=;
 b=d5Q67C5ldOp+tP432pawcJ6z0+TGfidmYMKb1BbqveK/6vx310FAeeaxwNznJ+OGaHjJxZqK1ZsrETW9KT3266xDb32Mol0Kwq0glhQ3eKwG2D6VXtC55G8+3x7alF4NgSqzXnYwAA6clsHXvlvb6CKDIqD4jplJM+bzFLWSLT8=
Received: from DM6PR11MB3082.namprd11.prod.outlook.com (2603:10b6:5:6b::19) by
 DM6PR11MB3817.namprd11.prod.outlook.com (2603:10b6:5:13a::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.21; Tue, 7 Apr 2020 13:59:53 +0000
Received: from DM6PR11MB3082.namprd11.prod.outlook.com
 ([fe80::b1e1:1148:5130:3e7]) by DM6PR11MB3082.namprd11.prod.outlook.com
 ([fe80::b1e1:1148:5130:3e7%7]) with mapi id 15.20.2878.018; Tue, 7 Apr 2020
 13:59:53 +0000
From: <Cristian.Birsan@microchip.com>
To: <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 3/7] usb: gadget: at91_udc: Update DT binding documentation
Thread-Topic: [PATCH 3/7] usb: gadget: at91_udc: Update DT binding
 documentation
Thread-Index: AQHWDNhKFbapHhDil023kbgO6T/lmahtq/8AgAAD7gA=
Date: Tue, 7 Apr 2020 13:59:52 +0000
Message-ID: <9490277e-9513-b198-1980-e8822abf67ff@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
 <20200407122852.19422-4-cristian.birsan@microchip.com>
 <20200407134548.GJ3628@piout.net>
In-Reply-To: <20200407134548.GJ3628@piout.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Cristian.Birsan@microchip.com; 
x-originating-ip: [2a02:2f01:5825:1b00:3c12:302d:fb00:70e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a9a15d9-eab6-46bd-2e2f-08d7dafbf233
x-ms-traffictypediagnostic: DM6PR11MB3817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3817C61832CE583B25754486EFC30@DM6PR11MB3817.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3082.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(966005)(107886003)(6512007)(66446008)(64756008)(66556008)(66476007)(498600001)(66946007)(76116006)(81166006)(6506007)(53546011)(8676002)(81156014)(5660300002)(36756003)(91956017)(54906003)(6916009)(186003)(6486002)(2906002)(2616005)(71200400001)(8936002)(86362001)(4326008)(31686004)(31696002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OMERcla0v9PJbXZTE0nUZbfEV2N0umb/8v2hKP3BgUmKK/6oWzbki9Ea08ZKqejBoBcnvaHF/ROfhwVMbo4f4dWCOKIhN5wdRLeafWzRvkn7N6r/cchOCGxyN5D1oCXr6GttYlG+oOlbCUU4V4xw3uZ0awbSYESe9rfmT83iYoVyPlRFBuTVITa2ncjLNfPtCO21NFu9oF0RG41uQoYBUgBFeXZUEuVoHTgJt5pz6u8H+bU3IkW7iRNiykbFyW53ydh2v89HS5vMrBlU2DpITKJFdwJL6uS5UAHvrISBC27qYNP6sf3CG/lcTOa2I3h/nQecMeNbjKDKf2UXlyKfsv9OFECnlZX5qBlpKSsJYYVwWJ1CvazDGiSRcfcmvZ2D8W8poJkGvJ9FbYbJ9DOe1jAoKg86bGAmTXHaNjXEYLFAnp9qFu6ccAlCWWiMH6NGZs6BV0pVZA9FmsJThevLhecOUnrF++a/ikb8ophIE1k7u+1/KrL89nR4z4tFPeBqbggq9i74hcm6zXMslTulcw==
x-ms-exchange-antispam-messagedata: hpizuN8NSldMWkXhI5W3TdtA+Lz2NcE7schX3Fr13/XhTFZ81xnNnE2BdfZExkPn9E2iMrO+pkkDHGjuqHX+C41SNUj03U28YlFltlh1VKRsFh6n25dKFmQyn9co4mo9PlG5VmtnUvmWFVEyMOOf59Lbqr5dYl3PssoLhAb9FDSIxwtr0jEI4Kfx5YxEidrjRZUm8NYmv4TvKLGtKMPEWQ==
Content-ID: <493CCD0376AB0A4CAB6EC9E01C00D9ED@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a9a15d9-eab6-46bd-2e2f-08d7dafbf233
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 13:59:53.0202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADXVeCoWXrAnAphOdimw1gbk97dnR5JIGFwRGR/Si3/aQ6SO5XjbezcA1oa1Z+P7H8xh6Ji/YdAp/e2JuY2SDWHCH2ovRIVOBhdfFr+FuzI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_070002_593737_C75844FA 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/7/20 4:45 PM, Alexandre Belloni wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi,
> 
> The prefix for this patch should be dt-bindings: usb:
> 

Yes, thanks. I'll send this patch together with the device tree node separately.

> On 07/04/2020 15:28:48+0300, cristian.birsan@microchip.com wrote:
>> From: Cristian Birsan <cristian.birsan@microchip.com>
>>
>> Add sam9x60 binding.
>>
>> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
>> ---
>>  Documentation/devicetree/bindings/usb/atmel-usb.txt | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/atmel-usb.txt b/Documentation/devicetree/bindings/usb/atmel-usb.txt
>> index 44e80153b148..bae2b928a014 100644
>> --- a/Documentation/devicetree/bindings/usb/atmel-usb.txt
>> +++ b/Documentation/devicetree/bindings/usb/atmel-usb.txt
>> @@ -82,6 +82,7 @@ Required properties:
>>              "atmel,at91sam9rl-udc"
>>              "atmel,at91sam9g45-udc"
>>              "atmel,sama5d3-udc"
>> +            "microchip,sam9x60-udc"
>>   - reg: Address and length of the register set for the device
>>   - interrupts: Should contain usba interrupt
>>   - clocks: Should reference the peripheral and host clocks
>> --
>> 2.17.1
>>
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
