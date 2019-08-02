Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BA580155
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 21:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LAi+EoFaNmWc+PdWQ1y8qSpOP1k7THbe+X0bPTJfik=; b=u7k6M9GRthkb0X
	tUuTxWXDc53Dg4I/BRXbhCQUP+WGjOiXXmrjg7DHGYjfXwuTydYEJE4FqXGHRk59dn4nt/19JVz2I
	y8sMm6Lp8v51aeVpBhfz9FnGuWzTOiUEPSu8qydoAIlx+FW92dRcwKAsDbEFRCXOa+j62Kvgfk0c5
	WMPi5J+ldJTOWEwwya8wZKNxSyKIF+3Fu2SOZ8hfKJkSkim7W7JndzWmPMVwWaWqDhApzpCTo6Ddw
	DIvMe7UKbH6Ju4ao6r2xNUN+IGqnnQqDc0yaDgrJZe9SYx5iLgkX+9SrgP+XmqkhrSquNhxbDGBmF
	ypZfxvHbiYhzKc7r0emw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htdXU-0005fE-SN; Fri, 02 Aug 2019 19:48:33 +0000
Received: from mail-eopbgr80072.outbound.protection.outlook.com ([40.107.8.72]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htdWT-0004so-4M
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 19:47:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hnJTYyMWy7skHjXb9z+0tUG8F5pp+cg8ke5xKqSLUF2zx39fa2I/I3QBbE/FfrkhwhKb8uWz828rw/WvRSBGYGtHLRRGEXSdjDEgKTzKy6p0JoAkvSK/T8+NRbTAxhqk7R6QJqIn2SpITUJBALi/YibLYXDBCqV+rOA+r0hOtlxDESFWu9eoPXGYbJnIDET4tKsz627ShmDrCozSfPEBAlNwa8haQgXQtXcmT2LHxkMgznRDbdzXqSDkwRKxHCY2T3oVhxvG0WBCuwhroRupyF4yhkSFUdsZYuVoFubbmsjqyv4fErYi2jM2qmdY7h0PBcsPYEovzWLWOxKNHJm71Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pJJ+UJoGbVx9CluN7jIoVSx4M6oAGD0eKt9R0hAO+EM=;
 b=AVciHaM9aWwlxaKln4L1A8z+wrju1xRlY7LFWrRdI+ijfJGWILIwVtMBTDMswwYq48m7EkzW+vSKWdOPMUeefSDwB1tFOY+6QZxV6zUIxe75fkHNnCmngSeRNqN2wu/XWtAzozSRKnltHK+8AB4RbdbdhnxcTW9daEtBxk3d09e3MovzcJnZz6wz2p3Ws8fqRXIeSuPp7EVocfT1FaKOVUxGjD1iPWqGbaxPNtB20X8EKmeH3I0incb0ROh0V8jhcJAQt5QQH9+GfHN5HoMt65FXvqwYv6riprnY/GZzHOQmb5VnxedZvJVqPwwftlXU+uTw7utybpohKamys4jBqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pJJ+UJoGbVx9CluN7jIoVSx4M6oAGD0eKt9R0hAO+EM=;
 b=ZNuEw59IRxOHtrjG0RKLkPPjUApjJ/1SYsGkyLjGE8nKrY/3PJz4qk3RpQMxSPoAQ8UuANR2GP5HTxo7oGrcBCUck1J0Nw0fBiDu9DjD6HU4kpRcsSpZA4kWWng7YeAUFMp6J+v4t27oMZc7NuC+sWJCDtp3Rj4t+aCTLcDepG8=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2829.eurprd04.prod.outlook.com (10.175.26.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Fri, 2 Aug 2019 19:47:16 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 19:47:16 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Topic: [PATCH 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Thread-Index: AQHVSWsWLPLKyRuIh0CSHJAAi/FmUA==
Date: Fri, 2 Aug 2019 19:47:16 +0000
Message-ID: <20190802194702.30249-2-stefan-gabriel.mirea@nxp.com>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
In-Reply-To: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM6PR04CA0051.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::28) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c29bec9-b143-41d4-af02-08d7178238e7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2829; 
x-ms-traffictypediagnostic: VI1PR0402MB2829:
x-microsoft-antispam-prvs: <VI1PR0402MB2829B3F9247E22C313DA6E03DFD90@VI1PR0402MB2829.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(366004)(189003)(199004)(68736007)(446003)(8676002)(6486002)(54906003)(110136005)(3846002)(305945005)(4744005)(7416002)(1076003)(6116002)(66066001)(2906002)(2201001)(316002)(256004)(36756003)(6636002)(486006)(102836004)(14454004)(71200400001)(53936002)(26005)(66476007)(11346002)(81166006)(71190400001)(186003)(76176011)(66946007)(2616005)(64756008)(8936002)(66446008)(66556008)(99286004)(4326008)(386003)(6506007)(5660300002)(2501003)(52116002)(81156014)(50226002)(25786009)(476003)(478600001)(86362001)(7736002)(6512007)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2829;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WS5bdcJZnqD1oMy1ljdCFPqniG2nr8WTmDkhUtYPg28lcouCB3VsaUdM98fUT5Tf1dl4snB0zDlAXXVyAkmqtPwaFxESAGBQ/n9JmI8CPwiym5j1fC0VJZ2+pzZOweIwkgVvlCeKAfL854XBB95c6xcOWu16+RHLD1CKztRhridOpZwjBjDObZd2cyFB250iH7NswWf7cNFJVCxX4XV8y3J3ShnnkS+hqVZ5NygP7Ozw4Z6lfiKKQcAanCiVsqclAf2roEdosPY/AgLoAAUtZw8cAI7SN9guJnP/2Kv+CkU/dqFf7sZdxJfCMnvrSyFQaM8uM2n2A5hlyVoAkxdzNxTibJJOBFtHtSa2Ozfcr1IyU0OvHvHlSEwJzit1jedkZLy5ihGmQ87glpToDzWvRS/i6WY/IKYictXltL/R8hA=
Content-ID: <9D9CF3D68050FF45A9D03C399A6923B2@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c29bec9-b143-41d4-af02-08d7178238e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 19:47:16.6528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stefan-gabriel.mirea@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_124729_316768_B7E97D74 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRWRkeSBQZXRyaciZb3IgPGVkZHkucGV0cmlzb3JAbnhwLmNvbT4NCg0KQWRkIGVudHJ5
IGZvciB0aGUgTlhQIFMzMlYyMzQgQ3VzdG9tZXIgRXZhbHVhdGlvbiBCb2FyZCB0byB0aGUgYm9h
cmQvU29DDQpiaW5kaW5ncy4NCg0KU2lnbmVkLW9mZi1ieTogRWRkeSBQZXRyaciZb3IgPGVkZHku
cGV0cmlzb3JAbnhwLmNvbT4NClNpZ25lZC1vZmYtYnk6IFN0ZWZhbi1HYWJyaWVsIE1pcmVhIDxz
dGVmYW4tZ2FicmllbC5taXJlYUBueHAuY29tPg0KLS0tDQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCB8IDYgKysrKysrDQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9mc2wueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vZnNsLnlhbWwNCmluZGV4IDcyOTRhYzM2ZjRjMC4uMTA0ZDYwYTExMTc3IDEwMDY0NA0KLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0KKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0KQEAgLTMwOSw0
ICszMDksMTAgQEAgcHJvcGVydGllczoNCiAgICAgICAgICAgICAgIC0gZnNsLGxzMjA4OGEtcmRi
DQogICAgICAgICAgIC0gY29uc3Q6IGZzbCxsczIwODhhDQogDQorICAgICAgLSBkZXNjcmlwdGlv
bjogUzMyVjIzNCBDdXN0b21lciBFdmFsdWF0aW9uIEJvYXJkDQorICAgICAgICBpdGVtczoNCisg
ICAgICAgICAgLSBlbnVtOg0KKyAgICAgICAgICAgICAgLSBmc2wsczMydjIzNC1ldmINCisgICAg
ICAgICAgLSBjb25zdDogZnNsLHMzMnYyMzQNCisNCiAuLi4NCi0tIA0KMi4yMi4wDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
