Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6890A6B8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzA7EQmq41DLyze/H8h8TxzIzLMujcgQNEEjSJWRU6c=; b=a/0WQEy0/2vXmw
	/X77jjxPxHu9wfLSDC+I3xZJe/SCFZudpCIS346mkiSifDkBib4atwNfJtRXeLpCePMGVZH8gvxDR
	Tjn/tJ5NXBRKAtO7iG2i1rSDtwTlxE+b+T4jHrBkWW4iXAB3aj3GE3SLTcxpPdXUQrKC9+QeXsurW
	VoD2rzewf8sXroDJTD57VUldatm/qCMSwU/5bagZ6IegDoExGOUteK8PtUYLHfXSMg+tfVNiUd59B
	Gf64Noa/17fxUJ9591f7yPwG+zbXyYoKNraRzKGje6K2BuirBoy00wzChaPM9wdDTzAQNuPiE68qp
	3LiXRBCmZiteRUcce51w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59rL-00075T-D0; Tue, 03 Sep 2019 14:32:39 +0000
Received: from mail-eopbgr30117.outbound.protection.outlook.com
 ([40.107.3.117] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59rA-00074L-V6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:32:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c48LSGZ7UBfsZPBCSu979VVaqnuHiaPXJXhSdsybaDZlx8ZoQV7ikbQ7+VDqwbz8xYcaVloJMH2iwMd/fReRERyh12sg6Ecy3jJy2ViOmYXJsbO4oXKGuMmTcr7+QGAdTQmTGxdvmti9KTMDI96XRiADaReEq9jCobO9sdrmVsOue0Y5e2DxZgXDu8QPlKTylHl5oGaNtffHF5tbJZQFfC6idDk1riaH+f2fwAOGEnXbUqdGiCu3hTeeexGRVLHQ9HUDos3USBDZA3M8xE5g7BktA53suna4DoiHLNgIMQlBSkWpPHPsXZ1rJ/f+8Xwaea2QW5VkOU7U5Xmg4VhGxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVz2IqnKgF8pXm3FK4bdN1HcUAiXyQKuK8IC2XKrWY0=;
 b=ACN5RmLkJA9d0QPcLx85sJkbVOlfbqW9gdt1HGRbZz7ijQjpDVhzWbRo6eSUi0fj6NNQW3t/uQc+h2fiGVwl6XT9jVcfHgDKjGJLETNc0e7Xi4p1+Hm/kIok8OXAs4VA1TlJfllSeswVMQkDjfzNGhWjdocgMB1d1NtHxIRWJKzPSThrkti2wLFIZkP0NicN4Axot7r4DKeMKUTw+0sRnPBPm9ujTQKLlvVGoo977ssHZ7dyVrBWq5nYhwKuwR26sxWwnZUhzJRc+kehxRKeB9yDv9qOZayWOVGKSEGOb+qkLDcR9DmdpmsQ3PNds+8U/E5rTOhsUNvmft+lU+atNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lVz2IqnKgF8pXm3FK4bdN1HcUAiXyQKuK8IC2XKrWY0=;
 b=f3xC2N5w8VWXXks+XovsPyrT/3dYxi2B48Vy/ElIqGX82mjzi6HvKG5YIF9YYNTZ7305aEAbSCA2rCzEmta3c1gX9BfmaZ90JVlLLm02c5Rf7DPhwPUn/lkaQVfk9sFT6gWugQP6De95KWU1phF4PMVm+tLqzkfbvk9n3CUeQoQ=
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com (20.178.18.224) by
 AM0PR07MB4500.eurprd07.prod.outlook.com (52.135.151.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.11; Tue, 3 Sep 2019 14:32:23 +0000
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::c133:f3fd:605b:1108]) by AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::c133:f3fd:605b:1108%6]) with mapi id 15.20.2241.006; Tue, 3 Sep 2019
 14:32:23 +0000
