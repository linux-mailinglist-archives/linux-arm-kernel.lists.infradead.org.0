Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0551B007E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 06:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIwppODLmuhg1A2SXqRzKKa3QiHVNC9RlvP+s8Wbdiw=; b=HZbkhai6lN+yKU
	y255rl5LP4suY9nD0mrfL2FawJwg9GzD6iJ4eWzjxhQ2huhNZMJDuB8FBf8r7Mfd8pav3rNthXFZd
	+/DDf90pCUNfe1HBpijgcXq6kE1Uu8vitWS0hpUg2lMUQMCT/OQm0CRTjWS6oNZcf1R263gdjph4H
	NLmsjLdIVYs6IGul1MMrfRJcCKvbW/GA8Ucce/cLnNY40aHK6hx5LScDh10VaE2oJZrIbIQWOIgxP
	kMMQbIe+mvOGYARMDEvgO6z+7Ur37tjZuXs30QqOnJkfUvf4MILAHTXIMxe+HLUXTct4z4/VaiHCe
	3/MHYynBXPaL6uvKfvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQNsV-0003V2-Gm; Mon, 20 Apr 2020 04:17:51 +0000
Received: from mail-db8eur05on2074.outbound.protection.outlook.com
 ([40.107.20.74] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQNsO-0003SO-Ie
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 04:17:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8BHxclWo2YIEZHLVRoWDTn6Oh75iz0NSRszsMAPt1eLUo+cqEKj/lXSB23KhqfB2oeGu95mTdiOoWixOKwvyfSHPOTIcqO523Eq1b8XVVV8fBhGWVXY17VLFsshwS8xqAEJKDcHyeGWIf0zzJ8QFp1msw8obi9fV52KWMckqSPcDWN7SmldaaUce347e4ay5/chE/3f8fBVHpKydGuUzfr8/Y/YQsQJrzvaTfxRqDlmlkCrPWj5rFX69uOOLYzhHie8LpfeU2+uIdft1QKyRv0msi8w5J/nZv7VWbgvRqN1yM6X10bRSTHKH9+eskKh1Iy+1jOmQMpWznJkWbGB/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuLwDv66kK88MQ9M5XNCVshWxNxOxAhX2rezii51fpg=;
 b=PnWD7xBXeA/7YkvULi3npGyo9xJ0yGUXZqrHgeq83SCm8qtdgWB3shkjWmaIP55HngD+HFqABL0DCJ8EJTFKGPh7s8BL3EMTUtMkVehYIU1kAuWazHTn8ESw3ht5eh/NurImgBIS4+8T+Ak4g8vn6N59IOQ9bxevRvneUjSJzkcH+mKcrqwlDbM68iZGm6Snp4N+bZyaEwDHaKpjNpCGX5QbUF23C9uLRkFXE9VQ601NGAeP/ZRRA1AasNVHoba3a9hJNj4PHuusRdccUj+ySNfRsLree4o8NJUw2vdPw8tos3nMs3JOfOag6nXidisjz7xsXAkcJxatlL7O3GcLWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuLwDv66kK88MQ9M5XNCVshWxNxOxAhX2rezii51fpg=;
 b=ZpIQTNQwYoTQn7kz3Z6PFpZp9kA8Hx+Y3rLL3qXkBq4bKPKiu0aUP4unzjLDyZuJTOchO0xE7d9/eGhq22E8Oz7oyT8AKT+LH3jBP/gAWKq/xQWsX9cMDVh0fINb06m5IQpl23AKXioclufoRYl7HOuQn1KMxvGJV7gSD9S77WQ=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6842.eurprd04.prod.outlook.com (2603:10a6:10:11c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26; Mon, 20 Apr
 2020 04:17:38 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%8]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 04:17:38 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: John Garry <john.garry@huawei.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, "will@kernel.org"
 <will@kernel.org>
Subject: RE: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
Thread-Topic: [RFC PATCH v2 09/13] perf vendor events: Add JSON metrics for
 imx8mm DDR Perf
Thread-Index: AQHWFKVVX4GZScOVYUWAj3jiI1Adb6iBYhwQ
Date: Mon, 20 Apr 2020 04:17:38 +0000
Message-ID: <DB8PR04MB67959336311C0CF525BB24ADE6D40@DB8PR04MB6795.eurprd04.prod.outlook.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-10-git-send-email-john.garry@huawei.com>
In-Reply-To: <1587120084-18990-10-git-send-email-john.garry@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 287c8f5a-5837-41ef-f8c7-08d7e4e1c2fd
x-ms-traffictypediagnostic: DB8PR04MB6842:
x-microsoft-antispam-prvs: <DB8PR04MB68422DE7BC9ED43B02B51914E6D40@DB8PR04MB6842.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(66946007)(66556008)(66446008)(33656002)(66476007)(64756008)(71200400001)(86362001)(7416002)(52536014)(2906002)(76116006)(26005)(5660300002)(478600001)(110136005)(53546011)(8676002)(8936002)(4326008)(54906003)(6506007)(81156014)(316002)(7696005)(55016002)(186003)(9686003)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ENucy+yF+pJ5R/pbpJp8BewARX/DZhzxfL98O2nIby+9h4GDStFoDTMUthj+ikbypHGFkM1wLl4GHGXgChlh7DHF9ZW1fONYShP9bIPy6XiWmHAXwpBDhZ+cOdcpijXFPi00f8E1dyJnoBMIbdj5e2lF7QjmWtp6gfVyVWkh7SXnOO8lld8YMHTZeUT0pWKMQydjcowHTVYjMIQPalZUDOD2miuZTi2pjTi6mSvDoo8qlzUopXXevnABXNNKfg3yOH3qji6RC0VfF8057M5cpxr0EnKSvJUFoYFGRaKt3Ong+MTaVnZb2kB1kPpTtegLNWwGEhq/xXq14woFjApRTBOFmaxcctx+R3iRBhLXCq11XzXh5JX46z0pAvxQ7N7tbDmRfzdHLiCm95rxiuJLFPehx6uS2yTdAiUyB3ARwaG9z3wUmwfgch8Z6u/W829luCJn9l/+p0SDGvkW2vgcNxlsC9SLzVhHyHMGBHyPwvmkZXSQcT+NVxRr4ANHKGTE
x-ms-exchange-antispam-messagedata: QAEQbz546axUe4Hk+HJLSggKeJiJi5F9SYs9tBxP4j6RQGsyQs7x+HWzJBGUxrRERup3BydxhVQ3Mp3hfH42Lk4d81/v/pUcldqrI656WJwGIPRvff2Oxhtp3aVcFtAm4SNjp9ZvXB4W/K45GBK8CA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 287c8f5a-5837-41ef-f8c7-08d7e4e1c2fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 04:17:38.4531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kMSC/ZzGBrsxxAJRHZtKhBtMNIo6OQ/z8MQkbMAkMoTwhnVIpPfzD9lVveaJjCIFo2J6rY9R3Igm3M6stVvzSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6842
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_211744_870406_A1F01A89 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.74 listed in wl.mailspike.net]
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvaG4gR2FycnkgPGpvaG4u
Z2FycnlAaHVhd2VpLmNvbT4NCj4gU2VudDogMjAyMMTqNNTCMTfI1SAxODo0MQ0KPiBUbzogcGV0
ZXJ6QGluZnJhZGVhZC5vcmc7IG1pbmdvQHJlZGhhdC5jb207IGFjbWVAa2VybmVsLm9yZzsNCj4g
bWFyay5ydXRsYW5kQGFybS5jb207IGFsZXhhbmRlci5zaGlzaGtpbkBsaW51eC5pbnRlbC5jb207
DQo+IGpvbHNhQHJlZGhhdC5jb207IG5hbWh5dW5nQGtlcm5lbC5vcmc7IHdpbGxAa2VybmVsLm9y
Zw0KPiBDYzogYWtAbGludXguaW50ZWwuY29tOyBsaW51eGFybUBodWF3ZWkuY29tOyBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0Bu
eHAuY29tPjsgaXJvZ2Vyc0Bnb29nbGUuY29tOw0KPiByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgemhh
bmdzaGFva3VuQGhpc2lsaWNvbi5jb207DQo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZzsgSm9obiBHYXJyeSA8am9obi5nYXJyeUBodWF3ZWkuY29tPg0KPiBTdWJqZWN0OiBb
UkZDIFBBVENIIHYyIDA5LzEzXSBwZXJmIHZlbmRvciBldmVudHM6IEFkZCBKU09OIG1ldHJpY3Mg
Zm9yDQo+IGlteDhtbSBERFIgUGVyZg0KPiANCj4gRnJvbTogSm9ha2ltIFpoYW5nIDxxaWFuZ3Fp
bmcuemhhbmdAbnhwLmNvbT4NCj4gDQo+IEFkZCBKU09OIG1ldHJpY3MgZm9yIGlteDhtbSBERFIg
UGVyZi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdxaW5nLnpoYW5n
QG54cC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gR2FycnkgPGpvaG4uZ2FycnlAaHVhd2Vp
LmNvbT4NCj4gLS0tDQo+ICAuLi4vYXJjaC9hcm02NC9mcmVlc2NhbGUvaW14OG1tL3N5cy9kZHJj
Lmpzb24gICAgICB8IDM5DQo+ICsrKysrKysrKysrKysrKysrKysrKysNCj4gIC4uLi9hcmNoL2Fy
bTY0L2ZyZWVzY2FsZS9pbXg4bW0vc3lzL21ldHJpY3MuanNvbiAgIHwgMTggKysrKysrKysrKw0K
PiAgdG9vbHMvcGVyZi9wbXUtZXZlbnRzL2pldmVudHMuYyAgICAgICAgICAgICAgICAgICAgfCAg
MSArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKykNCj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NA0KPiB0b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9mcmVlc2NhbGUvaW14
OG1tL3N5cy9kZHJjLmpzb24NCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NA0KPiB0b29scy9wZXJmL3Bt
dS1ldmVudHMvYXJjaC9hcm02NC9mcmVlc2NhbGUvaW14OG1tL3N5cy9tZXRyaWNzLmpzb24NCj4g
DQo+IGRpZmYgLS1naXQNCj4gYS90b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9mcmVl
c2NhbGUvaW14OG1tL3N5cy9kZHJjLmpzb24NCj4gYi90b29scy9wZXJmL3BtdS1ldmVudHMvYXJj
aC9hcm02NC9mcmVlc2NhbGUvaW14OG1tL3N5cy9kZHJjLmpzb24NCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi44YTNkYWU2MWE0OGYNCj4gLS0tIC9kZXYvbnVs
bA0KPiArKysgYi90b29scy9wZXJmL3BtdS1ldmVudHMvYXJjaC9hcm02NC9mcmVlc2NhbGUvaW14
OG1tL3N5cy9kZHJjLmpzb24NCj4gQEAgLTAsMCArMSwzOSBAQA0KPiArWw0KPiArICAgew0KPiAr
ICAgICAgICAgICAiQnJpZWZEZXNjcmlwdGlvbiI6ICJkZHIgY3ljbGVzIGV2ZW50IiwNCj4gKyAg
ICAgICAgICAgIkV2ZW50Q29kZSI6ICIweDAwIiwNCj4gKyAgICAgICAgICAgIkV2ZW50TmFtZSI6
ICJpbXg4X2Rkci5jeWNsZXMiLA0KPiArICAgICAgICAgICAiVW5pdCI6ICJpbXg4X2RkciIsDQo+
ICsgICAgICAgICAgICJDb21wYXQiOiAiaS5teDhtbSINCj4gKyAgIH0sDQo+ICsgICB7DQo+ICsg
ICAgICAgICAgICJCcmllZkRlc2NyaXB0aW9uIjogImRkciByZWFkLWN5Y2xlcyBldmVudCIsDQo+
ICsgICAgICAgICAgICJFdmVudENvZGUiOiAiMHgyYSIsDQo+ICsgICAgICAgICAgICJFdmVudE5h
bWUiOiAiaW14OF9kZHIucmVhZF9jeWNsZXMiLA0KPiArICAgICAgICAgICAiVW5pdCI6ICJpbXg4
X2RkciIsDQo+ICsgICAgICAgICAgICJDb21wYXQiOiAiaS5teDhtbSINCj4gKyAgIH0sDQo+ICsg
ICB7DQo+ICsgICAgICAgICAgICJCcmllZkRlc2NyaXB0aW9uIjogImRkciB3cml0ZS1jeWNsZXMg
ZXZlbnQiLA0KPiArICAgICAgICAgICAiRXZlbnRDb2RlIjogIjB4MmIiLA0KPiArICAgICAgICAg
ICAiRXZlbnROYW1lIjogImlteDhfZGRyLndyaXRlX2N5Y2xlcyIsDQo+ICsgICAgICAgICAgICJV
bml0IjogImlteDhfZGRyIiwNCj4gKyAgICAgICAgICAgIkNvbXBhdCI6ICJpLm14OG1tIg0KPiAr
ICAgfSwNCj4gKyAgIHsNCj4gKyAgICAgICAgICAgIkJyaWVmRGVzY3JpcHRpb24iOiAiZGRyIHJl
YWQgZXZlbnQiLA0KPiArICAgICAgICAgICAiRXZlbnRDb2RlIjogIjB4MzUiLA0KPiArICAgICAg
ICAgICAiRXZlbnROYW1lIjogImlteDhfZGRyLnJlYWQiLA0KPiArICAgICAgICAgICAiVW5pdCI6
ICJpbXg4X2RkciIsDQo+ICsgICAgICAgICAgICJDb21wYXQiOiAiaS5teDhtbSINCj4gKyAgIH0s
DQo+ICsgICB7DQo+ICsgICAgICAgICAgICJCcmllZkRlc2NyaXB0aW9uIjogImRkciB3cml0ZSBl
dmVudCIsDQo+ICsgICAgICAgICAgICJFdmVudENvZGUiOiAiMHgzOCIsDQo+ICsgICAgICAgICAg
ICJFdmVudE5hbWUiOiAiaW14OF9kZHIud3JpdGUiLA0KPiArICAgICAgICAgICAiVW5pdCI6ICJp
bXg4X2RkciIsDQo+ICsgICAgICAgICAgICJDb21wYXQiOiAiaS5teDhtbSINCj4gKyAgIH0NCj4g
K10NCkhpIEpvaG4sDQoNClRlc3RlZCBmcm9tIGJyYW5jaDogcHJpdmF0ZS10b3BpYy1wZXJmLTUu
Ny1zeXMtcG11LWV2ZW50cy12Mg0KDQpERFIgZXZlbnRzIHRlc3QgaXMgb2theSBvbiBib3RoIDhN
TSBhbmQgOFFNLg0KDQoNCj4gZGlmZiAtLWdpdA0KPiBhL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9h
cmNoL2FybTY0L2ZyZWVzY2FsZS9pbXg4bW0vc3lzL21ldHJpY3MuanNvbg0KPiBiL3Rvb2xzL3Bl
cmYvcG11LWV2ZW50cy9hcmNoL2FybTY0L2ZyZWVzY2FsZS9pbXg4bW0vc3lzL21ldHJpY3MuanNv
bg0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLmI2YTc3NmNh
N2NjMg0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9hcmNo
L2FybTY0L2ZyZWVzY2FsZS9pbXg4bW0vc3lzL21ldHJpY3MuanNvbg0KPiBAQCAtMCwwICsxLDE4
IEBADQo+ICtbDQo+ICsgICB7DQo+ICsJICAgICJCcmllZkRlc2NyaXB0aW9uIjogImJ5dGVzIGFs
bCBtYXN0ZXJzIHJlYWQgZnJvbSBkZHIgYmFzZWQgb24NCj4gcmVhZC1jeWNsZXMgZXZlbnQiLA0K
PiArCSAgICAiTWV0cmljTmFtZSI6ICJpbXg4bW1fZGRyX3JlYWQuYWxsIiwNCj4gKwkgICAgIk1l
dHJpY0V4cHIiOiAiaW14OF9kZHIucmVhZF9jeWNsZXMgKiA0ICogNCIsDQo+ICsJICAgICJTY2Fs
ZVVuaXQiOiAiOS43NjU2MjVlLTRNQiIsDQo+ICsJICAgICJVbml0IjogImlteDhfZGRyIiwNCj4g
KwkgICAgIkNvbXBhdCI6ICJpLm14OG1tIg0KPiArICAgIH0sDQo+ICsgICB7DQo+ICsJICAgICJC
cmllZkRlc2NyaXB0aW9uIjogImJ5dGVzIGFsbCBtYXN0ZXJzIHdyaXRlIHRvIGRkciBiYXNlZCBv
bg0KPiB3cml0ZS1jeWNsZXMgZXZlbnQiLA0KPiArCSAgICAiTWV0cmljTmFtZSI6ICJpbXg4bW1f
ZGRyX3dyaXRlLmFsbCIsDQo+ICsJICAgICJNZXRyaWNFeHByIjogImlteDhfZGRyLndyaXRlX2N5
Y2xlcyAqIDQgKiA0IiwNCj4gKwkgICAgIlNjYWxlVW5pdCI6ICI5Ljc2NTYyNWUtNE1CIiwNCj4g
KwkgICAgIlVuaXQiOiAiaW14OF9kZHIiLA0KPiArCSAgICAiQ29tcGF0IjogImkubXg4bW0iDQo+
ICsgICAgfQ0KPiArXQ0KDQpIb3dldmVyLCBpdCBzZWVtcyB0aGF0IHRoZXJlIGFyZSBzbWFsbCBk
ZWZlY3RzIGZyb20gbWV0cmljLg0KDQpGaXJzdGx5LCBjb3VsZCB5b3UgaGVscCBjaGFuZ2UgIlNj
YWxlVW5pdCI6ICI5Ljc2NTYyNWUtNE1CIiBpbnRvICJTY2FsZVVuaXQiOiAiOS43NjU2MjVlLTRL
QiIsIHRoaXMgaXMgYSBtaXN0YWtlLg0KDQpUaGVuLCB5b3UgY2FuIHNlZSB0aGF0IHRlc3QgaXMg
b2theSBmcm9tIDhNTS4gSG93ZXZlciwgbWV0cmljIHdvdWxkIGFkZCB0d2ljZSBvbmNlIHRpbWUg
ZnJvbSA4UU0gd2hpY2ggaGFzIHR3byBkZHIgcGVyZihkZHIwL2RkcjEpLCBpdCBsb29rcyBpbmNv
cnJlY3QuDQoNCjhNTToNCnJvb3RAaW14OG1tZXZrOn4jIC4vcGVyZiBzdGF0IC12IC1hIC1JIDEw
MDAgLU0gaW14OG1tX2Rkcl93cml0ZS5hbGwNClVzaW5nIENQVUlEIDB4MDAwMDAwMDA0MTBmZDAz
MA0KbWV0cmljIGV4cHIgaW14OF9kZHIud3JpdGVfY3ljbGVzICogNCAqIDQgZm9yIGlteDhtbV9k
ZHJfd3JpdGUuYWxsDQpmb3VuZCBldmVudCBpbXg4X2Rkci53cml0ZV9jeWNsZXMNCmFkZGluZyB7
aW14OF9kZHIud3JpdGVfY3ljbGVzfTpXDQppbXg4X2Rkci53cml0ZV9jeWNsZXMgLT4gaW14OF9k
ZHIwL2V2ZW50PTB4MmIvDQppbXg4X2Rkci53cml0ZV9jeWNsZXM6IDEzMTUzIDEwMDA0OTUxMjUg
MTAwMDQ5NTEyNQ0KIyAgICAgICAgICAgdGltZSAgICAgICAgICAgICBjb3VudHMgdW5pdCBldmVu
dHMNCiAgICAgMS4wMDA0NzY2MjUgICAgICAgICAgICAgIDEzMTUzICAgICAgaW14OF9kZHIud3Jp
dGVfY3ljbGVzICAgICAjICAgIDIwNS41IE1CICBpbXg4bW1fZGRyX3dyaXRlLmFsbA0KaW14OF9k
ZHIud3JpdGVfY3ljbGVzOiAzNTgyIDEwMDA2ODEzNzUgMTAwMDY4MTM3NQ0KICAgICAyLjAwMTE2
Nzc1MCAgICAgICAgICAgICAgIDM1ODIgICAgICBpbXg4X2Rkci53cml0ZV9jeWNsZXMgICAgICMg
ICAgIDU2LjAgTUIgIGlteDhtbV9kZHJfd3JpdGUuYWxsDQoNCg0KOFFNOg0Kcm9vdEBpbXg4cW1t
ZWs6fiMgLi9wZXJmIHN0YXQgLXYgLWEgLUkgMTAwMCAtTSBpbXg4cW1fZGRyX3JlYWQuYWxsDQpV
c2luZyBDUFVJRCAweDAwMDAwMDAwNDEwZmQwMzANCm1ldHJpYyBleHByIGlteDhfZGRyLnJlYWRf
Y3ljbGVzICogNCAqIDQgZm9yIGlteDhxbV9kZHJfcmVhZC5hbGwNCmZvdW5kIGV2ZW50IGlteDhf
ZGRyLnJlYWRfY3ljbGVzDQptZXRyaWMgZXhwciBpbXg4X2Rkci5yZWFkX2N5Y2xlcyAqIDQgKiA0
IGZvciBpbXg4cW1fZGRyX3JlYWQuYWxsDQpmb3VuZCBldmVudCBpbXg4X2Rkci5yZWFkX2N5Y2xl
cw0KYWRkaW5nIHtpbXg4X2Rkci5yZWFkX2N5Y2xlc306Vyx7aW14OF9kZHIucmVhZF9jeWNsZXN9
OlcNCmlteDhfZGRyLnJlYWRfY3ljbGVzIC0+IGlteDhfZGRyMC9ldmVudD0weDJhLw0KaW14OF9k
ZHIucmVhZF9jeWNsZXMgLT4gaW14OF9kZHIxL2V2ZW50PTB4MmEvDQppbXg4X2Rkci5yZWFkX2N5
Y2xlcyAtPiBpbXg4X2RkcjAvZXZlbnQ9MHgyYS8NCmlteDhfZGRyLnJlYWRfY3ljbGVzIC0+IGlt
eDhfZGRyMS9ldmVudD0weDJhLw0KaW14OF9kZHIucmVhZF9jeWNsZXM6IDIyNzQ4IDEwMDAzNzg3
NTAgMTAwMDM3ODc1MA0KaW14OF9kZHIucmVhZF9jeWNsZXM6IDI0NjQwIDEwMDAzNzY2MjUgMTAw
MDM3NjYyNQ0KaW14OF9kZHIucmVhZF9jeWNsZXM6IDIyODAwIDEwMDAzNzUxMjUgMTAwMDM3NTEy
NQ0KaW14OF9kZHIucmVhZF9jeWNsZXM6IDI0NjE2IDEwMDAzNzI2MjUgMTAwMDM3MjYyNQ0KIyAg
ICAgICAgICAgdGltZSAgICAgICAgICAgICBjb3VudHMgdW5pdCBldmVudHMNCiAgICAgMS4wMDAz
NzcyNTAgICAgICAgICAgICAgIDQ3Mzg4ICAgICAgaW14OF9kZHIucmVhZF9jeWNsZXMgICAgICAj
ICAgIDc0MC40IE1CICBpbXg4cW1fZGRyX3JlYWQuYWxsDQogICAgIDEuMDAwMzc3MjUwICAgICAg
ICAgICAgICA0NzQxNiAgICAgIGlteDhfZGRyLnJlYWRfY3ljbGVzDQppbXg4X2Rkci5yZWFkX2N5
Y2xlczogMzI2NzIgMTAwMDQ1NDM3NSAxMDAwNDU0Mzc1DQppbXg4X2Rkci5yZWFkX2N5Y2xlczog
Mzc4ODggMTAwMDQ1NzI1MCAxMDAwNDU3MjUwDQppbXg4X2Rkci5yZWFkX2N5Y2xlczogMzI3MzYg
MTAwMDQ2MDI1MCAxMDAwNDYwMjUwDQppbXg4X2Rkci5yZWFkX2N5Y2xlczogMzgwMTIgMTAwMDQ2
MzAwMCAxMDAwNDYzMDAwDQogICAgIDIuMDAwODEyMzc1ICAgICAgICAgICAgICA3MDU2MCAgICAg
IGlteDhfZGRyLnJlYWRfY3ljbGVzICAgICAgIyAgIDExMDIuNSBNQiAgaW14OHFtX2Rkcl9yZWFk
LmFsbA0KICAgICAyLjAwMDgxMjM3NSAgICAgICAgICAgICAgNzA3NDggICAgICBpbXg4X2Rkci5y
ZWFkX2N5Y2xlcw0KDQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBcIE5vIG5ld2xp
bmUgYXQgZW5kIG9mIGZpbGUNCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9q
ZXZlbnRzLmMgYi90b29scy9wZXJmL3BtdS1ldmVudHMvamV2ZW50cy5jDQo+IGluZGV4IDc2YTg0
ZWMyZmZjOC4uZWZkYWRlMDE5NGFmIDEwMDY0NA0KPiAtLS0gYS90b29scy9wZXJmL3BtdS1ldmVu
dHMvamV2ZW50cy5jDQo+ICsrKyBiL3Rvb2xzL3BlcmYvcG11LWV2ZW50cy9qZXZlbnRzLmMNCj4g
QEAgLTI1Nyw2ICsyNTcsNyBAQCBzdGF0aWMgc3RydWN0IG1hcCB7DQo+ICAJeyAiaGlzaV9zY2Ns
LGhoYSIsICJoaXNpX3NjY2wsaGhhIiB9LA0KPiAgCXsgImhpc2lfc2NjbCxsM2MiLCAiaGlzaV9z
Y2NsLGwzYyIgfSwNCj4gIAkvKiBpdCdzIG5vdCByZWFsaXN0aWMgdG8ga2VlcCBhZGRpbmcgdGhl
c2UsIHdlIG5lZWQgc29tZXRoaW5nIG1vcmUNCj4gc2NhbGFibGUgLi4uICovDQo+ICsJeyAiaW14
OF9kZHIiLCAiaW14OF9kZHIiIH0sDQo+ICAJeyAic21tdXYzX3BtY2ciLCAic21tdXYzX3BtY2ci
IH0sDQo+ICAJeyAiTDNQTUMiLCAiYW1kX2wzIiB9LA0KPiAgCXt9DQo+IC0tDQo+IDIuMTYuNA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
