Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2661295E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 13:17:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ng06nJXwdZiUxq3WorS0gCsb2dUmGhwnyO0vg+CSh8Y=; b=OfRo1bpgSn59O6
	wsF3sG2cptRJuVaLSXAcicpGUpCTABpATWLlfVkTT5/J3zIYOsASWvd3ujL/Go5XIMqvVY5wv3uo0
	U6OKxqeU2l3WioI4fnDiuywr3BTxQYVL2P7o0MlC6QE6M1Y9LZyp73toYoMyQHruOHVQj/EJurBkp
	xQzJ8vODiWd0WHXUoj7lGfI2PWbdhN7g0ITcviZBR9PRo6afIg4kXTOo1xoL0QqkNte5pDqNaHZgf
	U9NC1fB53IUh7ArPPZ8/irSQ98ME0uUKC3tnfTD9j28fd8spAivYiwiDTpotQPpOJqt7wjDysibby
	o5QG6FuPUXXb7C7NcZ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijMeS-0004tR-60; Mon, 23 Dec 2019 12:17:32 +0000
Received: from mail-db5eur01on0629.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::629]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijMeH-0004rZ-Tq
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 12:17:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gYpvy4yi+BEKcb7fqASvD7lkmFRZz68y2KUZzV/OBEt1MbouNm40JJKgOxbIesDo05XSK+7N9/fLM2OHDmP20yuGtDIyCHDNoKW8Zdwz/uJT/E5+OfToKAPsG2vd6XjhUhPA4An/C5S7JC5CRiPCoOt3cOBGpdwV4Ir1BXrS1UdVzzMBUDuKyOxfnR6nrnQ46l7CMzQgyJSGS8YPITyGVRFjh7jr3076taU4XebNSsmk+qQSKC+7DUkMS9Mlx/oDQS/63qQnjtY2SlOG83TvXh/UvY7AQsWMeTnUqNeSc8PptmTQWIEX5I4DjzbbWw99Ew1iv3IorSMeOZgvvSksVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EMJYx7LmXHLXrf9Ljyt5A6+Z2SKLjBVo4Ck7iVCWrbM=;
 b=hfy8YtQcVcoR9FQDqKyG0YZDsCCwhepuJxE8OV5aKng/CQjq7eEI78pwYI+Wp2mciepE4QxTdOPllpe5G74YtdKF2fdAJsMHrOTZkRkmPJ7VpHdB05ZHh075rXk2icVJSDxqzB5u32/4EQF1UimqG3BJj9iBUhQD/MH5jNGMysA5TomnmsKefIo5WJIHKgdgdrxuUrSo3EAguSL4t2I90y5FylKWEL2soADPOd827wlKWfsF8jTwyv0VtRKy5xXISLju/qj/wm0rMAgbCq/RHl6nMVN/9Ip8j+of4nqpsL8FGBiLO9nVNPC9GiQ3ej4YwGso0PLfbtWz5bI2ZRKrDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EMJYx7LmXHLXrf9Ljyt5A6+Z2SKLjBVo4Ck7iVCWrbM=;
 b=jYmR5sQyhyq6r/zVYACdxklNlY2n8H6++rWsPPUQacTFPBaf/fjcKc33PXkpOLP3A+UmJrpS24daNKC1dDf+RESlD5xwfrERWk9fECuRGIVhGzK5IxjQCX6AtO4YkImfs7Nuwg03kBcnKtG3x0EW4tjE+sk5I/bc+e5428uybOc=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2543.eurprd04.prod.outlook.com (10.168.66.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Mon, 23 Dec 2019 12:17:18 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::8823:663d:c6ed:cbd6%12]) with mapi id 15.20.2559.017; Mon, 23 Dec
 2019 12:17:18 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Erik Schmauss <erik.schmauss@intel.com>
Subject: Re: [RFC PATCH 2/2] ACPI/IORT: Workaround for IORT ID count "minus
 one" issue
Thread-Topic: [RFC PATCH 2/2] ACPI/IORT: Workaround for IORT ID count "minus
 one" issue
Thread-Index: AQHVuXNfveg0vqrmp0mtcFrRGp+GvKfHopJ+
Date: Mon, 23 Dec 2019 12:17:18 +0000
Message-ID: <VI1PR0401MB2496B0F77AE0FBF4D24022B4F12E0@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>,
 <1577092997-9852-2-git-send-email-guohanjun@huawei.com>