From: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
To: Robin Gong <yibin.gong@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVYmRlwzto4eeux06zQsdxRt35zA==
Date: Tue, 3 Sep 2019 14:32:23 +0000
Message-ID: <dc06392b-8242-7d09-e0fe-49fb04849ebb@televic.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
 <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB66380D06DD2619493904B38B89B90@VE1PR04MB6638.eurprd04.prod.outlook.com>
Accept-Language: nl-BE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [84.199.255.188]
x-clientproxiedby: AM6P192CA0099.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:8d::40) To AM0PR07MB5300.eurprd07.prod.outlook.com
 (2603:10a6:208:f2::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 199660bb-fb17-45cd-5ff3-08d7307b88fe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB4500; 
x-ms-traffictypediagnostic: AM0PR07MB4500:
x-microsoft-antispam-prvs: <AM0PR07MB45005D4175C1F7416E17CF14FFB90@AM0PR07MB4500.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39850400004)(346002)(396003)(136003)(376002)(199004)(189003)(31686004)(6436002)(31696002)(102836004)(256004)(4326008)(386003)(5024004)(6506007)(53546011)(76176011)(52116002)(26005)(86362001)(58126008)(316002)(110136005)(53936002)(6512007)(66476007)(71200400001)(6246003)(71190400001)(54906003)(99286004)(478600001)(186003)(14454004)(66946007)(66066001)(65956001)(25786009)(2906002)(65806001)(4001150100001)(36756003)(64756008)(66556008)(66446008)(5660300002)(229853002)(3846002)(486006)(7736002)(446003)(2616005)(476003)(11346002)(6486002)(8676002)(6116002)(8936002)(305945005)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB4500;
 H:AM0PR07MB5300.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RV/yndiAfuTyfZRjxRJQTogbPUHLcWCKJiKaOLMujg99bh09z43t10u1KCf3Z5834qEdK2X6Onsz4WB3on0Nccw7ACGT1gCAVm6c7yPME9RJYA96Ez6ARIj15mpQp5Xxbh9d+pUzrZ+o6XOi/JR77d/x3wanDOLdTqox1fQEEil+5XANBTBBHN4IRy5dWLehSvL7+EamY8rKA2QeOszhI1FWibc0v2l6SK60baBBfHDxhnja3DgZmXOWh+0ROHwiNI5pNI3a3wb+AmCz4VoZBuX/KflsG55/LUWMGqEwd0JIsnxf2gAmYQ8BO4oHD2wIkAXgVmwz8ZxwwfcB006DGqpzeQjE+lOT/V63isKgo3T6Tf/sRNCfPNWXV3ZJI+7YAV/0O7o/GAzrfDH5WkK14Ft9YOQQjDhbI3UH8rsWeKo=
