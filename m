Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84E69DBAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 04:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxj+SPpmAt53xfH7H/mwlILcYBNiNGArCYvtSJb6+Gw=; b=Hsa1WXeoS6kk01
	7w1ZsKsB+KLterqINEuPxtvCJbG33YA6AzCPKyqRxB885hiviS5TwVFQIoSRdzuFwDRK+jrKh9VMH
	QxUGByhz+fpdkv3tt+1sYDCVzjPj677Dx0T0ccegCFUqkFpHRS1TxxaOVIYu0X8cgCUi3SyKrkykU
	2kPwV5PnNyMJZJNvNvlTDNTBBXa13RFjgzP46V5ANih98DvU0zg/dStHFlOZWgiFO867qwtzpql66
	MhLH1z27hNfsPArwfHWLciHDpU2h1Ck2FrkNlsndQF83MhPxe3EYRwyuNWfwqhqMW7LYyOVRwXRFd
	Yw+BC5N09I4Bc1dqBo1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2RP4-0006yN-0W; Tue, 27 Aug 2019 02:40:14 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ROV-0006jM-TC
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 02:39:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bg1Hd4xJCWIZC+mym0nT9FKs2UE26lk1S6O2RQKD8xQJVMIDOYmMeA7EsAIM5cwvMBdTxoofkckloTMGyN0tL8muMkBnxi1m7+2loAgi7sDTMu5cZDbvkIpg+sYI3Uv17jADJ/zrxEORDt+35+WdSH4g1mMfIp9DSxihSjn42vCyKh+cd6EERJL8ixk/dM63avAzrXt3+Uj3H519Xh0oim1wpPd/hwXUOVNZ2FA9AJTi7hoNf4zrxOVQW2Qy7O0Zo711B3PhhJeecj9wSiiyCbpggi+jqSBmp9WGzivKIt/mDSGgPhGla2D1BQsqmvvTEqwJc4iMQEKStR66m7XEdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xVAIu1ZQNQDeNE//JCaDzo8CwyUw7+Bj9csRSKIAbA=;
 b=krXvygw4iuIHpa4ng/vefuFYpnvAzt8h8Qh0Bi45Z1Mu8g1FUzc9Wb7HlyEoHRkmx158AIbSQrs5bmVrig+OTv8aXrjR71o7eZJgj1mYcr8f1el8MX7Dv0Hota3Yk5/fkrb+QU4Mlbx2+gBQoEfpssI/zJT8i79iw/Fb7KZmlLp83G7V3RrncAfslNQbhm7Y60nJhF14hFe+ZSQqOZOiKw25w+Zy6azdxXTbFdA4BkHxD6cz5L2wv8ZW2rg0C2MG/O961d2kaQzyYYClnlR7TPV6E8G+6SFM/+CfdTQC25Ahb3m/pb4scxn1W2InI0a2x0nI5/97+ZkDNFDUOhetcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xVAIu1ZQNQDeNE//JCaDzo8CwyUw7+Bj9csRSKIAbA=;
 b=GTbdhMmW18odzNvoDij1ZCUOhPEOUgJqP3OHUE/xVheyshgcDIpm5S050+mDo6E0gftJJnwdw2dd/N4G6D9aVPD0yHT5JMh6azZPETIy4WTPGG0ZV5kaAE5u0ZeRKdKA9vzb3qtp7Lkem1jx43m3ACs0xH146yUB7uEMhz+Xm3g=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4156.eurprd04.prod.outlook.com (52.134.110.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 02:39:36 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::c8ca:1c9c:6c3:fb6f%4]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 02:39:36 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "mark.rutland@arm.com" <mark.rutland@arm.com>, "will@kernel.org"
 <will@kernel.org>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V7 2/3] Documentation: admin-guide: perf: add i.MX8 ddr pmu
 user doc
Thread-Topic: [PATCH V7 2/3] Documentation: admin-guide: perf: add i.MX8 ddr
 pmu user doc
