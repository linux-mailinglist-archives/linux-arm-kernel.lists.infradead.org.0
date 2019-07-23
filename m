Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C57571968
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhW6Dxns2qPjjJznSznJSn+cvsQIv1n86OkaxdLNcP4=; b=H90Kv10h38MF54
	kmyf9OXNI2SFfFqWbBB2cqJgWGDqRZzxRRGDnOqtkRyGLGj6jaBJnuY3AOO4PQT/1NPgj+gzV0clr
	T4MEcuGfn8p4HWpzfU7aJ9cNjg+ScAg06XERNH2nehIedu+1NvH1RT9/5clTEuXN+4RTUdHHx0+fh
	HOrY699+uK3NrVSA5ObprxLrkPaaTUor4MK1o96TMV6LYmg37PSZqWkrrm0NZRnySDxwiygOxzm9Z
	t77t4fdG7W0zEjY5rCI5//UNCL/D4PwWHBRkwaGTQi6nqBItkx30GlVSmAM64NAB+4/ht16/sUjoV
	My5dtIC89nZRcuy31xHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuyf-0004DA-1d; Tue, 23 Jul 2019 13:37:13 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuyC-00047N-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:36:49 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: p5F/sA7YdHLM8clAfnHRWaQPNxjcz5d0OwSbLzMzTXF3La1yMXFfK3tB5hTR/0GQVdJ5qbOyxL
 RlFGcQKR0PfZJNha8IDoN287TScTPRYDkdDPP54Iv1AM7Fz80pthSZETT1s6CXyKfuuHuTZjBb
 d5/HATwUAq0kOm71iw33b9gdy3Nu/1m4yud3NrMMvVFffSJqPHBU9VweYBnX5jXJsEQxAJc8mG
 5QxIKtQi5h1I0nHnvqIMuL9LtYvW6ZejUiptZ9DUiAggTrCCWD1FxhCp1RtYKaFGMEhR9OG63P
 ZZc=
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="42407943"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jul 2019 06:36:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 23 Jul 2019 06:36:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 23 Jul 2019 06:36:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nJXRfHQUysS26bTKTGA98cbu0msoXNnX4+uRXbtKE2/F3zBrR30Mz0Vg8Wd7z/qNLYVi+kuZUMoyvDweSdsUaXVJr2mSihk8dM1prvTNsckkPUk/oA1h+0coz+++X7C3AB8BiiVmCv3DNKLpE7+RP+79KtS/JayLngIWJz6UNnWi2narAXbalV1+hm59DVUi9dWM6F2aHpI5LaIVFiuEWC6sZjLKLuKrgK8XqsLPP7W4HMIHF5NR2dywNCtbu+FMMmdqoq77dqfi4Djyzj2RTKXNHtFEqsvtUHTIdSWgOSLbiXIhcbe8AC1cWWM3c0zM/M6LWfLezS1IqVenrer/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFrqDHawLb/trzU20SMx+AQ27k7rKs/uM2NS03dwJxg=;
 b=ezfCimUP9GLNq9rROp4jg2GidinfjPjEuKF70DFPYXe6r54lbnFFsFNWMMvYST4PI81fQlWnncRT2SIUIPnOMBrYzx10D65TtaR6G5kavAqLF4yR1uRW3712AGdwXOFNhviOXIDGncI9cNT2jfIW0h96MGaVPMkn/K2A0z8LHQD2PAIMz44ayjMCfetJNjZ5xozW9UipIhNEKT/awMEvA+hQshCrS7DoCZniNeIvzFC+PEiCSR0APF2ZfvjVPtdhk6YGVR+6Y5LTL2GgRbUB9PrDJ0uJ36gdkBsdcrRRSNiRobG+2eFA5QJ4J6JG6Kgw3GY613H+p0y5MXR89kz6gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microchip.com;dmarc=pass action=none
 header.from=microchip.com;dkim=pass header.d=microchip.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFrqDHawLb/trzU20SMx+AQ27k7rKs/uM2NS03dwJxg=;
 b=rOnJ4fVq8bP8B5BbiMm1Pt6HsMCoSK7LDOCbt5MohbWUqMk1yjNU17/zSIpV20Pn/NhpLK4BmGa2z6NFklsiKgDvHw19bs9qmmA5EFz/jAKfd1UHFAhDgNNw0aG6YgiYIE5mUJx5c3WmWbF8KTS04eeGV05p/H2swqM+XIoM3d4=
Received: from BN6PR11MB0051.namprd11.prod.outlook.com (10.161.153.153) by
 BN6PR11MB0051.namprd11.prod.outlook.com (10.161.153.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 13:36:38 +0000
Received: from BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2]) by BN6PR11MB0051.namprd11.prod.outlook.com
 ([fe80::7972:d14b:4c60:adb2%3]) with mapi id 15.20.2094.013; Tue, 23 Jul 2019
 13:36:38 +0000
