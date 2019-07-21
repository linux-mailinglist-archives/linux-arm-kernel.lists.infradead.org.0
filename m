Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D77D6F344
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 14:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAhV1ux/rUxuKBvY0tNWTghMNUFCUKaiGFYpX0EfsI8=; b=T0zBGJQLFWbIz9
	unmyc/T6+yDhBP9A30+J19XUeuzHzQvz6PG3reU+iLJecBJPde8nqObdMkaOk+MCB9NGJndMdhtal
	0Ukqrq98S4T4+Om0sZGfsPhPgec0UtNi1jiWZem8p8beqcRX4rKwaueeSPGFx04XEvInZVzcl/FgW
	lzbHcsnEFaz+8XHA3sj+Bb6tXYd2KzKy+cBbfDKrtMVn+/LMy/MwYGDQ0jHdW5Uhoa+pXMXFISrDp
	rLzWkWxipufMtgO9n6DFJjZDYou6NkMJTdHTry2VFfgHvinFK47Hlx9z3zJKHyEEYFUBKM+OeuBXR
	yLZRCGPXFV2ZA8suo7FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpBEV-0001lu-VE; Sun, 21 Jul 2019 12:46:32 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpBE8-0001ju-0J; Sun, 21 Jul 2019 12:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563713326; x=1595249326;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FRZc0LV5hTj+Rdv3T38eOuhk9bzQtFNhyDjaea3Os+Y=;
 b=o06zI9p3JI87UxLeq/3xVxJJUq4rzo+UShs2uLvQkgdqo1gqPdyY8WER
 g7rU4tNal8B4xrc1aWQsLSCn1kVMjh4SPJHciiBJts52ZGBqlb5SpIE3Q
 lYw3j7IGm3bQaXT3cWDS9XxoJlap0eTzgX6gPkmpSiWal8T4F2iS4/aFM
 zf0pTykDszHEVQmphqphDnwp1TTGQ3j79apunvUvqvFJ4K1ILgM0Ynp/Y
 t21Se2pPgfK/FVrwMd6/i1mthM60JCyCmCfieJUDOHRN9b7aZTf0kkVCu
 u+ry55nzkdH53IgXBgXXtSE0qJezyRPWbhTTKbjFPiDZxc+UduN137UQ0 Q==;
IronPort-SDR: Ng2uINekKZ+eBDKfcPoM2q/zAQ7C56xKnSHOx/c8d0/pySNHtmd4EQg3YrcyydqIkM5ociMOB0
 /6lnCI5sYdR6TR63bifeTbXm8LjCoIzIdKWMl5QZ5oEBEGkJJCk4qOzEzIGpr62TSN6f2xSEtx
 NlFBHrJD0eHq0Xc3KMUHeYb/4zAJaMxa077xBLuhULxXh16OZf92BPgzkorOkvovH+xvquY1o0
 91P7yIIjMVckuGDDGIy/e+ZDJVFBHDYA9GksfTjdNhX2ZZpC9nODVnmNMmmdVsRhP8sDoB2ixM
 C+o=