In-Reply-To: <1577092997-9852-2-git-send-email-guohanjun@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 767fb2c8-5639-43ad-11a6-08d787a20def
x-ms-traffictypediagnostic: VI1PR0401MB2543:
x-microsoft-antispam-prvs: <VI1PR0401MB2543E30FE8B5A55B50449944F12E0@VI1PR0401MB2543.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(189003)(199004)(86362001)(5660300002)(54906003)(76116006)(9686003)(110136005)(316002)(2906002)(55016002)(52536014)(91956017)(7696005)(66476007)(66556008)(66446008)(64756008)(66946007)(26005)(186003)(81156014)(8676002)(966005)(44832011)(81166006)(6506007)(53546011)(71200400001)(45080400002)(478600001)(4326008)(8936002)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2543;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 30ToXMk9Xx/4IP/QRRclO6SROqCOKB4j48yTCLQVK+Ys3gwhAQ2Akw5w74k9mY9llAVUHZQYtsYyaGHPqVNydUsTNrkCICwlWTm3hJ0QU/SeqIZCZsVD4eG/Br4F+72qwjM7A8xRkA5LJxOoM/Hz1hawsGG8uegho7CcqZlUGS8d4vj2GvwKqRhIoQG1plH98CJ13yg+qi8SeXUIIbFj5CnBo+odL2zSy/BaYRdzsnG4HuQ6kFpvbodVy9kKEYa/40TVSzLvbXB61CQmEc6k6sgr7lu8d2XS4FccCAU5PXa8+XRNgRgW3V6n3SYZ+0C4Csi5aXteqUiUrDJ6xWHjJoK83H+XmQOtpSPY5wPdWTy/Xt0E2u6jjNJz4OIUJIpU2e1MPUoJZ35YbUZrgMCkfTVNaJ7Njd9cR61Ii9qNrVe4eGanmJHkh21Ym5zlNv+I+eX8qFeSVFd4Rf8JLHTCKddeJ753yqcYua9z7xKrsf8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 767fb2c8-5639-43ad-11a6-08d787a20def
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 12:17:18.3288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: luVDIJUc9VK8wvinjJrHJwYwicU48YMS6bOszKn34dpWzdSgoZ57UpDzBj95a79kb4TdRbSkjsZwV3O5Kwpd0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2543
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_041722_102427_19861247 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.2 FORGED_SPF_HELO        No description available.
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

