Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CED687873
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hsUxaulpk61n4TAWPVq8yDcEi8iWLbbxDuokDZlQKIk=; b=PzwrGOXUxM+eM3
	b2UXH2Gb9eRp3XXTxrbcvNwsin/R+CV0pPG07ic+YhrDS/2Ln6M7XiHAs9fB3srpjd3qMHr1aPxQO
	HVSzi4DazDQOLhG8oJuWuu4oHy3Bu4sL7iQMiMSeVjCy6h5uBcxZ1/cBm+FZks8EHqnekmHFbblWc
	YFoOlOYJDDEhsP3A7KCFMh+HamHyrP6J8oaCxh0OyADFhjNVbr/0zz4xOdnS4dm8kqfntmwHjTWRJ
	y4HKYu6vVA8oBue/jjYDA51Sgoa68Xabw4JCpF9VqrWiUwNW6dRgpcmRzJL1uCYcREP/IehzSxmeT
	Si3OZYjOVAy3vbKqpsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw35I-0006sa-TJ; Fri, 09 Aug 2019 11:29:25 +0000
Received: from mail-eopbgr130047.outbound.protection.outlook.com
 ([40.107.13.47] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw355-0006rZ-Pd
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:29:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UL0YzdNd7UmZ+kPM2Fulnd6+AoUrtbs8t8N58YHQ9lnEpkSNcg4QZV0iAprPLQ9EQAnWwYSwZ2krLlYf1hOJJQBLZgGhqLjFB7uvGXB1iDmD8cvWzsBolCUBUBZ9C/k4wwhi6G+OuSTlASy3QAkf8Z+02wfOFKaY4tjTK2nluUCw2SfVRajKOVdQla3Jf4Nq9bgXCIDeftDCkLyM8SNxK0NqsndWTKH6gPJL7eoiXRVI5EqaMnu0T3sATWYS+0C3DaiQXUh+gGNPAUtw7jp/L2UGYtywZpVVRU9eKDn4vG68xWpfbSkPR2qio4vEXFlMWPIKSD5warcor980nVPxTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pFRrGnxpuUZm0V041Jpp0Wo9CyxnHIAUOl5O1flZwc4=;
 b=KZZragFzBiNMqVdmTmRULLYqMAsxJqrI+oJLI8L/6jHsBYGpLz+2hh8n5UoqnipkfqzkMCpd9KOfTCPyxN6jxUa1BMD2/ZTDbWoZK5v0RHwdxpjNAJwBzKt8kYMPS1r+gzymuGZmNc5p6DAslbLm44ilItkFs6JMdijqzsRhNO26wBnm2X7pITrZm7jHcbhegjGpuv5Lng/JtV1WuST517Mywahq6GXkCOI1My169S1FGV67Rf6l6YUWeCOu+LAwl2qH0JcIGGAi5Cx/0J2UihhOeYVhVvRayQ0lJSDyNgt4Y1MmF3sG+CpTio8N+xilF/jLchjVx+IdreUt/FyX4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pFRrGnxpuUZm0V041Jpp0Wo9CyxnHIAUOl5O1flZwc4=;
 b=F2Eq4BusylbRt0XPwjdv1CocdWQU4V1zS9uUeuCK87xD38LJQ5cY968747JWniQklpy181OPwHO94ycF4VOclmgYzvxrbE0IFkFBUWJoh037PY0kowGv0jceLSeakYzuI+A6euFk6E3SFGrkJYN6cPRV80ywzBNzZV0oU3B3G0Y=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB3359.eurprd04.prod.outlook.com (52.134.1.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Fri, 9 Aug 2019 11:29:07 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 11:29:07 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v2 0/6] Add initial support for S32V234-EVB
Thread-Topic: [PATCH v2 0/6] Add initial support for S32V234-EVB
Thread-Index: AQHVTqWnBGnrO7YebEiZ2+gJcmIkbw==
Date: Fri, 9 Aug 2019 11:29:06 +0000
Message-ID: <20190809112853.15846-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR06CA0024.eurprd06.prod.outlook.com
 (2603:10a6:206:2::37) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df7f9c70-f1e2-4f31-58c8-08d71cbcca13
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3359; 
x-ms-traffictypediagnostic: VI1PR0402MB3359:
x-ms-exchange-purlcount: 5
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB33599B1A88C9F8AB136D1D93DFD60@VI1PR0402MB3359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(136003)(346002)(199004)(189003)(66476007)(66446008)(66556008)(64756008)(5660300002)(6512007)(26005)(186003)(6306002)(2201001)(52116002)(8936002)(99286004)(14454004)(50226002)(66574012)(1076003)(86362001)(66946007)(71190400001)(71200400001)(4326008)(386003)(966005)(6506007)(53936002)(478600001)(102836004)(110136005)(2906002)(256004)(25786009)(8676002)(66066001)(476003)(2616005)(14444005)(54906003)(2501003)(486006)(316002)(36756003)(6116002)(3846002)(6486002)(7736002)(6636002)(7416002)(6436002)(305945005)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3359;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hGPhyuka0rqYGGt1LTbf7q5GtNqSPFdXqZYFg9qs4D8lpR2zWeXERE5KSmPKaqFeEWui5YOkrYZCeNUaP+S8lhoxg3Y+ZPxOb4BpD+p9Y+AArQfOMtTC9xcsMNar62xJ8ifc/lueywayLNl198EBssLwGz8ew/MLOnIBqUuU4KL/tgJVVU1bjMSvfQdsK6ZtLLE2cOS4J1x8mRPHkP52IBDiH1sQz285/u/UuWbK3Ww3MX0gBO635WuUaAx0qgah3ofSYpJT9MC37CkKgrdE/m1qzdV3CmSXoimXM+EVJXZB0BHTs+iFxK2jC/4xsSXOH/N+XNjnXWrZglRrOeQD1GeeJnT/fGHt85Bd0kXIKby987sKnJ92208XKQe+kJnJxrFSF2bGaOescoKjD11uEDgUSI9rT1UJj/AtSCfBmZ0=
Content-ID: <C9556161C6F6534893AD1C6086F98C1D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df7f9c70-f1e2-4f31-58c8-08d71cbcca13
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 11:29:06.8668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Glqu7ShaGN6XKxrbm8KgZIlDozJOjQx0BMYj0HSiAHP/TUZayEUE/ixbiwsSCC7qNf/JC23VHEXdX2hqvEE/56iPnvauVqnzjV6+3v9cA3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_042911_944484_2907D618 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCk5YUCdzIFMzMlYyMzRbMV0gKCJUcmVlcnVubmVyIikgdmlzaW9uIG1pY3JvcHJv
Y2Vzc29ycyBhcmUgdGFyZ2V0ZWQgZm9yDQpoaWdoLXBlcmZvcm1hbmNlLCBjb21wdXRhdGlvbmFs
bHkgaW50ZW5zaXZlIHZpc2lvbiBhbmQgc2Vuc29yIGZ1c2lvbg0KYXBwbGljYXRpb25zIHRoYXQg
cmVxdWlyZSBhdXRvbW90aXZlIHNhZmV0eSBsZXZlbHMuIFRoZXkgaW5jbHVkZSBsZWFkaW5nDQpl
ZGdlIENhbWVyYSBWaXNpb24gbW9kdWxlcyBsaWtlIEFQRVgtMiwgSVNQIGFuZCBHUFUuIFRoZSBT
MzJWMjM0LUVWQiBhbmQNClMzMlYyMzQtU0JDIGJvYXJkcyBhcmUgYXZhaWxhYmxlIGZvciBjdXN0
b21lciBldmFsdWF0aW9uLg0KDQpUaGUgZm9sbG93aW5nIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2Vz
IG1pbmltYWwgZW5hYmxlbWVudCBzdXBwb3J0IGZvciB0aGUNCk5YUCBTMzJWMjM0LUVWQjJbMl0g
Ym9hcmQsIHdoaWNoIGxldmVyYWdlcyBtb3N0IG9mIHRoZSBTb0MgY2FwYWJpbGl0aWVzLg0KVGhl
IHNlcmllcyBpbmNsdWRlcyBhIGRyaXZlciBmb3Igb3BlcmF0aW5nIHRoZSBvbi1jaGlwIExJTkZs
ZXhEIGNvbnRyb2xsZXINCmluIFVBUlQgbW9kZS4NCg0KSW4gdGhlIGZ1dHVyZSwgd2UgYWltIHRv
IHN1Ym1pdCBtdWx0aXBsZSBkcml2ZXJzIHVwc3RyZWFtLCB3aGljaCBjYW4gYmUNCmZvdW5kIGlu
IHRoZSBrZXJuZWwgb2Ygb3VyIEF1dG8gTGludXggQlNQWzNdICgiQUxCIiksIHN0YXJ0aW5nIHdp
dGggYmFzaWMNCnBpbm11eGluZywgY2xvY2sgYW5kIHVTREhDIGRyaXZlcnMuDQoNCkZvciB2YWxp
ZGF0aW9uLCB5b3UgY2FuIHVzZSB0aGUgVS1Cb290IGJvb3Rsb2FkZXIgaW4gdGhlIEFMQls0XSwg
d2hpY2ggd2UNCmJ1aWxkIGFuZCB0ZXN0IHdpdGggb3VyIHBhdGNoZWQgdmVyc2lvbiBvZiB0aGUg
TGluYXJvIEdDQyA2LjMuMSAyMDE3LjA1DQp0b29sY2hhaW4gZm9yIEFSTSA2NC1iaXQsIHdpdGgg
c291cmNlcyBhdmFpbGFibGUgb24gWzVdLg0KDQpDaGFuZ2VzIGluIHYyOg0KKiBVcGRhdGUgdGhl
IGVudHJ5IGluIGZzbC55YW1sIHRvIGFwcGx5IHRvIGFsbCBTMzJWMjM0IGJhc2VkIGJvYXJkczsN
CiogQWRkIGNob3NlbiBub2RlIHRvIGR0cywgd2l0aCBhICdzdGRvdXQtcGF0aCcgcHJvcGVydHkg
Zm9yIGVhcmx5Y29uOw0KKiBSZW1vdmUgbGluZmxleF92ZXJpZnlfcG9ydCgpLCBiZWNhdXNlIGl0
IHdhcyBvbmx5IGNhbGxlZCBmcm9tDQogIHVhcnRfc2V0X2luZm8oKSwgd2hpY2ggd2FzIGdvaW5n
IHRvIGFsd2F5cyBmYWlsIGF0IHRoZSAiYmF1ZF9iYXNlIDwgOTYwMCINCiAgY2hlY2ssIGFzIHdl
IGFyZSBub3QgdXNpbmcgdWFydGNsayBmcm9tIHVhcnRfcG9ydCB5ZXQ7DQoqIEZpeCBjb21wYXRp
YmxlIHN0cmluZyB1c2VkIGluIE9GX0VBUkxZQ09OX0RFQ0xBUkUuDQoNClsxXSBodHRwczovL3d3
dy5ueHAuY29tL3Byb2R1Y3RzL3Byb2Nlc3NvcnMtYW5kLW1pY3JvY29udHJvbGxlcnMvYXJtLWJh
c2VkLXByb2Nlc3NvcnMtYW5kLW1jdXMvczMyLWF1dG9tb3RpdmUtcGxhdGZvcm0vdmlzaW9uLXBy
b2Nlc3Nvci1mb3ItZnJvbnQtYW5kLXN1cnJvdW5kLXZpZXctY2FtZXJhLW1hY2hpbmUtbGVhcm5p
bmctYW5kLXNlbnNvci1mdXNpb246UzMyVjIzNA0KWzJdIGh0dHBzOi8vd3d3Lm54cC5jb20vc3Vw
cG9ydC9kZXZlbG9wZXItcmVzb3VyY2VzL2V2YWx1YXRpb24tYW5kLWRldmVsb3BtZW50LWJvYXJk
cy91bHRyYS1yZWxpYWJsZS1kZXYtcGxhdGZvcm1zL3MzMnYtbXB1cy1wbGF0Zm9ybXMvczMydi12
aXNpb24tYW5kLXNlbnNvci1mdXNpb24tZXZhbHVhdGlvbi1zeXN0ZW06UzMyVjIzNEVWQg0KWzNd
IGh0dHBzOi8vc291cmNlLmNvZGVhdXJvcmEub3JnL2V4dGVybmFsL2F1dG9ic3BzMzIvbGludXgv
DQpbNF0gaHR0cHM6Ly9zb3VyY2UuY29kZWF1cm9yYS5vcmcvZXh0ZXJuYWwvYXV0b2JzcHMzMi91
LWJvb3QvDQpbNV0gaHR0cHM6Ly9zb3VyY2UuY29kZWF1cm9yYS5vcmcvZXh0ZXJuYWwvczMyZHMv
Y29tcGlsZXIvZ2NjLw0KDQpFZGR5IFBldHJpyJlvciAoMSk6DQogIGR0LWJpbmRpbmdzOiBhcm06
IGZzbDogQWRkIHRoZSBTMzJWMjM0LUVWQiBib2FyZA0KDQpNaWhhZWxhIE1hcnRpbmFzICgyKToN
CiAgYXJtNjQ6IEludHJvZHVjZSBjb25maWcgZm9yIFMzMg0KICBhcm02NDogZGVmY29uZmlnOiBF
bmFibGUgY29uZmlncyBmb3IgUzMyVjIzNA0KDQpTdGVmYW4tR2FicmllbCBNaXJlYSAoMSk6DQog
IHR0eTogc2VyaWFsOiBBZGQgbGluZmxleHVhcnQgZHJpdmVyIGZvciBTMzJWMjM0DQoNClN0b2lj
YSBDb3NtaW4tU3RlZmFuICgyKToNCiAgYXJtNjQ6IGR0czogZnNsOiBBZGQgZGV2aWNlIHRyZWUg
Zm9yIFMzMlYyMzQtRVZCDQogIGR0LWJpbmRpbmdzOiBzZXJpYWw6IERvY3VtZW50IEZyZWVzY2Fs
ZSBMSU5GbGV4IFVBUlQNCg0KIC4uLi9hZG1pbi1ndWlkZS9rZXJuZWwtcGFyYW1ldGVycy50eHQg
ICAgICAgICB8ICAgNiArDQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sICAg
ICAgICAgIHwgICA2ICsNCiAuLi4vYmluZGluZ3Mvc2VyaWFsL2ZzbCxzMzItbGluZmxleHVhcnQu
dHh0ICAgfCAgMjQgKw0KIGFyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMgICAgICAgICAgICAg
ICAgICB8ICAgNSArDQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvTWFrZWZpbGUgICAg
ICAgIHwgICAyICsNCiAuLi4vYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1zMzJ2MjM0LWV2Yi5kdHMg
ICAgfCAgMjQgKw0KIC4uLi9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLXMzMnYyMzQuZHRz
aSB8IDEzMCArKysNCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAg
ICAgfCAgIDMgKw0KIGRyaXZlcnMvdHR5L3NlcmlhbC9LY29uZmlnICAgICAgICAgICAgICAgICAg
ICB8ICAxNSArDQogZHJpdmVycy90dHkvc2VyaWFsL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
IHwgICAxICsNCiBkcml2ZXJzL3R0eS9zZXJpYWwvZnNsX2xpbmZsZXh1YXJ0LmMgICAgICAgICAg
fCA5NDIgKysrKysrKysrKysrKysrKysrDQogaW5jbHVkZS91YXBpL2xpbnV4L3NlcmlhbF9jb3Jl
LmggICAgICAgICAgICAgIHwgICAzICsNCiAxMiBmaWxlcyBjaGFuZ2VkLCAxMTYxIGluc2VydGlv
bnMoKykNCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3NlcmlhbC9mc2wsczMyLWxpbmZsZXh1YXJ0LnR4dA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtczMydjIzNC1ldmIuZHRzDQogY3JlYXRl
IG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1zMzJ2MjM0LmR0
c2kNCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy90dHkvc2VyaWFsL2ZzbF9saW5mbGV4dWFy
dC5jDQoNCi0tIA0KMi4yMi4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