X-IronPort-AV: E=Sophos;i="5.64,290,1559491200"; d="scan'208";a="213649984"
Received: from mail-sn1nam01lp2057.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.57])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jul 2019 20:48:40 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jea6pE+AbGyMNmGjavZ0x5dOGop9x5D5lEVqlQXHZHWEPXE72Ps8iD80ULYR1kq5VrNkeVqJ1qiamGb5oc0xSmMxyaVNx5eWs/zr9wlksJS1t/Oa1owMZE3dJwL+SM86sQiL0c8vXvWjjEK/8wVWe1qOENyOJgWUefQCd6HupGExV86u5E6XgE4ihe+iEaCyW7AHm5GStDYCpnXl36Sjb54hE6sEM6f5Rs0jXMSVcYzzDKOXhPkT0fTZ7hKRsSbJW3WksLwGlHu6KFzj86hVBT+U+Qv8l4FRe0kbWaM1u2OkzTv+RpXRqmMfENYhatUtvt80uJqftkRiGq8I5jejxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FRZc0LV5hTj+Rdv3T38eOuhk9bzQtFNhyDjaea3Os+Y=;
 b=IrPFybBvZ89nZJSkv9TzpPufQnwL+IsVKY2Ce/pb0hhkYK2NRkIeVIFhjN+fG9x7Yx2eveaSZIsLhyGq1ITm/DU7+cYyO4OREARegyKnZdRUm7Ff50c70KcdpQw3+QBIRBLXlG96jrpi0GIgg5EgNJWsZkRnnZMh7oD+sZ1V+938dIfMY0PKjrFf/llN2goQQ9GlcCs23YNbkdS+9LIHmr99Bq6tMlmRKhp/nDZMR3yrCDsM45bfRmoDa9/LWvZQfDCz0eJaD/iLMms3Wul/IVCgSzwqL4zxYvFATM+YhXp69SUVsT/8JprWHqwjxP0g+0BWcZdV12FXYNgTpXZMkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FRZc0LV5hTj+Rdv3T38eOuhk9bzQtFNhyDjaea3Os+Y=;
 b=WvLDW2uv/Ig3LjgI552qHdVA3kSQX7IMmWL8SgcjUmPN7axnNQklF5ACqIPfD5meD0EWMuWdgP0JRg1cF8pbcdmBb8jg3PTDVsr2eirx/z5EDiJp3w45nohhXslB+IqekQyyDT/kxR3zN78BaUPGCFP9/1Ol6jjXnQnIe2KaNNc=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB3792.namprd04.prod.outlook.com (52.135.81.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.11; Sun, 21 Jul 2019 12:46:02 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::a102:1701:9c05:96b3]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::a102:1701:9c05:96b3%5]) with mapi id 15.20.2094.011; Sun, 21 Jul 2019
 12:46:02 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Thread-Topic: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Thread-Index: AQHVOGx9NdHB1Jz3wEWNwY1jARxa+abVESuA
