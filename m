Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF871815BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 11:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoJwzvjjY6/LON0uOXM1PQCA3qHcZK+KvYoytxgop/A=; b=fjNOHMfAKjA9RL
	lwIwBORYQHWUBeaYAkF+W94pfpUrjh1oNOdmdQ9mUXhWzcXE5/w3TdINh50QXsu45D41JMJFArYao
	02npFmW4qyWVOzWX7/IX8p180ICtDvs3zINpaSfTr1u7BVQe+XRJfccSIbg1jw4lpJqK92toMe5OM
	z8HlL0U19nl4cd8d03WTkNmkFzmWMfEnLPslcA66ylLj33EF4wwAPm0ilxarjXVRlO0cJFgCUl1nF
	MpkeAjRS0beiDBwR7unusTK/VXloqLWe7VtqFD0TMU7GaGPku9XqhUS2NPRO4V6C7Z5YbsWON9ook
	viw3MuYMHq2k/9HUqTxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBya6-0006Jl-2Z; Wed, 11 Mar 2020 10:27:18 +0000
Received: from mail-eopbgr80045.outbound.protection.outlook.com ([40.107.8.45]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jByZt-0006JG-Ph
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 10:27:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHnlVRCKQj7c+GNRtiDaf5mx1OsJS6Y03BxUh7aX17bvRuW3i4UX5LcP9FcdvFd5MKn38WhO7aazQK6ORv3r/nE//UjN2Pvdbio4pKCSfzfbjVDZfcob2rvCYtO5ESiSI6/IHNbkZS3siTmRCY3KIqd2AAIZ41Mp7bJ3NspSkUuqAAZGyx36GwwUR+tYwfA++XhMzoJXypdMRnRo9N6LvG7pwxr/VRIUR7P4gTXSIfpC5LeoGJOfBQhFo/JOUL2dUEzR/j8gMQVFlXB/sOx1ykpCLgW65kF53d7IfQkYSnaGusggVOKJHsAUn7UKscWWH0tBX5S46ot/Bk27cJgSKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8YD0BK3a8mZnClDHFp3jwNJr7WYUdKB60ec8o/hXaWc=;
 b=V+xOq1qRaXQh3qYaN0Mpy5FGxBZvG2CMrZBa8AsyrZnu33Bb3/kox4CDSeJVBYEMe30WxTrbvS8G+GHxuMTVMiiWYqp6z1pGaMbvlxCyzVcM5jX/fxEyG2gqq5P64J5vkjHJtm/lwe5RbvQP3MMcQU42KJfhImL0UsF78WfVZIYIkKtDGdiqK01si9XlDh5xT7VCxHYdRk1Qi0M3xTn3C5mthq+tDEtWHcT2aowE4d/kmzJDo3xr2ucyB13hmY1xYpSR2SBuflSrFvkh+cGuT8AWcFPMmd/PVYZBYBamiwtIfWKiTuZponNB10LRU3mRcXqtCNNyfxq6TrqLvYBhKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8YD0BK3a8mZnClDHFp3jwNJr7WYUdKB60ec8o/hXaWc=;
 b=JXrT7aU+1yJsCdgOTsfmhxLCDsBkacSPsVYxNfu9P5Aa0TyOlw7/O79fMmXHtBSo7wG2UBgIJOUQd5wPKmIPuFlyrGdD3UsI2Y8EUot8kTarvNYBK9fRoItpjFUW/gb42uXpjZ4R44huSVKNNZCNlNO8LLmoMuIt49XUTLdAzpY=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4746.eurprd04.prod.outlook.com (20.176.233.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.16; Wed, 11 Mar 2020 10:27:02 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788%5]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 10:27:01 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>
Subject: RE: [PATCH RFC 2/3] bindings/perf/imx-ddr: update compatible string
Thread-Topic: [PATCH RFC 2/3] bindings/perf/imx-ddr: update compatible string
Thread-Index: AQHV7Heal4XIZxHhCEKN6z55KZ1SC6g2zqmAgAxxrAA=
Date: Wed, 11 Mar 2020 10:27:01 +0000
Message-ID: <DB7PR04MB461814EE6D39937A698CD6EFE6FC0@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
 <20200226073433.5834-3-qiangqing.zhang@nxp.com>
 <153d46ef-d8bf-c474-393b-7c1ddb1eb360@huawei.com>
In-Reply-To: <153d46ef-d8bf-c474-393b-7c1ddb1eb360@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [222.93.243.135]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2b288d5e-53a6-4043-7d06-08d7c5a6bcb8
x-ms-traffictypediagnostic: DB7PR04MB4746:|DB7PR04MB4746:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB474654BBEFFAA578223ABB5FE6FC0@DB7PR04MB4746.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0339F89554
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(81156014)(52536014)(66476007)(66946007)(5660300002)(33656002)(66556008)(8676002)(66446008)(316002)(64756008)(81166006)(86362001)(7696005)(15650500001)(8936002)(4326008)(53546011)(71200400001)(478600001)(2906002)(9686003)(26005)(55016002)(110136005)(76116006)(54906003)(186003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4746;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tpBaEHR60acajrp7U1HIx9XFPOfdllj9byEn+M8jf6bqsrSKKKV055xvY3x27MzK+vJeES2xdWPKPUen3zslAVOnx0o/nP8wn+Paql8qp6ffHipppORV2VFOsizGnQTun4ielBsCsAS203WkBxuh9g+X+lRkjk2L7MGHuvegoIFl0dwM5YjvZfPmQN1nnMaqzJmv5ZtwbltbdicEro9c0p4zKpu6uyemCjV18XXiC8+rJGNabFLL4otztvbqMmBE5lqnJzJnCairqMxCuK5EUG44L9FmxJPeQ5PCKN/OVcjJbaw084jBCjP/ohB4Xs1BEU+aFWYwTZWnIJXAGdbTB8JqQqoVtH6HWTV2jyHr2XeWKBR66FpXlfeuZ6LWahtGlKbWdVGDT0LJ1tovycQfLHRRb+2IzKzzvbdStCciNyRLxFkcUZE+oRDwCLR5XxFP
x-ms-exchange-antispam-messagedata: 7DF9msdQytkVczG13hJu3ZMdM3tz9ZV/6XqrYpaELo9l+KEDmYXr3+8ANSSsJA8gAKaFQ6kyf4gyK+9rILVNBpM5SyKzPzZ/PIJNFiZL+C+n5RMIlYe3qhqM8O4YW006XdEfJ3mBL8PRSDO+GrDXIA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b288d5e-53a6-4043-7d06-08d7c5a6bcb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 10:27:01.6895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W6/s5IBKRcaGPotW8mqG0onHPrQm3wZkrl6RkNDO3kbK6iOve7yyPAsqpYFwblB4UL4GBSlaPfpgApjZXN5NQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_032705_832901_0864388A 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.45 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMOW5tDPmnIgz5pelIDIwOjA0DQo+IFRvOiBK
b2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPjsgd2lsbEBrZXJuZWwub3JnOw0K
PiBtYXJrLnJ1dGxhbmRAYXJtLmNvbQ0KPiBDYzogZGwtbGludXgtaW14IDxsaW51eC1pbXhAbnhw
LmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW1BBVENIIFJGQyAyLzNdIGJpbmRpbmdzL3BlcmYvaW14LWRkcjogdXBkYXRlIGNvbXBhdGli
bGUgc3RyaW5nDQo+IA0KPiBPbiAyNi8wMi8yMDIwIDA3OjM0LCBKb2FraW0gWmhhbmcgd3JvdGU6
DQo+ID4gVXBkYXRlIGNvbXBhdGlibGUgc3RyaW5nIGFjY29yZGluZyB0byBkcml2ZXIgY2hhbmdl
LmANCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5n
QG54cC5jb20+DQo+ID4gLS0tDQo+ID4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGVyZi9mc2wtaW14LWRkci50eHQgfCA0ICsrKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGVyZi9mc2wtaW14LWRkci50eHQNCj4gPiBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dA0K
PiA+IGluZGV4IDc4MjJhODA2ZWEwYS4uYjI3YTFkNGZlYzc4IDEwMDY0NA0KPiA+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRyLnR4dA0KPiA+
ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wZXJmL2ZzbC1pbXgtZGRy
LnR4dA0KPiA+IEBAIC00LDcgKzQsOSBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPiA+DQo+ID4g
ICAtIGNvbXBhdGlibGU6IHNob3VsZCBiZSBvbmUgb2Y6DQo+ID4gICAJImZzbCxpbXg4LWRkci1w
bXUiDQo+ID4gLQkiZnNsLGlteDhtLWRkci1wbXUiDQo+ID4gKwkiZnNsLGlteDhtcS1kZHItcG11
Ig0KPiA+ICsJImZzbCxpbXg4bW0tZGRyLXBtdSINCj4gPiArCSJmc2wsaW14OG1uLWRkci1wbXUi
DQo+ID4gICAJImZzbCxpbXg4bXAtZGRyLXBtdSINCj4gPg0KPiANCj4gWW91IG5lZWQgdG8gZW5z
dXJlIHRoYXQgeW91J3JlIG5vdCBsb29zaW5nIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IHN1Y2gg
dGhhdA0KPiBvbGQgZmlybXdhcmUgc3RpbGwgd29ya3Mgd2l0aCBhIG5ldyBrZXJuZWwuDQo+IA0K
PiBJIHNlZSB0aGF0IHRoZSBkdHMgZmlsZXMgdXNlIHRoZSBnZW5lcmljICJmc2wsaW14OG0tZGRy
LXBtdSIgYW5kIHRoZSBwZXItU29jDQo+IHN0cmluZyBhcyB3ZWxsLCBzbyBsb29rcyBvaywgYnV0
IEkgZG9uJ3Qga25vdyBhYm91dCBEVCBmaWxlcyBvdXQgb2YgbWFpbmxpbmUuLi4NClRoaXMgd2Fz
IGlnbm9yZWQsIHNvcnJ5IGZvciB0aGF0LiBUaGlzIGNoYW5nZSBpcyBpbiAuZHRzaSBmaWxlLCBw
ZXIgc29jIG9ubHkgaGF2ZSBvbmUsIHNvIGl0J3Mgc2FmZSBmb3IgLmR0cyBvdXQgb2YgbWFpbmxp
bmUuDQpPciByZXRhaW4gImZzbCxpbXg4bS1kZHItcG11IiBhcyBhIGJhY2t3YXJkcyBjb21wYXRp
YmlsaXR5IHdpdGhvdXQgaWRlbnRpZmllciBzZXR0aW5nPyBJdCdzIG1heSBiZSB1bm5lY2Vzc2Fy
eS4NCg0KQmVzdCBSZWdhcmRzLA0KSm9ha2ltIFpoYW5nDQo+IFRoYW5rcywNCj4gSm9obg0KPiAN
Cj4gPiAgIC0gcmVnOiBwaHlzaWNhbCBhZGRyZXNzIGFuZCBzaXplDQo+ID4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
