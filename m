Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C511B90FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 16:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1NWHo+lCEshBqZOHiTrHiPf4ivrD25cx+VEc5ZVkMw=; b=o8iFff6mHrrsGz
	MjO8Aw+kanP/9LizVKaZlKnSg4faBcktIqyhvxo3XU9NqgoUh3tL2UQSgse2e4ZgM/s98KFPIuCQ8
	X5KIJKOU7LO/UD6udql6Hvm+xQLJ5EsBZ7LR0MR8EbyMzl4KzOeQ1HqvssdA5YkXGAo1XBCzgHI9S
	Mou+N5+fxPXqN7GiaTx9DkRNTrok11PG2CNecDfO8kaQ2TlYsJcY23y/Ez6hdVvsHekFqL+ig7EfF
	Wmg6TpdrY1Xv8EiN9etQn0bNcus6NUKTbuBHoqOSzcCC9pkCMRQRk1UsPjJ7mp6e0Lwj/vSxc9KKJ
	pfg7DgLjQ96B5aIQS5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSiio-00058V-8j; Sun, 26 Apr 2020 14:57:30 +0000
Received: from mail-bn8nam11olkn2094.outbound.protection.outlook.com
 ([40.92.20.94] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSiih-00057P-94
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 14:57:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ay5aXiPmGAU6gIRc5Fw8oYXPk6MUvy9D8u6NdUxVEVZYoEQoGdfTaySDVZZ3ItQchb8oMYnChTW9wG1ZjKCQOigUwSVNZz70mpFeBjxsxFv9grdwgMPC/cc41emNEDSa0LTsBcZgpnhZKWKTS7k6AXEftHkTF1Ex5DnMbfrZSqZ5LYsyfHXurW1MJLk6kKm/fAL/2ku7AZtcW/Ga/ANPudN6eo0zRl/otG4o/V11glnJDyd9xZbQYrk1aeeoBXPd47CBMTIYYg1XA6i/YybDGQFOI4bRZiox09WCLmKYqZT2DqrylPEmsmEaNUTIffm+poV5/BMhQr2BhwYtiN6U8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rCl3rY0wkUejQntKOCRLgSoEtSbDA20DEt0Lp6EAeQw=;
 b=XcydcxaB3GWWwBg0qhKGybdwe+RfKugK7++6EZoTXxit5PUP2Tka24Vf1SyXeIZTcly1u6ywzx9j47jCjranR1d6s/UdgvsHW6GR6Yfjik8Xq1GW5dodHLJicGnN9vU+1/zziYx307tz/zzHOkTQz6gr6xsL17mUiR4RUgM0Zx0EsG15vEBhGQKXKVjsTd4tsMPG245r1gI9J94S/ADWrm5DFl/aaTA4wSJpeZfAJNbkts/msCXwF2XJH69Jl7vfVDKbzI485GpRQoZDp7ZRXCF3EqHl6CCIaCAe3u0Ejs8swsvxDKfa4TtCY3uWDF56z32l2G0tl7KSHIB6gRSyOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT032.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::47) by
 CO1NAM11HT148.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::275)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 14:57:17 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::4d) by CO1NAM11FT032.mail.protection.outlook.com
 (2a01:111:e400:3861::218) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 14:57:17 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:E81CF6BFCFE073454522CA0EAAF72EEBFDD4626B33AA54E33244858FAA4E44A9;
 UpperCasedChecksum:B59FE0D74AE6107E11CB223A88241A401D292CCDCAC3F731F6A2F9AC6F7CB0FE;
 SizeAsReceived:9919; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 14:57:17 +0000
Subject: Re: [PATCH v7 08/12] arm: dts: s5pv210: Add node for SGX 540
To: Paul Cercueil <paul@crapouillou.net>,
 "H. Nikolaus Schaller" <hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3fd18c747426e15fd1f3500b9c4adce2db9ddd0c.1587760454.git.hns@goldelico.com>
 <NYBE9Q.YH08US7A7DC3@crapouillou.net>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB0660A180D2069848E5C03D7EA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Sun, 26 Apr 2020 07:57:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <NYBE9Q.YH08US7A7DC3@crapouillou.net>
