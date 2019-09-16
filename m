Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B2CB366E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 10:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMNKD7Axjbw2D/ynHD7TKH3to4Bd2MwuX4Er35WuioE=; b=MfBsq7NjvUI6aZ
	WNeH9ssSmTro2kruxnbqgqWX3GinmjaMu6fHKUSK89fo5RgEy/D31X/KN6PU6UpiKSC9gFxuduftE
	Q8lIQenKDpu+XOywpKja0Ht+7fibZHbEtj+ThpQQExxOfTwfOnuslGM87wJGX2AJCcpeT1hz3gdvE
	d4EWk5Ckc2pNN46lvPCOOv32j6gZHL8jsXz2RAhQ4rTfdYlbf8kaSMD48ADgMldBuVQUT7xEjIH0l
	V9R5T4V6muGdDo44CDYiKLPhwV++UjXo/8Z+bVf02EM5fmHhdmbWhQA6sBNMzxpt9TEDMMjC7imO3
	dZirTcRk1YXDh43Aysng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9mT0-0000oz-BN; Mon, 16 Sep 2019 08:34:38 +0000
Received: from mail-eopbgr30057.outbound.protection.outlook.com ([40.107.3.57]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9mSj-0000oS-ON
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 08:34:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5SmNRkEg9qdJ4vh10RH84bwul1bg9RNXXLEBaF9K9eVATeowYkC+fScHg5vya+jLWuwWSQpKP3SmGDm2WMZpZdOZQmHWcptArmtIXjisfzI/MNwuBGURFwzWf0mKOEPifBFEW+60H8KUplxE0sZGRrYLyWpJ8aoJVahmU8jIVQBCyo4lKlg8yfL8+7yvzZAy4acBUhQ3E0JKHmY9FwxSpaOfk5bOgPts/EgbntTotkTz5Tl6C1IWCCZiCLVMP+nZT4l/L/Ju8nX481kUNl4etn0KttjqaIIMLJB1NtwLYQphCNWtC7N1DlSppGRDO3Uaowrg2uJdX/VuB8DEJDYmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YilcJaUsSFuBSxLNENO8u+U3gcmT6pN3GPLFN61nLu4=;
 b=UPcaVIyIFjTV58EsIK3mfolS32Oovvxmsw8szUoIIU5RTdCAB/pexfZOehSK1Ed8aPdaQNe3eQwC2rmrtiKP6k0ut8PrTmRVWzzfpzXQs0uC8rqnmTuZsZn1HckYKkqbYK2ptXd7PussS3FtE7+CGzCSxOxRQGKgSVJXjZAMXJOVS/ckadH4DR/vN2+3Pfu5L0XpgMVitvPnVdR/dc8am7o/+WHN6wsZ/yglsXESzipPEzwOElmHhERbdv/RrjvhprGARFNrbl0InSMCBvwI4nyq3DA9ZA6pWzqwqKC+rct8OS/EimQ0QCxXesEO97HgNW3JNqherUww1qVhrw/kFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YilcJaUsSFuBSxLNENO8u+U3gcmT6pN3GPLFN61nLu4=;
 b=JwV8WF1Yc9Nj1Mg/YWR8SddQL4o+aNOoi13d7XY7nTs7WQjEEGRfT3Mi5png+m5e0pktg64TQM4YYgNZcAoIGgNZXdnM1muodXEUGlaX7UGStskXLJ60SXZa8gxkL+7vMrgWtM3xoxTNPWmwKdGgjo3beT93P+KDCwSmHicFwMU=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4346.eurprd04.prod.outlook.com (52.135.131.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 08:34:16 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1872:ad0f:4271:ad61]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::1872:ad0f:4271:ad61%6]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 08:34:16 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: RE: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Topic: [PATCH 1/2] perf/imx_ddr: add enhanced AXI ID filter support