4oCLCkNhbiB3ZSBwdXQgYSB3YXJuaW5nIG9mIHRoZSBzb3J0IHRvIHVwZGF0ZSB0aGUgQUNQSSB0
YWJsZSB3aXRoIGNvcnJlY3QgdmFsdWVzPwpldmVudHVhbGx5IGkgd291bGQgbGlrZSB0aGF0IHRo
aXMgd29ya2Fyb3VuZCBiZSByZW1vdmVkIGZyb20gbGludXgsIHdoZW4gc3VmZmljaWVudCB0aW1l
IGhhcyBwYXNzZWQgYW5kIGFsbCB0aGUgcGxhdGZvcm1zJyBBQ1BJIHRhYmxlcyBoYXZlIGJlZW4g
dXBkYXRlZC4/CgoKCgoKRnJvbTogSGFuanVuIEd1byA8Z3VvaGFuanVuQGh1YXdlaS5jb20+CgpT
ZW50OiBNb25kYXksIERlY2VtYmVyIDIzLCAyMDE5IDI6NTMgUE0KClRvOiBMb3JlbnpvIFBpZXJh
bGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT47IFN1ZGVlcCBIb2xsYSA8c3VkZWVwLmhv
bGxhQGFybS5jb20+OyBSYWZhZWwgSi4gV3lzb2NraSA8cmFmYWVsQGtlcm5lbC5vcmc+OyBQYW5r
YWogQmFuc2FsIDxwYW5rYWouYmFuc2FsQG54cC5jb20+OyBFcmlrIFNjaG1hdXNzIDxlcmlrLnNj
aG1hdXNzQGludGVsLmNvbT4KCkNjOiBsaW51eC1hY3BpQHZnZXIua2VybmVsLm9yZyA8bGludXgt
YWNwaUB2Z2VyLmtlcm5lbC5vcmc+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcgPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz47IGxpbnV4YXJtQGh1YXdl
aS5jb20gPGxpbnV4YXJtQGh1YXdlaS5jb20+OyBIYW5qdW4gR3VvIDxndW9oYW5qdW5AaHVhd2Vp
LmNvbT4KClN1YmplY3Q6IFtSRkMgUEFUQ0ggMi8yXSBBQ1BJL0lPUlQ6IFdvcmthcm91bmQgZm9y
IElPUlQgSUQgY291bnQgIm1pbnVzIG9uZSIgaXNzdWUKCsKgCgoKVGhlIElPUlQgc3BlYyBbMF0g
c2F5cyBOdW1iZXIgb2YgSURzID0gVGhlIG51bWJlciBvZiBJRHMgaW4gdGhlIHJhbmdlIG1pbnVz
CgpvbmUsIGl0IGlzIGNvbmZ1c2luZyBidXQgaXQgd2FzIHdyaXR0ZW4gZG93biBpbiB0aGUgZmly
c3QgdmVyc2lvbiBvZiB0aGUKCklPUlQgc3BlYy4gQnV0IHRoZSBJT1JUIElEIG1hcHBpbmcgZnVu
Y3Rpb24gaW9ydF9pZF9tYXAoKSBkaWQgc29tZXRoaW5nCgp3cm9uZyBmcm9tIHRoZSBzdGFydCwg
d2hpY2ggYmFpbHMgb3V0IGlmOgoKCgp0aGUgcmVxdWVzdCBJRCA+PSB0aGUgaW5wdXQgYmFzZSAr
IG51bWJlciBvZiBJRHMKCgoKVGhpcyBpcyB3cm9uZyBiZWNhdXNlIGl0IGlnbm9yZWQgdGhlICJt
aW51cyBvbmUiLCBhbmQgYnJlYWtzIHNvbWUgdmFsaWQKCnVzZWNhc2VzIHN1Y2ggYXMgSUQgbWFw
cGluZyB0byBjb250YWluIHNpbmdsZSBkZXZpY2UgbWFwcGluZyB3aXRob3V0CgpzaW5nbGUgbWFw
cGluZyBmbGFnIHNldC4KCgoKUGFua2FqIEJhbnNhbCBwcm9wb3NlZCBhIHNvbHV0aW9uIHRvIGZp
eCB0aGUgaXNzdWUgWzFdLCB3aGljaCBiYWlscwoKb3V0IGlmOgoKCgp0aGUgcmVxdWVzdCBJRCA+
IHRoZSBpbnB1dCBiYXNlICsgbnVtYmVyIG9mIElEcwoKCgpUaGlzIHdvcmtzIGFzIHRoZSBzcGVj
IGRlZmluZWQsIHVuZm9ydHVuYXRlbHkgc29tZSBmaXJtd2FyZSBkaWRuJ3QKCm1pbnVzIG9uZSBm
b3IgdGhlIG51bWJlciBvZiBJRHMgaW4gdGhlIHJhbmdlLCBhbmQgdGhlIHByb3BvYXNlZAoKc29s
dXRpb24gd2lsbCBicmVhayB0aG9zZSBzeXN0ZW1zIGluIHRoaXMgd2F5OgoKCgpQQ0kgaG9zdGJy
aWRnZSBtYXBwaW5nIGVudHJ5IDE6CgpJbnB1dCBiYXNlOsKgIDB4MTAwMAoKSUQgQ291bnQ6wqDC
oMKgIDB4MTAwCgpPdXRwdXQgYmFzZTogMHgxMDAwCgpPdXRwdXQgcmVmZXJlbmNlOiAweEM0wqAg
Ly9JVFMgcmVmZXJlbmNlCgoKClBDSSBob3N0YnJpZGdlIG1hcHBpbmcgZW50cnkgMjoKCklucHV0
IGJhc2U6wqAgMHgxMTAwCgpJRCBDb3VudDrCoMKgwqAgMHgxMDAKCk91dHB1dCBiYXNlOiAweDIw
MDAKCk91dHB1dCByZWZlcmVuY2U6IDB4RDTCoCAvL0lUUyByZWZlcmVuY2UKCgoKVHdvIG1hcHBp
bmcgZW50cmllcyB3aGljaCB0aGUgc2Vjb25kIGVudHJ5J3MgSW5wdXQgYmFzZSA9IHRoZSBmaXJz
dAoKZW50cnkncyBJbnB1dCBiYXNlICsgSUQgY291bnQsIHNvIGZvciByZXF1ZXN0ZXIgSUQgMHgx
MTAwIHdpbGwgbWFwCgp0byBJVFMgMHhDNCBub3QgMHhENCBpZiB3ZSB1cGRhdGUgJz49JyB0byAn
PicuCgoKClNvIGludHJvZHVjZSBhIHdvcmthcm91bmQgdG8gbWF0Y2ggdGhlIElPUlQncyBPRU0g
aW5mb3JtYXRpb24gZm9yCgp0aGUgYnJva2VuIGZpcm13YXJlLCBhbHNvIHVwZGF0ZSB0aGUgbG9n
aWMgb2YgdGhlIElEIG1hcHBpbmcgZm9yCgpmaXJtd2FyZXMgcmVwb3J0IHRoZSBudW1iZXIgb2Yg
SURzIGFzIHRoZSBJT1JUIHNwZWMgZGVmaW5lZCwgdG8KCm1ha2UgdGhlIGNvZGUgY29tcGF0aWJs
ZSBmb3IgYm90aCBraW5kcyBvZiBzeXN0ZW0uCgoKCkkgY2hlY2tlZCB0aGUgQUNQSSB0YWJsZXMg
aW4gdGhlIHRpYW5vY29yZS9lZGsyLXBsYXRmb3JtcyBbMl0sIG9ubHkKCkhpU2lsaWNvbiBISVAw
Ny8wOCBkaWQgd3JvbmcsIHNvIGp1c3QgYWRkIEhJUDA3LzA4IHRvIHRoZSB3b3JrYXJvdW5kCgpp
bmZvIHRhYmxlLCBpZiB3ZSBicmVhayBvdGhlciBwbGF0Zm9ybXMsIHdlIGNhbiBhZGQgdGhhdCBs
YXRlci4KCgoKWzBdOiAKaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29r
LmNvbS8/dXJsPWh0dHAlM0ElMkYlMkZpbmZvY2VudGVyLmFybS5jb20lMkZoZWxwJTJGdG9waWMl
MkZjb20uYXJtLmRvYy5kZW4wMDQ5ZCUyRkRFTjAwNDlEX0lPX1JlbWFwcGluZ19UYWJsZS5wZGYm
YW1wO2RhdGE9MDIlN0MwMSU3Q3Bhbmthai5iYW5zYWwlNDBueHAuY29tJTdDYjQ4MjNjODY0OGE3
NGEzNzgxYzkwOGQ3ODc4YTgwZTclN0M2ODZlYTFkM2JjMmI0YzZmYTkyY2Q5OWM1YzMwMTYzNSU3
QzAlN0MxJTdDNjM3MTI2OTAxMjQ1MDE1NjQyJmFtcDtzZGF0YT15Mmh4OGcxMEo3M25nVXY1WkZJ
c2ZzWHhmb09XR1pOOCUyQjdQbUlBUktnSkklM0QmYW1wO3Jlc2VydmVkPTAKClsxXTogCmh0dHBz
Oi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUy
RiUyRnBhdGNod29yay5rZXJuZWwub3JnJTJGcGF0Y2glMkYxMTI5MjgyMyUyRiZhbXA7ZGF0YT0w
MiU3QzAxJTdDcGFua2FqLmJhbnNhbCU0MG54cC5jb20lN0NiNDgyM2M4NjQ4YTc0YTM3ODFjOTA4
ZDc4NzhhODBlNyU3QzY4NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzElN0M2
MzcxMjY5MDEyNDUwMTU2NDImYW1wO3NkYXRhPVhtcE5QNjg4ZmVkMmJiam04V3U0TDVmdHhFQ1J6
bWtyN3ZwMVk0UVh6aVElM0QmYW1wO3Jlc2VydmVkPTAKClsyXTogCmh0dHBzOi8vZXVyMDEuc2Fm
ZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmdpdGh1Yi5j
b20lMkZ0aWFub2NvcmUlMkZlZGsyLXBsYXRmb3JtcyZhbXA7ZGF0YT0wMiU3QzAxJTdDcGFua2Fq
LmJhbnNhbCU0MG54cC5jb20lN0NiNDgyM2M4NjQ4YTc0YTM3ODFjOTA4ZDc4NzhhODBlNyU3QzY4
NmVhMWQzYmMyYjRjNmZhOTJjZDk5YzVjMzAxNjM1JTdDMCU3QzElN0M2MzcxMjY5MDEyNDUwMTU2
NDImYW1wO3NkYXRhPXhsbUQ4WHU2V2M1YWR3aG91ekRLUkdsd0NBd1J3c0QwY0V5VzRpb2E3WGcl
M0QmYW1wO3Jlc2VydmVkPTAKCgoKQ2M6IFBhbmthaiBCYW5zYWwgPHBhbmthai5iYW5zYWxAbnhw
LmNvbT4KCkNjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT4K
ClNpZ25lZC1vZmYtYnk6IEhhbmp1biBHdW8gPGd1b2hhbmp1bkBodWF3ZWkuY29tPgoKLS0tCgrC
oGRyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmMgfCA1NCArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLQoKwqAxIGZpbGUgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNwaS9hcm02NC9pb3J0
LmMgYi9kcml2ZXJzL2FjcGkvYXJtNjQvaW9ydC5jCgppbmRleCAzM2Y3MTk4Li4xMTJiMWIwIDEw
MDY0NAoKLS0tIGEvZHJpdmVycy9hY3BpL2FybTY0L2lvcnQuYwoKKysrIGIvZHJpdmVycy9hY3Bp
L2FybTY0L2lvcnQuYwoKQEAgLTI5OCw2ICsyOTgsNDEgQEAgc3RhdGljIGFjcGlfc3RhdHVzIGlv
cnRfbWF0Y2hfbm9kZV9jYWxsYmFjayhzdHJ1Y3QgYWNwaV9pb3J0X25vZGUgKm5vZGUsCgrCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiBzdGF0dXM7CgrCoH0KCsKgCgorc3RydWN0IGlvcnRfd29ya2Fy
b3VuZF9vZW1faW5mbyB7CgorwqDCoMKgwqDCoMKgIGNoYXIgb2VtX2lkW0FDUElfT0VNX0lEX1NJ
WkUgKyAxXTsKCivCoMKgwqDCoMKgwqAgY2hhciBvZW1fdGFibGVfaWRbQUNQSV9PRU1fVEFCTEVf
SURfU0laRSArIDFdOwoKK8KgwqDCoMKgwqDCoCB1MzIgb2VtX3JldmlzaW9uOwoKK307CgorCgor
c3RhdGljIGJvb2wgYXBwbHlfaWRfY291bnRfd29ya2Fyb3VuZDsKCisKCitzdGF0aWMgc3RydWN0
IGlvcnRfd29ya2Fyb3VuZF9vZW1faW5mbyB3YV9pbmZvW10gX19pbml0ZGF0YSA9IHsKCivCoMKg
wqDCoMKgwqAgewoKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLm9lbV9pZMKgwqDCoMKg
wqDCoMKgwqAgPSAiSElTScKgICIsCgorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAub2Vt
X3RhYmxlX2lkwqDCoCA9ICJISVAwN8KgwqAgIiwKCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC5vZW1fcmV2aXNpb27CoMKgID0gMCwKCivCoMKgwqDCoMKgwqAgfSwgewoKK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLm9lbV9pZMKgwqDCoMKgwqDCoMKgwqAgPSAiSElTScKgICIs
CgorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAub2VtX3RhYmxlX2lkwqDCoCA9ICJISVAw
OMKgwqAgIiwKCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC5vZW1fcmV2aXNpb27CoMKg
ID0gMCwKCivCoMKgwqDCoMKgwqAgfQoKK307CgorCgorc3RhdGljIHZvaWQgX19pbml0CgoraW9y
dF9jaGVja19pZF9jb3VudF93b3JrYXJvdW5kKHN0cnVjdCBhY3BpX3RhYmxlX2hlYWRlciAqdGJs
KQoKK3sKCivCoMKgwqDCoMKgwqAgaW50IGk7CgorCgorwqDCoMKgwqDCoMKgIGZvciAoaSA9IDA7
IGkgPCBBUlJBWV9TSVpFKHdhX2luZm8pOyBpKyspIHsKCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGlmICghbWVtY21wKHdhX2luZm9baV0ub2VtX2lkLCB0YmwtPm9lbV9pZCwgQUNQSV9P
RU1fSURfU0laRSkgJiYKCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIW1l
bWNtcCh3YV9pbmZvW2ldLm9lbV90YWJsZV9pZCwgdGJsLT5vZW1fdGFibGVfaWQsIEFDUElfT0VN
X1RBQkxFX0lEX1NJWkUpICYmCgorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHdhX2luZm9baV0ub2VtX3JldmlzaW9uID09IHRibC0+b2VtX3JldmlzaW9uKSB7CgorwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXBwbHlfaWRfY291bnRfd29y
a2Fyb3VuZCA9IHRydWU7CgorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnJlYWs7CgorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9CgorwqDCoMKgwqDC
oMKgIH0KCit9CgorCgrCoHN0YXRpYyBpbnQgaW9ydF9pZF9tYXAoc3RydWN0IGFjcGlfaW9ydF9p
ZF9tYXBwaW5nICptYXAsIHU4IHR5cGUsIHUzMiByaWRfaW4sCgrCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUzMiAqcmlkX291dCkKCsKgewoKQEAgLTMxNCw5
ICszNDksMjEgQEAgc3RhdGljIGludCBpb3J0X2lkX21hcChzdHJ1Y3QgYWNwaV9pb3J0X2lkX21h
cHBpbmcgKm1hcCwgdTggdHlwZSwgdTMyIHJpZF9pbiwKCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRU5YSU87CgrCoMKgwqDCoMKgwqDCoMKgIH0KCsKgCgotwqDCoMKg
wqDCoMKgIGlmIChyaWRfaW4gPCBtYXAtPmlucHV0X2Jhc2UgfHwKCi3CoMKgwqDCoMKgwqDCoMKg
wqDCoCAocmlkX2luID49IG1hcC0+aW5wdXRfYmFzZSArIG1hcC0+aWRfY291bnQpKQoKLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTlhJTzsKCivCoMKgwqDCoMKgwqAgLyoK
CivCoMKgwqDCoMKgwqDCoCAqIElPUlQgc3BlYyBzYXlzIE51bWJlciBvZiBJRHMgPSBUaGUgbnVt
YmVyIG9mIElEcyBpbiB0aGUgcmFuZ2UgbWludXMKCivCoMKgwqDCoMKgwqDCoCAqIG9uZSwgYnV0
IHRoZSBJT1JUIGNvZGUgaW5nb3JlZCB0aGUgIm1pbnVzIG9uZSIsIGFuZCBzb21lIGZpcm13YXJl
CgorwqDCoMKgwqDCoMKgwqAgKiBkaWQgdGhhdCB0b28sIHNvIGFwcGx5IGEgd29ya2Fyb3VuZCBo
ZXJlIHRvIGtlZXAgY29tcGF0aWJsZSB3aXRoCgorwqDCoMKgwqDCoMKgwqAgKiBib3RoIG5ldyBh
bmQgb2xkIHZlcnNpb25zIG9mIHRoZSBmaXJtd2FyZS4KCivCoMKgwqDCoMKgwqDCoCAqLwoKK8Kg
wqDCoMKgwqDCoCBpZiAoYXBwbHlfaWRfY291bnRfd29ya2Fyb3VuZCkgewoKK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJpZF9pbiA8IG1hcC0+aW5wdXRfYmFzZSB8fAoKK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChyaWRfaW4gPj0gbWFwLT5p
bnB1dF9iYXNlICsgbWFwLT5pZF9jb3VudCkpCgorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTlhJTzsKCivCoMKgwqDCoMKgwqAgfSBlbHNlIHsK
CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyaWRfaW4gPCBtYXAtPmlucHV0X2Jh
c2UgfHwKCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAocmlk
X2luID4gbWFwLT5pbnB1dF9iYXNlICsgbWFwLT5pZF9jb3VudCkpCgorwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTlhJTzsKCivCoMKgwqDCoMKg
wqAgfQoKwqAKCsKgwqDCoMKgwqDCoMKgwqAgKnJpZF9vdXQgPSBtYXAtPm91dHB1dF9iYXNlICsg
KHJpZF9pbiAtIG1hcC0+aW5wdXRfYmFzZSk7CgrCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwoK
QEAgLTE2MzEsNSArMTY3OCw2IEBAIHZvaWQgX19pbml0IGFjcGlfaW9ydF9pbml0KHZvaWQpCgrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47CgrCoMKgwqDCoMKgwqDCoMKg
IH0KCsKgCgorwqDCoMKgwqDCoMKgIGlvcnRfY2hlY2tfaWRfY291bnRfd29ya2Fyb3VuZChpb3J0
X3RhYmxlKTsKCsKgwqDCoMKgwqDCoMKgwqAgaW9ydF9pbml0X3BsYXRmb3JtX2RldmljZXMoKTsK
CsKgfQoKLS0gCgoxLjcuMTIuNAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