Thread-Index: AQHVXICq9eVS3INrXEGFIllwegiR9w==
Date: Tue, 27 Aug 2019 02:39:36 +0000
Message-ID: <20190827023557.7071-2-qiangqing.zhang@nxp.com>
References: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20190827023557.7071-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR01CA0111.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::15) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1181e130-b72d-409c-fe48-08d72a97cca8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR04MB4156; 
x-ms-traffictypediagnostic: DB7PR04MB4156:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB41569D2C46C6E8D1AD5F612AE6A00@DB7PR04MB4156.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(54534003)(189003)(199004)(99286004)(81156014)(81166006)(6506007)(386003)(26005)(71200400001)(71190400001)(1076003)(102836004)(25786009)(2906002)(6116002)(8676002)(186003)(36756003)(76176011)(7736002)(3846002)(8936002)(66066001)(14444005)(256004)(52116002)(316002)(110136005)(54906003)(14454004)(50226002)(4326008)(478600001)(2201001)(5660300002)(53936002)(6436002)(486006)(476003)(2616005)(11346002)(6486002)(446003)(66556008)(305945005)(86362001)(2501003)(66946007)(66446008)(64756008)(66476007)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4156;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C+N1KMW+gS+lTs+BotmWugN+HcPCpv73yJ4/45c10mWTLds1gXHgIV42DToyPgIgnkQssmMEnJVVTBS+axRhITTa0bnkItjfr92GFSf6/PNhLQtbWK52lhorQRa9u5hyrgoB7t+BNWXN9F1GCNnKpk+JPLT/aCSQzLRoPO9EaQGolqsyKQPNb+xdiI6sJcLHm232lFh6Jfgth4Vpf2J8/gKnblxBpBuniKTiQD8n9eDT31g1lqUyt5zZX0bmts8PHssqdAFODi4w65VZcbDslCmmNpkWAWd25bpHA5LCfOkNSfD15ft7FfMWJwYQ0TyIYtjRpVGWO/EzvVFGexYnJnRvmWWL/KJS9EwS8P1r2ttQaGcIpAFXEuWDjk2+oLi7IF1AzJddVRUUlqTl0ObxmH01Yhf36vmbFuvRIjy5d44=
Content-ID: <F6C19A556700E9458EAACF0AB1574B18@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1181e130-b72d-409c-fe48-08d72a97cca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 02:39:36.0478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q38zvIAHZHqDJBacXjgZ7i/fa7S4O/Ypdif2urgFz/v4NYIumKdv31b87Wz/Czdmb5vNd+WPJb6M5XGT/gabnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_193939_941468_8EDA1329 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGkuTVg4IGRkciBwbXUgdXNlciBkb2MuDQoNCkNoYW5nZUxvZzoNClYxIC0+IFY0Og0KCSog
bmV3IGFkZCBpbiBWNC4NClY0IC0+IFY1Og0KCSogbm8gY2hhbmdlLg0KVjUgLT4gVjY6DQoJKiBj
aGFuZ2UgdGhlIGV2ZW50IG5hbWUNClY2IC0+IFY3Og0KCSogbm8gY2hhbmdlLg0KDQpTaWduZWQt
b2ZmLWJ5OiBKb2FraW0gWmhhbmcgPHFpYW5ncWluZy56aGFuZ0BueHAuY29tPg0KLS0tDQogRG9j
dW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0IHwgMzAgKysrKysrKysrKysr
KysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KDQpk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0IGIv
RG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmL2lteC1kZHIucnN0DQpuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KaW5kZXggMDAwMDAwMDAwMDAwLi4yNTQwYTRkMTQxN2INCi0tLSAvZGV2L251bGwN
CisrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvcGVyZi9pbXgtZGRyLnJzdA0KQEAgLTAs
MCArMSwzMCBAQA0KKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0NCitGcmVlc2NhbGUgaS5NWDggRERSIFBlcmZvcm1hbmNlIE1vbml0b3JpbmcgVW5p
dCAoUE1VKQ0KKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0NCisNCitUaGVyZSBhcmUgbm8gcGVyZm9ybWFuY2UgY291bnRlcnMgaW5zaWRlIHRoZSBE
UkFNIGNvbnRyb2xsZXIsIHNvIHBlcmZvcm1hbmNlDQorc2lnbmFscyBhcmUgYnJvdWdodCBvdXQg
dG8gdGhlIGVkZ2Ugb2YgdGhlIGNvbnRyb2xsZXIgd2hlcmUgYSBzZXQgb2YgNCB4IDMyIGJpdA0K
K2NvdW50ZXJzIGlzIGltcGxlbWVudGVkLiBUaGlzIGlzIGNvbnRyb2xsZWQgYnkgdGhlIFBlcmZv
cm1hbmNlIGxvZyBvbiBwYXJhbWV0ZXINCit3aGljaCBjYXVzZXMgYSBsYXJnZSBudW1iZXIgb2Yg
UEVSRiBzaWduYWxzIHRvIGJlIGdlbmVyYXRlZC4NCisNCitTZWxlY3Rpb24gb2YgdGhlIHZhbHVl
IGZvciBlYWNoIGNvdW50ZXIgaXMgZG9uZSB2aWEgdGhlIGNvbmZpZyByZWdpc3RpZXJzLiBUaGVy
ZQ0KK2lzIG9uZSByZWdpc3RlciBmb3IgZWFjaCBjb3VudGVyLiBDb3VudGVyIDAgaXMgc3BlY2lh
bCBpbiB0aGF0IGl0IGFsd2F5cyBjb3VudHMNCivigJx0aW1l4oCdIGFuZCB3aGVuIGV4cGlyZWQg
Y2F1c2VzIGEgbG9jayBvbiBpdHNlbGYgYW5kIHRoZSBvdGhlciBjb3VudGVycyBhbmQgYW4NCitp
bnRlcnJ1cHQgaWUgZW5hYmxlIG9mIGNvdW50ZXIgMCBpcyBhIGdsb2JhbCBmdW5jdGlvbi4NCisN
CitUaGUgImZvcm1hdCIgZGlyZWN0b3J5IGRlc2NyaWJlcyBmb3JtYXQgb2YgdGhlIGNvbmZpZyAo
ZXZlbnQgSUQpIGFuZCBjb25maWcxDQorKEFYSSBJRCBmaWx0ZXIpIGZpZWxkcyBvZiB0aGUgcGVy
Zl9ldmVudF9hdHRyIHN0cnVjdHVyZSwgc2VlIC9zeXMvYnVzL2V2ZW50X3NvdXJjZS8NCitkZXZp
Y2VzL2lteDhfZGRyMC9mb3JtYXQvLiBUaGUgImV2ZW50cyIgZGlyZWN0b3J5IGRlc2NyaWJlcyB0
aGUgZXZlbnRzIHR5cGVzDQoraGFyZHdhcmUgc3VwcG9ydGVkIHRoYXQgY2FuIGJlIHVzZWQgd2l0
aCBwZXJmIHRvb2wsIHNlZSAvc3lzL2J1cy9ldmVudF9zb3VyY2UvDQorZGV2aWNlcy9pbXg4X2Rk
cjAvZXZlbnRzLy4NCisNCitBWEkgSUQgZmlsdGVyIGlzIG9ubHkgdXNlZCBieSBDU1YgbW9kZXMg
MHg0MSAoYXhpZC1yZWFkKSBhbmQgMHg0MiAoYXhpZC13cml0ZSkNCit0byBjb3VudCByZWFkaW5n
IG9yIHdyaXRpbmcgbWF0Y2hlcyBmaWx0ZXIgc2V0dGluZy4gVXNlciBzaG91bGQgc3BlY2lmeSB0
aGlzIHR3bw0KK2V2ZW50cyB3aXRoIHRoZSBzYW1lIEFYSSBJRCBmaWx0ZXIgdmFsdWUgaWYgd2Fu
dCB0byBjb3VudCBhdCB0aGUgc2FtZSB0aW1lLCBhcw0KK3RoaXMgZmlsdGVyIHJlZ2lzdGVyIGlz
IHNoYXJlZCBiZXR3ZWVuIGNvdW50ZXJzLg0KKw0KK0V4YW1wbGUgZm9yIHBlcmYgdG9vbCB1c2U6
Og0KKw0KKyAgICAgICAgcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9jeWNsZXMvIGNtZA0KKyAg
ICAgICAgcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9yZWFkLyxpbXg4X2RkcjAvd3JpdGUvIGNt
ZA0KKyAgICAgICAgcGVyZiBzdGF0IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4
TU1NTUREREQvLGlteDhfZGRyMC9heGlkLXdyaXRlLGF4aV9pZD0weE1NTU1ERERELyBjbWQNCi0t
IA0KMi4xNy4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
