Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B66C1BF52F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+SyrGytrD9qHJ5C/iQq7L5NN7QILzHx61brc9fPOo0=; b=jXqPyXZKB8AiHX
	C4/YlEjDGn0eo34fPR+kZhOMJlr+n7Z8F20JE2FqiLrZIJCgwAsgFD6OcxCecYsKat4A1Jan1aVW2
	PNb63PQmNt9t9RgnSPP2XtsKXFlLjhW+tAVALBQOg6+rajc4W8DOpEMs8nADJLNOfBODN+StJRTEx
	jjEBFW77/BgDTmMpSkJ/Wdjtku0hqNwmbipfQEo44tjazpAO2wNCHZXUBAlGZQJDsXXaHf71uRe7U
	cfCVcrDpAn3ZdPAkz+YqsZVKUiS8q/g9fnNC6E1CnOKny+QwLvraOZncrja2FwosbRqnkXzJXqq0d
	gYRzreRP+8IW4gddlbFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6HE-0000i1-5W; Thu, 30 Apr 2020 10:18:44 +0000
Received: from mail-db8eur05on2057.outbound.protection.outlook.com
 ([40.107.20.57] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6H0-0000e3-0X
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:18:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ghcrk1ebTT0DJFGFiVchuUzKrHLCH2GbaCKX2klIqtyOrd1NVqDtqnbAAvuBuOa5ACA0Xp/UFXq/KqQfnOYRtyd5IRSsa6zYkhQ273xPplSUKtwTJFCu5EVHdLn6RHqTPjxOcUP1FkC0NetVZrdSVy6AKB1+aiVRmO41fjmcRX0dxMS7d6miKVb4xn9HyO5Z4OFLCMkcYQyZ5IeV5di4OH2RuNETOOjxM3FVZcLs6jnzoT6B9lnIy2ngaei+5ZkPp/HlvnUls8k8DvaHK31+IHodnlt+fpeRwwktgvBRLNsN1hlj1U2QwH2tJOtBrKktSC4Mz4k8xY/WhhI9o3Yr1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLOIbK6L7dGBEoN6w3BSmvg+jyylzOnVMh6gthAYvXk=;
 b=KwD1zMOEh11f8Do9dpuLiuiZtWDYuunbXnMuMcnKTOQpI4jF9hJEzZR+5Jz03Oyx2ky5Eg2shJrV3DtctaX1Bvv4PFtOlN/qUimwGKPhXTKzOB2VIcZnWjW4VBW0SusFvQhIUr1XhRus6CnQzddf2/zicqsskIyCLE3B/LWXrWkg4+Ch5DYd6pqNK0WdkbQi7wkTq5bb/hfwl5fsjYQXmu8ucirEUSp6cHFwZ7aGx6xhyAgJhtIiLzXIvfldnTLPyGI7RYLXw0udsf3cQnByiSNVYEqfHh2k9FsMQrGwo5UfCmp82TBoqMJrfZflGQmWDepViWlelhe6lPES7B0Q5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLOIbK6L7dGBEoN6w3BSmvg+jyylzOnVMh6gthAYvXk=;
 b=Pk3RzE+zmXAMNJhMpQH10qzK2zENf+BRsXMC/NXj5av1fyeKAeJpKTyGCocxUqWnHChnRTrPTmDOr5bf9pFJWxCHPcIOAmFZmHTe99xWbCbnjR2IgqK8+A8KRtzad9fdf/eRh7Az5RcBY7mrx4CuueMu0rVapvIZPDOsK6BK4+s=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5302.eurprd04.prod.outlook.com (2603:10a6:20b:7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 30 Apr
 2020 10:18:25 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.028; Thu, 30 Apr 2020
 10:18:24 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH] clk: imx8mp: Set the correct parent for audio_root_clk
Thread-Topic: [PATCH] clk: imx8mp: Set the correct parent for audio_root_clk
Thread-Index: AQHWHKYh3Me+nRhH7UyIwPCZLBjcm6iOLDKAgANJ1YCAAAG+8A==
Date: Thu, 30 Apr 2020 10:18:24 +0000
Message-ID: <AM6PR04MB49664013B43C46422C0195A780AA0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1588000281-6594-1-git-send-email-abel.vesa@nxp.com>
 <AM6PR04MB49663A072F56397BE55FF3C480AC0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <20200430101107.t76727jwwkyhlkvd@fsr-ub1664-175>
In-Reply-To: <20200430101107.t76727jwwkyhlkvd@fsr-ub1664-175>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 68f10ef5-8297-4834-1b77-08d7ecefd15a
x-ms-traffictypediagnostic: AM6PR04MB5302:|AM6PR04MB5302:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5302B758965BCF2630B14FEB80AA0@AM6PR04MB5302.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0389EDA07F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(346002)(366004)(396003)(376002)(44832011)(71200400001)(8676002)(64756008)(53546011)(76116006)(33656002)(26005)(66946007)(6506007)(2906002)(66556008)(66476007)(6636002)(66446008)(9686003)(7696005)(186003)(8936002)(86362001)(478600001)(5660300002)(6862004)(52536014)(4326008)(54906003)(55016002)(316002)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qbKUsA61pBqn7Zkhc3YF4WVIeCu6Dt7rnywEVfEAw5ERujfwSOxYtsQCPUZkr8+DW1BV08FODPEfj6kOCByh2XFXFJiWS/2s3C8IXVi3q7D5LgmPBH9ULvqVOr4LwQ+bFJZhuToQILwm/doqxknAQuWcFCSuxQbYgxI5hwHE0L8Ut6QL8p6u4Vb+gsU4noBPEoqGnP7V9XrceWZafpknPs8ADphsuy6N3DpL1syNbT32M1VLVH3RYPuhoSWn2ySiNpNELZ7Gdrzrm8lpjHfzBO6HdC9uDk95zAEmLYjlNWMEv4bDFeHk4uybR3mNUy1Ov+6d3hjGPLiCzRcAGFpkdCFrdZCB7n1jY83WSyag/E+QjbfR5k9DE3jCkr4YRuTlD7icLyiQwJF6E4jWcvYYCnICcXD+ezZSk1JXILtmroVhbSzgzjKUQO9Qzx7sR/nzYgIFbx/jZh9MW4KgVKhKiojD+AHvYBrU2TkMpG3qV7A2Q7QkMxZasi9z7HtUzgrV
x-ms-exchange-antispam-messagedata: xNyOhBoPwJWdS4UPVFCuLaY88cQWeyhHGhwdHWzlnpOkm9V6vqwwG26c+P7mFdkoITcIOl/LSer+LFcma6t0ypTTwoF0REA4CHT3AAZFArvMiVwtgCmTgqJTS18AL1a125hAd6vg7OBbIXxYbvbJf7jBzTaxoP8mK5y8BBJf5zSmfVyh4rABy0DvNpi7ITr0vZNkq9winbg+Z3OugAC4vY/oAiGMfqrm42aOhl9EAV2dgFwV4WDAJBPFU3h8vsmcIOEOZmO+2Bs3E88WEsBuTzV6vmV9sGvFE1qgvjVdyFEoM29koHarncRPPTTVb1kxnupiRUD83KzOJzhaZPPNbJpmzgeg70XwqqEvzFuLh7hRcC/mrtIqFxh4MheiNCw0cmpre5ZoaL7jdvasvggF67TqrwwzWUrCAioSTC5d2+EGWVd5aSo7P7RZzl/8m8+ot3eV0fIV+aGq4zH9zABEd+nN3gNsZvVdJNMEuNLaO9t2f1cSyawpAsZ/UkDMTltz48VTwCrLGFmzRCckuQTjRbl3l3aSru2clvcla6ATIxHHWJKfZ1xc8N869D/U/6CudnpNc2RLobCgbNuzhPJaIHiXTZRy5IFQBCfz0K+ywJ1nbE+59ECI+QxjrI9AI1g38MP//7MxYUENXl5n6USX9ItWKxDWhBrxKkyUPLVf1+AP3mGwmvzA8yxVjsP9eNn3JYxh6k+zjlst490S/h84qRU6RIaRPmleHEOgCO1v0pHgY8j0Mx67Jb9ZSQT1rcKHUA3HqVpOKhIZLsxCK2y373qCEg4NM9AodMFboxC3tNY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f10ef5-8297-4834-1b77-08d7ecefd15a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 10:18:24.8937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WmDtvmAeegbfPtRON/vdyDj79eVi+FGo1GkoZsSN7sfjrndeyNI/s8oasuLsyuzPsInmbBS8T18eIZ794q0aWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_031830_139173_15734ECB 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.57 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBGcm9tOiBBYmVsIFZlc2EgPGFiZWwudmVzYUBueHAuY29tPg0KPiBTZW50OiBUaHVyc2RheSwg
QXByaWwgMzAsIDIwMjAgNjoxMSBQTQ0KPiANCj4gT24gMjAtMDQtMjggMDg6MTU6NTEsIEFpc2hl
bmcgRG9uZyB3cm90ZToNCj4gPiA+IEZyb206IEFiZWwgVmVzYSA8YWJlbC52ZXNhQG54cC5jb20+
DQo+ID4gPiBTZW50OiBNb25kYXksIEFwcmlsIDI3LCAyMDIwIDExOjExIFBNDQo+ID4gPg0KPiA+
ID4gSW5zdGVhZCBvZiBpcGdfcm9vdCwgdGhlIHBhcmVudCBuZWVkcyB0byBiZSBpcGdfYXVkaW9f
cm9vdC4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBu
eHAuY29tPg0KPiA+DQo+ID4gSSBoYXZlIGEgZmV3IGRvdWJ0cyBhYm91dCB0aGlzIHBhdGNoOg0K
PiA+IDEuIEZyb20gbGF0ZXN0IFJNLCBpdCBzZWVtcyBDQ0dSMTAxICgweDQ2NTApIGlzIGEgc2hh
cmVkIGdhdGUgZm9yIG1hbnkgYXVkaW8NCj4gaW5zdGFuY2VzLg0KPiA+IDIuIElmIHRoaXMgcGF0
Y2ggaXMgYWJvdXQgQVVESU9fQUhCX0NMS19ST09ULCB0aGVuIGl0J3MgcGFyZW50IGlzDQo+IEFI
QltQT1NUX1BPREZdIGZyb20gdGhlIGNsb2NrIHRyZWUgaW4gUk0uDQo+ID4gTm90IHF1aXRlIHVu
ZGVyc3RhbmQgd2h5IHRoaXMgcGF0Y2ggY2hhbmdlcyB0byBJUEdbUE9TVF9QT0RGXS4gSXMgdGhp
cyBSTQ0KPiBpbmNvcnJlY3QgaXNzdWU/DQo+ID4NCj4gPiBCVFcsIGlmIHRoaXMgcGF0Y2ggaXMg
dGFrZW4gZnJvbSBzb21lb25lIGVsc2UsIHdlIHVzdWFsbHkgYmV0dGVyIGtlZXAgdGhlDQo+IG9y
aWdpbmFsIGF1dGhvciBpZiBub3QgZnVuZGFtZW50YWwgY2hhbmdlcy4NCj4gPg0KPiANCj4gSSBt
YWRlIHRoaXMgY2hhbmdlIGF0IHRoZSBzdWdnZXN0aW9uIGZyb20gUy5qLiBXYW5nLg0KPiBJJ20g
dGhlIG9yaWdpbmFsIGF1dGhvciBpbiBsaW51eC1ueHAgKGludGVybmFsIHRyZWUpLg0KPiANCg0K
VGhhdCdzIGZpbmUuIFRoZW4gcGxlYXNlIGlnbm9yZSBteSAic3R1cGlkIiByZW1pbmRlci4g8J+Y
ig0KQlRXLCBob3cgYWJvdXQgb3RoZXIgcXVlc3Rpb25zPw0KDQpSZWdhcmRzDQpBaXNoZW5nDQoN
Cj4gPiBSZWdhcmRzDQo+ID4gQWlzaGVuZw0KPiA+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJz
L2Nsay9pbXgvY2xrLWlteDhtcC5jIHwgMiArLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jDQo+ID4gPiBiL2RyaXZlcnMvY2xrL2lteC9jbGstaW14
OG1wLmMgaW5kZXggNDE0NjllMi4uZGNkZmM5ZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMv
Y2xrL2lteC9jbGstaW14OG1wLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvY2xrL2lteC9jbGstaW14
OG1wLmMNCj4gPiA+IEBAIC03MjcsNyArNzI3LDcgQEAgc3RhdGljIGludCBpbXg4bXBfY2xvY2tz
X3Byb2JlKHN0cnVjdA0KPiA+ID4gcGxhdGZvcm1fZGV2aWNlDQo+ID4gPiAqcGRldikNCj4gPiA+
ICAJaHdzW0lNWDhNUF9DTEtfSERNSV9ST09UXSA9DQo+IGlteF9jbGtfaHdfZ2F0ZTQoImhkbWlf
cm9vdF9jbGsiLA0KPiA+ID4gImhkbWlfYXhpIiwgY2NtX2Jhc2UgKyAweDQ1ZjAsIDApOw0KPiA+
ID4gIAlod3NbSU1YOE1QX0NMS19UU0VOU09SX1JPT1RdID0NCj4gPiA+IGlteF9jbGtfaHdfZ2F0
ZTQoInRzZW5zb3Jfcm9vdF9jbGsiLCAiaXBnX3Jvb3QiLCBjY21fYmFzZSArIDB4NDYyMCwgMCk7
DQo+ID4gPiAgCWh3c1tJTVg4TVBfQ0xLX1ZQVV9ST09UXSA9IGlteF9jbGtfaHdfZ2F0ZTQoInZw
dV9yb290X2NsayIsDQo+ID4gPiAidnB1X2J1cyIsIGNjbV9iYXNlICsgMHg0NjMwLCAwKTsNCj4g
PiA+IC0JaHdzW0lNWDhNUF9DTEtfQVVESU9fUk9PVF0gPSBpbXhfY2xrX2h3X2dhdGU0KCJhdWRp
b19yb290X2NsayIsDQo+ID4gPiAiaXBnX3Jvb3QiLCBjY21fYmFzZSArIDB4NDY1MCwgMCk7DQo+
ID4gPiArCWh3c1tJTVg4TVBfQ0xLX0FVRElPX1JPT1RdID0gaW14X2Nsa19od19nYXRlNCgiYXVk
aW9fcm9vdF9jbGsiLA0KPiA+ID4gKyJpcGdfYXVkaW9fcm9vdCIsIGNjbV9iYXNlICsgMHg0NjUw
LCAwKTsNCj4gPiA+DQo+ID4gPiAgCWh3c1tJTVg4TVBfQ0xLX0FSTV0gPSBpbXhfY2xrX2h3X2Nw
dSgiYXJtIiwgImFybV9hNTNfY29yZSIsDQo+ID4gPiAgCQkJCQkgICAgIGh3c1tJTVg4TVBfQ0xL
X0E1M19DT1JFXS0+Y2xrLA0KPiA+ID4gLS0NCj4gPiA+IDIuNy40DQo+ID4NCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
