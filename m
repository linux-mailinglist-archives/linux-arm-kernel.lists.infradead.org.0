Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90826193904
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 07:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGhQmDvtBJJPkYqpjRUaQrbuhFwWKS32i/+bVQGtDEk=; b=PjEIQkLkQhG13r
	pT8+00KoDGP75YYleXfm8e/TAItfIIHNs3SJvH/HCrmIrzLjVCEAwiYQfni07ywjIK02aQ98PBvTy
	TbWsRzooMOLXG8G4SUN9Yo2NKRSYs0KZka2A/OtRbCdWMdVAcp5R6ChBfnqrpstTCqNoX+GsJw/pF
	0Mk7wrsGdITAj/RRescab+4EYPSIqQw19W4eMQu+a7LRWgQtDt8GqIv6fxMv6cAlHqr7/5KgbAzet
	hhbZLMMAQYcK8af7nhUiFV6Ry0FhF+qi7Ia0K1QQUZteW5F8XfSe9232FdEYmmnbyKsCBuFRsjKhm
	+m2KTIvODtXXTy9mVnaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMOi-0001ri-4f; Thu, 26 Mar 2020 06:53:48 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMOY-0001r4-Vm
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 06:53:42 +0000
IronPort-SDR: gMEDYdACxYJpu782WijhE1abMd2fgvxJ3u10QNwDIGiwM0XE5AUJrAYnRe3oRfF5bsayx2OrD6
 pABzkE0kSyHgovZbWhk2FyIKopmEUQRxFJNd67BoV54TjgKgRj8bDB86qxMRrU8EjWKgUE69U6
 9rQCkrA2KcalF5jaKnRTgOtrLr8NAIizeY9mSWUmHcd+UDBYmShTqvryKhhKjn43m8zX5OGSd6
 xW1+usiUN5/H1r2Dqh9wakeG6Zkpenw42WwK1feYAsKEyaRRKBe08mkHMluekgOhx11oKUveit
 hfk=
X-IronPort-AV: E=Sophos;i="5.72,307,1580799600"; d="scan'208";a="70235535"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Mar 2020 23:53:36 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Mar 2020 23:53:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 25 Mar 2020 23:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtKvQDaMNaOCvauPLOZLrDIui7lp/z0K6C+ejw5/zODsijAhFlcdegWD3XJ0NqU0S6BAc6akai3D4SrZrnCiYk9msLxulC+04Dxhwp1idyglHnCYze2HQh0106YKB+ZqJ38RMEy0A5R7LdZSUxFd+UTAvdaNFjtHHElmAJOfzC5JlPxOkVuqGtgZ4oi1D4Mv52Lc7Cana3rTsVdrklH2TQ8cNxmRBWX0hvxU5mltpIAycnWolclAn0Ywy+m9wFLMVLlaUsPePqx57NkndSToNXI4LadWBYp1TFZ9l/7mcV326i7dYl2+nxw8SfmB929/gxD2/l19U6xMt+rilVIdEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uz71IqQWRzso75K9QLBEbJnALMphrcIYKST55OfQGjg=;
 b=B7xmgoSQrckPHq2G/Mu+t/ZFh+y7dmI6CBOiDheZouyAb0oUNqDmazovIlMc8eXTOwDrFcAxTmQ9WFww4MwHs+r47g5NAoVjg2WQi+dB0nqHaC5ycTEKhQEG7JBgHVcIVSO1uCPVPgQQLGK3/AAXwz023ex3YAg5dPCyuO6EV4G5VbrgIH+Fkc1pmk3ZOdqSqmu1h7F5JoewFfsMiasbKzCcr3c0bHFXh2Ish8vIM1VB90eOjONOIQt2wdZuA/ejbRqBiuUfktEnRlOtwKRnwSiR17oOdCQLFEYmmATvo0d8L2vKXgvEXsldq551mmgeBo2QioOnrIRS4dbtB0Emiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uz71IqQWRzso75K9QLBEbJnALMphrcIYKST55OfQGjg=;
 b=ptma+/lKH9M4wk8Zi1IrcG+dmo0Nq5DatmFTWmGyiMmrB76KzgRDpG0aFicGwCGWlzYiG/OwqOyscvQ1MROSBp76IyYsaGPHRrpqXl6S95onID2nMQ8R3Nw5b7Lw+XfIifh4NoTGdAp47U8Zz4hhyu1QiRzSw3/fYsEn2KUSD5U=