Date: Sun, 21 Jul 2019 12:46:01 +0000
Message-ID: <SN6PR04MB4925208835D4760249E82DB7FCC50@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e87bfc9-d614-4162-5992-08d70dd9633a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3792; 
x-ms-traffictypediagnostic: SN6PR04MB3792:
x-microsoft-antispam-prvs: <SN6PR04MB37920BEA2B1E45A28295BDE8FCC50@SN6PR04MB3792.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0105DAA385
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(199004)(189003)(66556008)(66476007)(66446008)(64756008)(66066001)(3846002)(66946007)(76116006)(6436002)(6116002)(2501003)(52536014)(8676002)(25786009)(86362001)(7416002)(9686003)(476003)(74316002)(305945005)(14454004)(7736002)(71190400001)(256004)(186003)(4326008)(81156014)(68736007)(33656002)(14444005)(8936002)(2906002)(81166006)(6246003)(486006)(11346002)(478600001)(5660300002)(55016002)(53936002)(446003)(316002)(110136005)(54906003)(229853002)(2201001)(76176011)(7696005)(26005)(6506007)(102836004)(99286004)(71200400001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3792;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fPU6tOS0k2yLnKz6eQfMYODXFfcYu7mM1inK2DqU6IHZuGXgk/P5n2WoUeCMaFod6O6YoXbq+xz+i1DuYeQ8HlnULp9Uu8oLdfQ7pnA3xPbGXqRqKQ1ByR7/rx88uwL1TCb/hppLqDd0KUQmlF1A4lM41ltyvQTpFyhB35+07VO7roWW2KP0pfBWkb/dBgxHfMrVQkKWOsYBWNctbHvXM053/tbfQ+/R1tTVbTeV/HTLx48meMBcTMVON01JPaE61VFyICwe5778V9ax8rtLptmaXz64dEbze3Da0KT8tDWPH7FuDoPkNrs5TisAAOfBs7DutCTLEWd2YwaLfU3mFmKe6oA3yk5b2zHY5PERW9QtdPuukBZym1uQEyA+YN2uIFo/PVey0THFIsisrq0n1+HRZw6fTYSQ3cAGb9STJKc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e87bfc9-d614-4162-5992-08d70dd9633a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2019 12:46:01.7728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3792
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_054608_178697_6DE014BD 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNCj4gDQo+IEN1cnJlbnRseSBiaXRzIGluIGhiYS0+b3V0c3RhbmRpbmdfdGFza3MgYXJl
IGNsZWFyZWQgb25seSBhZnRlciB0aGVpcg0KPiBjb3JyZXNwb25kaW5nIHRhc2sgbWFuYWdlbWVu
dCBjb21tYW5kcyBhcmUgc3VjY2Vzc2Z1bGx5IGRvbmUgYnkNCj4gX191ZnNoY2RfaXNzdWVfdG1f
Y21kKCkuDQo+IA0KPiBJZiB0aW1lb3V0IGhhcHBlbnMgaW4gYSB0YXNrIG1hbmFnZW1lbnQgY29t
bWFuZCwgaXRzIGNvcnJlc3BvbmRpbmcNCj4gYml0IGluIGhiYS0+b3V0c3RhbmRpbmdfdGFza3Mg
d2lsbCBub3QgYmUgY2xlYXJlZCB1bnRpbCBuZXh0IHRhc2sNCj4gbWFuYWdlbWVudCBjb21tYW5k
IHdpdGggdGhlIHNhbWUgdGFnIHVzZWQgc3VjY2Vzc2Z1bGx5IGZpbmlzaGVzLuKApw0KdWZzaGNk
X2NsZWFyX3RtX2NtZCBpcyBhbHNvIGNhbGxlZCBhcyBwYXJ0IG9mIHVmc2hjZF9lcnJfaGFuZGxl
ci4NCkRvZXMgdGhpcyBjaGFuZ2Ugc29tZXRoaW5nIGluIHlvdXIgYXNzdW1wdGlvbnM/DQoNClRo
YW5rcywNCkF2cmkNCg0KPiANCj4gVGhpcyBpcyB3cm9uZyBhbmQgY2FuIGxlYWQgdG8gc29tZSBp
c3N1ZXMsIGxpa2UgcG93ZXIgY29uc3VtcHRvbiBpc3N1ZS4NCj4gRm9yIGV4YW1wbGUsIHVmc2hj
ZF9yZWxlYXNlKCkgYW5kIHVmc2hjZF9nYXRlX3dvcmsoKSB3aWxsIGRvIG5vdGhpbmcNCj4gaWYg
aGJhLT5vdXRzdGFuZGluZ190YXNrcyBpcyBub3QgemVybyBldmVuIGlmIGJvdGggVUZTIGhvc3Qg
YW5kIGRldmljZXMNCj4gYXJlIGFjdHVhbGx5IGlkbGUuDQo+IA0KPiBCZWNhdXNlIGVycm9yIGhh
bmRsaW5nIGZsb3csIGkuZS4sIHVmc2hjZF9yZXNldF9hbmRfcmVzdG9yZSgpLCB3aWxsIGJlDQo+
IHRyaWdnZXJlZCBhZnRlciBhbnkgdGFzayBtYW5hZ2VtZW50IGNvbW1hbmQgdGltZXMgb3V0LCB3
ZSBmaXggdGhpcyBieQ0KPiBjbGVhcmluZyBjb3JyZXNwb25kaW5nIGhiYS0+b3V0c3RhbmRpbmdf
dGFza3MgYml0cyBkdXJpbmcgdGhpcyBmbG93Lg0KPiBUbyBhY2hpZXZlIHRoaXMsIHdlIG5lZWQg
YSBtYXNrIHRvIHRyYWNrIHRpbWVkLW91dCBjb21tYW5kcyBhbmQgdGh1cw0KPiBlcnJvciBoYW5k
bGluZyBmbG93IGNhbiBjbGVhciB0aGVpciB0YWdzIHNwZWNpZmljYWxseS4NCj4gDQo+IFN0YW5s
ZXkgQ2h1ICgyKToNCj4gICBzY3NpOiB1ZnM6IE1ha2UgbmV3IGZ1bmN0aW9uIGZvciBjbGVhcmlu
ZyBvdXRzdGFuZGluZyB0YXNrIGJpdHMNCj4gICBzY3NpOiB1ZnM6IEZpeCBicm9rZW4gaGJhLT5v
dXRzdGFuZGluZ190YXNrcw0KPiANCj4gIGRyaXZlcnMvc2NzaS91ZnMvdWZzaGNkLmMgfCA0OSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0NCj4gIGRyaXZlcnMvc2NzaS91
ZnMvdWZzaGNkLmggfCAgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyks
IDcgZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAyLjE4LjANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
