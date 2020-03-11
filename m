Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4401813A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:53:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH4UXt4EAad4mLpNdYGgO0wRQ/ZQzP+/0m95jhKOl+w=; b=GQOCrKAz03Bc1L
	vFnkk5nYRyL9V5eNLH1oiMGvog9KRpmqj8SperWSOJ4LQ8nWq3KUEWmONl8YfFLCDmljSHMwqvANr
	uDM9jdeSL+LrRGs4nuZiEKhBlibrDiSmmSPnRSm7Sz2r/D1G5we9u5ZKi+koHL7yDkkKEWFJiOS/k
	9sx2QKVqmaSJL2ZaLYydA/28NY4JortWMCBItuDjk0YtW7YW8oWJOXacMwLdem+b8+IfDZPN5R5+d
	0dfJA/wW4pXhvD0YYoh2N91Dvw3xRXSdOQXS8urZGYm9TuuyY4WKeutPvfhQzH2d43RheGMhLm308
	IhSYX/cvfrsDLCFbOXFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBx6v-00061L-Iz; Wed, 11 Mar 2020 08:53:05 +0000
Received: from mail-eopbgr40079.outbound.protection.outlook.com ([40.107.4.79]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBx6o-00060j-8Z
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:52:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmHx6ALOHM5kvta4u2JShBbZHxR7GisVbrVEpplL+9uIeuydSfTJSBV0INpj9/CFei5J4GZT1W6i1SgeJUjGP1W5x6BFfLhvB+wR40Zn3pGBFMx/b6BGOodZzpIMFhmSmTFG3eGavxPQDqNbrUdkPbvROVBbOiOzC6nSHHvzpuV4ArSwkO0GDrNXLRrvXRyKQUFMuvpbe9C9sdNlKnO+sNexh+t6HIkXYS4bMrEUQY6mS/4WNBRLo3QjiMKuYId+Nvd2rR2LhNkxpT396IN3SFaFSF4kQDdDAsjwxvs+wpgLsXl7k6Z3BW6AE0Chl+G9VQ2+CdNPCW6KewdkYqCqzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yn6ancu8bvxUsA8f03HqBnCL+xP1kztmWFMe2SIZRAg=;
 b=nWolcU3aW1w+iV25a0tXb/Wm7AXmbk52b6Ky0EyEVcDmOPRNvc8Ln/NeVQMdU6AnS5PODZfXftxrMuZAGq9sOyF5LIHmHBrU1TYWFRuZI7T87DOd4P2LryfTvql+KS6PCS5oiQ+5FZHZmJ80ilV/E+4fSV78dk7yFSm1ox3i9fETTtkOiURnaL97sug9dVC1QOg60GjlmVsIdtBWKqdJs6UeNLioFKm9y2hCSJWL5lvXRziyPKQIvpi/aGcCiXsNvL8pPoA1+MNldZe05RYHmjdIchtVyTcS3IFTMP07zxOoNqmk+uSkiNoAToGf0Ey1srLwm2wgAF/N1/DIffat7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yn6ancu8bvxUsA8f03HqBnCL+xP1kztmWFMe2SIZRAg=;
 b=j06e7K4klSVsFtslqrqkDbrud0CGCY5yRrisq+ayltq+fA8jl+9kvkwHYRuRCiBhHggxvo9KbL1D+AswVmCUqfSfRUBinTOqLiZcMgGlBo8LaPkFu+az+1ydoTddmviu23rW89IQyNjV+OP5d/ioe9MKbqQOsVPyhMMiLtMhnpY=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5259.eurprd04.prod.outlook.com (20.176.234.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:52:53 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788%5]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:52:53 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "john.garry@huawei.com" <john.garry@huawei.com>, "will@kernel.org"
 <will@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [PATCH RFC 0/3] perf/imx_ddr: Add system PMU support
Thread-Topic: [PATCH RFC 0/3] perf/imx_ddr: Add system PMU support
Thread-Index: AQHV7HeX9JF53Vi+XUeslsLfvpkmVqhDK95Q
Date: Wed, 11 Mar 2020 08:52:53 +0000
Message-ID: <DB7PR04MB46185CDECB2475CC81CC405FE6FC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [222.93.243.135]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c621e033-f780-47c1-83e6-08d7c599963f
x-ms-traffictypediagnostic: DB7PR04MB5259:|DB7PR04MB5259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB525961993BF4F66500407D3CE6FC0@DB7PR04MB5259.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(39860400002)(136003)(376002)(199004)(9686003)(86362001)(66556008)(66476007)(53546011)(478600001)(316002)(55016002)(52536014)(5660300002)(71200400001)(64756008)(76116006)(33656002)(6506007)(54906003)(66446008)(110136005)(66946007)(26005)(4326008)(186003)(81166006)(8936002)(7696005)(81156014)(8676002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5259;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zikEep9Vm2hv86veY+XSqRIrK1TApnAsAi8FjJrUl/GrS4iuNBfp6q217J2KISIqs9qNmsusuEcYrv4N8ZbD5W7nMR2g27CemEfVaV3HJpo8gUoS5HMKcL7A/56w//3KZj+loX/M4z5sujLhCtmATJu8ape34mXIySi4mQiym8piYrl2wg+T/zNI5xeA5h9I5cm9/1KRQt76EeKU41F/XbHsyzgT2RTgCJR+/nWjxX0dVTBuVlYtHQEV4wT8Hx1N1xBtlekUiY4hpvxVx22W2r3zPzkPRsNpSwk/LVIWGLtpE+UBVwkGccPHAhvvPNVjqi5zVJjAGDJhGdrTZUyA+wsJ1ZWDRmb5reMALgRdWRHv+de796Wbp8BobtgrWAul7p8Da4wBYIVeBmJ8q+rBL2yNvSNKaZ0hSnJ2pwh1TeEat4Nd1OR3D++fx6hCdGKF
x-ms-exchange-antispam-messagedata: A+iYC4BkbIEANWqWfNgOEqo+LACJvP1bGuC8bUrf8gDAgcHlhxfxp4LKbj9eF67k6XtxK7uIhblvpitPAf/wn/Bk9djC+zr6Xo3Ao92SC8rqk0Usz0hK+8RqDuev4EUwpkVHzaZp/pHnOECQdbV12g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c621e033-f780-47c1-83e6-08d7c599963f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 08:52:53.6948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K23qZfyQvKrVUWJfbayGCSVv0I12tmsEcLop1OEPXB84xBGMaCnViOQ6ScMif4GVxD5JwYrb94qQlK4p6qBc9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_015258_301608_732FBF52 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpLaW5kbHkgUGluZy4uLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56
aGFuZ0BueHAuY29tPg0KPiBTZW50OiAyMDIwxOoy1MIyNsjVIDE1OjM1DQo+IFRvOiBqb2huLmdh
cnJ5QGh1YXdlaS5jb207IHdpbGxAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFybS5jb20NCj4g
Q2M6IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogW1BBVENIIFJGQyAwLzNdIHBlcmYvaW14X2Rk
cjogQWRkIHN5c3RlbSBQTVUgc3VwcG9ydA0KPiANCj4gSGkgSm9obiwNCj4gDQo+IFRoZSBzeXNm
cyBsb2NhdGlvbiBmb3IgdXNlcnNwYWNlIHRvIGdldCB0aGUgUE1VIGlkZW50aWZpZXIgaGFzIGNo
ZW5nZWQgYSBiaXQsDQo+IHRoaXMgY291bGQgYmUgbW9yZSBmb3JtYWwuDQo+IAkvc3lzL2J1cy9l
dmVudF9zb3VyY2UvZGV2aWNlcy88UE1VIERFVklDRT4vaWRlbnRpZmllciBTbWFsbCB1cGRhdGUN
Cj4gc2hvdWQgYmUgZG9uZSBmcm9tIHVzZXJzcGFjZSA6LSkNCj4gDQo+IEhpIFdpbGwsIE1hcmss
DQo+IA0KPiBBcyB3ZSBkaXNjdXNzZWQgYmVmb3JlLCB0aGlzIHBhdGNoIHNldCBpbnRlbmRzIHRv
IGV4cG9zZSBzeXN0ZW0gUE1VIGlkZW50aWZpZXINCj4gZm9yIHVzZXJzcGFjZS4gQW55b25lIHdh
bnRzIHRvIHN1cHBvcnQgc3lzdGVtIFBNVSBtdXN0IGV4cG9zZSB0aGlzDQo+ICJpZGVudGlmaWVy
IiBwcm9wZXJ0eSwgc2luY2UgSm9obiB3aWxsIGFsd2F5cyByZWFkIHRoaXMgZmlsZSB0byBnZXQg
c3lzdGVtIFBNVSdzDQo+IGlkZW50aWZpZXIuDQo+IA0KPiBBbnkgY29tbWVudHM/DQo+IA0KPiBS
ZWdhcmRzLA0KPiBKb2FraW0NCj4gDQo+IEpvYWtpbSBaaGFuZyAoMyk6DQo+ICAgcGVyZi9pbXhf
ZGRyOiBBZGQgc3lzdGVtIFBNVSBpZGVudGlmaWVyIGZvciB1c2Vyc3BhY2UNCj4gICBiaW5kaW5n
cy9wZXJmL2lteC1kZHI6IHVwZGF0ZSBjb21wYXRpYmxlIHN0cmluZw0KPiAgIGFyY2g6IGFybTY0
OiBpbXg4bXEvbS9uOiByZW1vdmUgdW51c2VkIGNvbXBhdGlibGUgc3RyaW5nDQo+IA0KPiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvcGVyZi9mc2wtaW14LWRkci50eHQgIHwgIDQgKy0NCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpICAgICB8ICAyICstDQo+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaSAgICAgfCAgMiArLQ0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgICAgIHwgIDIgKy0NCj4g
IGRyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jICAgICAgICAgICAgICB8IDQ1ICsrKysr
KysrKysrKysrKysrLS0NCj4gIDUgZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuMTcuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
