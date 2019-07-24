Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E41728DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWqjZh63RSEynjPiMQdC46LTRuXC3taOFwbOkLo/N3U=; b=TIaQ3NnIHQcx8n
	QYBnZmIpy3f6xYpWsNCHivDPIm1hMZ1tlCQE+K35lo5StSQfQCgyDVoj0J6JcdGFHYiIVF7LaGlcz
	9zW0mJsTH+CgCes2iBsfzhoiMnZ5hoQ9evkNI6cz0oSD8vYnTBLX0w5HHcOX7ua+ZujU3hdAgqGp4
	YMJEmsS2t5Zx3dduNoHaWPD559S7pHyx274/sHR8+tt0LIuNACWrh9imOcA8h7mLpcbBLyRdbVsl2
	xwOYU5/Ze9u39HqfeY6NlPh2Dnn+sNHc26BAYD6M2Tknv+NM1RK0Qv2T/+h3WECGNfyugs8ZE3dwq
	DzfaTy2ki4RMm1+UwDoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBQW-0003wQ-P9; Wed, 24 Jul 2019 07:11:04 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBPe-0002aD-3S; Wed, 24 Jul 2019 07:10:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563952210; x=1595488210;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=muDkMHOXGGb0iz/Fm+eGkj7tMzeBID44MV+QuWHafiI=;
 b=QmbWEUA6PY9aBzhjppq4xqhVZ9tgt/rKOxIDFm2/oA2XjZhqTgFohcRW
 rbrWw0ur8uaZv4l8vL4Hs73NL4lCoLYRIjhCq/gAbX3W6eNYEkVaC9uDY
 XI7Z9Dirk8dHu0IYvS9yG2o/KVXb9SuOsXSbraJYF7260Px9loo7X7seV
 fWl+JQp8Vw1S79fthNaYo1+4uykmJ+9/zbxq7NT2jATmqTi3l9UsayGKM
 vCMj9mlp+mM6eHFt7es4vo39/sL6i4x+Oz8Nb3xaj/98RAO3Clbsk3XVJ
 49lIHWDl0L8X10BU5za2yeCgBqPAelltUO8voFfUzbtdMuaH3Mzk/DR1S w==;
IronPort-SDR: HURgRY45sGeV9/oU5u4FdLmPUCa2fusBgCbmI4KWKo/YuT4UA4wEN4/i7XZAYazSZrH1CId34y
 RF26IhACbbEbPOVMajyQB4ELknd9gSSGQWI90r4kCakUyRt4rx7Ja7an/o6tWMvcryzBnzbP14
 0PpmSM2Jsm737REKMg0wjj6I+2r+enDnHzaA3c5j53Kl5JeGXLbQx/7VKC8hgSQmJfYSNgdtvN
 c0zN7vxDNUCunGiqmWzeWv8622L/Y9ajHfLfxARNLeWAs5maNK82RQJgrdUJgJTMnU4pMn8+u4
 rP8=
X-IronPort-AV: E=Sophos;i="5.64,302,1559491200"; d="scan'208";a="113874124"
Received: from mail-by2nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.52])
 by ob1.hgst.iphmx.com with ESMTP; 24 Jul 2019 15:09:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YByAOeXcQdAvnO1XSPFMGfC6TMzrgj5+JhZgM3i0ufF5efnVVq9tLc2iQXv0GZp8UuFBzRO/StG6Q7BNUzZwJL0W0Lh87eGB6NTo8BX9U8Qxu4Jt7eV14urQkePT0xySYsAnwSKdkKzd9KL+J2yqOaFCpYe/7JoxgFouIiXONL5O0R5Ti4lSRj151BvBDN3VZRe11BO0bmyjrvesHejM9f1FIOAmdlRJDU7ErRPRVDqNuQhn9V3aib4MbJEvYT7qTJKiSCIceJENXupmCPQ+luAfe71ak5uoI3/qBbRnpaWB8SOKiw+SYwuJk4FfeLFE/e834805zuFH64AUfiy4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=muDkMHOXGGb0iz/Fm+eGkj7tMzeBID44MV+QuWHafiI=;
 b=e1a82U1XESs7A2apj6cFyr9XxevNqx6HCLzBPNRRdMmbBTrIqhv0fQCBLpmhWwcKf7iDAEpwcMpCekYV1GZiMKdKVZYn84/6iBxsNfcayV0m6EWPF43+jGXMubu4RPDtb5ExLqR3rdvJRTYifJXXJNJpIyxOr3eOGXcOVAZn16QsPqE9CxtDf1pfWBMeUzKedu3RtyEYr44qnLCfMnvuHYuvZ/WaAtWdl9D7KatDFRZ6D47nTGciM9A5EiwugyC4n4GX3O/EWrkmnmyumyrunmDH5fnaViWAvq1OIWrGNmQx5YbZLxPI/oIO/eLZ5dhQkjGDrNf9qc38FMmnOOgzwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=muDkMHOXGGb0iz/Fm+eGkj7tMzeBID44MV+QuWHafiI=;
 b=RjmtBj6fnG88mPzMFxf+fbfiBv32ea57CQl+3LosigTDpU3CVawttDRwNG6454H0kLL6FXKxM6NUrWVGQSso7e9st2carNWkU2Ood+T6EadxO2WllYxCH1Zjns+PRYV5dpgmY1ffrWQQro6mCsqYF+Dsh7TS8XxnQsl44+Zf00w=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5536.namprd04.prod.outlook.com (20.178.245.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 24 Jul 2019 07:09:56 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::5d3b:c35e:a95a:51e2]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::5d3b:c35e:a95a:51e2%3]) with mapi id 15.20.2094.017; Wed, 24 Jul 2019
 07:09:56 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: RE: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Thread-Topic: [PATCH v1 0/2] scsi: ufs: Fix broken hba->outstanding_tasks
