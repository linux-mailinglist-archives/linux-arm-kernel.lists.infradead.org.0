Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492A19E985
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vNU0Jpyb2lfFPdofcDFrtWlSb0o4qKY52iirGcxV4FU=; b=YsslsRPrN6uHK6
	AQuEyUo9LTln1bz6Ol8y90CCTMObi1BfkIBN+qVdwsbR5GI+FkY5+vr/iRYHMkqpuqz8ZQpja8d3M
	9rX4mSckhoMLYpHFpb95VYrGfRmobPbQtQfyY6dAAOr1w2dYd/bIRP1inxwReQ4LI+s5RZH/SAZ0y
	R9dlrwcjI508fU0/XeFcyddZaOZg+CDURQE5y9uPjCJo39alep+yTSS4hkj71W2lfi71E1kao20jw
	6gk/2U3SM7tmSZh4IqRcSGBE9Vl0DOB2DpRGj//7KIHnmqhyf7NEvHv3fC0TrePa9Mx8K5HU0/pQC
	baiWOxmz4p/CHN4Fj/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bdD-0006xD-PP; Tue, 27 Aug 2019 13:35:31 +0000
Received: from mail-eopbgr60092.outbound.protection.outlook.com ([40.107.6.92]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bcy-0006Si-2o
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:35:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4+G9WzxBO0eu8kJ5zvLVvmADlTqaG+eOAo0cyxh8mcHQlqzgLQPTDBlql7gq6Lt/Yn5UFLUoZbKhxlBtASNhLBZXeVWExTudgUxqSsjUq8pVFrt8la2/eqb1qpw0CzQigyHJBzq3S5LcAYuJKZClZvg4QoPz0NJsw1quAiv0VUQAL/sbjCHEbVWQBI1YlShESi5qv1bAFZyWXCVa5nGwsno28qI4+ahZyb5rHBznUhApE8bqR0INvpnB2AXzhgKGGn7Izp1TlbQeoCprfVZ+JoAqA8uKL65vvYzyXkmovWIhoHyz3k43jiN4Yj3WjEePNT2tRGxrUciyHf7U3/p8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1lBEQKPTvmytJV0AQjVIbX2qjgE7jPnoTBTk+Rhi8w=;
 b=XStdOUowl/hPW9sUoVs+0q+QPWwKqr8ZhI6tys4jryLVtKrW0NOelR9IzJm4ZUBw7v+UBixUce2YbySZqa2p8ev4nInp6TFZXngwJlv2yM78Kef0WlF+ehBWrjtXa96RD6dRN3rtAphF2kq9+nE/AKnTUZamcjW/NUJmmMGNlKOdiDV6A4eosT1Icyg5rryn3WlIGP0dCY4+kDjqIcbXWVNWqfgVOAsA9bJ0r2L9Ng3BBwtC/iimmhjvqr5C+l89x4HsK1iarM8rOWYq4/nPuQFUIky4jwaMshqJeNP2foss2D081FIHfpOzNEvHZyO5VnKQivm+txP9e2fAKIxDsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1lBEQKPTvmytJV0AQjVIbX2qjgE7jPnoTBTk+Rhi8w=;
 b=ZnfGNgFwcFZyM1GlUAI7F+v+pPRDcN+t1AHgubl6zwR5WY/6C2u5s0EZgp0qgncb+Yr6cr4NyLgZQpt1awhwHymYSLIBLFK6xfBOs3nz4Uv895w7I49wLetUcHmGZ9sy4hN2BDLWK0SfE3OSAG5CIjgSbdl7e6cUQMl6VkKIyQM=
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com (20.178.18.224) by
 AM0PR07MB4690.eurprd07.prod.outlook.com (52.135.147.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.13; Tue, 27 Aug 2019 13:35:09 +0000
Received: from AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::e102:742a:cb17:611e]) by AM0PR07MB5300.eurprd07.prod.outlook.com
 ([fe80::e102:742a:cb17:611e%7]) with mapi id 15.20.2178.022; Tue, 27 Aug 2019
 13:35:09 +0000
