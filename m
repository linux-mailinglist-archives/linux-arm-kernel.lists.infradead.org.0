Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C32EBF23
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zmpc69F+E8+7oJsZIuaBjcN2MALWrtFi28Rtl8GJYCM=; b=IYCTOwCDoRcjKS
	o/cyrJY4+qh7l0aQOCnmrPSPvGN5s/cNTktvlmaC8mD959QyUJq0MOr4UbE0CYuNwiAlKOY5oeur+
	AHzyiLEAqDcnpdtIdjNPpXKrMFc3jL2bNVJj3xzMCfJg9EpCIVkWDMA7mMKu0m2xXy5/jY6qUmkZX
	b99dXaUIO6xw7aPHxSG0LFtJvaZJo2jeYSAIZ8PEJOdKBi3pNa3SXAfmelYkv23M7Xllm6AyaObOb
	C21wATxxKyJ8oZthNlyGCR6inuTPoV0ioWOgt0u79vmOzOQWj/0C5rg2V3RN4rG09TWDQ6WjxjhYP
	o7tkcfL9AJpEkUYpV/pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSBR-0007NC-UJ; Fri, 01 Nov 2019 08:21:25 +0000
Received: from mail-eopbgr40082.outbound.protection.outlook.com ([40.107.4.82]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSBK-0007MV-Ke
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:21:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TBPEHYlzLw/UOatb0X3q5VxJljijKu/4FusbAfMSUEmxvBBmOVHieCEiFGESX+LBJTNdR3VliFHFAftDlCaDLwmmNJyfL788b4abnZe7pgzX3uD4XBnVn7xMryoEVJ4AA/mInp81av98BhXnUe+eamVzM7CT+ZbZiNzOt34yD3civOov5vWTKzHUFpeIZQkYVlNSZeFKV5Aw1z7MjU7hmO7d3GbccUbEKWa+fxVCS+xY/5ZLyDAd5PDtLUESAw1o5erZ0uSsAStP91XtiTdb2NlUwhBLTfeaijTakLsxF0yAujcrOzPo0mQ7KjOI54MFB7z2RZ18iTjTB7zo5s2ZVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LZvjT340XYd8SfzpfVllXllz8QPbO8Xf5n0xXOS3cM=;
 b=cqIWS/oLEqp1Y1cM00pIzBYk61lYPERRK/a4sk6peulRS+4AsTEZJF9fz+sF6Gjed1GKlna3pRUBoTZ8yfW6kK84fEGBgvvf9WXXkuTbLhTQPVtV5+zYeq6mQ0b4YJkYvBnwGgbXfWZuYNeCbU0f9AzKih4ui612GoM/WKPkKVxetBPLymPMaQA24hFYI2C1Er8ztMWpxgnTeJjklxZFNGh9TvRuMB028eKs8uJ/OlkbJBChqf13L/hwdcgTdwuXtoiaZAI+eIBKk4dBLEyzj7Rsk0C255IBlCxkHHuWgIFQ4GWrzY3b80RSnIK58T6kDD290YVwWmlPqqHURNN8lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8LZvjT340XYd8SfzpfVllXllz8QPbO8Xf5n0xXOS3cM=;
 b=ST+t521jZcXPYNNamy+OmbuYCpd5Hj0OIOqg8/q/oZ7Zg4yRUW3z0yUeVXSgQtWo47wMKWpO6yD4RjvtpCV+jaiEYpNtjgoC3WPLrvC2+R2o+Q2wr6x5gl26srSOCcBQYVWzXvOqIw7C5QGdwX3mfIyuekeqwoWBXg74ufc26As=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4281.eurprd04.prod.outlook.com (52.135.128.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 08:21:13 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Fri, 1 Nov 2019
 08:21:13 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH V2 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Topic: [PATCH V2 3/4] perf/imx_ddr: Add enhanced AXI ID filter support
Thread-Index: AQHVjidcsAPUWCct1E+N9V1DGkPyXKd05lAAgAEU4PA=
Date: Fri, 1 Nov 2019 08:21:12 +0000
Message-ID: <DB7PR04MB4618FA29B07B6FEE5A65B00FE6620@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20191029070314.16719-1-qiangqing.zhang@nxp.com>
 <20191029070314.16719-3-qiangqing.zhang@nxp.com>
 <20191031153858.GA28061@willie-the-truck>
In-Reply-To: <20191031153858.GA28061@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a825654d-92a8-4d74-1240-08d75ea47564
x-ms-traffictypediagnostic: DB7PR04MB4281:|DB7PR04MB4281:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB42813C667B0143F64516DDCAE6620@DB7PR04MB4281.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(39860400002)(136003)(376002)(54534003)(13464003)(189003)(199004)(8676002)(316002)(305945005)(6506007)(53546011)(5660300002)(7736002)(54906003)(478600001)(52536014)(102836004)(14454004)(99286004)(26005)(76176011)(7696005)(86362001)(64756008)(6436002)(186003)(66066001)(486006)(71190400001)(66446008)(11346002)(476003)(55016002)(446003)(66946007)(6246003)(229853002)(9686003)(256004)(66476007)(66556008)(6916009)(71200400001)(8936002)(4326008)(25786009)(3846002)(81156014)(81166006)(6116002)(74316002)(2906002)(76116006)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4281;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SZNGCajKqIyD/b3MYFttvoJvvAVMwSSHEgbxUickNzlrf1ecZx/HGyHVC+LSeZC0T1wcr15ziNTVEA0hwjUODRs1mWEI9/C0nXB2MfGCAUgV1CPRWCzBNt7yyIIzzBxdYqFUBoA2Z+s2ojgZj+zISKqCNZcYFzpDejNM6wB/qhZ/MGhTLJqyzDFni+YGSiTHwl9TA99vU87PMgzSRiJX4cPTD+KUDrX3xLfrVoDdUJJrfZzwIpk8np7yp4PgdD4Aat2YE+UldsY2c8SYRaH1s2oqKlomdxfqyexV7JkKvYOw38RrG0oBrRWPasrQX59DvTKMLbigmOk00HSQgQXbGXnh0T/ho0M7w1AUZjR97ZGD/+IjLvMUApdzZfq7RX+L0fVY+wC6apV4M91+LeVL10Id908tur4V0NoZKPx9M+sD78kPeImi+a797hLbAy+k
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a825654d-92a8-4d74-1240-08d75ea47564
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 08:21:13.1065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QZPQCgiXVGVBvZj3JnC2VQtvh4fxGNHX4IH8P+eWhWXXTuhtZZbC60h6K7MvasJA5QsjdFv/zqQtf8nSFRFPjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_012118_752381_BF793832 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEw1MIzMcjVIDIzOjM5DQo+IFRvOiBKb2FraW0g
WmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KPiBDYzogbWFyay5ydXRsYW5kQGFybS5j
b207IHJvYmluLm11cnBoeUBhcm0uY29tOyBkbC1saW51eC1pbXgNCj4gPGxpbnV4LWlteEBueHAu
Y29tPjsgRnJhbmsgTGkgPGZyYW5rLmxpQG54cC5jb20+Ow0KPiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCBWMiAzLzRdIHBlcmYvaW14
X2RkcjogQWRkIGVuaGFuY2VkIEFYSSBJRCBmaWx0ZXIgc3VwcG9ydA0KPiANCj4gT24gVHVlLCBP
Y3QgMjksIDIwMTkgYXQgMDc6MDY6MTlBTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdyb3RlOg0KPiA+
IFdpdGggRERSX0NBUF9BWElfSURfRklMVEVSIHF1aXJrLCBpbmRpY2F0aW5nIEhXIHN1cHBvcnRz
IEFYSSBJRCBmaWx0ZXINCj4gPiB3aGljaCBvbmx5IGNhbiBnZXQgYnVyc3RzIGZyb20gRERSIHRy
YW5zYWN0aW9uLCBpLmUuIEREUiByZWFkL3dyaXRlDQo+ID4gcmVxdWVzdHMuDQo+ID4NCj4gPiBU
aGlzIHBhdGNoIGFkZCBERFJfQ0FQX0FYSV9JRF9FTkhBTkNFRF9GSUxURVIgcXVpcmssIGluZGlj
YXRpbmcgSFcNCj4gPiBzdXBwb3J0cyBBWEkgSUQgZmlsdGVyIHdoaWNoIGNhbiBnZXQgYnVyc3Rz
IGFuZCBieXRlcyBmcm9tIEREUg0KPiA+IHRyYW5zYWN0aW9uIGF0IHRoZSBzYW1lIHRpbWUuIFdl
IGhvcGUgUE1VIGFsd2F5cyByZXR1cm4gYnl0ZXMgaW4gdGhlDQo+ID4gZHJpdmVyIGR1ZSB0byBp
dCBpcyBtb3JlIG1lYW5pbmdmdWwgZm9yIHVzZXJzLg0KPiA+DQo+ID4gRERSX0NBUF9BWElfSURf
RU5IQU5DRURfRklMVEVSIGlzIGJhc2VkIG9uIEREUl9DQVBfQVhJX0lEX0ZJTFRFUg0KPiBhbmQN
Cj4gPiBleHRlbmQgaXQgYSBiaXQuIFNvIG5lZWQgc2VsZWN0IGJvdGggYWJvdmUgdHdvIHFpdXJr
cyB0b2dldGhlciB3aGVuIEhXDQo+ID4gc3VwcG9ydHMgZW5oYW5jZWQgQVhJIElEIGZpbHRlci4N
Cj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5nQG54
cC5jb20+DQo+ID4gLS0tDQo+ID4gQ2hhbmdlbG9nOg0KPiA+IFYxLT5WMjoNCj4gPiAJKiB1c2Ug
ZGRyX3BlcmZfaXNfZmlsdGVyZWQoKSBoZWxwZXIgdG8gc2ltcGx5IHRoZSBjb2RlLg0KPiA+IAkq
IGltcHJvdmUgdGhlIGNvbW1pdCBtZXNzYWdlLg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3BlcmYv
ZnNsX2lteDhfZGRyX3BlcmYuYyB8IDU1DQo+ID4gKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGVyZi9mc2xfaW14OF9kZHJfcGVy
Zi5jDQo+ID4gYi9kcml2ZXJzL3BlcmYvZnNsX2lteDhfZGRyX3BlcmYuYw0KPiA+IGluZGV4IGNl
NzM0NTc0NWI0Mi4uMTdjODE3ZDg5MjIyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvcGVyZi9m
c2xfaW14OF9kZHJfcGVyZi5jDQo+ID4gKysrIGIvZHJpdmVycy9wZXJmL2ZzbF9pbXg4X2Rkcl9w
ZXJmLmMNCj4gPiBAQCAtNDUsNyArNDUsOCBAQA0KPiA+ICBzdGF0aWMgREVGSU5FX0lEQShkZHJf
aWRhKTsNCj4gPg0KPiA+ICAvKiBERFIgUGVyZiBoYXJkd2FyZSBmZWF0dXJlICovDQo+ID4gLSNk
ZWZpbmUgRERSX0NBUF9BWElfSURfRklMVEVSICAgICAgICAgIDB4MSAgICAgLyogc3VwcG9ydCBB
WEkgSUQNCj4gZmlsdGVyICovDQo+ID4gKyNkZWZpbmUgRERSX0NBUF9BWElfSURfRklMVEVSCQkJ
QklUKDEpICAgICAvKiBzdXBwb3J0IEFYSSBJRA0KPiBmaWx0ZXIgKi8NCj4gPiArI2RlZmluZSBE
RFJfQ0FQX0FYSV9JRF9GSUxURVJfRU5IQU5DRUQJCUJJVCgyKSAgICAgLyoNCj4gc3VwcG9ydCBl
bmhhbmNlZCBBWEkgSUQgZmlsdGVyICovDQo+IA0KPiBJIHN0aWxsIGRvbid0IHVuZGVyc3RhbmQg
d2h5IHlvdSBkb24ndCBkbyBzb21ldGhpbmcgbGlrZSB0aGlzOg0KDQpUaGlzIGNvdWxkIGJlIGJl
dHRlciBhcyB1c2VyIGlzIGF3YXJlIHRoYXQgZW5oYW5jZWQgZmlsdGVyIGlzIGJhc2VkIG9uIHBy
ZXZpb3VzIGZpbHRlci4NCg0KPiAjZGVmaW5lIEREUl9DQVBfQVhJX0lEX0ZJTFRFUgkJMHgxIC8q
IHN1cHBvcnQgQVhJIElEIGZpbHRlciAqLw0KPiAjZGVmaW5lIEREUl9DQVBfQVhJX0lEX0ZJTFRF
Ul9FTkhBTkNFRAkweDMgLyogc3VwcG9ydCBlbmhhbmNlZCBBWEkNCj4gSUQgZmlsdGVyICovDQo+
IA0KPiANCj4gc3RhdGljIGJvb2wgZGRyX3BlcmZfaXNfZW5oYW5jZWRfZmlsdGVyZWQoc3RydWN0
IHBlcmZfZXZlbnQgKmV2ZW50KSB7DQo+IAl1bnNpZ25lZCBpbnQgZmlsdDsNCj4gCXN0cnVjdCBk
ZHJfcG11ICpwbXUgPSB0b19kZHJfcG11KGV2ZW50LT5wbXUpOw0KPiANCj4gCWZpbHQgPSBwbXUt
PmRldnR5cGVfZGF0YS0+cXVpcmtzICYNCj4gRERSX0NBUF9BWElfSURfRklMVEVSX0VOSEFOQ0VE
Ow0KPiAJcmV0dXJuIChmaWx0ID09IEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCkgJiYN
Cj4gCQlkZHJfcGVyZl9pc19maWx0ZXJlZChldmVudCk7DQo+IH0NCj4gDQo+IA0KPiBhbmQgdGhl
bjoNCj4gDQo+ID4gKwkvKg0KPiA+ICsJICogcmV0dXJuIGJ5dGVzIGluc3RlYWQgb2YgYnVyc3Rz
IGZyb20gZGRyIHRyYW5zYWN0aW9uIGZvcg0KPiA+ICsJICogYXhpZC1yZWFkIGFuZCBheGlkLXdy
aXRlIGV2ZW50IGlmIFBNVSBjb3JlIHN1cHBvcnRzIGVuaGFuY2VkDQo+ID4gKwkgKiBmaWx0ZXIu
DQo+ID4gKwkgKi8NCj4gPiArCWlmICgocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJrcyAmIEREUl9D
QVBfQVhJX0lEX0ZJTFRFUikgJiYNCj4gPiArCSAgICAocG11LT5kZXZ0eXBlX2RhdGEtPnF1aXJr
cyAmDQo+IEREUl9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRCkgJiYNCj4gPiArCSAgICBkZHJf
cGVyZl9pc19maWx0ZXJlZChldmVudCkpIHsNCj4gDQo+IHN0YXRpYyB1MzIgZGRyX3BlcmZfcmVh
ZF9jb3VudGVyKHN0cnVjdCBkZHJfcG11ICpwbXUsIGludCBjb3VudGVyKSB7DQo+IAlzdHJ1Y3Qg
cGVyZl9ldmVudCAqZXZlbnQgPSBwbXUtPmV2ZW50c1tjb3VudGVyXTsNCj4gCXZvaWQgX19pb21l
bSAqYmFzZSA9IHBtdS0+YmFzZTsNCj4gDQo+IAliYXNlICs9IGRkcl9wZXJmX2lzX2VuaGFuY2Vk
X2ZpbHRlcmVkKGV2ZW50KSA/IENPVU5URVJfRFBDUjEgOg0KPiAJCQkJCQkgICAgICAgQ09VTlRF
Ul9SRUFEOw0KPiAJcmV0dXJuIHJlYWRsX3JlbGF4ZWQoYmFzZSArIGNvdW50ZXIgKiA0KTsgfQ0K
PiANCj4gDQo+IEluIHBhdGNoIDQgeW91IGNhbiB0aGVuIGRvOg0KPiANCj4gLnF1aXJrcyA9IERE
Ul9DQVBfQVhJX0lEX0ZJTFRFUl9FTkhBTkNFRDsNCj4gDQo+IE1ha2Ugc2Vuc2U/DQoNCkdyZWF0
LCB0aGlzIG1ha2VzIGNvZGUgbW9yZSBtb2R1bGFyLiBXaWxsLCB0aGFua3MgZm9yIHlvdXIgcGVy
ZmVjdCBjb2RpbmchDQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBXaWxsDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
