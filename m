Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC461CF261
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK4fNsZtLpSoAGJ0sjn3rnMgbfhMiX4axbTuRgJh5RY=; b=YDL4WoZ53ckQTE
	XnC31tAN0USBr6+Q5mURfm51PJWjMTsr/BlcKSgrxGs0WuL8OsJRP7g40kLyyWjxKfFsSJHFAozUU
	ai/iThlXUWVQ2aW9P20VNggBH4L83xqnvStxggpzmqBGTdf2Q8GFU7EVwpk+PXya6pVw0Y25b5eQ9
	gBPnAg0Zfef60r1B/Wcpct0wuGB2fhyhs95fOqmNLBYiTsIjromMVcOCZkme9pIYsSKZgRxV8WEE9
	cnkyNawvWPMIn6xbE1XA6VTYVelwicti7ewFtqtKMlYAcC8DWvYjLN2ax8w6JFoeV3TJ488rQ0EeD
	JNqjZypUw2YXrRxpIzhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSAx-0006z7-7E; Tue, 12 May 2020 10:30:15 +0000
Received: from mail-eopbgr00049.outbound.protection.outlook.com ([40.107.0.49]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSAl-0006wE-OK
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:30:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PbFpY+B3aCq7tyksv8zLzhYOwYKUBAXjbNrYWgbC8c6avvCBzyn990UXJHnfJUuvmsQTJfjK4q/dNSpomaZ+iiewUjPbkW1PZy5U25x2Sfzn0dmqIptmu1gad1kg+CMDPBUH8MB47R1v1957Ox7lv0BSWdRvpt2Ji/A9HYbSzvi/jZ0Vgdtk5dJbBUfZDOEtl021Qhj/9pDacHdprk2bIf7qRKXuIbfo64eWklEnI1T6ABSOPGRCUI5FgUKal7/s69ALfiYbDohNbLNNlR+hl2+r4HE0W5iTQgp0X6FCdcjv9aQtRtLTIE34kRx8ID0M19/X6F+nJ1lwreBFaFGzvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9WYZk+gvL9A7wxSZmG+Mx2TFBtY+xTgLQtiFlAtAYQ=;
 b=cnXZprGoJU/RD+8GhvSNiR96dYkVgBzpRwNKIIGb5QSDOBvM+snsou93FmQzCFsYysfLrAbb5nUo9Y1vK5P2LLXRt9DhpoIB+bw/esvPsjFOAtOLbjcVQnsBdpCDH8foHHEz8woPHofzWsWoeWbmxZae44fiswvrIFTnLl5gpUpUdfjjRE3ZlRNhxnvksNJBm1kvOfl3gaPlmfUw1qBgKTsNrZX+4ivsApy64GMeK3PU8uYBUN0ORn7KP9JxxW+0X/c5UUfOcX6lLR8Rr4Bl0mO3LFCxkPwRG8jiW1GhcaR2C/OVmjDFTndHtcGe6inXM79sEX2jrGP9khSRavJrZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9WYZk+gvL9A7wxSZmG+Mx2TFBtY+xTgLQtiFlAtAYQ=;
 b=bxWexyj5kNzQ45EAa0ghIznsmrnhcRizF74n99/MalxGyvugZ5X4LjDJ/dFNke6Y4KUN2nKn59kSM305LY1eCtQFDAidZ05JO2grVss1O7VcWwQBCnBBOOnlyiUkbZv731Pg0NpTUlkOZsqOwOCT3iG7NNVRYpkYvwnbeBMsZhw=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6505.eurprd04.prod.outlook.com (2603:10a6:10:10d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Tue, 12 May
 2020 10:30:00 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 10:30:00 +0000
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
Thread-Index: AQHWJGgyaiXsow/hjEO3MgQOuZnxW6ikFvuwgAAsFYCAAAJPMA==
Date: Tue, 12 May 2020 10:30:00 +0000
Message-ID: <DB8PR04MB67951EB0C491D94052A6CCA2E6BE0@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <DB8PR04MB6795D56E9EC43949E5F40465E6BE0@DB8PR04MB6795.eurprd04.prod.outlook.com>
 <2642e2a6-9e44-79c4-2bf5-498cedd897a4@huawei.com>
In-Reply-To: <2642e2a6-9e44-79c4-2bf5-498cedd897a4@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 28d614cd-d472-474b-eb32-08d7f65f6d0e
x-ms-traffictypediagnostic: DB8PR04MB6505:
x-microsoft-antispam-prvs: <DB8PR04MB65054EF889377D4AF916F08CE6BE0@DB8PR04MB6505.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FAYryRduiAnI3PpTDUmnA7d5otdSSMCm6BTmLFFyBwA0EI3yRNwIZcNaWiPxC3yEOVFTUdSIZWVvRcVHaDNQaER9V79aRRioRvzOD0Zd/hu87PQE6hbS+JN8zHKQ4Gq09MynE6mPxwlVZgOAo/XKtzMFe4OfKNbniBS4FglTyuXAK3/+VbYSD8j1xQqHlAKvQdzaBbSf6Z2xFkJf864A7z6HEVVH7NYGdF6ow08T2FInNh6/63mmo4bwx4eXzXMM5ddRBG5wIm15Q2ic+KqctA8qtbXZ1zm4wjYaOPGVTrEszr0GFtYEZw75Yxv1+YvB0GW9l+mU6/ndP3hN7mjfPNpbScPjuIt1d5iRQ+4y7nkxzwXwrM+EP0oP9Lee2h9v97HgdNWr4OeiTg6R+vNbrO03nXPjj48HzbmLl1Oq2Hi+R0cwh7I0B7sedqWB9dRpMYlZTIlUfP8van1AKk54GCC5XkNE3eTon1eGtNRaZYLtpwLjuOl6WijFVLF8pciWHVzMeYbO0T2YdqKZfrl97X4d2HGTKU21G6uPTCRzPLf8ecc8BdbruwsPeRg4bdsvCRN3ifzDvP9qgIzoag5hxiKfTHnTPPJ+7Jj249JAd3I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(366004)(346002)(396003)(39860400002)(33430700001)(33656002)(8936002)(53546011)(76116006)(45080400002)(4326008)(66476007)(66556008)(66446008)(66946007)(5660300002)(8676002)(64756008)(71200400001)(52536014)(55016002)(7696005)(966005)(9686003)(26005)(83080400001)(33440700001)(186003)(86362001)(478600001)(316002)(2906002)(7416002)(110136005)(54906003)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: UDV5Bmr7nIvINW5OBgm7lv21xml6N01nUga/d/FaHea8zLDWQ5Wq7TRTmI1sgNtI5VoYWrP+OtCGwBB99v3Mx8ZgL/shZqUu84rXLZd3YrKQ16xyTn/1gKPK9837thQJbji4lyY1meYJVjUrMME9koEm3PFS3LxMG7L82OtveigzvucZO1kFST8N+L09bb0jaPP/1CjhMJm/JaajdBi2a4c9pJsSYTZXAiskt0k0WrbO340XFgfJhArNqlzudj/U/92hq5Aod/1Q/8RB9okw4i5YRfcefHzb5hV1dsKly2+GLgZm2R4Mg/Fa4tbhQE4ryWFjaHbmSmlUeNQ50/t157EB20twrHr5kUuDdUR+LgVJX3wvK/JG77sTs3+Dt/eQCu7zTx7pZ8FORvyUpxg1FgSo+OKZoEpEdSqNWsp6YmCUiSGhVoKlCoDJGO8+cY7W9yuQFw88CukDcl0HWpj3cT8PzFWMm4+37UbcyHj9goxi+w6eNUOkg/QN9bwhbgUr
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d614cd-d472-474b-eb32-08d7f65f6d0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 10:30:00.5845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QGWUYVWo+HU3VFQBi35jm/PCZRKkZLUvxPRV2rkUs4cUNwm7z6hD2FHbS2xcgnwpgxmxjutiLVT5xGPVCAEHWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6505
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_033003_895010_E0058DB1 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.49 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMMTqNdTCMTLI1SAxODoxMw0KPiBUbzogSm9h
a2ltIFpoYW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT47IHBldGVyekBpbmZyYWRlYWQub3Jn
Ow0KPiBtaW5nb0ByZWRoYXQuY29tOyBhY21lQGtlcm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0u
Y29tOw0KPiBhbGV4YW5kZXIuc2hpc2hraW5AbGludXguaW50ZWwuY29tOyBqb2xzYUByZWRoYXQu
Y29tOw0KPiBuYW1oeXVuZ0BrZXJuZWwub3JnDQo+IENjOiBpcm9nZXJzQGdvb2dsZS5jb207IGFr
QGxpbnV4LmludGVsLmNvbTsgcm9iaW4ubXVycGh5QGFybS5jb207DQo+IExpbnV4YXJtIDxsaW51
eGFybUBodWF3ZWkuY29tPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4gWmhhbmdz
aGFva3VuIDx6aGFuZ3NoYW9rdW5AaGlzaWxpY29uLmNvbT47IHdpbGxAa2VybmVsLm9yZzsNCj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggUkZDIHYzIDAwLzEyXSBwZXJmIHBtdS1ldmVudHM6IFN1cHBvcnQgZXZlbnQgYWxpYXNpbmcg
Zm9yDQo+IHN5c3RlbSBQTVVzDQo+IA0KPiANCj4gPiBJIGhhdmUgYW4gYXNpZGUgcXVlc3Rpb24s
IGRvIHlvdSBoYXZlIGFueSBpZGVhPyBUaGFua3MgYSBsb3QhDQo+ID4NCj4gPiBGb3IgRERSIFBN
VSwgSSB3YW50IHRvIGFkZCBiYW5kd2lkdGggdXNhZ2UgbWV0cmljLCBidXQgaXQgZGVwZW5kcyBv
biBERFINCj4gY29udHJvbGxlciBjbG9jayBmcmVxdWVuY3kuDQo+ID4gRm9yIGV4YW1wbGUsIHdl
IGhhdmUgaS5NWDhNTSBMUEREUjQgYm9hcmQgd2hpY2ggRERSIGNvbnRyb2xsZXIgY2xvY2sgaXMN
Cj4gODAwTUhaLCBhbmQgaS5NWDhNTSBERFI0IGJvYXJkIHdoaWNoIEREUiBjb250cm9sbGVyIGlz
IDYwME1IWiwgYnV0IHRoZQ0KPiBTb0MgaXMgdGhlIHNhbWUuDQo+ID4NCj4gPiBTbyB0aGV5IGNh
biBzaGFyZSBhbGwgSlNPTiBtZXRyaWNzIHdpdGggaWRlbnRpZmllciAiaS5teDhtbSIsIGV4Y2Vw
dA0KPiBiYW5kd2lkdGggbWV0cmljLg0KPg0KPiB3aGF0IGlzIHRoZSBiYW5kd2lkdGggbWV0cmlj
PyBob3cgaXMgaXQgc3VwcG9zZWQgdG8gYmUgY2FsY3VsYXRlZD8NCg0KU29tZXRoaW5nIGxpa2Ug
YmVsb3cgdG8gY2FsY3VsYXRlIGJhbmR3aWR0aCB1c2FnZToNCg0KaS5NWDhNTSBMUEREUjQgYm9h
cmQ6ICAoKHJlYWQtY3ljbGVzICsgd3JpdGUtY3ljbGVzKSAqIDQgKiA0IC8gZHVyYXRpb25fdGlt
ZSkgLyAoODAwICogMTAwMDAwMCAqIDQgKiA0KQ0KaS5NWDhNTSBERFI0IGJvYXJkOiAgKChyZWFk
LWN5Y2xlcyArIHdyaXRlLWN5Y2xlcykgKiA0ICogNCAvIGR1cmF0aW9uX3RpbWUpIC8gKDYwMCAq
IDEwMDAwMDAgKiA0ICogNCkNCg0KU28gdGhpcyBzaG91bGQgbm90IGJlIFNvYyBzcGVjaWZpYywg
aXQgaXMgYm9hcmQgc3BlY2lmaWMsIEkgZG9uJ3Qga25vdyBob3cgdG8gaW1wbGVtZW50IGl0IGZy
b20gbWV0cmljLg0KDQo+IElmIEkgYWRkIHNlcGFyYXRlIEpPU04gbWV0cmljcyBmaWxlcyBmb3Ig
aWRlbnRpZmllciAiaS5teDhtbS1scGRkcjQiIGFuZA0KPiBpZGVudGlmaWVyICJpLm14OG1tLWRk
cjQiLCB0aGVuIGl0J3MgZ29pbmcgdG8gYmUgdmVyeSByZWR1bmRhbnQsIHNpbmNlIG1vc3QNCj4g
bWV0cmljcyBhcmUgc2FtZSBqdXN0IHRoZSBpZGVudGlmaWVyIGlzIGRpZmZlcmVudC4NCj4gPg0K
PiA+IERvIHlvdSBrbm93IGhvdyBwZXJmIHRvb2wgaGFuZGxlIHN1Y2ggY2FzZT8NCj4gDQo+IGpp
cmthIGlzIHN1cHBvcnRpbmcgdXNlci1kZWZpbmVkIG1ldHJpYyBoZXJlOg0KPiBodHRwczovL2V1
cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZs
b3JlLmtlcg0KPiBuZWwub3JnJTJGbGttbCUyRjIwMjAwNTExMjA1MzA3LjMxMDc3NzUtMS1qb2xz
YSU0MGtlcm5lbC5vcmclMkYmYW1wOw0KPiBkYXRhPTAyJTdDMDElN0NxaWFuZ3Fpbmcuemhhbmcl
NDBueHAuY29tJTdDYmJkMjZkNzM3Y2Y0NDg5NmVkMzYwDQo+IDhkN2Y2NWQzM2FkJTdDNjg2ZWEx
ZDNiYzJiNGM2ZmE5MmNkOTljNWMzMDE2MzUlN0MwJTdDMCU3QzYzNzI0OA0KPiA3NTI0NjQ5MjIz
ODQmYW1wO3NkYXRhPXdHcVE0JTJCNnJlakpZckRqMFN6ZUdKbjA5cjY2MFFJek92UnkwREN3DQo+
IEVHVlElM0QmYW1wO3Jlc2VydmVkPTANCj4gDQo+IFNvIG1heWJlIHlvdSBjYW4gdXNlIHRoYXQg
c29tZWhvdyB3aXRoIHNlcGFyYXRlIHNjcmlwdHMuDQoNClRoYW5rcyBmb3IgeW91ciBoaW50LCBJ
IHdpbGwgcmVzZWFyY2ggaXQgdG8gc2VlIGlmIGl0IGlzIHBvc3NpYmxlLg0KDQpCZXN0IFJlZ2Fy
ZHMsDQpKb2FraW0gWmhhbmcNCj4gVGhhbmtzLA0KPiBKb2huDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
