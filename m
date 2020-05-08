Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A441CA135
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 04:55:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SriKNp5u7wZLX/Udl7h0z12JleiPTbH0Wkp9iUy3dF4=; b=coj+x1Hr0hZTmr
	xC1ftEwP4mPUhIq4+KNmRwrVjVUXHTQ02ySQ5KYS/ZWnw+hODK5SPZG8xUGklKBiqYgRvkJoBvTMZ
	Mw5oAzr8ZJR3ZA8AdcAbO0xN4R8j3zlc1ZBZwX0QC6cHYeAZFRwtBcqNgMoCvEZwv0H500o0Etn7N
	NTUK1e0uZ17as/yTnqSSoBgbdiZba8TNrgntatVVBWlFWs5p6BCQZ8OOrpj9/W1LRRJOnfwx23OUm
	Ur6yC/N/mkWZbXJn0kiYjuRQ1oMvuHYNj44O6rv8q05Mzt6PJHKXUKuSZm0Yw0qz1Ll0kYV8pgZFu
	e0clw72BXs1cphIdj/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtAu-0002Jk-7L; Fri, 08 May 2020 02:55:44 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtAj-0002Ir-PK
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 02:55:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eJkyGwtAOVxkGG2fFpNMWBn91BDWHxsTWRHjsxyoR7WqFEO9kK81kldxgKQreZ3ljBy7j41YH7e5YicL5CHApCJu/ACy1TN8NeZ3cgtZkq1g2b4FbkZx+iaOHfVn69R0Dc78EA2voyH9CtDxraVE4sBKni0ySNXy1ObNHZyHCcv+wAVZquNB3PfGtRZrFDBj9LOYK06VdYUBS3758mksjn09DdF38B633T5qaqqPeGvCdWCHly7vKYc/SDw6C59zj2E0VMXFYgG59S7P4tvCbRTaTxXlVWVtNWDxN18GdUWrJxjll43+EWEtOfEzhkenh6GpzE2sMeTQ4l3D1aDApg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiOOS7Ux54vA21GzVuUGaY3DKdY4BSRLQkeMbui2Hng=;
 b=nmT+qxywWOlAbldfvA53FOkO0nT0U2ir6gBuWnmeRkrh7DI9eHMrApnmzqSDLJFXyhdZUf5lToYitRagOPba/CesbwDn1CsdaSffZDr2ODiHGf3epsshxOKZE2Mssh/29Y3JCfIXB98MUMyjErEh2BJ6oMr8rDHOts8dPIQOsFxOCbQux6v1kclcb/Xrnr2rbCL6Rug5jPbPPXhMpiILezEgHFLBVYunCEG7MdcuLhyeFmXKyd8470ZZUTcm5NHbU9hDT4NS1BTzXGtDbiuDEQTDMePvKcJ2zqNdKd645o9NyqKDfTzo+69Bh0nfzle6FQnhtBM1uIm09wY/c+jlAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiOOS7Ux54vA21GzVuUGaY3DKdY4BSRLQkeMbui2Hng=;
 b=G1j5ISqBlBeK+d2rrLWPav0z50JZ7EZ7O+C2mPt2CuYhV+0hF3K6sb/ppEmGQauz15O4uqv/TY9UKVTwi/Dh2zU7j66GECl3snARYlLS7VsKWnTggPk4QxNEQ5gSVUkbD2kD+AE5BMqSDJ+tvTIJQXGR6lvyoecHJzU0PYaWfmw=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6540.eurprd04.prod.outlook.com (2603:10a6:10:10d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Fri, 8 May
 2020 02:55:27 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.030; Fri, 8 May 2020
 02:55:27 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>
Subject: RE: [PATCH RFC v3 00/12] perf pmu-events: Support event aliasing for
 system PMUs
Thread-Topic: [PATCH RFC v3 00/12] perf pmu-events: Support event aliasing for
 system PMUs
Thread-Index: AQHWJGgyaiXsow/hjEO3MgQOuZnxW6idfqGQ
Date: Fri, 8 May 2020 02:55:27 +0000
Message-ID: <DB8PR04MB679546B9A99819CC934C88D9E6A20@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dd6fd19e-ce5c-4662-f298-08d7f2fb4350
x-ms-traffictypediagnostic: DB8PR04MB6540:
x-microsoft-antispam-prvs: <DB8PR04MB654027DB9EC6926190AEC18DE6A20@DB8PR04MB6540.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lbfEFAvreXU0L0QPm6Db4JNH+OiRG38mxmy56PB1JeTA15NY+Rr160BktSPMiw8RnwIrdrvBVbQFCUYuV+vjcXVs6sWkCpqirdpncCVbR7vKLBQYV0j+r3Q9TiuKB9IPFmQdDZvyIHAstGIiGHO9jIMo8u9NlWzZ7kfGXw9HBGFDUH6QH3NB32wZze0vQ3t2wDTbLp3JT51GiJVeRydNqWhYWvDwvW+QvmEZvLfMe4rQF+nbnhkhKNpn+Morq/sIx5RNK1vqllBmcQGUhje83EbfeVfTVUxGryqU5TvaHsyza3cFF4kd31FY2VWuTgdI0TEoSEL06waIZNWMXa523aTdlDXFwU5FECUq/v5Ynt2MAi6E1rs95XW2CqQUZAqnptN6Da1lP+2JQqrqNDhE3rBr39ADeFmO9i1FtEJ+49PtIX3k8Dcj84J9hBtC/VlsQ/lNPhngn2b9PLbA0exRtwl9UCbaMlqIeFYuMu6ldMOGYo2EtZwwMQi8b424SEygQod0HG1j8aj1oX73G4JwpjksUsarwTkb9iMlLWf1REbDn2ant/whbt+nnT7PDydwV+cS+QGfjdUVhfDcXad4Klb+9F4L9eM5gH9erFOhKvs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(376002)(39860400002)(346002)(136003)(33430700001)(33440700001)(4326008)(83080400001)(2906002)(55016002)(53546011)(5660300002)(66946007)(478600001)(6506007)(966005)(7416002)(66446008)(54906003)(66476007)(64756008)(66556008)(76116006)(9686003)(45080400002)(83300400001)(83310400001)(83280400001)(83320400001)(83290400001)(86362001)(7696005)(71200400001)(33656002)(52536014)(8936002)(186003)(316002)(8676002)(26005)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 4VZ3mJS4sjak3/72yIs9XrI/Iuu8TqAZqcj3Mukw39Aectsq3/OVFlZdCwR4nLEUwYgSVaE/QyLW3geys36NWZyL4WYETwN0IGVp9yvd9RrzIbzBTanmSOg2IGHKBkMMBJX59EWxG0vk0f2k4cYl1AjSaRWxK6ymwGjT1g1wkuH8ouke9jrcXeqJRWtEAfZnHBafkXmrjnO8bGXKl7YIlHP7yAfLjuF3aDQm4U1MB8cF6g+nQ7Ub3mfT5XPRmw7EpmsUWk/oRvjl6kHEl5LesAedWEdSmnXHmWsUIWiIY6bRxuZzaZuhDDEwB7WImvDQumR46LIQ+7p2PvYlnmQDyy7DEg+83fjmRaaSKP9odTk/KeFoC0TrdOr0phg+H55/qBJ7Iox0Taf/ZMR4rNxZEL3K28EX8578f8mH4vBdECaYnCw1Bbez08BTTE5URXe3B5STgzxk6rocczkrQEKvq6T4QRY74VEeW0hnPk0c9MM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd6fd19e-ce5c-4662-f298-08d7f2fb4350
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 02:55:27.5230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8DNFo8Ma73Fj7L+N+TXe8U8M5tiXPHO1nnpR+6YAE/AsxXi7brmiaD2oioDgH4lQU92gjgZTSWQnfaXRf3TGHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6540
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_195533_984988_16D580FA 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.73 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpJIGRpZCB0aGUgdGVzdCBvbiBNWDhNTSBhbmQgTVg4UU0sIGJvdGggY2FuIHdvcmsgd2VsbC4N
Cg0KU28gZm9yIHRoZSBwYXRjaCBzZXJpYWxzOg0KCVRlc3RlZC1ieTogSm9ha2ltIFpoYW5nIDxx
aWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQoN
Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSm9obiBHYXJyeSA8am9obi5n
YXJyeUBodWF3ZWkuY29tPg0KPiBTZW50OiAyMDIwxOo11MI3yNUgMTk6NTgNCj4gVG86IHBldGVy
ekBpbmZyYWRlYWQub3JnOyBtaW5nb0ByZWRoYXQuY29tOyBhY21lQGtlcm5lbC5vcmc7DQo+IG1h
cmsucnV0bGFuZEBhcm0uY29tOyBhbGV4YW5kZXIuc2hpc2hraW5AbGludXguaW50ZWwuY29tOw0K
PiBqb2xzYUByZWRoYXQuY29tOyBuYW1oeXVuZ0BrZXJuZWwub3JnDQo+IENjOiB3aWxsQGtlcm5l
bC5vcmc7IGFrQGxpbnV4LmludGVsLmNvbTsgbGludXhhcm1AaHVhd2VpLmNvbTsNCj4gbGludXgt
a2VybmVsQHZnZXIua2VybmVsLm9yZzsgSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhw
LmNvbT47DQo+IGlyb2dlcnNAZ29vZ2xlLmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207IHpoYW5n
c2hhb2t1bkBoaXNpbGljb24uY29tOw0KPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmc7IEpvaG4gR2FycnkgPGpvaG4uZ2FycnlAaHVhd2VpLmNvbT4NCj4gU3ViamVjdDogW1BB
VENIIFJGQyB2MyAwMC8xMl0gcGVyZiBwbXUtZXZlbnRzOiBTdXBwb3J0IGV2ZW50IGFsaWFzaW5n
IGZvcg0KPiBzeXN0ZW0gUE1Vcw0KPiANCj4gQ3VycmVudGx5IGV2ZW50IGFsaWFzaW5nIGZvciBv
bmx5IENQVSBhbmQgdW5jb3JlIFBNVXMgaXMgc3VwcG9ydGVkLiBJbiBmYWN0LA0KPiBvbmx5IHVu
Y29yZSBQTVVzIGFsaWFzaW5nIGlzIHN1cHBvcnRlZCBmb3Igd2hlbiB0aGUgdW5jb3JlIFBNVXMg
YXJlIGZpeGVkIGZvcg0KPiBhIENQVSwgd2hpY2ggbWF5IG5vdCBhbHdheXMgYmUgdGhlIGNhc2Ug
Zm9yIGNlcnRhaW4gYXJjaGl0ZWN0dXJlcy4NCj4gDQo+IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9y
dCBmb3IgUE1VIGV2ZW50IGFsaWFzaW5nIGZvciBzeXN0ZW0gYW5kIG90aGVyIHVuY29yZQ0KPiBQ
TVVzIHdoaWNoIGFyZSBub3QgdGllZCB0byBhIHNwZWNpZmljIENQVS4gT3IsIG1vcmUgc3BlY2lm
aWNhbGx5LCBDUFVzIHdoaWNoDQo+IG5vdCB0aWVkIHRvIHRob3NlIFBNVXMuDQo+IA0KPiBGb3Ig
dGhpcywgd2UgaW50cm9kdWNlIHN5c3RlbSBldmVudCB0YWJsZXMgaW4gZ2VuZXJhdGVkIHBtdS1l
dmVudHMuYywgd2hpY2gNCj4gY29udGFpbiBhIHBlci1Tb0MgdGFibGUgb2YgZXZlbnRzIG9mIGFs
bCBpdHMgc3lzdGVtIFBNVXMuIEVhY2ggcGVyLVBNVSBldmVudCBpcw0KPiBtYXRjaGVkIGJ5IGEg
IkNPTVBBVCIgcHJvcGVydHkuDQo+IA0KPiBXaGVuIGNyZWF0aW5nIGFsaWFzZXMgZm9yIFBNVXMs
IHdlIHRyZWF0IGNvcmUvdW5jb3JlKiBhbmQgc3lzdGVtIFBNVXMNCj4gZGlmZmVyZW50bHk6DQo+
IA0KPiAtIEZvciBDUFUgUE1VLCB3ZSBhbHdheXMgbWF0Y2ggZm9yIHRoZSBldmVudCBtYXBmaWxl
IGJhc2VkIG9uIHRoZSBDUFVJRC4NCj4gICAgVGhpcyBoYXMgbm90IGNoYW5nZWQuDQo+IA0KPiAt
IEZvciBhbiB1bmNvcmUgb3Igc3lzdGVtIFBNVSwgd2UgaXRlcmF0ZSB0aHJvdWdoIGFsbCB0aGUg
ZXZlbnRzIGluIGFsbA0KPiAgICB0aGUgc3lzdGVtIFBNVSB0YWJsZXMuDQo+IA0KPiAgICBNYXRj
aGVzIGFyZSBiYXNlZCBvbiB0aGUgIkNPTVBBVCIgcHJvcGVydHkgbWF0Y2hpbmcgdGhlIFBNVSBz
eXNmcw0KPiAgICBpZGVudGlmaWVyIGNvbnRlbnRzLCBpbiAvc3lzL2J1cy9ldmVudF9zb3VyY2Uv
ZGV2aWNlcy88UE1VPi9pZGVudGlmaWVyDQo+IA0KPiAqIHVuY29yZSBQTVVzIG1heSBhbHNvIGJl
IG1hdGNoZWQgYnkgc3lzdGVtIFBNVXMgZXZlbnQgc3VwcG9ydC4NCj4gDQo+IEluaXRpYWwgcmVm
ZXJlbmNlIHN1cHBvcnQgaXMgYWxzbyBhZGRlZCBmb3IgQVJNIFNNTVV2MyBQTUNHIChQZXJmb3Jt
YW5jZQ0KPiBNb25pdG9yIEV2ZW50IEdyb3VwKSBQTVUgZm9yIEhpU2lsaWNvbiBoaXAwOCBwbGF0
Zm9ybSB3aXRoIG9ubHkgYSBzaW5nbGUgZXZlbnQNCj4gc28gZmFyIC0gc2VlIGRyaXZlciBpbiBk
cml2ZXJzL3BlcmYvYXJtX3NtbXV2M19wbXUuYyBmb3IgdGhhdCBkcml2ZXIuDQo+IA0KPiBIZXJl
IGlzIGEgc2FtcGxlIG91dHB1dCB3aXRoIHRoaXMgc2VyaWVzIG9uIEh1YXdlaSBEMDZDUyBib2Fy
ZDoNCj4gDQo+IHJvb3RAdWJ1bnR1Oi8jIC4vcGVyZiBsaXN0DQo+ICAgIFsuLi5dDQo+IA0KPiBz
bW11IHYzIHBtY2c6DQo+ICAgIHNtbXV2M19wbWNnLmNvbmZpZ19jYWNoZV9taXNzDQo+ICAgICAg
ICAgW0NvbmZpZ3VyYXRpb24gY2FjaGUgbWlzcyBjYXVzZWQgYnkgdHJhbnNhY3Rpb24gb3IoQVRT
IG9yDQo+ICAgICAgICAgbm9uLUFUUyl0cmFuc2xhdGlvbiByZXF1ZXN0LiBVbml0OiBzbW11djNf
cG1jZ10NCj4gICAgc21tdXYzX3BtY2cuY29uZmlnX3N0cnVjdF9hY2Nlc3MNCj4gICAgICAgICBb
Q29uZmlndXJhdGlvbiBzdHJ1Y3R1cmUgYWNjZXNzLiBVbml0OiBzbW11djNfcG1jZ10NCj4gICAg
c21tdXYzX3BtY2cuY3ljbGVzDQo+ICAgICAgICAgW0Nsb2NrIGN5Y2xlcy4gVW5pdDogc21tdXYz
X3BtY2ddDQo+ICAgIHNtbXV2M19wbWNnLmwxX3RsYg0KPiAgICAgICAgIFtTTU1VdjMgUE1DRyBM
MSBUQUJMRSB0cmFuc2F0aW9uLiBVbml0OiBzbW11djNfcG1jZ10NCj4gICAgc21tdXYzX3BtY2cu
cGNpZV9hdHNfdHJhbnNfcGFzc2VkDQo+ICAgICAgICAgW1BDSWUgQVRTIFRyYW5zbGF0ZWQgVHJh
bnNhY3Rpb24gcGFzc2VkIHRocm91Z2ggU01NVS4gVW5pdDoNCj4gc21tdXYzX3BtY2ddDQo+ICAg
IHNtbXV2M19wbWNnLnBjaWVfYXRzX3RyYW5zX3JxDQo+ICAgICAgICAgW1BDSWUgQVRTIFRyYW5z
bGF0aW9uIFJlcXVlc3QgcmVjZWl2ZWQuIFVuaXQ6IHNtbXV2M19wbWNnXQ0KPiAgICBzbW11djNf
cG1jZy50bGJfbWlzcw0KPiAgICAgICAgIFtUTEIgbWlzcyBjYXVzZWQgYnkgaW5jb21pbmd0cmFu
c2FjdGlvbiBvciAoQVRTIG9yIG5vbi1BVFMpDQo+IHRyYW5zbGF0aW9uDQo+ICAgICAgICAgIHJl
cXVlc3QuIFVuaXQ6IHNtbXV2M19wbWNnXQ0KPiAgICBzbW11djNfcG1jZy50cmFuc190YWJsZV93
YWxrX2FjY2Vzcw0KPiAgICAgICAgIFtUcmFuc2xhdGlvbiB0YWJsZSB3YWxrIGFjY2Vzcy4gVW5p
dDogc21tdXYzX3BtY2ddDQo+ICAgIHNtbXV2M19wbWNnLnRyYW5zYWN0aW9uDQo+ICAgICAgICAg
W1RyYW5zYWN0aW9uLiBVbml0OiBzbW11djNfcG1jZ10NCj4gDQo+IA0KPiByb290QHVidW50dTov
IyAuL3BlcmYgc3RhdCAtdiAtZSBzbW11djNfcG1jZy5sMV90bGIgc2xlZXAgMQ0KPiBVc2luZyBD
UFVJRCAweDAwMDAwMDAwNDgwZmQwMTANCj4gVXNpbmcgU1lTSUQgSElQMDgNCj4gLT4gc21tdXYz
X3BtY2dfMjAwMTAwMDIwL2V2ZW50PTB4OGEvDQo+IC0+IHNtbXV2M19wbWNnXzIwMDE0MDAyMC9l
dmVudD0weDhhLw0KPiAtPiBzbW11djNfcG1jZ18xMDAwMjAvZXZlbnQ9MHg4YS8NCj4gLT4gc21t
dXYzX3BtY2dfMTQwMDIwL2V2ZW50PTB4OGEvDQo+IC0+IHNtbXV2M19wbWNnXzIwMDE0ODAyMC9l
dmVudD0weDhhLw0KPiAtPiBzbW11djNfcG1jZ18xNDgwMjAvZXZlbnQ9MHg4YS8NCj4gc21tdXYz
X3BtY2cubDFfdGxiOiAwIDEwMDEyMjE2OTAgMTAwMTIyMTY5MA0KPiBzbW11djNfcG1jZy5sMV90
bGI6IDAgMTAwMTIyMDA5MCAxMDAxMjIwMDkwDQo+IHNtbXV2M19wbWNnLmwxX3RsYjogMTAxIDEw
MDEyMTk2NjAgMTAwMTIxOTY2MA0KPiBzbW11djNfcG1jZy5sMV90bGI6IDAgMTAwMTIxOTAxMCAx
MDAxMjE5MDEwDQo+IHNtbXV2M19wbWNnLmwxX3RsYjogMCAxMDAxMjE4MzYwIDEwMDEyMTgzNjAN
Cj4gc21tdXYzX3BtY2cubDFfdGxiOiAxMzQgMTAwMTIxNzg1MCAxMDAxMjE3ODUwDQo+IA0KPiBQ
ZXJmb3JtYW5jZSBjb3VudGVyIHN0YXRzIGZvciAnc3lzdGVtIHdpZGUnOg0KPiANCj4gICAgICAg
ICAgICAgICAgIDIzNSAgICAgIHNtbXV2M19wbWNnLmwxX3RsYg0KPiANCj4gICAgICAgICAxLjAw
MTI2MzEyOCBzZWNvbmRzIHRpbWUgZWxhcHNlZA0KPiANCj4gcm9vdEB1YnVudHU6LyMNCj4gDQo+
IFN1cHBvcnQgaXMgYWxzbyBhZGRlZCBmb3IgaW14OG1tIEREUiBQTVUuDQo+IA0KPiBTZXJpZXMg
aXMgaGVyZToNCj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0aHViLmMNCj4gb20lMkZoaXNpbGljb24lMkZrZXJuZWwt
ZGV2JTJGdHJlZSUyRnByaXZhdGUtdG9waWMtcGVyZi01Ljctc3lzLXBtdS1ldmVudA0KPiBzLXYz
JmFtcDtkYXRhPTAyJTdDMDElN0NxaWFuZ3FpbmcuemhhbmclNDBueHAuY29tJTdDN2RhODMzZWZk
MjJiDQo+IDQzOWExMzFiMDhkN2YyN2Y1M2JjJTdDNjg2ZWExZDNiYzJiNGM2ZmE5MmNkOTljNWMz
MDE2MzUlN0MwJTdDMCUNCj4gN0M2MzcyNDQ1MDA5OTYyODMwODMmYW1wO3NkYXRhPWEwVzlYazdn
TUxHdG9VMVZsY1hBS0YzeDFlSyUyQkoNCj4gb0NmMCUyRmZTQXp4Q25wVSUzRCZhbXA7cmVzZXJ2
ZWQ9MA0KPiANCj4gRGlmZmVyZW5jZXMgdG8gdjI6DQo+IC0gZml4dXBzIGZvciBpbXg4bW0gSlNP
TnMNCj4gLSBmaXggZm9yIG1ldHJpY3MgYmVpbmcgcmVwZWF0ZWQgcGVyIFBNVQ0KPiAtIHVzZSBz
eXNmc19fcmVhZF9zdHIoKQ0KPiAtIGZpeCB0eXBvIGluIFBNQ0cgSlNPTg0KPiAtIGRyb3AgZXZz
ZWwgZml4LCB3aGljaCBzb21lb25lIGVsc2UgZml4ZWQNCj4gDQo+IERpZmZlcmVuY2VzIHRvIHYx
Og0KPiAtIFN0b3AgdXNpbmcgU29DIGlkIGFuZCB1c2UgYSBwZXItUE1VIGlkZW50aWZpZXIgaW5z
dGVhZA0KPiAtIEFkZCBtZXRyaWMgZ3JvdXAgc3lzIGV2ZW50cyBzdXBwb3J0DQo+ICAgIC0gVGhp
cyBpcyBhIGJpdCBoYWNreQ0KPiAtIEFkZCBpbXg4bW0gRERSIFBlcmYgc3VwcG9ydA0KPiAtIEFk
ZCBmaXggZm9yIHBhcnNlIGV2ZW50cyBzZWwNCj4gCS0gd2l0aG91dCBpdCwgSSBnZXQgdGhpcyBz
cGV3ZWQgZm9yIG1ldHJpYyBldmVudDoNCj4gDQo+IAlhc3NlcnRpb24gZmFpbGVkIGF0IHV0aWwv
cGFyc2UtZXZlbnRzLmM6MTYzNw0KPiANCj4gUGF0Y2hlcyBzdGlsbCBuZWVkIHRvIGJlIHNlbnQg
dG8gc3VwcG9ydCBwZXItUE1VIGlkZW50aWZlciBzeXNmcyBmaWxlDQo+IGluIHRoZSBrZXJuZWwu
DQo+IA0KPiBUaGFua3MsDQo+IEpvaG4NCj4gDQo+IEpvYWtpbSBaaGFuZyAoMSk6DQo+ICAgcGVy
ZiB2ZW5kb3IgZXZlbnRzOiBBZGQgSlNPTiBtZXRyaWNzIGZvciBpbXg4bW0gRERSIFBlcmYNCj4g
DQo+IEpvaG4gR2FycnkgKDExKToNCj4gICBwZXJmIGpldmVudHM6IEFkZCBzdXBwb3J0IGZvciBh
biBleHRyYSBkaXJlY3RvcnkgbGV2ZWwNCj4gICBwZXJmIGpldmVudHM6IEFkZCBzdXBwb3J0IGZv
ciBzeXN0ZW0gZXZlbnRzIHRhYmxlcw0KPiAgIHBlcmYgdmVuZG9yIGV2ZW50cyBhcm02NDogUmVs
b2NhdGUgaGlwMDggZXZlbnRzDQo+ICAgcGVyZiB2ZW5kb3IgZXZlbnRzIGFybTY0OiBBZGQgQXJj
aGl0ZWN0ZWQgZXZlbnRzIHNtbXV2My1wbWNnLmpzb24NCj4gICBwZXJmIHZlbmRvciBldmVudHMg
YXJtNjQ6IEFkZCBoaXAwOCBTTU1VdjMgUE1DRyBldmVudHMNCj4gICBwZXJmIHBtdTogQWRkIHBt
dV9pZCgpDQo+ICAgcGVyZiBwbXU6IEFkZCBwbXVfYWRkX3N5c19hbGlhc2VzKCkNCj4gICBwZXJm
IG1ldHJpY2dyb3VwOiBTcGxpdCB1cCBtZXRyaWNncm91cF9fYWRkX21ldHJpYygpDQo+ICAgcGVy
ZiBtZXRyaWNncm91cDogU3BsaXQgdXAgbWV0cmljZ3JvdXBfX3ByaW50KCkNCj4gICBwZXJmIG1l
dHJpY2dyb3VwOiBTdXBwb3J0IHByaW50aW5nIG1ldHJpYyBncm91cHMgZm9yIHN5c3RlbSBQTVVz
DQo+ICAgcGVyZiBtZXRyaWNncm91cDogU3VwcG9ydCBhZGRpbmcgbWV0cmljcyBmb3Igc3lzdGVt
IFBNVXMNCj4gDQo+ICAuLi4vYXJjaC9hcm02NC9mcmVlc2NhbGUvaW14OG1tL3N5cy9kZHJjLmpz
b24gICAgICB8ICAzOSArKysNCj4gIC4uLi9hcmNoL2FybTY0L2ZyZWVzY2FsZS9pbXg4bW0vc3lz
L21ldHJpY3MuanNvbiAgIHwgIDE4ICsrDQo+ICAuLi4vaGlzaWxpY29uL2hpcDA4L3sgPT4gY3B1
fS9jb3JlLWltcC1kZWYuanNvbiAgICB8ICAgMA0KPiAgLi4uL2hpc2lsaWNvbi9oaXAwOC97ID0+
IGNwdX0vdW5jb3JlLWRkcmMuanNvbiAgICAgfCAgIDANCj4gIC4uLi9oaXNpbGljb24vaGlwMDgv
eyA9PiBjcHV9L3VuY29yZS1oaGEuanNvbiAgICAgIHwgICAwDQo+ICAuLi4vaGlzaWxpY29uL2hp
cDA4L3sgPT4gY3B1fS91bmNvcmUtbDNjLmpzb24gICAgICB8ICAgMA0KPiAgLi4uL2FybTY0L2hp
c2lsaWNvbi9oaXAwOC9zeXMvc21tdS12My1wbWNnLmpzb24gICAgfCAgNDIgKysrDQo+ICB0b29s
cy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9tYXBmaWxlLmNzdiAgICAgICB8ICAgMiArLQ0K
PiAgdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvc21tdXYzLXBtY2cuanNvbiAgfCAg
NTggKysrKw0KPiAgdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYyAgICAgICAgICAgICAg
ICAgICAgfCAxNTIgKysrKysrKystLS0NCj4gIHRvb2xzL3BlcmYvcG11LWV2ZW50cy9qZXZlbnRz
LmggICAgICAgICAgICAgICAgICAgIHwgIDExICstDQo+ICB0b29scy9wZXJmL3BtdS1ldmVudHMv
cG11LWV2ZW50cy5oICAgICAgICAgICAgICAgICB8ICAgNiArDQo+ICB0b29scy9wZXJmL3V0aWwv
bWV0cmljZ3JvdXAuYyAgICAgICAgICAgICAgICAgICAgICB8IDI5NQ0KPiArKysrKysrKysrKysr
KystLS0tLS0NCj4gIHRvb2xzL3BlcmYvdXRpbC9wbXUuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDk2ICsrKysrKysNCj4gIHRvb2xzL3BlcmYvdXRpbC9wbXUuaCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgICAzICsNCj4gIDE1IGZpbGVzIGNoYW5nZWQsIDU5MyBpbnNl
cnRpb25zKCspLCAxMjkgZGVsZXRpb25zKC0pDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gdG9v
bHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvZnJlZXNjYWxlL2lteDhtbS9zeXMvZGRyYy5q
c29uDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gv
YXJtNjQvZnJlZXNjYWxlL2lteDhtbS9zeXMvbWV0cmljcy5qc29uDQo+ICByZW5hbWUgdG9vbHMv
cGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvaGlzaWxpY29uL2hpcDA4L3sgPT4NCj4gY3B1fS9j
b3JlLWltcC1kZWYuanNvbiAoMTAwJSkNCj4gIHJlbmFtZSB0b29scy9wZXJmL3BtdS1ldmVudHMv
YXJjaC9hcm02NC9oaXNpbGljb24vaGlwMDgveyA9Pg0KPiBjcHV9L3VuY29yZS1kZHJjLmpzb24g
KDEwMCUpDQo+ICByZW5hbWUgdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvaGlzaWxp
Y29uL2hpcDA4L3sgPT4NCj4gY3B1fS91bmNvcmUtaGhhLmpzb24gKDEwMCUpDQo+ICByZW5hbWUg
dG9vbHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvaGlzaWxpY29uL2hpcDA4L3sgPT4NCj4g
Y3B1fS91bmNvcmUtbDNjLmpzb24gKDEwMCUpDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gdG9v
bHMvcGVyZi9wbXUtZXZlbnRzL2FyY2gvYXJtNjQvaGlzaWxpY29uL2hpcDA4L3N5cy9zbW11LXYz
LXBtY2cuanNvbg0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3BlcmYvcG11LWV2ZW50cy9h
cmNoL2FybTY0L3NtbXV2My1wbWNnLmpzb24NCj4gDQo+IC0tDQo+IDIuMTYuNA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