From: Jurgen Lambrecht <J.Lambrecht@TELEVIC.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Topic: FYI: imx-sdma firmware is not compatible with SLUB slab allocator
Thread-Index: AQHVXNw+wzto4eeux06zQsdxRt35zA==
Date: Tue, 27 Aug 2019 13:35:09 +0000
Message-ID: <1e2fe2dc-f5ea-db73-59cf-c61ec558131a@televic.com>
Accept-Language: nl-BE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [84.199.255.188]
x-clientproxiedby: AM7PR02CA0011.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::21) To AM0PR07MB5300.eurprd07.prod.outlook.com
 (2603:10a6:208:f2::32)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4887788c-92d0-4414-e24e-08d72af36132
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB4690; 
x-ms-traffictypediagnostic: AM0PR07MB4690:
x-microsoft-antispam-prvs: <AM0PR07MB469009DA5E008C0E3F4CA3F8FFA00@AM0PR07MB4690.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39850400004)(366004)(346002)(136003)(396003)(189003)(199004)(2501003)(5660300002)(316002)(14454004)(8936002)(478600001)(4744005)(8676002)(66066001)(81156014)(31696002)(81166006)(58126008)(65956001)(65806001)(66446008)(66476007)(66556008)(64756008)(66946007)(2351001)(5640700003)(256004)(6486002)(86362001)(6436002)(6512007)(6916009)(71190400001)(71200400001)(4326008)(25786009)(31686004)(53936002)(36756003)(486006)(99286004)(52116002)(2906002)(476003)(2616005)(305945005)(6506007)(386003)(26005)(102836004)(7736002)(6116002)(3846002)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB4690;
 H:AM0PR07MB5300.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WxZEvjX4wbwZOqmtRh6zRdAyENhOo+58yNQDKnbWrBvKeNjq+zRTF8cLEqBLEVEoqK3zMBgFVr63Ag0I9GFI2NyP1lIRRXTAvmhbkpK23jxz1ZSVlS5ZcDvV54u3uTt38fU+O0d1ZrzSrMX0F3bdfy9cXVBAPQ3LZoQ3TQ9FTOCOaW9md5/rj31GQCbzvgls2qXpOVYxN9mqpCoGM+Vm4jcH0YisO6wZyReF9ii/28WTeNcGPoiBdT0qByX9WpB1cMcnEf9GM8XfTv3PUSEXdg0s+yo9K4bvebyEPjp8WSaFkvXKYwT1o5rLp/9gRy7bRQ6yQmc9pDsX6A6VQ9gasTE+8sH+DOZDWbKqeMilMQSUwd387Iwhu4hoL2s3eARdq+7T3P0NoyubxAa0eOdZjHrmqE4JQzVMY1+wPeAA4Qs=
x-ms-exchange-transport-forked: True
Content-ID: <A3D8659C79F92F43AEA02CF6E7372E4A@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4887788c-92d0-4414-e24e-08d72af36132
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:35:09.3128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vn9mmVSxKBamlgF8gQAAyw3UIHG++men8DW0hSJW72fhZnIuJJOGoUiy0VuWJxQZq5ydfpkWn540LSxLNvUDmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_063516_252284_C7818982 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.92 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-imx@nxp.com" <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNCldlIGFyZSB1cGRhdGluZyBvdXIga2VybmVsIG9uIG91ciBjdXN0b20gYm9hcmQgd2l0
aCBhbiBpTVg2VUwgZnJvbSAzLjE0IA0KdG8gNC4xOSwgYW5kIHdoZW4gbG9hZGluZyBsaW51eC1m
aXJtd2FyZS9pbXgvc2RtYS9zZG1hLWlteDZxLmJpbiB2My41IA0KdGhlIGtlcm5lbCBoYW5ncyB3
aGVuIGJvb3RpbmcsIG9ubHkgIlN0YXJ0aW5nIGtlcm5lbCAuLi4iIGlzIHByaW50ZWQgKGJ5IA0K
dUJvb3QgSSB0aGluaykuDQoNCldoZW4gSSByZW1vdmUgdGhlIHNkbWEgYmluIChidWlsdC1pbiB0
aGUga2VybmVsIHZpYSBFWFRSQV9GSVJNV0FSRSksIA0KdGhlbiBpdCBib290cy4NCg0KSSBmb3Vu
ZCB0aGF0IHRoZSBzbGFiIGFsbG9jYXRvciAobWVudSBjb25maWcgLT4gR2VuZXJhbCBzZXR1cCAt
PiBDaG9vc2UgDQpTTEFCIGFsbG9jYXRvcikgaXMgdGhlIGN1bHByaXQ6IHdoZW4gdXNpbmcgaW14
X3Y2X3Y3X2RlZmNvbmZpZyB0aGUgDQprZXJuZWwgYm9vdHMsIGJ1dCBub3Qgd2l0aCBvdXIgY29u
ZmlnIChiYXNlZCBvbiBhIHRpbnkgY29uZmlnIEkgdGhpbmspLg0KQW5kIHRoZSBjb25maWcgdGhh
dCBtYWtlcyB0aGUgZGlmZmVyZW5jZSBpcyB0aGUgc2xhYiBhbGxvY2F0b3I6IHdpdGggDQpTTFVC
IG9yIFNMQUIgdGhlIGtlcm5lbCAod2l0aCBzZG1hIGJpbikgYm9vdHMsIGJ1dCBub3Qgd2l0aCBT
TE9CLg0KDQpJIGRvbid0IGtub3cgaG93IHRvIGZvcmNlIHNlbGVjdGluZyBTTFVCIGluIEtjb25m
aWcgd2hlbiBzZWxlY3RpbmcgDQpJTVhfU0RNQSwgYnV0IGFueWhvdyBmaXJzdCB0aGlzIGlzc3Vl
IG11c3QgYmUgY29uZmlybWVkIG9uIG90aGVyIA0KcHJvY2Vzc29ycyBmcm9tIHRoZSBpTVggZmFt
aWx5Lg0KDQpLaW5kIFJlZ2FyZHMsDQoNCkrDvHJnZW4gTGFtYnJlY2h0DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
