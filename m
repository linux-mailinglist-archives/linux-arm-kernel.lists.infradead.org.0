Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFFD1BD043
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PklvlBwhkbKguhivMZNHBJCZIrIXk89HkzoC46a81lk=; b=fTp+/9VOH+0oFY
	+xOdmh0yJbxwye0jkRyKolBZ8PsC521s/qA2dRCbYqYLC5OD71a0vJ8sLhO/oR/cr9PuTyP+LWA4L
	mBk8VXYWs2WUBF1STBEURtFXpkVLpmBgeHsf0mM7W28XSVHt1raN8IGO1nW7DdbEE2lvFPWIJwj29
	VqDwYmOqdxpJX5t358ffvew25p7cc5CIFS2/CwB69MW5QTVCz5J6DchG3qtbUWJnn8dpS9chm0KBy
	Orkwadj9cB9H+X+v0Pk+ef4M19htpXmP7IYcfH33sf7SQg134uzrlxy9DKCI1sb/ztBF453VVb1ck
	XPOInD+MLixwTVFke6gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZBH-0003Fg-6F; Tue, 28 Apr 2020 22:58:23 +0000
Received: from mail-dm6nam10olkn2093.outbound.protection.outlook.com
 ([40.92.41.93] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZB8-0003EW-1b
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:58:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dH4OalpptlhlKSBkjvdbN4KZvamuU0+zjqlKIoQ2+zXwzHYaU+zo/+P1vaLoAQqJ4lgpWbB7LCTD32URDk34NheeUOla9GIzo58E4x8IKWn7zyyDGkmUHqU+xZXaCQlGghZp18BBvLxbcrccoUWUwrcYQcVl7wKdGMe+YdlXmdSebBT1uKrg0zxcb9Clowu/FJjWgxfSxJZmUNQCQlVp7RGPLvIQSxthaTMpF20zYS697LXxMJflN5JKlf6Gz9YwZlG/1T8zufMctEW3QcoLjhMv9gf1Yj1CoWkRnp/UMniFrc3XgrzJdIBqv4w0Lq9u820tDWx/bsxUsx8iqSSsQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MuaIE8TgI8eeUG5HV45zullZYlfZTfh5z+WzEAXePtY=;
 b=CIYuZMhb+xwGuItEubHM6hBQ4Y0g8275Yw/I424BkGXAsWOzZwPuA21PZM4pWz9pvU1vuG+eCiPYJEhqsryBr8WinXtqHr3QzQOUhs5IuH2u2yO52uiR8qF7t/WZup8JesmrkqcIkaoBVBFtPOyvlKPc1dLvq6Sv+soIKJssA4laP7fW2Xix3nNjqDKdNdnkWg+42+FlWhTBo5HkT7Oq0YQ2Cqdqi4aW/t8g/xaPcG36EBcn9zr/mkGiKlJEbW+7qnBr5afjwSmGo6fdL7/u9R/1h4tp1oz4O+HS6uy9lzyIsJNxT5zmkzOXzE+zE8+BNirk8cE7zpiHpJ4SgmBTyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM10FT053.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::45) by
 DM6NAM10HT010.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::83)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Tue, 28 Apr
 2020 22:58:11 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e86::4f) by DM6NAM10FT053.mail.protection.outlook.com
 (2a01:111:e400:7e86::442) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Tue, 28 Apr 2020 22:58:11 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:9DD91C560F719B6A0FD0859D0B9EB727363D20AB69F890889C2A5E39D02BC068;
 UpperCasedChecksum:C40B9486CA0DDFBB9B19B9961A7974577A1BE048E67E179F3A60565C4A004CED;
 SizeAsReceived:10167; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 22:58:11 +0000
