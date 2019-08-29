Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAC8A11B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 08:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Qwj/Dx3h5Tw8Is9VIY8iE9r5/vdPCfOBXO3lVKVS+4=; b=ZG5t4A7lhEskf2
	gLZgNlZkjIHW0vrx1UTgK8L8zTwambv3+2MUwHd/Fw5mI4CW2jhoGY0TSQKlXJQ/yQ6z6EdZftRgs
	4DI9SokVVmTbBI5wzqDonZPSvPaF36Dc6tFjk+VZehrGja/2pRcHA0YWkp5Mpz+BRqQVIb8v3adVM
	pJXOdWoOARU0yKplIMiZy+lyw2u7eSPwol1LxkAs+P5UpVXk5U7mqBZisPD8ykVWqHg1khwbKBxw2
	q4XMQBV2PRZ3Cw0itALQBysofI0t1LV3RHRQN3UmncvMf0mJWYWTVjrg3FKZ30L2Vtgg4ZBv9oL3v
	xYlkQlVii1DNmutbE+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Dqa-0002UH-Gi; Thu, 29 Aug 2019 06:23:52 +0000
Received: from mail-eopbgr70104.outbound.protection.outlook.com
 ([40.107.7.104] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3DqR-0002Sv-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 06:23:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ml4Beq3UMVKUzufPDF6mhggLluHJntzJCytqv8M6l20/FGFq7CUVTstZlsAI57wY8WyGZJvCMyq5Cu9+vpNClxnM8DW6esc2NbaKxpBXcWhLCSGeIXpc9yeBVj8Wz7+EaTS9gY6pN2a5vuRJk6cwhzyKapEiRYz71m2EvlKIySsnXqTJ0A0JhB4jpasFV2DlK5c6T5SfzpXFBocMeYv2hZHSuMXanrs2hdP3tCl7HsJLOw9z2jupyHSqZrFEnyVyuJloZD2YVTJ8MmI36AFaGmSfGMt0v7XMbItEmieO/6y3tPzv+nYvPXoUhWmgQYfWEgQbskdfBOw/JcrR0w4hjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9jUOZUWmVnDvpx6rBOjrZ4sKEXtMBEVe7Sd6agxD4k=;
 b=aq8ikoQ8+TwpBsn5rQIs5o1HDbSBEpDWARVVTCcSfbNieY/i5sgY9cDaOn/z1jP3D4ihxNDsZngad5mTypPGQYeIXCCZ4x2oS6rbzqvwdXy0/LoIRexy+7rJghd3DrmgroKAl72fXR0toljKKzePqQrI3F1orA5IcgR7prNbbKTpHZIeyEHf3BeBqxukSyEQ2Lp7rdybwNILm4vB7cOu0tkHIZxJ695EvALu/SjsqtYPfN1Xv2c291BvfzQP60dh71nzZtOeFBTiMmiAFWYgJOx3gsFhIZmjUOQqzRsJrechbqclkw/eS+grPXeTshMp1GKFEUl/qo7KptOvMY3YUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z9jUOZUWmVnDvpx6rBOjrZ4sKEXtMBEVe7Sd6agxD4k=;
 b=Cm2sEsIyqKEy1rck5b0SOzUifsSsPFBQLOW2v0enyjxi1u1pXl2q1qYJO96R7+Wx1WSQsO8q/kEpvQxs8/Unn05NtzYxAqsWH7bYsmWL7ufB58KlZISkWj0nhM2xUnb1+N320pDUSW+dfIF4mQQRgEgrw3G5MsRK0+mWQ5eOGAY=
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com (20.178.18.224) by
 AM0PR07MB5377.eurprd07.prod.outlook.com (20.178.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.11; Thu, 29 Aug 2019 06:23:38 +0000
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::e102:742a:cb17:611e]) by AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::e102:742a:cb17:611e%7]) with mapi id 15.20.2178.022; Thu, 29 Aug 2019
 06:23:38 +0000
From: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
To: Robin Gong <yibin.gong@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zA==
Date: Thu, 29 Aug 2019 06:23:38 +0000
Message-ID: <f68d8972-7471-6544-d50f-55267e6790a7@televic.com>
References: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
 <VI1PR04MB7023FB06F79F31334905D34EEEA00@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <7282882c-1c79-9685-4bfe-80195976c8d6@televic.com>
 <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB663818AE90C9997DC340250989A30@VE1PR04MB6638.eurprd04.prod.outlook.com>