Thread-Index: AQHVZIzXxnEyO/p2cU+i3CnZc4qNBqcuCXdA
Date: Mon, 16 Sep 2019 08:34:16 +0000
Message-ID: <DB7PR04MB46188CACD170CDF1CE3DD865E68C0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190906082356.25485-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f673f744-40cc-4fd8-c64d-08d73a80a952
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4346; 
x-ms-traffictypediagnostic: DB7PR04MB4346:|DB7PR04MB4346:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4346B23AB73D4811214A67C9E68C0@DB7PR04MB4346.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(199004)(189003)(13464003)(14454004)(53936002)(14444005)(256004)(52536014)(8936002)(8676002)(81156014)(76116006)(66946007)(66446008)(66556008)(64756008)(229853002)(66476007)(9686003)(478600001)(2201001)(66066001)(6436002)(55016002)(99286004)(26005)(186003)(2501003)(11346002)(110136005)(446003)(316002)(54906003)(305945005)(6116002)(3846002)(7696005)(86362001)(81166006)(7736002)(2906002)(71200400001)(71190400001)(74316002)(486006)(53546011)(6506007)(476003)(6246003)(569044001)(76176011)(102836004)(5660300002)(4326008)(33656002)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4346;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LbinWANCCrzVBlEZuYKINn1xu+uR2w7ZvInLkVSXUYtXMij+eec4HBVpEWgnxoPF70YSGjkWlettNNA+Wwbo9fDbIHvZozbMtxWl+YY+XhaocYAmkftvSgzpuCaV7YHdJy6vFD6ToOe2tgJrcqmX6M/kjggDfBVvmJkT5Ly5m9XwZRTlutMls414hmUkwhh0fW1xL5/IGJSbNy6PPQ7q7Ey0K2dlmFY59Uy4fTgYQFsT0/5q+uR/JsYC4X5duTcn6cBLfPkltlNe/cmsNOnnW92dDbhiXr4WhgVm3vqS3Qei/hkbDaQ2jths+0NPIoRmVgkJBPN+6an5hbR9v26wyknuQBI/sC+uIF/NRiwIM4baDUYGaMsKys5DV/ooooNn6iS+qjjL2GKIJtgGYRFjgYSwC2vb5Sb/8qNNoLSqoPY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f673f744-40cc-4fd8-c64d-08d73a80a952
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 08:34:16.6514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sDVJi+D+u5Mz8b0myvgkzgnOMKqhwDvansCy9rx+N8wwK4lKN3/qfKZwOoLKql9Q538xcPqteCFXlzUHsWfFOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4346
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_013421_798683_E8824E52 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpLaW5kbHkgUGluZy4uLg0KDQpCZXN0IFJlZ2FyZHMsDQpKb2FraW0gWmhhbmcNCg0KPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb2FraW0gWmhhbmcNCj4gU2VudDogMjAx
OcTqOdTCNsjVIDE2OjI3DQo+IFRvOiB3aWxsQGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0u
Y29tOyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgRnJhbmsNCj4gTGkgPGZyYW5rLmxpQG54cC5jb20+
DQo+IENjOiBkbC1saW51eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsgbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnOw0KPiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0Bu
eHAuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBwZXJmL2lteF9kZHI6IGFkZCBlbmhhbmNl
ZCBBWEkgSUQgZmlsdGVyIHN1cHBvcnQNCj4gDQo+IFdpdGggRERSX0NBUF9BWElfSURfRklMVEVS
IHF1aXJrLCBpbmRpY2F0aW5nIEhXIHN1cHBvcnRzIEFYSSBJRCBmaWx0ZXINCj4gd2hpY2ggb25s
eSBjYW4gZ2V0IGJ1cnN0cyBvZiByZWFkaW5nL3dyaXRpbmcgRERSLCBpLmUuIEREUiByZWFkL3dy
aXRlIHJlcXVlc3QuDQo+IA0KPiBUaGlzIHBhdGNoIGFkZCBERFJfQ0FQX0FYSV9JRF9FTkhBTkNF
RF9GSUxURVIgcXVpcmssIGluZGljYXRpbmcgSFcNCj4gc3VwcG9ydHMgQVhJIElEIGZpbHRlciB3
aGljaCBjYW4gZ2V0IGJ5dGVzIG9mIHJlYWRpbmcvd3JpdGluZyBERFIuIFRoaXMgZmVhdHVyZQ0K
PiBpcyBtb3JlIG1lYW5pbmdmdWwgZHVlIHRvIHdlIGFsd2F5cyBjYXJlIG1vcmUgYWJvdXQgYmFu
ZHdpZHRoLg0KPiANCj4gTmVlZCBzZWxlY3QgYm90aCBhYm92ZSB0d28gcWl1cmtzIHRvZ2V0aGVy
IHdoZW4gSFcgc3VwcG9ydCBlbmhhbmNlZCBBWEkgSUQNCj4gZmlsdGVyLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSm9ha2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYyB8IDEzICsrKysrKysrKysrLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jIGIvZHJpdmVycy9w
ZXJmL2ZzbF9pbXg4X2Rkcl9wZXJmLmMNCj4gaW5kZXggY2U3MzQ1NzQ1YjQyLi41ZjcwZGJmYTk2
MDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+ICsr
KyBiL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVyZi5jDQo+IEBAIC00NSw3ICs0NSw4IEBA
DQo+ICBzdGF0aWMgREVGSU5FX0lEQShkZHJfaWRhKTsNCj4gDQo+ICAvKiBERFIgUGVyZiBoYXJk
d2FyZSBmZWF0dXJlICovDQo+IC0jZGVmaW5lIEREUl9DQVBfQVhJX0lEX0ZJTFRFUiAgICAgICAg
ICAweDEgICAgIC8qIHN1cHBvcnQgQVhJIElEIGZpbHRlcg0KPiAqLw0KPiArI2RlZmluZSBERFJf
Q0FQX0FYSV9JRF9GSUxURVIJCQlCSVQoMSkgICAgIC8qIHN1cHBvcnQgQVhJIElEDQo+IGZpbHRl
ciAqLw0KPiArI2RlZmluZSBERFJfQ0FQX0FYSV9JRF9GSUxURVJfRU5IQU5DRUQJCUJJVCgyKSAg
ICAgLyogc3VwcG9ydA0KPiBlbmhhbmNlZCBBWEkgSUQgZmlsdGVyICovDQo+IA0KPiAgc3RydWN0
IGZzbF9kZHJfZGV2dHlwZV9kYXRhIHsNCj4gIAl1bnNpZ25lZCBpbnQgcXVpcmtzOyAgICAvKiBx
dWlya3MgbmVlZGVkIGZvciBkaWZmZXJlbnQgRERSIFBlcmYgY29yZSAqLw0KPiBAQCAtMjA5LDcg
KzIxMCwxNSBAQCBzdGF0aWMgdm9pZCBkZHJfcGVyZl9mcmVlX2NvdW50ZXIoc3RydWN0IGRkcl9w
bXUNCj4gKnBtdSwgaW50IGNvdW50ZXIpDQo+IA0KPiAgc3RhdGljIHUzMiBkZHJfcGVyZl9yZWFk
X2NvdW50ZXIoc3RydWN0IGRkcl9wbXUgKnBtdSwgaW50IGNvdW50ZXIpICB7DQo+IC0JcmV0dXJu
IHJlYWRsX3JlbGF4ZWQocG11LT5iYXNlICsgQ09VTlRFUl9SRUFEICsgY291bnRlciAqIDQpOw0K
PiArCWlmICgocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9DQVBfQVhJX0lEX0ZJTFRF
UikgJiYNCj4gKwkgICAgKHBtdS0+ZGV2dHlwZV9kYXRhLT5xdWlya3MgJg0KPiBERFJfQ0FQX0FY
SV9JRF9GSUxURVJfRU5IQU5DRUQpKSB7DQo+ICsJCWlmICgocG11LT5ldmVudHNbY291bnRlcl0t
PmF0dHIuY29uZmlnID09IDB4NDEpIHx8DQo+ICsJCSAgICAocG11LT5ldmVudHNbY291bnRlcl0t
PmF0dHIuY29uZmlnID09IDB4NDIpKQ0KPiArCQkJcmV0dXJuIHJlYWRsX3JlbGF4ZWQocG11LT5i
YXNlICsgQ09VTlRFUl9EUENSMSArIGNvdW50ZXINCj4gKiA0KTsNCj4gKwkJZWxzZQ0KPiArCQkJ
cmV0dXJuIHJlYWRsX3JlbGF4ZWQocG11LT5iYXNlICsgQ09VTlRFUl9SRUFEICsgY291bnRlciAq
DQo+IDQpOw0KPiArCX0gZWxzZQ0KPiArCQlyZXR1cm4gcmVhZGxfcmVsYXhlZChwbXUtPmJhc2Ug
KyBDT1VOVEVSX1JFQUQgKyBjb3VudGVyICogNCk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGJvb2wg
ZGRyX3BlcmZfaXNfZmlsdGVyZWQoc3RydWN0IHBlcmZfZXZlbnQgKmV2ZW50KQ0KPiAtLQ0KPiAy
LjE3LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