x-ms-exchange-transport-forked: True
Content-ID: <911E49799D901F4D8911F383855AF71C@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 199660bb-fb17-45cd-5ff3-08d7307b88fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 14:32:23.5776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aNaCaj7Dfmh3G6H9LGRQCGvqEOJsjBjoEA+lnfTMHTPoafLL3NO3fWDdGbxPFe6/K/1so0PuF4wKd3bV1XAKPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_073229_207752_7843D7BF 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.117 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOS8zLzE5IDc6NTcgQU0sIFJvYmluIEdvbmcgd3JvdGU6DQo+IENBVVRJT046IFRoaXMgRW1h
aWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgVGVsZXZpYy4gRG8gbm90IGNsaWNrIGxpbmtzIG9y
IG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSByZWNvZ25pemUgdGhlIHNlbmRlciBhbmQga25v
dyB0aGUgY29udGVudCBpcyBzYWZlLg0KPg0KPg0KPiBPbiAyMDE5LTgtMjkgMTQ6MjQsIEp1cmdl
biBMYW1icmVjaHQgd3JvdGU6DQo+PiBPbiA4LzI4LzE5IDQ6MDUgUE0sIFJvYmluIEdvbmcgd3Jv
dGU6DQo+Pj4gQ291bGQgeW91IGhlbHAgY2hlY2sgaWYgYmVsb3cgY29tbWl0IGluIHlvdXIgc2lk
ZT8NCj4+PiBjb21taXQgZWJiODUzYjFiZDVmNjU5YjkyYzcxZGM2YTlkZTQ0Y2ZjMzdjNzhjMA0K
Pj4+IEF1dGhvcjogTHVjYXMgU3RhY2g8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4NCj4+PiBEYXRl
OiAgIFR1ZSBOb3YgNiAwMzo0MDoyOCAyMDE4ICswMDAwDQo+PiB5ZXMsIGl0J3MgaW4uDQo+Pg0K
Pj4gQWxzbyB0aGUgMiBmb2xsb3ctdXAgY29tbWl0cyBvZiBMdWNhcyBTdGFjaDoNCj4+IDkwNjNm
NWE5OWVhNzZmODU5MzVlM2U0NTM0MjJkMTVlN2JlODliOWUgYW5kDQo+PiAzNzRmMzg0YmM2NmY3
YTkyOGYxMWViMjBjMDUxOGYwZjNmYzFmZmQ2Lg0KSSBoYWQgYWxzbyBhbHJlYWR5IGNoZXJyeSBw
aWNrZWQgeW91ciBjb21taXQgDQozZjVkZTRjN2UxNjE2NGEzNDRhOTA1NjQ5ZjA4ZThhOTBhNjhm
ZjlmICJkbWFlbmdpbmU6IGlteC1zZG1hOiByZW1vdmUgDQpCRF9JTlRSIGZvciBjaGFubmVsMCIu
DQoNCkJ1dCBhbHNvIHRoZW4ga2VybmVsIGhhbmdzIGF0IGxvYWRpbmcgc2RtYSBGVy4NCg0KKHRo
aXMgbG9va2VkIHRoZSBtb3N0IGludGVyZXN0aW5nIGNvbW1pdCkNCg0KPj4NCj4+IEFuZCB0aGF0
IGFyZSB0aGUgbGFzdCBjb21taXRzIG9uIGRyaXZlcnMvZG1hL2lteC1zZG1hLmMgZm9yIG15IDQu
MTkueCtmc2xjDQo+PiBicmFuY2guIEJ1dCBJIGhhdmUgYWxyZWFkeSB0cmllZCA1LjEueCtmc2xj
LCBhbmQgaXQgYWxzbyBnb3Qgc3R1Y2suDQo+IFNvcnJ5LCBJIGNhbid0IHJlcHJvZHVjZSB5b3Vy
IGlzc3VlIG9uIExpbnV4IDUuMy1yYzYgd2l0aCAnQ09ORklHX1NMT0I9eScgYW5kDQo+IFNETUEg
ZmlybXdhcmUgYnVpbHQgaW4ga2VybmVsLCBDb3VsZCB5b3UgaGF2ZSBhIHRyeSBvbiBvdXIgaW14
NnVsLTE0eDE0LWV2aw0KPiBib2FyZCB3aXRoIExpbnV4IDUuMy1yYzYgZGlyZWN0bHkobm8gYW55
IHBhdGNoIG5lZWRlZCk/DQoNClRoaXMgd29ya3Mgb24gb3VyIG93biBib2FyZCAod2l0aCBpbXg2
dWwpIQ0KDQpUaGFua3MsDQoNCkrDvHJnZW4NCg0KPiByb290QGlteDZ1bDdkOn4jIGRtZXNnIHwg
Z3JlcCBkbWENCj4gWyAgICAwLjk5MTkyOF0gbXhzLWRtYSAxODA0MDAwLmRtYS1hcGJoOiBpbml0
aWFsaXplZA0KPiBbICAgIDQuMTYyMTk5XSBpbXgtc2RtYSAyMGVjMDAwLnNkbWE6IGxvYWRlZCBm
aXJtd2FyZSAzLjUNCj4+IEtpbmQgcmVnYXJkcywNCj4+DQo+PiBKw7xyZ2VuDQoNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