Accept-Language: nl-BE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [84.199.255.188]
x-clientproxiedby: AM5PR0701CA0055.eurprd07.prod.outlook.com
 (2603:10a6:203:2::17) To AM0PR07MB5300.eurprd07.prod.outlook.com
 (2603:10a6:208:f2::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f94d3b1-f571-49bd-9792-08d72c496dd7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB5377; 
x-ms-traffictypediagnostic: AM0PR07MB5377:
x-microsoft-antispam-prvs: <AM0PR07MB5377E1F752EC3CF5B37814FEFFA20@AM0PR07MB5377.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:619;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(346002)(39850400004)(396003)(366004)(189003)(199004)(6512007)(476003)(53936002)(6246003)(65806001)(66066001)(446003)(2616005)(486006)(11346002)(52116002)(66446008)(66556008)(6436002)(186003)(31686004)(64756008)(4744005)(66946007)(81166006)(25786009)(58126008)(81156014)(54906003)(110136005)(7736002)(8676002)(36756003)(76176011)(66476007)(31696002)(305945005)(53546011)(71200400001)(26005)(3846002)(102836004)(71190400001)(386003)(86362001)(256004)(2906002)(14454004)(6116002)(478600001)(5660300002)(316002)(229853002)(4326008)(6486002)(6506007)(8936002)(65956001)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB5377;
 H:AM0PR07MB5300.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UW9jwzdUVNGDIwgzM0L63wT2dy/+nuM6qqHFcoHinWlnysroTEq3bHP6ATnrAifrvsC6asJCOej9mC6GMS2IE5wSgxIUePpq6exMDvhojezktKH4hIv5sQMm9JbfEhOkeu5SqrSkjiG72Aaap70gFWiEZ9AeC1L5eSM2mrq7V6vaNfWodRXSkJEao5UR1UZHGXOWuDnCrJy6AZlkue7GuiHouqska9VDsUeZ6fNMIbyYrACKWny0//DGY3oSzzpfgqmZ1BaeuzdQ58ANIf1Kwiv0r2yYkTHfRYPKhjzsEBUj/UiHHET3cgNdmG3JkMZw9AihreIEauRVuWvJceoW7AK+aXddEBdMU5pUMQ0YyMQRA8yC2s2XdR7Xwno2iMLz3w1ezyI0KbauaLFyfgp+M8fr8hyv3HjoDy7h7ULu970=
x-ms-exchange-transport-forked: True
Content-ID: <8018CD2403C2A04DB8B5E72700485209@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f94d3b1-f571-49bd-9792-08d72c496dd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 06:23:38.5043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R2kge631ABzLqehim+MO5I3ropGK+79o962jefnSAIs9x42jmRWHWEEz4PAnp8VuIHboSDniCEd1lrS7UcjKAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB5377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_232343_750238_14FD9F8B 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.104 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gOC8yOC8xOSA0OjA1IFBNLCBSb2JpbiBHb25nIHdyb3RlOg0KPiBDb3VsZCB5b3UgaGVscCBj
aGVjayBpZiBiZWxvdyBjb21taXQgaW4geW91ciBzaWRlPw0KPiBjb21taXQgZWJiODUzYjFiZDVm
NjU5YjkyYzcxZGM2YTlkZTQ0Y2ZjMzdjNzhjMA0KPiBBdXRob3I6IEx1Y2FzIFN0YWNoPGwuc3Rh
Y2hAcGVuZ3V0cm9uaXguZGU+DQo+IERhdGU6ICAgVHVlIE5vdiA2IDAzOjQwOjI4IDIwMTggKzAw
MDANCg0KeWVzLCBpdCdzIGluLg0KDQpBbHNvIHRoZSAyIGZvbGxvdy11cCBjb21taXRzIG9mIEx1
Y2FzIFN0YWNoOiANCjkwNjNmNWE5OWVhNzZmODU5MzVlM2U0NTM0MjJkMTVlN2JlODliOWUgYW5k
IA0KMzc0ZjM4NGJjNjZmN2E5MjhmMTFlYjIwYzA1MThmMGYzZmMxZmZkNi4NCg0KQW5kIHRoYXQg
YXJlIHRoZSBsYXN0IGNvbW1pdHMgb24gZHJpdmVycy9kbWEvaW14LXNkbWEuYyBmb3IgbXkgDQo0
LjE5LngrZnNsYyBicmFuY2guIEJ1dCBJIGhhdmUgYWxyZWFkeSB0cmllZCA1LjEueCtmc2xjLCBh
bmQgaXQgYWxzbyBnb3QgDQpzdHVjay4NCg0KS2luZCByZWdhcmRzLA0KDQpKw7xyZ2VuDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