From: <Codrin.Ciubotariu@microchip.com>
To: <mirq-linux@rere.qmqm.pl>, <alsa-devel@alsa-project.org>
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Thread-Topic: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Thread-Index: AQHVQLssYvZ9YoKrUEmAJfgllXwkpabYNckA
Date: Tue, 23 Jul 2019 13:36:37 +0000
Message-ID: <1f3a4256-58de-27a4-8095-54fc6baa6d89@microchip.com>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0234.eurprd07.prod.outlook.com
 (2603:10a6:802:58::37) To BN6PR11MB0051.namprd11.prod.outlook.com
 (2603:10b6:405:65::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44f1a542-b886-4207-98ef-08d70f72c95e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB0051; 
x-ms-traffictypediagnostic: BN6PR11MB0051:
x-microsoft-antispam-prvs: <BN6PR11MB005106BCBE9057A8965983D6E7C70@BN6PR11MB0051.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(396003)(136003)(366004)(189003)(199004)(51444003)(66066001)(486006)(31686004)(66476007)(4744005)(66556008)(64756008)(76176011)(68736007)(31696002)(52116002)(36756003)(66446008)(66946007)(6506007)(386003)(86362001)(6486002)(53546011)(478600001)(6436002)(102836004)(71200400001)(71190400001)(26005)(99286004)(229853002)(6512007)(11346002)(53936002)(4326008)(305945005)(54906003)(2906002)(256004)(6246003)(25786009)(110136005)(81156014)(316002)(81166006)(6116002)(3846002)(14444005)(14454004)(476003)(2616005)(5660300002)(2501003)(8936002)(66574012)(446003)(7736002)(186003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB0051;
 H:BN6PR11MB0051.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N5sQ0QhhKvcufi39b7dFrGgS76dvoYJUH6J7QK4fafCsj+CaVaxX4QT6Ho5d8fltuxZg1KIOSPAwTXqhRjlCgl4VlxqEprT4PmB7fYiP77D7bIoRno6b9jmnBlkFW0fVnILVO7pBd/PzJ5denPnFayYyYKlWqJSj7sSAZ1Q9qViah+OF9Zp7KEWeG5aauNR9YXtR38SOrKmQ/vhegkqqXrU+XPWLxLSWBsOpyjyyo5YJO0FkIZBUM91JiUUET3p1ArQF/8lkHSqLdTHWbxQHYhmab68BYC02c7Z+aXsFs0LHOGz0u5zncSFpPjhX9j4EspAVHzEVHzqqrREaI/uVUivWy+8GXyLeT6AXgBnYvVGYc8kNZ15rNkTfbJHjX6+aXC+IGLnGdNCEjJ84dHWjW3KSFJSd0VjT0VH1O3GY84I=
Content-ID: <387EFE8C7473E549982BFE82668C5F94@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 44f1a542-b886-4207-98ef-08d70f72c95e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 13:36:38.1399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Codrin.Ciubotariu@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063644_704664_D819433B 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, lgirdwood@gmail.com, tiwai@suse.com,
 Ludovic.Desroches@microchip.com, broonie@kernel.org, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjIuMDcuMjAxOSAyMToyNywgTWljaGHFgiBNaXJvc8WCYXcgd3JvdGU6DQo+IEFsbG93IFNT
QyB0byBiZSB1c2VkIG9uIHBsYXRmb3JtcyBkZXNjcmliZWQgdXNpbmcgYXVkaW8tZ3JhcGgtY2Fy
ZA0KPiBpbiBEZXZpY2UgVHJlZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PF
gmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4NCj4gLS0tDQo+ICAgc291bmQvc29jL2F0bWVs
L0tjb25maWcgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvc291bmQvc29jL2F0bWVsL0tjb25maWcgYi9z
b3VuZC9zb2MvYXRtZWwvS2NvbmZpZw0KPiBpbmRleCAwNmMxZDVjZTY0MmMuLjllZjlkMjViYjUx
NyAxMDA2NDQNCj4gLS0tIGEvc291bmQvc29jL2F0bWVsL0tjb25maWcNCj4gKysrIGIvc291bmQv
c29jL2F0bWVsL0tjb25maWcNCj4gQEAgLTI1LDcgKzI1LDcgQEAgY29uZmlnIFNORF9BVE1FTF9T
T0NfRE1BDQo+ICAgCWRlZmF1bHQgeSBpZiBTTkRfQVRNRUxfU09DX1NTQ19ETUE9eSB8fCAoU05E
X0FUTUVMX1NPQ19TU0NfRE1BPW0gJiYgU05EX0FUTUVMX1NPQ19TU0M9eSkNCj4gICANCj4gICBj
b25maWcgU05EX0FUTUVMX1NPQ19TU0NfRE1BDQo+IC0JdHJpc3RhdGUNCj4gKwl0cmlzdGF0ZSAi
U29DIFBDTSBEQUkgc3VwcG9ydCBmb3IgQVQ5MSBTU0MgY29udHJvbGxlciB1c2luZyBETUEiDQoN
CkNvdWxkIHlvdSBwbGVhc2UgbWFrZSBzb21ldGhpbmcgc2ltaWxhciBmb3IgU05EX0FUTUVMX1NP
Q19TU0NfUERDPyBBbHNvLCANCkkgdGhpbmsgdGhhdCBpdCBzaG91bGQgc2VsZWN0IEFUTUVMX1NT
QywgdG8gYmUgYWJsZSB0byB1c2UgDQpzaW1wbGUvZ3JhcGgtY2FyZCB3aXRoIFNTQy4NCg0KVGhh
bmtzIGFuZCBiZXN0IHJlZ2FyZHMsDQpDb2RyaW4NCg0KPiAgIA0KPiAgIGNvbmZpZyBTTkRfQVRN
RUxfU09DX1NTQw0KPiAgIAl0cmlzdGF0ZQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