Content-Language: en-US
X-ClientProxiedBy: CO2PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:102:2::27) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <c7fba899-d520-559f-d14c-1d92f629329e@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0059.namprd05.prod.outlook.com (2603:10b6:102:2::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.12 via Frontend Transport; Sun, 26 Apr 2020 14:57:14 +0000
X-Microsoft-Original-Message-ID: <c7fba899-d520-559f-d14c-1d92f629329e@live.ca>
X-TMN: [OmgafuzCUqVRB2i/C6FSFbGQe5x8huTGu/6RGTYJ87Y/NFFW81q0f1xbGex4LyHn]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: cbade908-3c53-44a5-a6de-08d7e9f21cd1
X-MS-TrafficTypeDiagnostic: CO1NAM11HT148:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QwTfGRGC0v5LCTZiqw648BnLUPKmgF4piL5vYUxxnRbFF3jRYYLJaiiCpWhoMoXyun1bOoXNLWVAufhHYJdce/SE0dKQZD9b+gEu1+6CRnw86wcRbtWcpD2FEWg37aNVZWOPo4o/0GXz8vBkYzW0CD47dOBdvOuxcO8Tnayi23egP0iSstBHimHh8antuNuFgNGybBGfDQzllIG4jKC04Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 8808OTabogw8sV0VMpFUQqObuTnPvfdGv11P400fYeD1iMYdPEq4G/dgFkf3NmGGEEbDa05lFeFmKjbQM3b5L96FQ5G2pK/UROup5LS7M9B2DgKscxJaRp7dNO3Vs1bYl1PB7cvDahfb/2GF9jEYWhElQxuXGrx3RBRkjC+ffFTTcYivf2OhXZrGotJ99khwYRshb5dW/r/Vh1L0XgUPvQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbade908-3c53-44a5-a6de-08d7e9f21cd1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 14:57:17.5591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_075723_321399_D5CB9CB4 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.20.94 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
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
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 letux-kernel@openphoenux.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCk9uIDIwMjAtMDQtMjYgNTo1NiBhLm0uLCBQYXVsIENlcmN1ZWlsIHdyb3RlOgo+
IAo+IAo+IExlIHZlbi4gMjQgYXZyaWwgMjAyMCDDoCAyMjozNCwgSC4gTmlrb2xhdXMgU2NoYWxs
ZXIgPGhuc0Bnb2xkZWxpY28uY29tPiBhIMOpY3JpdCA6Cj4+IEZyb206IEpvbmF0aGFuIEJha2tl
ciA8eGMtcmFjZXIyQGxpdmUuY2E+Cj4+Cj4+IEFsbCBzNXB2MjEwIGRldmljZXMgaGF2ZSBhIFBv
d2VyVlIgU0dYIDU0MCAocmV2aXNpb24gMTIwKSBhdHRhY2hlZC4KPj4KPj4gVGhlcmUgaXMgbm8g
ZXh0ZXJuYWwgcmVndWxhdG9yIGZvciBpdCBzbyBpdCBjYW4gYmUgZW5hYmxlZCBieSBkZWZhdWx0
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBCYWtrZXIgPHhjLXJhY2VyMkBsaXZlLmNh
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBILiBOaWtvbGF1cyBTY2hhbGxlciA8aG5zQGdvbGRlbGljby5j
b20+Cj4+IC0tLQo+PiDCoGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAuZHRzaSB8IDEzICsrKysr
KysrKysrKysKPj4gwqAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvczVwdjIxMC5kdHNpCj4+IGluZGV4IDJhZDY0MmY1MWZkOS4uYWJiZGRhMjA1YzFiIDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLmR0c2kKPj4gKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvczVwdjIxMC5kdHNpCj4+IEBAIC01MTIsNiArNTEyLDE5IEBAIHZpYzM6IGlu
dGVycnVwdC1jb250cm9sbGVyQGYyMzAwMDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47Cj4+IMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4KPj4gK8Kg
wqDCoMKgwqDCoMKgIGdwdTogZ3B1QGYzMDAwMDAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJzYW1zdW5nLHM1cHYyMTAtc2d4NTQwLTEyMCI7Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweGYzMDAwMDAwIDB4MTAwMDA+Owo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQtcGFyZW50ID0gPCZ2aWMyPjsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDwxMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNsb2NrLW5hbWVzID0gImNvcmUiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3Mg
PSA8JmNsb2NrcyBDTEtfRzNEPjsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhc3Np
Z25lZC1jbG9ja3MgPSA8JmNsb2NrcyBNT1VUX0czRD4sIDwmY2xvY2tzIERPVVRfRzNEPjsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDw2Njcw
MDAwMD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMg
PSA8JmNsb2NrcyBNT1VUX01QTEw+Owo+IAo+IFdoYXQgYXJlIHRoZXNlIGNsb2NrcyBmb3IsIGFu
ZCB3aHkgYXJlIHRoZXkgcmVwYXJlbnRlZCAvIHJlY2xvY2tlZD8KPiAKPiBTaG91bGRuJ3QgdGhl
eSBiZSBwYXNzZWQgdG8gJ2Nsb2NrcycgYXMgd2VsbD8KPiAKPiAtUGF1bAo+IAoKVGhlIEczRCBj
bG9jayBzeXN0ZW0gY2FuIGhhdmUgbXVsdGlwbGUgcGFyZW50cywgYW5kIGZvciBzdGFibGUgb3Bl
cmF0aW9uCml0J3MgcmVjb21tZW5kZWQgdG8gdXNlIHRoZSBNUExMIGNsb2NrIGFzIHRoZSBwYXJl
bnQgKHdoaWNoIGluIHR1cm4KaXMgYWN0dWFsbHkgYSBtdXggYXMgd2VsbCkuICBNT1VUX0czRCBp
cyBzaW1wbHkgdGhlIG11eCBmb3IgQ0xLX0czRAooU0dYIGNvcmUgY2xvY2spLCBET1VUX0czRCBp
cyB0aGUgZGl2aWRlci4gIERPVVRfRzNEIGNvdWxkIGVxdWFsbHkgYmUgQ0xLX0czRAooYW5kIHBy
b2JhYmx5IHNob3VsZCBiZSwgZm9yIHJlYWRhYmlsaXR5KSBhcyBDTEtfRzNEIGlzIHNpbXBseSB0
aGUgZ2F0ZSBhbmQKRE9VVF9HM0QgaXMgdGhlIGRpdmlkZXIgZm9yIGl0LgoKVGhlIFNHWCBjbG9j
ayBsYXlvdXQgb24gUzVQVjIxMCBsb29rcyBzb21ldGhpbmcgbGlrZSB0aGlzOgoKICAgICAgICBN
T1VUX01QTEwgLS0tLS0tLS0tLS0+IE1PVVRfRzNEIC0tLT4gRE9VVF9HM0QgIC0tLT4gQ0xLX0cz
RAooc2VsZWN0YWJsZSBwYXJlbnQgY2xvY2spICAgICAgKG11eCkgICAgLS0tPiAoZGl2aWRlcikg
LS0tPiAoZ2F0ZSkKClRoaXMgaXMgZmFpcmx5IGNvbW1vbiBmb3Igb2xkZXIgU2Ftc3VuZyBTb0Nz
LCBlZyBoYXZpbmcgYSBsb29rIGF0CmFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQyMTAtdW5pdmVy
c2FsX2MyMTAuZHRzIHlvdSBjYW4gc2VlIHRoYXQKdGhlIEZJTUMgY2xvY2tzIGFyZSBwYXJlbnRl
ZCB0byBNUExMIGFuZCBoYXZlIGEgcmF0ZSBzZXQuCgo+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4g
Kwo+PiDCoMKgwqDCoMKgwqDCoMKgIGZpbWQ6IGZpbWRAZjgwMDAwMDAgewo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzYW1zdW5nLHM1cHYyMTAtZmltZCI7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQtcGFyZW50ID0gPCZ2aWMyPjsKPj4gLS0g
Cj4+IDIuMjUuMQo+Pgo+IAo+IAoKVGhhbmtzLApKb25hdGhhbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
