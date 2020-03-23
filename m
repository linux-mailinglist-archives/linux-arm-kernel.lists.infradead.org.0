Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB54E190027
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 22:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rs4EOK61REQ6JjIuFqjmQBxfaqKb2k0bxVkzCbd+j2w=; b=URBnfGmJrlrX2a
	F071v2L5hKxvbyEQGbfKHigxjA90yv5hQNcpbWM9IUFpwuHom37+v19btRdxrPh758P51/8JrHQq/
	nwSlqdeAgas6+A9UjLrx3bjFKGAL8UgvhBxwknmr/C4q853WgsVzyKxhj/R5HdQibg6pdKfHJ+SjE
	q6tcGxtbeq9yowamfPiItmbvC+MgnZNu6t2eR10PFseu2R4kaRWU0CtV7ZiWmmeqMp7vc7AqTMB/u
	r8nGo6LITnHeoKiighjTP6FgHt05voHX5ofCrrhBH6aRINaUtYp/bAlj8vX9Jgjz2ZOyWSa1jfS12
	wBO6/pzJ2KLwT6RyzMSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUR9-0007mO-3N; Mon, 23 Mar 2020 21:16:43 +0000
Received: from mail-co1nam11on2052.outbound.protection.outlook.com
 ([40.107.220.52] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGUQx-0007kD-EJ
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 21:16:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pbl7Lht4e+GFZvqeVzwgYZHM3xeoxlza2AgZ3IfXMzyQ5Nw41Rzi6VLQiT3TZqeggXFmKhxInR8NNjfi5GH9mfaPKRkXfF4NUW1QhV0t+G3bA9gTyzBEFEK9CBExT04tpfhbB7ygRbVz44TFbQyaOJd20cyPPv6dvSUO9JMr1OftKxnmpESg2teZH/dcQdvOtXFKmt5DvMjvN6l/xxmee6sNv8dtYkuewvemNNX+SWH+Flm0RkgcPNYDQ+v0JzScWcNL8JFOJHoOiP3TK1VmJtb/IS9tZvOXh+zGoTVNddTVxSns0xhQoA2NQ0IvCzRiSbOwolPe96RIGbW6321KeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20lVPwhvzXnT+Qilevzt9aXlpfe+TdahCub9ADBuvnc=;
 b=YSQD5R4RyiGK3/A8vDMllHkk04rouODmCAfN2IL9bfWw5/zV7j9Zx7oUh670KiVy9h4ljnNzHZQ12Tij5t1h1YZqzsSmV/3yONASFdSslSM4IYoo0w+2KIGzwy0B0dfeSIZ3q43qgS4SEstl+GFO7pvTL0DQ6pfTWvLcUKz/h8MTD7wM5fdJmFUedK2hRuNGPhIaVgUtQjpH+oylSy4mfmVyqfCcHMwKeKSX3ronnNyhbAoKpy5cJvoijLUiH+0akNgjVV/Tg73Zp9Wnc/CJ/i2DgcovwV+Bdwwv9r418xXgl++2I3FSzyCNQqW3Ut1Kr/7uPGG2/h7EjHzIJjoX1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20lVPwhvzXnT+Qilevzt9aXlpfe+TdahCub9ADBuvnc=;
 b=Qr8sK+An1DdwQuBYTg7qYScvDOcoql8X8TCctHWA/k/PXkij7tObpbmKLSAJIKQpL1yDnTOPdq5D0GOs3VoJh5fIWgPUdmWxwgpLAeCfOIpuxerPWFV5K7T2NXPBHbvCt+atVvyQfiLNw9NTtaJp5A6Gw6TKjmsC5kQl+1kAbtA=
Received: from BYAPR02MB5992.namprd02.prod.outlook.com (2603:10b6:a03:127::16)
 by BYAPR02MB4423.namprd02.prod.outlook.com (2603:10b6:a03:5f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Mon, 23 Mar
 2020 21:16:29 +0000
Received: from BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::653c:fb1e:61b9:8f00]) by BYAPR02MB5992.namprd02.prod.outlook.com
 ([fe80::653c:fb1e:61b9:8f00%6]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 21:16:29 +0000
From: Jolly Shah <JOLLYS@xilinx.com>
To: "olof@lixom.net" <olof@lixom.net>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Michal
 Simek <michals@xilinx.com>, "arm@kernel.org" <arm@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Subject: Re: [PATCH 0/4] Clock driver fixes
Thread-Topic: [PATCH 0/4] Clock driver fixes
Thread-Index: AQHV8NuptlXrLfHfkk+i2Lx5IRh3SahWWNoAgAAAuIA=
Date: Mon, 23 Mar 2020 21:16:29 +0000
Message-ID: <B07D6193-CB81-409D-BB63-606E3C69E7E9@xilinx.com>
References: <1583185414-20106-1-git-send-email-jolly.shah@xilinx.com>
 <D2A3DCE1-1514-445D-B58E-E2EA31BAB0C2@xilinx.com>
In-Reply-To: <D2A3DCE1-1514-445D-B58E-E2EA31BAB0C2@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=JOLLYS@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0884b011-54c4-4d23-760a-08d7cf6f7473
x-ms-traffictypediagnostic: BYAPR02MB4423:|BYAPR02MB4423:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB4423A3C8E5E8233B1DD15EB5B8F00@BYAPR02MB4423.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(54906003)(26005)(2616005)(8676002)(36756003)(76116006)(81166006)(81156014)(478600001)(33656002)(5660300002)(6486002)(66446008)(66556008)(64756008)(66946007)(66476007)(86362001)(53546011)(6506007)(4744005)(71200400001)(8936002)(110136005)(186003)(4326008)(2906002)(6512007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4423;
 H:BYAPR02MB5992.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GEpgewJkVAcoJo6MR6UhSiibcdbF6gh2AxFoNWlccc4bDS1otjd45mEN0yW7mk/pjjKQLVqKm5m7TNy3iNdfey133PFnt61EiTTS4RRp9YWaO3n9Iw2qFQz9mpabe99OxZ0vShDtMyyqgzM00BkTyNFd73CrByRssyQ/HIokCfr8t/l2OMcsQ91M1UIbMUKaMVFAueAemzzK5qoO1pQQkKPGD3YkCWaTVlHgHL9ogqahy+AroMCwa57pEmAkt5eEEGYxnQ/fwvnkvkWTX7KmLwYMu14d66ykNIzR3408+34PtfjKF/sRUHzJOGWsqLHhiLnSCcyDJt31Yv0WLIzTvRUfx+GaqmfmFefLeUmFckDX5oBLvGKZ+ALno68VMtZ0DZfxB17ISrqLTwoZCARnvj2XevE0TpfsxmFNOGCnyJvA8Hp1zigBk5rBnyoh4Uj1
x-ms-exchange-antispam-messagedata: b7wZeR+JW7Pv6F+a8bViFpxrGsW3TMarbFsXNOh9HOhRs8KJ4cv3e3MpE5/nwur9od6Ybpqpmo38A39I3OzUROWC39nddQYMLJWINKU6AkHWLU4SvQo8CFSw4LEqBE0gMPBhpWLHBptd3+VLTlryAg==
Content-ID: <2D9A4891323C4F448936884B99E3A477@namprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0884b011-54c4-4d23-760a-08d7cf6f7473
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 21:16:29.6868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZeWaVa0AeTYGDeBpAS4EfMNZCFVZB6rXPNZU92CpH9FTuBUfdqgbLKXo+iyzv1YIriTgeqYUwkW7xYpDIhiT+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4423
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_141631_497135_C88BE08A 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rajan Vaja <RAJANV@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGxlYXNlIGlnbm9yZSBiZWxvdyBlbWFpbC4gVjIgcGF0Y2hzZXQgbmVlZHMgdG8gYmUgcmV2aWV3
ZWQgbm90IGJlbG93IG9uZS4NCg0KVGhhbmtzLA0KSm9sbHkgU2hhaA0KDQrvu79PbiAzLzIzLzIw
LCAyOjEzIFBNLCAiSm9sbHkgU2hhaCIgPEpPTExZU0B4aWxpbnguY29tPiB3cm90ZToNCg0KICAg
IEEgZ2VudGxlIHJlbWluZGVyIGZvciByZXZpZXcuDQogICAgDQogICAgT24gMy8yLzIwLCAxOjQz
IFBNLCAiSm9sbHkgU2hhaCIgPGpvbGx5LnNoYWhAeGlsaW54LmNvbT4gd3JvdGU6DQogICAgDQog
ICAgICAgIFRoaXMgcGF0Y2hzZXQgaW5jbHVkZXMgYmVsb3cgZml4ZXMgZm9yIGNsb2NrIGRyaXZl
cg0KICAgICAgICAxPiBGaXggRGl2aWRlcjIgY2FsY3VsYXRpb24gDQogICAgICAgIDI+IE1lbW9y
eSBsZWFrIGluIGNsb2NrIHJlZ2lzdHJhdGlvbg0KICAgICAgICAzPiBGaXggaW52YWxpZCBuYW1l
IHF1ZXJpZXMNCiAgICAgICAgND4gTGltaXQgYmVzdGRpdiB3aXRoIG1heGRpdg0KICAgICAgICAN
CiAgICAgICAgUXVhbnlhbmcgV2FuZyAoMSk6DQogICAgICAgICAgY2xrOiB6eW5xbXA6IGZpeCBt
ZW1vcnkgbGVhayBpbiB6eW5xbXBfcmVnaXN0ZXJfY2xvY2tzDQogICAgICAgIA0KICAgICAgICBS
YWphbiBWYWphICgyKToNCiAgICAgICAgICBjbGs6IHp5bnFtcDogTGltaXQgYmVzdGRpdiB3aXRo
IG1heGRpdg0KICAgICAgICAgIGRyaXZlcnM6IGNsazogRml4IGludmFsaWQgY2xvY2sgbmFtZSBx
dWVyaWVzDQogICAgICAgIA0KICAgICAgICBUZWphcyBQYXRlbCAoMSk6DQogICAgICAgICAgZHJp
dmVyczogY2xrOiB6eW5xbXA6IEZpeCBkaXZpZGVyMiBjYWxjdWxhdGlvbg0KICAgICAgICANCiAg
ICAgICAgIGRyaXZlcnMvY2xrL3p5bnFtcC9jbGtjLmMgICAgfCAyMCArKysrKysrKysrKysrKy0t
LS0tLQ0KICAgICAgICAgZHJpdmVycy9jbGsvenlucW1wL2RpdmlkZXIuYyB8IDE5ICsrKysrKysr
KysrKysrLS0tLS0NCiAgICAgICAgIDIgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pDQogICAgICAgIA0KICAgICAgICAtLSANCiAgICAgICAgMi43LjQNCiAg
ICAgICAgDQogICAgICAgIA0KICAgIA0KICAgIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