Thread-Index: AQHVOGx9NdHB1Jz3wEWNwY1jARxa+abVESuAgAADy1CAAR6tgIADFycAgAAhHCA=
Date: Wed, 24 Jul 2019 07:09:55 +0000
Message-ID: <MN2PR04MB6991E37D76FEFA1A203B1BB8FCC60@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
 <SN6PR04MB4925208835D4760249E82DB7FCC50@SN6PR04MB4925.namprd04.prod.outlook.com>
 <SN6PR04MB49256F66F259185F3876CCABFCC40@SN6PR04MB4925.namprd04.prod.outlook.com>
 <1563944904.7235.8.camel@mtkswgap22>
In-Reply-To: <1563944904.7235.8.camel@mtkswgap22>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b98e903-a47a-4888-067f-08d71005ee9d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5536; 
x-ms-traffictypediagnostic: MN2PR04MB5536:
x-microsoft-antispam-prvs: <MN2PR04MB5536F2A584F6C1CB98A7074CFCC60@MN2PR04MB5536.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0108A997B2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(136003)(376002)(366004)(396003)(189003)(199004)(54906003)(8936002)(478600001)(6916009)(25786009)(33656002)(7696005)(6246003)(6436002)(229853002)(7416002)(2906002)(86362001)(9686003)(68736007)(3846002)(55016002)(6116002)(14444005)(256004)(5660300002)(7736002)(52536014)(316002)(74316002)(64756008)(66556008)(66476007)(66446008)(305945005)(76116006)(6506007)(66946007)(11346002)(476003)(486006)(446003)(14454004)(66066001)(81156014)(81166006)(8676002)(4326008)(99286004)(71200400001)(71190400001)(102836004)(186003)(53936002)(26005)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5536;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WiPNGpuDhiDUaykq0rfpGe5jgJ9z7hYX4kmdEO6xIyX8iI+WePahRJgpSgF1OuYJ6JPuv2UHQJ1aotSzilD6H0MUhdI6+RUYGGZu6vdzxf1IZOgpCwEqY12j+U2eFrghQkBwC9UzQTA6h0LqUrTDAutw+AAqZCsXLsEfkpodA/mNjGxxAoLRoyuhUjVBhGGeQqnea2CuQvrGCIBmMn/rWpd/g9HLeCbf5G37p+OxNcDTLkQXfh1MM98UVSW6AOvFrLp8esl9ps+33Kz1v8sokm/Bw1KcLvna9sKHT7XPjzSXrBF9Cv2NSsWlYUcWxNDBL3ZpAnKsl4jc03msRgOpc6xlMTb6OKnvtHNlTQq4YnqAz78Rl5YvJNO57mdvNXfQj6/E/3frZU/50e6I0tCZXG3jqNgIwuuLNGOHCXNxNK0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b98e903-a47a-4888-067f-08d71005ee9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2019 07:09:55.7721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_001011_806041_7D08D9B0 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3RhbmxleSwNCg0KPiANCj4gSGkgQXZyaSwNCj4gDQo+IE9uIE1vbiwgMjAxOS0wNy0yMiBhdCAw
NjoxMCArMDAwMCwgQXZyaSBBbHRtYW4gd3JvdGU6DQo+ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiBI
aSwNCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEN1cnJlbnRseSBiaXRzIGluIGhiYS0+
b3V0c3RhbmRpbmdfdGFza3MgYXJlIGNsZWFyZWQgb25seSBhZnRlciB0aGVpcg0KPiA+ID4gPiA+
IGNvcnJlc3BvbmRpbmcgdGFzayBtYW5hZ2VtZW50IGNvbW1hbmRzIGFyZSBzdWNjZXNzZnVsbHkg
ZG9uZQ0KPiBieQ0KPiA+ID4gPiA+IF9fdWZzaGNkX2lzc3VlX3RtX2NtZCgpLg0KPiA+ID4gPiA+
DQo+ID4gPiA+ID4gSWYgdGltZW91dCBoYXBwZW5zIGluIGEgdGFzayBtYW5hZ2VtZW50IGNvbW1h
bmQsIGl0cw0KPiBjb3JyZXNwb25kaW5nDQo+ID4gPiA+ID4gYml0IGluIGhiYS0+b3V0c3RhbmRp
bmdfdGFza3Mgd2lsbCBub3QgYmUgY2xlYXJlZCB1bnRpbCBuZXh0IHRhc2sNCj4gPiA+ID4gPiBt
YW5hZ2VtZW50IGNvbW1hbmQgd2l0aCB0aGUgc2FtZSB0YWcgdXNlZCBzdWNjZXNzZnVsbHkNCj4g
ZmluaXNoZXMu4oCnDQo+ID4gPiA+IHVmc2hjZF9jbGVhcl90bV9jbWQgaXMgYWxzbyBjYWxsZWQg
YXMgcGFydCBvZiB1ZnNoY2RfZXJyX2hhbmRsZXIuDQo+ID4gPiA+IERvZXMgdGhpcyBjaGFuZ2Ug
c29tZXRoaW5nIGluIHlvdXIgYXNzdW1wdGlvbnM/DQo+ID4gPiBBbmQgQlRXIHRoZXJlIGlzIGEg
c3BlY2lmaWMgX19jbGVhcl9iaXQgaW4gX191ZnNoY2RfaXNzdWVfdG1fY21kKCkgaW4NCj4gY2Fz
ZQ0KPiA+ID4gb2YgYSBUTy4NCj4gPg0KPiA+IEdhdmUgaXQgYW5vdGhlciBsb29rIC0NCj4gPiBJ
ZiBpbmRlZWQgdGhpcyBiaXQgaXNuJ3QgY2xlYXJlZCBhcyBwYXJ0IG9mIHRoZSBlcnJvciBmbG93
IHRoYXQgdGhlIHRpbWVvdXQNCj4gdHJpZ2dlcnMsDQo+ID4gSSB0aGluayB5b3Ugc2hvdWxkIHJl
bGF0ZSB0byB1ZnNoY2RfY2xlYXJfdG1fY21kIHNwZWNpZmljYWxseSBpbiB5b3VyDQo+IGNvbW1p
dCBsb2cgLQ0KPiA+IEJlY2F1c2UgdGhpcyBpcyB0aGUgb2J2aW91cyBwbGFjZSB3aGVyZSB0aGUg
Yml0IGNsZWFudXAgc2hvdWxkIHRha2UNCj4gcGxhY2UuDQo+ID4NCj4gPiBBbHNvIHRoZSBmaXgg
c2hvdWxkIGJlIG11Y2ggbW9yZSBpbnR1aXRpdmUgSU1PIC0NCj4gPiBUb2RheSB3ZSBkbyBfX2Ns
ZWFyX2JpdCgpIG9uIHN1Y2Nlc3MsIHVmc2hjZF9jbGVhcl90bV9jbWQoKSBvbiBlcnJvciwNCj4g
PiBBbmQgYWxzbyB1ZnNoY2RfcHV0X3RtX3Nsb3QoKSBlaXRoZXIgd2F5Pw0KPiA+DQo+ID4gTWF5
YmUgeW91IGNhbiBjaG9vc2UgYSBzaW5nbGUgcGxhY2UgdG8gY2xlYXIgaXQsIHdpdGhvdXQgYW55
IGFkZGl0aW9uYWwNCj4gY29kZT8NCj4gDQo+IHVmc2hjZF9jbGVhcl90bV9jbWQoKSBpcyBzaW1p
bGFyIHRvIHVmc2hjZF9jbGVhcl9jbWQoKSB3aGljaCB0cmllcyB0bw0KPiB3cml0ZSB0aW1lZC1v
dXQgYml0IGluICJjbGVhciByZWdpc3RlciIuIFRoZXkgZG8gbm90IGNsZWFuIGJpdHMgaW4gYm90
aA0KPiBvdXRzdGFuZGluZyBtYXNrcy4NCj4gDQo+IEFub3RoZXIgcmVhc29uIHRvIG5vdCB0byBk
byBvdXRzdGFuZGluZyBiaXRzIGNsZWFudXAgaW4NCj4gdWZzaGNkX2NsZWFyX3RtX2NtZCgpIGlz
OiBpZiBob3N0IGlzIHVuYWJsZSB0byBjbGVhciBUTSBjb21tYW5kIGJ5DQo+IHNldHRpbmcgImNs
ZWFyIHJlZ2lzdGVyIiwgdGhlIFRNIGNvbW1hbmQgbWF5IGJlIHN0aWxsICJvdXRzdGFuZGluZyIg
aW4NCj4gdGhlIGRldmljZS4gSW4gdGhpcyBjYXNlLCBpdCBtYXkgYmUgYmV0dGVyIHRvIGRvIGNs
ZWFudXAgYWZ0ZXIgcmVzZXQgaXMNCj4gZG9uZS4gQ2xlYW51cCBpbmNsdWRlcyBiaXRzIGluIGhi
YS0+b3V0c3RhbmRpbmdfdGFza3MgYW5kDQo+IGhiYS0+dG1fc2xvdHNfaW5fdXNlIHdoaWNoIGlz
IHBvc3NpYmx5IGNsZWFuZWQgdG9vIGVhcmx5IGJ5DQo+IHVmc2hjZF9wdXRfdG1fc2xvdCgpIGlm
IGNvbW1hbmQgaXMgdGltZWQtb3V0IG5vdy4NCj4gDQo+IFJlZmVycmluZyB0byBlcnJvciBoYW5k
bGluZyBmbG93IG9mIGhiYS0+b3V0c3RhbmRpbmdfcmVxcywgYWxsIHRpbWVkLW91dA0KPiBiaXRz
IHdpbGwgYmUgY2xlYW5lZCBieSB1ZnNoY2RfcmVzZXRfYW5kX3Jlc3RvcmUoKSA9Pg0KPiB1ZnNo
Y2RfdHJhbnNmZXJfcmVxX2NvbXBsKCkgYWZ0ZXIgcmVzZXQgaXMgZG9uZS4gU2ltaWxhciBoYW5k
bGluZyBmb3INCj4gaGJhLT5vdXRzdGFuZGluZ190YXNrcyBjb3VsZCBiZSBhcHBsaWVkLCBpLmUu
LCBkbyBjbGVhbnVwIGJ5DQo+IHVmc2hjZF9yZXNldF9hbmRfcmVzdG9yZSgpID0+IHVmc2hjZF90
bWNfaGFuZGxlcigpLg0KRmFpciBlbm91Z2guICBUaGFuayB5b3UgZm9yIHRoZSBkZXRhaWxlZCBl
eHBsYW5hdGlvbi4NCg0KPiANCj4gVGhlIG5leHQgdGhpbmcgaXMgd2hhdCB5b3Ugc3VnZ2VzdGVk
OiBIb3cgdG8gbWFrZSB0aGUgZml4IG1vcmUNCj4gaW50dWl0aXZlLiBQYXRjaHNldCB2MiB3aWxs
IGJlIHVwbG9hZGVkIGZvciByZXZpZXc6IEl0IHRyaWVzIHRvDQo+ICJyZS1mYWN0b3IiIGNsZWFu
dXAgam9icyBmaXJzdCwgYW5kIHRoZW4gYWRkIGZpeGVkIGZsb3cgdG8gbWFrZSB0aGUNCj4gd2hv
bGUgcGF0Y2ggbW9yZSByZWFkYWJsZS4NCj4gDQo+IE9uZSBtb3JlIHRoaW5nLCBhYm92ZSBkZXNj
cmlwdGlvbiBhbmQgZmxvdyBpcyBkb25lIHRocm91Z2ggVUZTSENEIFNDU0kNCj4gZXJyb3IgaGFu
ZGxpbmcgcm91dGluZXMgcmVnaXN0ZXJlZCB3aXRoIFNDU0kgTWlkbGF5ZXIuIEZvciBUTSBjb21t
YW5kDQo+IHRpbWVvdXQgaGFwcGVuaW5nIGluIGJzZyBwYXRoIHdpdGhvdXQgZXJyb3IgaGFuZGxp
bmcgdHJpZ2dlcmVkIGJ5IFNDU0kNCj4gbGF5ZXIsIHdlIG1heSBuZWVkIHRvIGNvbnNpZGVyIHRv
IGhhbmRsZSB0aG9zZSB0YXNrcyBpbiBmdXR1cmUgcGF0Y2hlcy4NClBsZWFzZSBkby4NCg0KVGhh
bmtzLA0KQXZyaQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
