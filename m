Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7DDE2D7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 11:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdpIqfUp5VCTQeP4uk6uuDIFIuDtj84+mkrhiY8qOOQ=; b=h1FXvwp2VBiAiC
	cXruGAL4OlC/iQuX2vigHDR/mf0xlnjlxZfC7Ma0iPi16U/+PVCm7aTTtSJxi4H8YNUYqRLz1YMjx
	odpKqLV9DdHhxGCk5E9hSTV6xRDLTUGzoySn9KMk5fqrg7SyfyqiNqzSTMsCSIZoU0DoadvK1PBwH
	UqBP8bhKnAMPrtOr98rZq2Tmgbs7y3ngrFC3lLSyebgJ6RTJJMzXr2cwvuC9PRdEt4dns0bK8tvWi
	apnZTOOjZ0AKX7GAJIa8AjqhM2KhR28TtUdcsENy3OBY4F1NYRhajN2kvkGTVqkDqHQNgtVHaRV+y
	aW3VtCkJ3FLQ1xTFw7MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZWi-0000L1-KN; Thu, 24 Oct 2019 09:35:28 +0000
Received: from mail-eopbgr70112.outbound.protection.outlook.com
 ([40.107.7.112] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZWY-0000KY-F9; Thu, 24 Oct 2019 09:35:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cmGiBsQxz3T86HnbxSahtPCZQiOWo7K6bAsIeym0n5GpvZzeBpAcVwPs2v1+jHPgkoZpf8wUxIqs4YKZyHUCb6LSOH3pn8rkgbx5ZAA2vZXzw8hV21FScyu3GH5I0r4sFLpBptfoU4tumfDYDdaHhOAoqIAg7KKfBTzHwEKjypdmB9kqKpNNp22c2deK8HocEfd3TK6nt6fRz1XaHO6fEV7azWsAp0XqdnZZ7gCWUP7w8Sx3WzKa33mbMYQ6esS8paBXPYjEqYOpJeldDHbcGbh64EtbL4RDNvcYRf8SWnQqoCy9ZMg0PmzzRiDXWKRie1gumqVD2k6f3X3+mUmthg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIt9WUl36EPMd6/sTow+jAoauCcP0HziIST+STpNbbY=;
 b=gEJ6Fr4/2XPwmUqdJEkHtAcqkzJLv1qKL92rKRfQh6AfQePvhiZ67pZFNwV/VuoKe65CRS8NdKty6ok7y/eR3u0Vd6dpfEVoyb9FU/Dyk0pzzLdbB+NmRlRmROjW4AejpDFddoYDfiIgRL8RFh/UXZVvXfiSyCTjMw9+QKj+l2vZjV1pDSH3pT9rtkOSqh9nVcSAOrqdyKJWxmlC/kITIf74nrliU4n7uCYMLCvZQOkDnX5sHnQLfVyTnUvACFZe8PxNI8uyTqi0I2bRFcH8iI1aGIPoXlNoNlRKLRqFDeuL3XLEz4uOEGTsMI1RYv/923GMEGV1vVoztnQTdxwmww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIt9WUl36EPMd6/sTow+jAoauCcP0HziIST+STpNbbY=;
 b=fEAnr2/i3O1AFS3nbpfEP8nNqk2J98i29Ta1hHaixE6dDgnhOQxfsfxuZdfA1FoKmOIky8RikVrhIENBJQZaDuSscfbgTUCYfJwUvhLLXD96t0J3rrr38rgQM1Hq/pS9wFlWvV0Gz7tHQUrFL7AK1wapZGeBnZx/qiLMDB7cTGA=
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com (52.134.66.158) by
 DB3PR0202MB3546.eurprd02.prod.outlook.com (52.134.69.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Thu, 24 Oct 2019 09:35:12 +0000
Received: from DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe]) by DB3PR0202MB3434.eurprd02.prod.outlook.com
 ([fe80::c5b8:6014:87a4:1afe%7]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 09:35:12 +0000
From: Peter Rosin <peda@axentia.se>
To: "rppt@kernel.org" <rppt@kernel.org>
Subject: Re: [PATCH 08/12] parisc: use pgtable-nopXd instead of 4level-fixup
Thread-Topic: [PATCH 08/12] parisc: use pgtable-nopXd instead of 4level-fixup
Thread-Index: AQHVik5IAuql7dy41k6PeTHw6KB4tA==
Date: Thu, 24 Oct 2019 09:35:12 +0000
Message-ID: <20191024093451.15161-1-peda@axentia.se>
References: <1571822941-29776-9-git-send-email-rppt@kernel.org>
In-Reply-To: <1571822941-29776-9-git-send-email-rppt@kernel.org>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.11.0
x-originating-ip: [213.112.138.100]
x-clientproxiedby: HE1PR0501CA0011.eurprd05.prod.outlook.com
 (2603:10a6:3:1a::21) To DB3PR0202MB3434.eurprd02.prod.outlook.com
 (2603:10a6:8:5::30)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peda@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c3bd73e-ee81-4715-6d9a-08d7586577ad
x-ms-traffictypediagnostic: DB3PR0202MB3546:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0202MB35468A3E1F5AE0EF9B52833BBC6A0@DB3PR0202MB3546.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(366004)(376002)(136003)(346002)(199004)(189003)(64756008)(1076003)(66946007)(66476007)(66446008)(66556008)(4744005)(50226002)(8936002)(8676002)(1730700003)(4001150100001)(86362001)(305945005)(7406005)(7736002)(66066001)(7416002)(2501003)(54906003)(99286004)(81156014)(81166006)(186003)(14454004)(5660300002)(76176011)(316002)(52116002)(2616005)(53546011)(6506007)(256004)(102836004)(386003)(26005)(6436002)(6512007)(71190400001)(71200400001)(446003)(11346002)(229853002)(486006)(5640700003)(508600001)(6486002)(25786009)(4326008)(476003)(2906002)(6246003)(107886003)(6916009)(6116002)(3846002)(2351001)(36756003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR0202MB3546;
 H:DB3PR0202MB3434.eurprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Z+ITuVOvCqKitQmaADNxgLO2KW0fDtwzxFLSRNNn7r/d6V85rreanKo2s+2tZaj57S+YSqLI8dMNxycmFP8TlbakDoiFDVeKSRPOuJMnSnLz1FzJ7iBy5FiQjktww9Zw3RWbkbaN4l8LIFun9RYGE1a+THN5jNpOMYuioTqkSimDg+3oKV0TYwESyYh1EUIGoUOwF4rz96lC1DTez136wnhWjR8bRzbsSQlFYS9NScyPinY2fuJ4aYSJh+2DAxCiSAFCobU6RUtFi4veZnHL30ia6pfX28Yt3ehNs5GYmVtFyV9xNES/PlYYRfl6QOXFPAbB1XEzjvbSKf4E0nKvP5X+69BruKyQA070TgGVgdtHQJdNqcM3TihTxK47muVoD9QxJUr985Mz1Js63GkmAokSqaiYs0iRgoJbAAJ+NZnMA++qwWJCmuskvsG/Dto
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c3bd73e-ee81-4715-6d9a-08d7586577ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 09:35:12.1588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OVrjWJqkAg7QlUmFAou+rEr+R3o62OggdRIdKwgVr0fz9Ctp3nIcWVOZEyuS4mrB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0202MB3546
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_023518_732683_F91880CD 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.112 listed in list.dnswl.org]
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
Cc: "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "deanbo422@gmail.com" <deanbo422@gmail.com>,
 "gerg@linux-m68k.org" <gerg@linux-m68k.org>,
 "anton.ivanov@cambridgegreys.com" <anton.ivanov@cambridgegreys.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-c6x-dev@linux-c6x.org" <linux-c6x-dev@linux-c6x.org>,
 "richard@nod.at" <richard@nod.at>, "deller@gmx.de" <deller@gmx.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>,
 "msalter@redhat.com" <msalter@redhat.com>,
 "mattst88@gmail.com" <mattst88@gmail.com>,
 "jdike@addtoit.com" <jdike@addtoit.com>, "sammy@sammy.net" <sammy@sammy.net>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "Vineet.Gupta1@synopsys.com" <Vineet.Gupta1@synopsys.com>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 "green.hu@gmail.com" <green.hu@gmail.com>,
 "kirill@shutemov.name" <kirill@shutemov.name>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "monstr@monstr.eu" <monstr@monstr.eu>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Peter Rosin <peda@axentia.se>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-23 12:28, Mike Rapoport <rppt@kernel.org> wrote:
> parisc has two or three levels of page tables and can use appropriate
> pgtable-nopXd and folding of the upper layers.
>
> Replace usage of include/asm-generic/4level-fixup.h and explicit
> definitions of __PAGETABLE_PxD_FOLDED in parisc with
> include/asm-generic/pgtable-nopmd.h for two-level configurations and with
> include/asm-generic/pgtable-nopmd.h for three-lelve configurations and

I think you mean .../pgtable-nopud.h in the latter case.

Cheers,
Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