Subject: Re: [PATCH v7 08/12] arm: dts: s5pv210: Add node for SGX 540
From: Jonathan Bakker <xc-racer2@live.ca>
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <cover.1587760454.git.hns@goldelico.com>
 <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
 <NYBE9Q.YH08US7A7DC3@crapouillou.net>
 <BN6PR04MB0660A180D2069848E5C03D7EA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200427154617.GA1798@pi3>
 <BN6PR04MB06605F014024061C894AFBA4A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Message-ID: <BN6PR04MB0660044B5B1D45BE4CBCD2AAA3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Tue, 28 Apr 2020 15:58:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <BN6PR04MB06605F014024061C894AFBA4A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: MWHPR1701CA0020.namprd17.prod.outlook.com
 (2603:10b6:301:14::30) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <f4d70bab-caba-8700-00aa-010384f053e2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR1701CA0020.namprd17.prod.outlook.com (2603:10b6:301:14::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19 via Frontend
 Transport; Tue, 28 Apr 2020 22:58:06 +0000
X-Microsoft-Original-Message-ID: <f4d70bab-caba-8700-00aa-010384f053e2@live.ca>
X-TMN: [p5xCICxpvEcF+C5bcn3IY6/23cHHsfWLGQe5HxJm1+AAXApmKRg140W6WwoNl3IS]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9f8a5563-8f46-468c-edd6-08d7ebc7a02f
X-MS-TrafficTypeDiagnostic: DM6NAM10HT010:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Eu6+DJDb/VXQQhT1KQyJeLAlptyYlZo/0nlf3oPLCHod9hzxJfrhd+tN5qcfmT7gYUsFmIbDt3JXi0dg+KmPHIK812Vz864xR/+SnPw6AlAHXKmnVC2PyxrhzDKdsXp6uVVEXXcYzI/BR2TCh7kFG9zx9cgrVDX+ZlmCCZfI+UwZFroiWr7qRKhycdzA9AheuLe4DYxk+4fi2x7z/I5iBQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: jcwqMPeBOgdjmQA0oMP6IpFxptHmfDaomCReXOB2Xj68q1dz2VvhXXz4M2Uj+NaKxE86mtQV5Dl5AD7n6nMInqZuBpyZw3wu8FB380euZHZzI71vmdADajZdObPM2fFdAqbEtMkfds9ldDO3ul3irkcaxUq4cgZuIQI6qdt9B6Rq9eYvTGzJoES2/nw7P6ruYwvNsv8uD/0bs8zhdJSZ8Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f8a5563-8f46-468c-edd6-08d7ebc7a02f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 22:58:11.8237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_155814_081355_BF60DF67 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.41.93 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.41.93 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Paul Burton <paulburton@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 James Hogan <jhogan@kernel.org>, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, letux-kernel@openphoenux.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgYWxsLAoKT24gMjAyMC0wNC0yOCAyOjM5IHAubS4sIEpvbmF0aGFuIEJha2tlciB3cm90ZToK
PiBIaSBLcnp5c3p0b2YsCj4gCj4gT24gMjAyMC0wNC0yNyA4OjQ2IGEubS4sIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4+IE9uIFN1biwgQXByIDI2LCAyMDIwIGF0IDA3OjU3OjEyQU0gLTA3
MDAsIEpvbmF0aGFuIEJha2tlciB3cm90ZToKPj4+IEhpIFBhdWwsCj4+Pgo+Pj4gT24gMjAyMC0w
NC0yNiA1OjU2IGEubS4sIFBhdWwgQ2VyY3VlaWwgd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+IExlIHZl
bi4gMjQgYXZyaWwgMjAyMCDDoCAyMjozNCwgSC4gTmlrb2xhdXMgU2NoYWxsZXIgPGhuc0Bnb2xk
ZWxpY28uY29tPiBhIMOpY3JpdCA6Cj4+Pj4+IEZyb206IEpvbmF0aGFuIEJha2tlciA8eGMtcmFj
ZXIyQGxpdmUuY2E+Cj4+Pj4+Cj4+Pj4+IEFsbCBzNXB2MjEwIGRldmljZXMgaGF2ZSBhIFBvd2Vy
VlIgU0dYIDU0MCAocmV2aXNpb24gMTIwKSBhdHRhY2hlZC4KPj4+Pj4KPj4+Pj4gVGhlcmUgaXMg
bm8gZXh0ZXJuYWwgcmVndWxhdG9yIGZvciBpdCBzbyBpdCBjYW4gYmUgZW5hYmxlZCBieSBkZWZh
dWx0Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBCYWtrZXIgPHhjLXJhY2Vy
MkBsaXZlLmNhPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBILiBOaWtvbGF1cyBTY2hhbGxlciA8aG5z
QGdvbGRlbGljby5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiDCoGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYy
MTAuZHRzaSB8IDEzICsrKysrKysrKysrKysKPj4+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvczVw
djIxMC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC5kdHNpCj4+Pj4+IGluZGV4IDJh
ZDY0MmY1MWZkOS4uYWJiZGRhMjA1YzFiIDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290
L2R0cy9zNXB2MjEwLmR0c2kKPj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC5k
dHNpCj4+Pj4+IEBAIC01MTIsNiArNTEyLDE5IEBAIHZpYzM6IGludGVycnVwdC1jb250cm9sbGVy
QGYyMzAwMDAwIHsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNpbnRlcnJ1cHQtY2Vs
bHMgPSA8MT47Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+Pj4KPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgIGdwdTogZ3B1QGYzMDAwMDAwIHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29tcGF0aWJsZSA9ICJzYW1zdW5nLHM1cHYyMTAtc2d4NTQwLTEyMCI7Cj4+Cj4+IFRoaXMgc2hv
dWxkIG5vdCBwYXNzIHRoZSBiaW5kaW5ncyBjaGVjayBiZWNhdXNlIHlvdSBtaXNzZWQgbGFzdAo+
PiBjb21wYXRpYmxlcy4KPj4KPiAKPiBUaGFua3MgZm9yIHBvaW50aW5nIHRoYXQgb3V0LCBJJ2xs
IGFkZCBpdCBhbmQgbWFrZSBzdXJlIGl0IHBhc3NlcyB0aGUgYmluZGluZ3MgY2hlY2suCj4gCj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweGYzMDAwMDAwIDB4MTAwMDA+Owo+
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQtcGFyZW50ID0gPCZ2aWMyPjsK
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDwxMD47Cj4+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImNvcmUiOwo+Pj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNsb2NrcyBDTEtfRzNEPjsKPj4+Pj4gKwo+Pj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhc3NpZ25lZC1jbG9ja3MgPSA8JmNsb2NrcyBNT1VU
X0czRD4sIDwmY2xvY2tzIERPVVRfRzNEPjsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDw2NjcwMDAwMD47Cj4+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsb2NrcyBNT1VUX01QTEw+
Owo+Pj4+Cj4+Pj4gV2hhdCBhcmUgdGhlc2UgY2xvY2tzIGZvciwgYW5kIHdoeSBhcmUgdGhleSBy
ZXBhcmVudGVkIC8gcmVjbG9ja2VkPwo+Pj4+Cj4+Pj4gU2hvdWxkbid0IHRoZXkgYmUgcGFzc2Vk
IHRvICdjbG9ja3MnIGFzIHdlbGw/Cj4+Pj4KPj4+PiAtUGF1bAo+Pj4+Cj4+Pgo+Pj4gVGhlIEcz
RCBjbG9jayBzeXN0ZW0gY2FuIGhhdmUgbXVsdGlwbGUgcGFyZW50cywgYW5kIGZvciBzdGFibGUg
b3BlcmF0aW9uCj4+PiBpdCdzIHJlY29tbWVuZGVkIHRvIHVzZSB0aGUgTVBMTCBjbG9jayBhcyB0
aGUgcGFyZW50ICh3aGljaCBpbiB0dXJuCj4+PiBpcyBhY3R1YWxseSBhIG11eCBhcyB3ZWxsKS4g
IE1PVVRfRzNEIGlzIHNpbXBseSB0aGUgbXV4IGZvciBDTEtfRzNECj4+PiAoU0dYIGNvcmUgY2xv
Y2spLCBET1VUX0czRCBpcyB0aGUgZGl2aWRlci4gIERPVVRfRzNEIGNvdWxkIGVxdWFsbHkgYmUg
Q0xLX0czRAo+Pj4gKGFuZCBwcm9iYWJseSBzaG91bGQgYmUsIGZvciByZWFkYWJpbGl0eSkgYXMg
Q0xLX0czRCBpcyBzaW1wbHkgdGhlIGdhdGUgYW5kCj4+PiBET1VUX0czRCBpcyB0aGUgZGl2aWRl
ciBmb3IgaXQuCj4+Cj4+IEdvb2QgcG9pbnQsIGl0IHNob3VsZCBiZSBDTEtfRzNEIGluc3RlYWQg
b2YgRE9VVC4gIENhbiB5b3UgZml4IHRoaXMgYXMKPj4gd2VsbD8KPiAKPiBZZXAsIHdpbGwgZG8u
ICBOaWtvbGF1cywgSSdsbCBzZW5kIHlvdSBhbiB1cGRhdGVkIHBhdGNoIHRvIGluY2x1ZGUuCj4g
CgpIb3cgYXJlIGFzc2lnbmVkLWNsb2NrcyBoYW5kbGVkIGluIHRoZSB5YW1sIERUIHNjaGVtYT8g
IFdoZW4gcnVubmluZyBtYWtlIGR0YnNfY2hlY2ssCkkgZW5kIHVwIHdpdGggbWVzc2FnZXMgc3Vj
aCBhcwoKYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1hcXVpbGEuZHQueWFtbDogZ3B1QGYzMDAw
MDAwOiAnYXNzaWduZWQtY2xvY2stcGFyZW50cycsICdhc3NpZ25lZC1jbG9jay1yYXRlcycsICdh
c3NpZ25lZC1jbG9ja3MnIGRvIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJs
LVswLTldKycKCkRvIHRoZXkgbmVlZCB0byBleHBsaWNpdGx5IGJlIGxpc3RlZCBhcyB2YWxpZCBl
bnRyaWVzPwoKVGhhbmtzLApKb25hdGhhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