Received: from BN7PR11MB2770.namprd11.prod.outlook.com (2603:10b6:406:b4::20)
 by BN7PR11MB2819.namprd11.prod.outlook.com (2603:10b6:406:b4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Thu, 26 Mar
 2020 06:53:33 +0000
Received: from BN7PR11MB2770.namprd11.prod.outlook.com
 ([fe80::41cc:b4d6:cc34:7400]) by BN7PR11MB2770.namprd11.prod.outlook.com
 ([fe80::41cc:b4d6:cc34:7400%5]) with mapi id 15.20.2835.023; Thu, 26 Mar 2020
 06:53:33 +0000
From: <Ludovic.Desroches@microchip.com>
To: <alan@softiron.com>, <linux@armlinux.org.uk>, <linus.walleij@linaro.org>
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Thread-Topic: pinctrl states vs pinmux vs gpio (i2c bus recovery)
Thread-Index: AQHVrFth3luRvvMnSEKAQXD6fsgUbKew9CSAgAZJTgCAeITugIAqKqIAgAB79QCAABGPgIAAo1UA
Date: Thu, 26 Mar 2020 06:53:33 +0000
Message-ID: <538ed844-4be1-4bda-a198-8b5706ee818b@microchip.com>
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
 <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
 <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
 <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
In-Reply-To: <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ludovic.Desroches@microchip.com; 
x-originating-ip: [92.150.97.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a11df758-162b-4435-d6cd-08d7d1526666
x-ms-traffictypediagnostic: BN7PR11MB2819:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR11MB2819E1D4EEF7852D02DC9B1CEFCF0@BN7PR11MB2819.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(366004)(346002)(136003)(478600001)(81156014)(6512007)(8936002)(66476007)(71200400001)(64756008)(6506007)(66556008)(966005)(66446008)(110136005)(91956017)(8676002)(76116006)(81166006)(54906003)(66946007)(4326008)(53546011)(5660300002)(316002)(86362001)(2906002)(6486002)(2616005)(31686004)(36756003)(31696002)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR11MB2819;
 H:BN7PR11MB2770.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NtKrjIShRaSAHbryW9R0/We3kGTIv5BmhXpXJuOFeyaagAN9hSi7ZFQOcRATXIeQMwL16KZS4tXtfN9GCAbRzlNz4iSnUNC/v7SHgYJ8vZuTRMPUDWLWLGK1CMQDYbK4xhl0BszYCUoPXYj2ABQQSTGTOveFXvyVqjbo2oHWWUwwPHOW3VTijEhIIsnxWXbJXhpCOkljGiCsZr892+3YShG75wos2Zl1EH/ehcrKGzlHBiPilsuskPkKsufTV+rti3UPB2H9RizyuJGfu8fL+WK1QXb6LvM5o1YhQBlhVm3OSVOIzLSXJkZaLWH9tQ+hM/NrpgvbwfonCpoti2oRMwIxHr8rluvsG3kkpvxWpHzKNtvXZEGSgz0IzJBvIdOEhsDYKoTvrSTZTHwomRET+hgsmTywVlIngbfY/Na72ECMP8IebPuLWY7eul/zbAW1mw3WoxCinVrMla1i0oDntVQAQtzo7/kLU8+kKQT42/WkCmFle5iRJuixOnMX5v1T/rCiJeMFl5yJz9n5JgTreQ==
x-ms-exchange-antispam-messagedata: zV3qNpuPWIM//ZyvpSTcl0ujbSySkdPAq0d1r1VqLZMkE8MGBJjPS7X5AKwbcD/m8PDS8fb2gDt62kvFqT+Gk6ayZxQOIqA5+K1KJ+o4SUWQB9suMOqb1WxNlk7QdnMaEFDQwvaaIvi536oD7LlyFw==
Content-ID: <FE4F46E2B1668E4088893F2CFCEE0CB5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a11df758-162b-4435-d6cd-08d7d1526666
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 06:53:33.1263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HaOcxFH1LV/nAGjHFYKBDtOnl362v/mLhPdZxnMBAjzkc0dCq6ZiAGtqtfU5EHJxD+iUVwQ7+q3qZnp2dMTn9k/fh5wRUBvYdFzJqs7VZSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_235339_135417_FC769A6F 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kamel.bouhara@bootlin.com, linux-gpio@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNS8yMDIwIDEwOjA5IFBNLCBBbGFuIE90dCB3cm90ZToNCj4gRVhURVJOQUwgRU1BSUw6
IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdyAN
Cj4gdGhlIGNvbnRlbnQgaXMgc2FmZQ0KPiANCj4gT24gMy8yNS8yMCA0OjA2IFBNLCBMdWRvdmlj
LkRlc3JvY2hlc0BtaWNyb2NoaXAuY29tIHdyb3RlOg0KPj4gT24gMy8yNS8yMDIwIDE6NDIgUE0s
IEFsYW4gT3R0IHdyb3RlOg0KPj4+IEVYVEVSTkFMIEVNQUlMOiBEbyBub3QgY2xpY2sgbGlua3Mg
b3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtub3cNCj4+PiB0aGUgY29udGVudCBpcyBz
YWZlDQo+Pj4NCj4+PiBPbiAyLzI3LzIwIDExOjQ3IEFNLCBBbGFuIE90dCB3cm90ZToNCj4+Pj4g
T24gMTIvMTIvMTkgNzoyMCBQTSwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluIHdyb3Rl
Og0KPj4+Pj4gT24gTW9uLCBEZWMgMDksIDIwMTkgYXQgMDE6MjA6MTVBTSArMDEwMCwgTGludXMg
V2FsbGVpaiB3cm90ZToNCj4+Pj4+PiBIaSBSdXNzZWxsLA0KPj4+Pj4+DQo+Pj4+Pj4gdmVyeSBu
aWNlIGRlc2NyaXB0aW9uIG9mIHRoaXMgZHVhbC1tb2RlIHByb2JsZW0uDQo+Pj4+Pj4NCj4+Pj4+
PiBJIHdpc2ggSSBoYWQgYSBzaW1wbGUgYW5kIGVsZWdhbnQgd2F5IHdlIGNvdWxkIG1ha2UgaXQN
Cj4+Pj4+PiB1bmFtYmlndW91cyBhbmQgc2ltcGxlIHRvIHVzZSAuLi4gYnV0IGl0IGJlYXRzIG1l
IHJpZ2h0DQo+Pj4+Pj4gbm93Lg0KPj4+Pj4+DQo+Pj4+Pj4gT24gRnJpLCBEZWMgNiwgMjAxOSBh
dCA2OjMzIFBNIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbg0KPj4+Pj4+IDxsaW51eEBh
cm1saW51eC5vcmcudWs+IHdyb3RlOg0KPj4+Pj4+DQo+Pj4+Pj4+IE9uZSBtYXkgZXhwZWN0Og0K
Pj4+Pj4+Pg0KPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcGluY3RybF9zZWxlY3Rfc3RhdGUo
aTJjX2lteC0+cGluY3RybCwNCj4+Pj4+Pj4gaTJjX2lteC0+cGluY3RybF9waW5zX2RlZmF1bHQp
Ow0KPj4+Pj4+Pg0KPj4+Pj4+PiB0byBjaGFuZ2UgdGhlbSBiYWNrIHRvIHRoZSBkZWZhdWx0IHN0
YXRlLCBidXQgdGhhdCB3b3VsZCBiZSANCj4+Pj4+Pj4gaW5jb3JyZWN0Lg0KPj4+Pj4+PiBUaGUg
Zmlyc3QgdGhpbmcgdGhhdCBwaW5jdHJsX3NlbGVjdF9zdGF0ZSgpIGRvZXMgaXMgY2hlY2sgd2hl
dGhlcg0KPj4+Pj4+Pg0KPj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcC0+c3RhdGUgPT0gc3Rh
dGUNCj4+Pj4+Pj4NCj4+Pj4+Pj4gd2hpY2ggaXQgd2lsbCBkbywgYXMgdGhlIHBpbmN0cmwgbGF5
ZXIgaGFzbid0IGJlZW4gaW5mb3JtZWQgb2YgdGhlDQo+Pj4+Pj4+IGNoYW5nZSB0aGF0IGhhcyBo
YXBwZW5lZCBiZWhpbmQgaXRzIGJhY2sgYXQgdGhlIHBpbm11eCBsZXZlbC4NCj4+Pj4+PiBTb21l
IHBpbiBjb250cm9sbGVycyBoYXZlIHRoZSAuc3RyaWN0IHByb3BlcnR5IHNldA0KPj4+Pj4+IGlu
IHRoZWlyIHN0cnVjdCBwaW5tdXhfb3BzOg0KPj4+Pj4+DQo+Pj4+Pj4gKiBAc3RyaWN0OiBkbyBu
b3QgYWxsb3cgc2ltdWx0YW5lb3VzIHVzZSBvZiB0aGUgc2FtZSBwaW4gZm9yIEdQSU8gYW5kDQo+
Pj4+Pj4gYW5vdGhlcg0KPj4+Pj4+ICrCoMKgwqDCoMKgIGZ1bmN0aW9uLiBDaGVjayBib3RoIGdw
aW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseSBiZWZvcmUNCj4+Pj4+PiBhcHByb3ZpbmcN
Cj4+Pj4+PiAqwqDCoMKgwqDCoCB0aGUgcGluIHJlcXVlc3QuDQo+Pj4+Pj4NCj4+Pj4+PiBUaGUg
bm9uLXN0cmljdCBwaW4gY29udHJvbGxlcnMgYXJlIHRob3NlIHRoYXQgYWN0dWFsbHkgYWxsb3cg
R1BJTw0KPj4+Pj4+IGFuZCBkZXZpY2UgZnVuY3Rpb25zIHRvIGJlIHVzZWQgb24gdGhlIHNhbWUg
cGh5c2ljYWwgbGluZSBhdCB0aGUNCj4+Pj4+PiBzYW1lIHRpbWUuIEluIHRoaXMgY2FzZSB0aGVy
ZSBpcyBub3Qgc3BlY2lhbCBHUElPIG1vZGUgZm9yIHRoZQ0KPj4+Pj4+IGxpbmUgaW4gc29tZSBt
dXhpbmcgcmVnaXN0ZXJzLCB0aGV5IGFyZSBqdXN0IHBoeXNpY2FsbHkgY29ubmVjdGVkDQo+Pj4+
Pj4gc29tZWhvdy4NCj4+Pj4+Pg0KPj4+Pj4+IE9uZSB1c2VjYXNlIGlzIHNvcnQgb2YgbGlrZSBo
b3cgdGNwZHVtcCB3b3JrIGZvcg0KPj4+Pj4+IGV0aGVybmV0IGludGVyZmFjZXM6IGEgR1BJTyBy
ZWdpc3RlciBjYW4gInNub29wIiBvbiBhIHBpbiB3aGlsZQ0KPj4+Pj4+IGluIHVzZWQgYnkgYW5v
dGhlciBkZXZpY2UuDQo+Pj4+Pj4NCj4+Pj4+PiBCdXQgaXQgd291bGQgbm90YWJseSBhbHNvIGFs
bG93IHlvdSB0byBkcml2ZSB0aGUgbGluZSBhbmQgaW50ZXJmZXJlDQo+Pj4+Pj4gd2l0aCB0aGUg
ZGV2aWNlLiBXaGljaCBpcyBleGFjdGx5IHdoYXQgdGhpcyBJMkMgcmVjb3ZlcnkgbWVjaGFuaXNt
DQo+Pj4+Pj4gZG9lcywganVzdCB0aGF0IGl0cyBwaW4gY29udHJvbGxlciBpcyBhY3R1YWxseSBz
dHJpY3QsIHdpbGwgbm90IGFsbG93DQo+Pj4+Pj4gdGhlIHNhbWUgbGluZSB0byBiZSB1c2VkIGZv
ciBHUElPIGFuZCBzb21lIG90aGVyIGZ1bmN0aW9uIGF0IHRoZQ0KPj4+Pj4+IHNhbWUgdGltZSwg
c28gSSBzdXBwb3NlIGkuTVggc2hvdWxkIHByb2JhYmx5IGV4cGxvcmUgdGhlDQo+Pj4+Pj4gc3Ry
aWN0IG1vZGUuDQo+Pj4+Pj4NCj4+Pj4+PiBFbmFibGluZyB0aGF0IHdpbGwgc2FkbHkgbWFrZSB0
aGUgcHJvYmxlbSBNT1JFIGNvbXBsZXgNCj4+Pj4+PiBmb3IgdGhpcyBJMkMgcmVjb3ZlcnksIHJl
cXVpcmluZyBhIGN5Y2xlIG9mDQo+Pj4+Pj4gZ3Bpb2RfcHV0KCkvZ3Bpb2RfZ2V0KCkgdG8gZ2V0
IGl0IHJlbGVhc2VkIGZyb20gR1BJTyBtb2RlLCBpLmUuDQo+Pj4+Pj4gd2Ugd291bGQgbmVlZCB0
byBqdXN0IGdldCB0aGUgR1BJTyB3aGVuIHRoaXMgaXMgc3RyaWN0bHkgbmVlZGVkLg0KPj4+Pj4+
IFVzaW5nIGRldm1fZ3Bpb2RfZ2V0KCkgYW5kIGtlZXBpbmcgYSByZWZlcmVuY2UgZGVzY3JpcHRv
cg0KPj4+Pj4+IGFyb3VuZCB3b3VsZCBub3Qgd29yayBhbGwgb2YgYSBzdWRkZW4uDQo+Pj4+Pj4N
Cj4+Pj4+PiBJIGFtIHRoaW5raW5nIHdoZXRoZXIgd2UgY2FuIGhhbmRsZSB0aGUgbm9uLXN0cmlj
dCBjb250cm9sbGVycw0KPj4+Pj4+IGluIGEgbW9yZSBlbGVnYW50IHdheSwgb3IgYWRkIHNvbWUg
QVBJIHRvIGV4cGxpY2l0bHkgaGFuZCBvdmVyDQo+Pj4+Pj4gYmV0d2VlbiBkZXZpY2UgZnVuY3Rp
b24gYW5kIEdQSU8gZnVuY3Rpb24uIEJ1dCBJIGNhbid0IHJlYWxseQ0KPj4+Pj4+IHNlZSBzb21l
IG9idmlvdXMgc29sdXRpb24uDQo+Pj4+PiBXaGF0IEknbSBjdXJyZW50bHkgdHJ5aW5nIGlzIChl
cnJvciBoYW5kbGluZyByZW1vdmVkIGZvciBicmV2aXR5KToNCj4+Pj4+DQo+Pj4+PiDCoMKgwqDC
oCBzdHJ1Y3QgaTJjX2J1c19yZWNvdmVyeV9pbmZvICpicmkgPSAmaTJjLT5yZWNvdmVyeTsNCj4+
Pj4+DQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTJjLT5waW5jdHJsID0gZGV2bV9waW5jdHJs
X2dldChkZXYpOw0KPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybF9kZWZhdWx0
ID0gcGluY3RybF9sb29rdXBfc3RhdGUoaTJjLT5waW5jdHJsLA0KPj4+Pj4NCj4+Pj4+IFBJTkNU
UkxfU1RBVEVfREVGQVVMVCk7DQo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTJjLT5waW5jdHJs
X3JlY292ZXJ5ID0gcGluY3RybF9sb29rdXBfc3RhdGUoaTJjLT5waW5jdHJsLA0KPj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
cmVjb3ZlcnkiKTsNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBicmktPnNkYV9ncGlvZCA9IGRl
dm1fZ3Bpb2RfZ2V0KGRldiwgInNkYSIsDQo+Pj4+PiBHUElPRF9PVVRfSElHSF9PUEVOX0RSQUlO
KTsNCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBicmktPnNjbF9ncGlvZCA9IGRldm1fZ3Bpb2Rf
Z2V0KGRldiwgInNjbCIsDQo+Pj4+PiBHUElPRF9PVVRfSElHSF9PUEVOX0RSQUlOKTsNCj4+Pj4+
DQo+Pj4+PiDCoMKgwqDCoCBwaW5jdHJsX3NlbGVjdF9zdGF0ZShpMmMtPnBpbmN0cmwsIGkyYy0+
cGluY3RybF9yZWNvdmVyeSk7DQo+Pj4+PiDCoMKgwqDCoCByZXR1cm4gcGluY3RybF9zZWxlY3Rf
c3RhdGUoaTJjLT5waW5jdHJsLCBpMmMtPnBpbmN0cmxfZGVmYXVsdCk7DQo+Pj4+Pg0KPj4+Pj4g
d2hpY2ggc2VlbXMgZ29vZCBlbm91Z2ggdG8gZ2V0IHRoZSBwaW5zIGJhY2sgaW50byBpMmMgbW9k
ZSBhZnRlciB0aGUNCj4+Pj4+IGdwaW9zIGFyZSBvYnRhaW5lZC7CoCBUaGVuIHdlIHN3aXRjaCB0
aGUgcGluY3RybCBzdGF0ZSBiZXR3ZWVuDQo+Pj4+PiBwaW5jdHJsX3JlY292ZXJ5IGFuZCBwaW5j
dHJsX2RlZmF1bHQgYXMgd2UgaGF2ZSBuZWVkIHRvLg0KPj4+Pj4NCj4+Pj4+IFRoZSBwcm9ibGVt
IGlzLCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5IGNvZGUgd2FudHMgdGhlIGdwaW9kDQo+
Pj4+PiBkZXNjcmlwdG9ycyB0byBiZSBzZXR1cCBhbmQgaW5wbGFjZSBieSB0aGUgdGltZSBpMmNf
aW5pdF9yZWNvdmVyeSgpDQo+Pj4+PiBpcyBjYWxsZWQgKHdoaWNoIGlzIGNhbGxlZCB3aGVuIHRo
ZSBhZGFwdGVyIGlzIHJlZ2lzdGVyZWQpIHNvDQo+Pj4+PiBob2xkaW5nIG9mZiB1bnRpbCB3ZSBu
ZWVkIHRvIGRvIHJlY292ZXJ5IGRvZXNuJ3Qgd29yay4NCj4+Pj4+DQo+Pj4+PiBUaGlzIHNlZW1z
IHRvIHdvcmsgZm9yIHRoaXMgU29DIEknbSBjdXJyZW50bHkgd29ya2luZyB3aXRoLCBidXQgSQ0K
Pj4+Pj4gdGhpbmsgdGhlcmUncyBtb3JlIG9uIHRoZSBob3Jpem9uIC0gSSdtIGhhdmluZyB0aGUg
c2FtZSBwcm9ibGVtcw0KPj4+Pj4gb24gYW5vdGhlciBTb0Mgd2hpY2ggYWxzbyBuZWVkcyBidXMg
cmVjb3ZlcnkgaW1wbGVtZW50ZWQsIGFuZCBhcw0KPj4+Pj4gdGhlIHByb2JsZW0gZGV2aWNlIGlz
IGJlaGluZCBhbiBJMkMgYnVzIG11eCwgd2hlbiBpdCBsb2NrcyB0aGUgSTJDDQo+Pj4+PiBidXMs
IGl0IGtpbGxzIGFsbCBJMkMgYnVzZXMgcm9vdGVkIGF0IHRoYXQgcGFydGljdWxhciBTb0MgSTJD
DQo+Pj4+PiBjb250cm9sbGVyLsKgIEhvd2V2ZXIsIHRoZXJlJ3MgYSBwcm9ibGVtIC0gdGhlIHBp
bmN0cmxzIGZvciB0aGF0IFNvQw0KPj4+Pj4gYXJlIHNldCBieSBST00gZmlybXdhcmUgYXQgYm9v
dCB0aW1lIGJ5IHJlYWRpbmcgYSB0YWJsZSBmcm9tIHRoZQ0KPj4+Pj4gYm9vdCBtZWRpYS7CoCAq
VW5wcmludGFibGVzIGFib3V0IGZpcm13YXJlIGJlaW5nIHRvbyB3YXkgbGltaXRpbmcqLiA6cA0K
Pj4+Pj4NCj4+PiDCoCA+DQo+Pj4+IEhpIGFsbCwgd2hhdCdzIHRoZSBjdXJyZW50IHN0YXRlIG9m
IHRoaXM/IEkgY2FuIGNvbmZpcm0gdGhhdCB0aGlzIGlzDQo+Pj4+IGJyb2tlbiB3aXRoIHRoZSBh
dDkxIGkyYyBjb250cm9sbGVyJ3MgcmVjb3ZlcnkgbW9kZVsxXSwgd2hpY2ggaXMNCj4+Pj4gaW1w
bGVtZW50ZWQgZXhhY3RseSB0aGUgc2FtZSBhcyBvdGhlciBpMmMgbWFzdGVyIHJlY292ZXJ5IG1v
ZGVzLCBzbyBJDQo+Pj4+IHN1c3BlY3QgdGhlbSB0byBiZSBicm9rZW4gYXMgd2VsbC4NCj4+Pj4N
Cj4+Pj4gSSdtIHVzaW5nIDUuNS42IHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkICh3aGljaCBhZGRz
IHRoZSByZWNvdmVyeSk6DQo+Pj4+IMKgwqDCoMKgwqAgaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9jb3Zlci8xMTMzMzg4My8NCj4+Pj4NCj4+Pj4gSXQgd29ya2VkIGZpbmUgd2l0aCA1LjIs
IGJ1dCBoYXMgbm93IGJyb2tlbiwgdGhlIHdheSBSdXNzZWxsIGRlc2NyaWJlcywNCj4+Pj4gaW4g
NS41LjYgYW5kIGFsc28gb24gdGhlIGxhdGVzdCA1LjYtcmMzLiBSdXNzZWxsJ3Mgc3VnZ2VzdGVk
IHdvcmthcm91bmQNCj4+Pj4gb2Ygc2V0dGluZyB0aGUgcGluY3RybCB0byByZWNvdmVyeSAoZ3Bp
bykgYW5kIHRoZW4gYmFjayB0byBkZWZhdWx0IGRvZXMNCj4+Pj4gbWFrZSBpdCB3b3JrLg0KPj4+
Pg0KPj4+PiBBbGFuLg0KPj4+Pg0KPj4+PiBbMV0gY3VycmVudGx5IHRoZSBwYXRjaCBmb3IgaTJj
IHJlY292ZXJ5IGZvciBhdDkxIGlzIGFjY2VwdGVkIHRvIA0KPj4+PiBXb2xmcmFtDQo+Pj4+IFNh
bmcncyBmb3ItbmV4dCB0cmVlLg0KPj4+Pg0KPj4+DQo+Pj4gSXMgdGhlcmUgYW55IHdvcmQgb24g
dGhpcz8NCj4+Pg0KPj4NCj4+IEludGVybmFsbHkgd2UgaGF2ZSBtYW5hZ2VkIGl0IGluIHRoZSBz
YW1lIHdheSBhcyB0aGUgb25lIHN1Z2dlc3RlZCBieQ0KPj4gUnVzc2VsbC4NCj4+DQo+PiBXZSB3
b25kZXJlZCBpZiB3ZSBzaG91bGQgbWFpbmxpbmUgaXQgb3Igbm90IGFzIGl0J3MgcmVhbGx5IHRy
aWNreSB0bw0KPj4gcHJvY2VlZCBsaWtlIHRoaXMuDQo+IA0KPiBDZXJ0YWlubHkgaXQgbmVlZHMg
dG8gd29yayBpbiBtYWlubGluZSB0aG91Z2gsIHJpZ2h0PyBOb3QganVzdCBpbiB0aGUNCj4gbGlu
dXg0c2FtIHZlbmRvciBrZXJuZWw/DQoNCkl0IGhhcyBiZWVuIGZpeGVkIHR3byBkYXlzIGFnby4g
V2UnbGwgc2VuZCBpdCBhbmQgc2VlIGlmIGl0IHdpbGwgYmUgDQphY2NlcHRlZC4NCg0KQnkgdGhl
IHdheSwgd2l0aCB3aGljaCBTb0MgaGF2ZSB5b3UgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZT8gSXQg
aXMgb2YgDQppbnRlcmVzZXQgYXMgd2UgaGF2ZSB0d28gZGlmZmVyZW50IHBpbiBjb250cm9sbGVy
cy4NCg0KPiANCj4+DQo+PiBJbiB0aGUgZnV0dXJlLCB3ZSBtYXkgZGVjbGFyZSBvdXIgcGluY3Ry
bCBhcyBzdHJpY3Qgd2hpY2ggc2hvdWxkIGNhdXNlDQo+PiBhbm90aGVyIGJyZWFrYWdlLi4uIEl0
J3Mgbm90IGRvbmUgeWV0IGJlY2F1c2Ugd2hlbiBJIHRyaWVkIHRvIGRvIGl0LA0KPj4gbWF5YmUg
aXQgaGFzIGNoYW5nZWQgbm93LCBJIHdhcyBub3QgYWJsZSB0byBhcHBseSB0aGUgcGluIGNvbmZp
Z3VyYXRpb24NCj4+IHRvIHRoZSBwaW4gbXV4ZWQgYXMgYSBncGlvLg0KPj4NCj4gDQo+IFRoZSBs
YXJnZXIgcXVlc3Rpb24gSSB0aGluayBpcywgaXMgdGhpcyBhIGJyZWFrYWdlIGluIGdwaW8/IGky
Yy1hdDkxIGlzDQo+IG5vdCB0aGUgb25seSBpMmMgZHJpdmVyIHdoaWNoIHVzZXMgZ3Bpby1iYXNl
ZCBidXMgcmVjb3ZlcnksIGFuZCBtYW55IG9mDQo+IHRoZW0gdXNlIG5lYXJseSB0aGUgZXhhY3Qg
c2FtZSBjb2RlIGFzIGkyYy1hdDkxLiBBcmUgdGhleSBhbGwgYnJva2VuDQo+IHdpdGggdGhpcyBr
ZXJuZWwgdXBkYXRlIHRvbz8NCj4gDQoNCkkgZG9uJ3Qga25vdyB3aGF0IGNoYW5nZWQgaW4gZ3Bp
byBvciBwaW5jdHJsLiBUaGlua2luZyBtb3JlIGFib3V0IGl0IA0KSSdhbSBzdXJwcmlzZWQgaXQg
aGFkIHdvcmtlZC4gSW4gbXkgbWluZCwgZ3Bpb2RfZ2V0IGhhcyBhbHdheXMgZW5kZWQgDQp3aXRo
IGEgY2FsbCB0byB0aGUgZ3Bpb19yZXF1ZXN0X2VuYWJsZSBvcGVyYXRpb24gc28gY2hhbmdpbmcg
dGhlIG11eCB0byANCmEgZ3BpbyBmdW5jdGlvbi4NCg0KVGhlIHBpbmN0cmwtYXQ5MSBkZWZpbmVz
IHRoZSBncGlvX3JlcXVlc3RfZW5hYmxlIG9wIHdoaWxlIHRoZSANCnBpbmN0cmwtYXQ5MS1waW80
IG5vdCB5ZXQuIFRoYXQncyB3aHkgSSBhc2tlZCBmb3IgdGhlIFNvQyB5b3UgdXNlLg0KDQpSZWdh
cmRzDQoNCkx1ZG92aWMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
