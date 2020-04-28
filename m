Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0052B1BD09E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 01:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7awpPIWIW36/jCGpCJ/8mHx7kRkZRYz0r0R09F4fW4=; b=N6GbjshmPwtG+l
	grCja/FtTg3kQaDxNqHnFTDQa2A8w0Cqk2jCrzAXVI3PQKjWzx/dvLFCx5CN9nowhE+hu6/j0yUu7
	7mXiM1sh0SlAV6xfH9MPGC8NX9l5WLJOSL8VL/GEySLppmyYSuvDcyGPr3P2ME0bWiOQw1YSjgroP
	44ZLNGMzwR9hrmJBZkHRNyNV+mDuvWPYjukXVxo58OpUmtwpDvxCfB6wf04yAgCSUsXaTwnv1Bori
	cQFZS+J5mPCj9tLO5I39rta1GJlrgSmOVPHkcu8Ah2RdYq6Sm94nNU0E8nXvdCWBEyfRMibcoG00X
	s8dnYi4gxUn43HCk/oHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZiy-00017w-WA; Tue, 28 Apr 2020 23:33:13 +0000
Received: from mail-dm6nam10olkn2071.outbound.protection.outlook.com
 ([40.92.41.71] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTZiq-00016Y-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 23:33:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h8eqUuq1gn79QO2jbX/txYXTnyphDqvJEW0Wi+YjTBjSyx8jXMxtaLxVJrJqWY8CEBNO6w62xcd8G0r/v5Mek83fg81lclj6c2oOIQ0xP4lY1B8x26wkPs3R2/AxTzYXOCr2wSHz/DJahsjaVt8Nywc8o2fUcCEu9hxagN5oZeNPR3RGRz6M9RroF7mhprAxs9fr6nSybddlLiL72X/g9myc0Ml06o1q+HBrAKRmchMiMG5XzQv8rGN+Xg7zf8iYT1KZGFPmRAFIafm7os2Zbqq+NbkkuH2IbBsIEEkKRq3xqleqpm4fxRy5MqdJdQ+8aKF9oRzQjkh8Z5ncKDCJNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Zg3O2l8L0fVqBf9ngqboroh8jJ/adoLezWfK4t5jH8=;
 b=HqtxYAaDYRTEYv43A38YT75+sUiTCRonWTqYGVgWzTjfaOrO1T1FbJ/am4KhDs1Xu0iKDSkKMTMojJHnSKKFHb3uzTPjDQ8yS9l3Rsw0tKAzFHNRvVeYtVIKokkSKEefH2mVOUs5UI+SmS/AKjEQBWAraT1J5JIo8LEw14jsCRQO+67XVhCkBoR1K0HTbVwyDiFkXmFymlebCMk2APkfd1Yc+000+wVqQOwDMCNvL3JJ4tGJJRoj7bqdNM8LY3ftNCBLUKVRBqQIgn3qIudz1h21XJuAZw3X8+mbjjVvQJ++4pA/xQST376EdtiptLCUi6Ij2r5i6vmLlCh3t9b5CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM10FT005.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::47) by
 DM6NAM10HT067.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::233)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Tue, 28 Apr
 2020 23:33:01 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e86::4c) by DM6NAM10FT005.mail.protection.outlook.com
 (2a01:111:e400:7e86::87) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Tue, 28 Apr 2020 23:33:01 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:4C4BFC1E138AF698EC9B74CB087DB01D929962F2314EDE3F00C46125092DE321;
 UpperCasedChecksum:203ABE6D764C7B541D71C37161A2EB21880CF28E9A587BC16C39A7BCA3067930;
 SizeAsReceived:9245; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 23:33:01 +0000
Subject: Re: [PATCH 06/13] arm: dts: s5pv210: aries: Add support for more
 devices
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <BN6PR04MB0660563639D091548BFCCFF2A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
 <20200428102026.GB23963@kozik-lap>
From: Jonathan Bakker <xc-racer2@live.ca>
Message-ID: <BN6PR04MB0660776A38353DBDF0E2E3F9A3AC0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Tue, 28 Apr 2020 16:32:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
In-Reply-To: <20200428102026.GB23963@kozik-lap>
Content-Language: en-US
X-ClientProxiedBy: MWHPR11CA0041.namprd11.prod.outlook.com
 (2603:10b6:300:115::27) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <2fcf0fb1-9a47-d481-4285-a894858e54ae@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:569:fb67:7300:9f89:4b96:de0b:cd14]
 (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR11CA0041.namprd11.prod.outlook.com (2603:10b6:300:115::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Tue, 28 Apr 2020 23:32:59 +0000
X-Microsoft-Original-Message-ID: <2fcf0fb1-9a47-d481-4285-a894858e54ae@live.ca>
X-TMN: [9vG9gbXJ2RZlfiyMEIrXeVQDYngTwG4wO7h96rawItU0gFaCpX8McFh59mHeLYGH]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 3ad98ce3-6ada-4509-75cd-08d7ebcc7d60
X-MS-TrafficTypeDiagnostic: DM6NAM10HT067:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MmDDFUt7wttFgZwz7MtFVy9qcqFBtdzbVa4RvNlnG/z33w0t15URo43dhWdt0heKlwngIE+OHRN2DSjLZO63387KzfmgpvBsCd6DarntjR2X4E8UAVRqz8CSlB+vp6ugpmo1aZpXi+ldpZOSSoD9ra3AapUbb+hrR9dK9pBYyhXnX75l2iv8AK8Gsq18WJQQ+alIOuvAZfFyxreHOmCbCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: txiL8uXO9f/42y7dMy5bxmC9WSddtjzo753nNlpH7VFQgSrY6hdyrInghmdJ8OOChZIaDL3kMSgFTiL+e3Qyde8dDGDl7dG/+pPOjZC+i4AhBpzW3c9+VAlvRQhV3ydJtCqUhylBDmvnwWgeFierHM3tnNSpR4FzwZLh8OVgjiiO5f7s4Mo+pOjoy+TBi84CPKxG+1GwOcanPFn6pEYj1A==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ad98ce3-6ada-4509-75cd-08d7ebcc7d60
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 23:33:00.9482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_163304_465089_A6D658BD 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.41.71 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.41.71 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS3J6eXN6dG9mLAoKT24gMjAyMC0wNC0yOCAzOjIwIGEubS4sIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgMTE6MzU6NTdBTSAtMDcwMCwgSm9u
YXRoYW4gQmFra2VyIHdyb3RlOgo+PiBBZGQgc3VwcG9ydCBmb3IgZm9sbG93aW5nIGRldmljZXM6
Cj4+ICAgLSB0b3VjaGtleXMgY29ubmVjdGVkIG92ZXIgaTJjLWdwaW8KPj4gICAtIHM2ZTYzbTAg
cGFuZWwgY29ubmVjdGVkIG92ZXIgc3BpLWdwaW8KPj4gICAtIGZzYTk0ODAgbWljcm91c2Igc3dp
dGNoIG92ZXIgaTJjLWdwaW8KPj4gICAtIHdtODk5NCBvdmVyIGkyYy1ncGlvIChubyBtYWNoaW5l
IGRyaXZlciB5ZXQpCj4+ICAgLSBhbGwgY29tbW9uIGkyYy1ncGlvIGRldmljZXMKPiAKPiBQbGVh
c2Ugc3BsaXQgaXQgcGVyIGZ1bmN0aW9uYWxpdHksIGUuZy46Cj4gMS4gQWRkIHNvdW5kLAo+IDIu
IEFkZCBwYW5lbCwKPiAzLiBBZGQgdG91Y2hrZXlzICh1bmxlc3MgcGFydCBvZiBwYW5lbCksCj4g
NC4gVGhlIHJlbWFpbmluZyBpMmMtZ3BpbyBkZXZpY2VzIHdpdGhvdXQgYmluZGluZ3MgY291bGQg
Z28gYXMgb25lLgoKT2ssIHdpbGwgZG8uCgo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhh
biBCYWtrZXIgPHhjLXJhY2VyMkBsaXZlLmNhPgo+PiBTaWduZWQtb2ZmLWJ5OiBQYXdlxYIgQ2ht
aWVsIDxwYXdlbC5taWtvbGFqLmNobWllbEBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgYXJjaC9hcm0v
Ym9vdC9kdHMvczVwdjIxMC1hcmllcy5kdHNpICAgICAgfCAyODIgKysrKysrKysrKysrKysrKysr
KystLQo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1mYXNjaW5hdGU0Zy5kdHMgfCAgIDYg
Kwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAyNzAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kg
Yi9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kKPj4gaW5kZXggZjgzZGY0MjZm
MmI2Li5lZjk2NmQxM2Q4M2QgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYy
MTAtYXJpZXMuZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0
c2kKPj4gQEAgLTEyLDggKzEyLDE0IEBACj4+ICAJY29tcGF0aWJsZSA9ICJzYW1zdW5nLGFyaWVz
IiwgInNhbXN1bmcsczVwdjIxMCI7Cj4+ICAKPj4gIAlhbGlhc2VzIHsKPj4gKwkJaTJjNCA9ICZp
MmNfc291bmQ7Cj4+ICsJCWkyYzUgPSAmaTJjX2FjY2VsOwo+PiAgCQlpMmM2ID0gJmkyY19wbWlj
Owo+PiArCQlpMmM3ID0gJmkyY19tdXNiOwo+PiAgCQlpMmM5ID0gJmkyY19mdWVsOwo+PiArCQlp
MmMxMCA9ICZpMmNfdG91Y2hrZXk7Cj4+ICsJCWkyYzExID0gJmkyY19wcm94Owo+PiArCQlpMmMx
MiA9ICZpMmNfbWFnbmV0b21ldGVyOwo+PiAgCX07Cj4+ICAKPj4gIAltZW1vcnlAMzAwMDAwMDAg
ewo+PiBAQCAtNDgsNiArNTQsMTggQEAKPj4gIAkJZ3BpbyA9IDwmZ3BqMSAxIEdQSU9fQUNUSVZF
X0hJR0g+Owo+PiAgCX07Cj4+ICAKPj4gKwl0b3VjaGtleV92ZGQ6IHJlZ3VsYXRvci1maXhlZC0x
IHsKPj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+PiArCQlyZWd1bGF0b3It
bmFtZSA9ICJWVE9VQ0hfMy4zViI7Cj4+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMz
MDAwMDA+Owo+PiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPj4gKwkJ
ZW5hYmxlLWFjdGl2ZS1oaWdoOwo+PiArCQlncGlvID0gPCZncGozIDIgR1BJT19BQ1RJVkVfSElH
SD47Cj4+ICsKPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwkJcGluY3RybC0w
ID0gPCZ0b3VjaGtleV92ZGRfZW5hPjsKPj4gKwl9Owo+PiArCj4+ICAJd2lmaV9wd3JzZXE6IHdp
ZmktcHdyc2VxIHsKPj4gIAkJY29tcGF0aWJsZSA9ICJtbWMtcHdyc2VxLXNpbXBsZSI7Cj4+ICAJ
CXJlc2V0LWdwaW9zID0gPCZncGcxIDIgR1BJT19BQ1RJVkVfTE9XPjsKPj4gQEAgLTU3LDcgKzc1
LDY5IEBACj4+ICAJCXBvd2VyLW9mZi1kZWxheS11cyA9IDw1MDA+Owo+PiAgCX07Cj4+ICAKPj4g
LQlpMmNfcG1pYzogaTJjLWdwaW8tMCB7Cj4+ICsJaTJjX3NvdW5kOiBpMmMtZ3Bpby0wIHsKPj4g
KwkJY29tcGF0aWJsZSA9ICJpMmMtZ3BpbyI7Cj4+ICsJCXNkYS1ncGlvcyA9IDwmbXAwNSAzIChH
UElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4+ICsJCXNjbC1ncGlvcyA9IDwm
bXAwNSAyIChHUElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKT47Cj4+ICsJCWkyYy1n
cGlvLGRlbGF5LXVzID0gPDI+Owo+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkJI3Np
emUtY2VsbHMgPSA8MD47Cj4+ICsKPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4g
KwkJcGluY3RybC0wID0gPCZzb3VuZF9pMmNfcGlucz47Cj4+ICsKPj4gKwkJd204OTk0OiB3bTg5
OTRAMWEgewo+PiArCQkJY29tcGF0aWJsZSA9ICJ3bGYsd204OTk0IjsKPj4gKwkJCXJlZyA9IDww
eDFhPjsKPj4gKwo+PiArCQkJI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKPj4gKwo+PiArCQkJZ3Bp
by1jb250cm9sbGVyOwo+PiArCQkJI2dwaW8tY2VsbHMgPSA8Mj47Cj4+ICsKPj4gKwkJCWNsb2Nr
cyA9IDwmY2xvY2tzIE1PVVRfQ0xLT1VUPjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gIk1DTEsxIjsK
Pj4gKwo+PiArCQkJQVZERDItc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+PiArCQkJREJWREQtc3Vw
cGx5ID0gPCZidWNrM19yZWc+Owo+IAo+IE5vIHN1Y2ggc3VwcGx5LCBjaGVjayB0aGUgYmluZGlu
Z3MuCj4gCgpXZWxsLCBpdCBtYXkgbm90IGJlIGluIHRoZSBiaW5kaW5ncywgYnV0IHRoZSBkcml2
ZXIgZGVmaW5pdGVseSByZXF1aXJlcyBpdCA6KSBTZWUgZHJpdmVycy9tZmQvd204OTk0LWNvcmUu
YwoKV2hhdCdzIHRoZSBiZXN0IHdheSBvZiBkZWFsaW5nIHdpdGggdGhpcyBzaXR1YXRpb24/Cgo+
PiArCQkJQ1BWREQtc3VwcGx5ID0gPCZidWNrM19yZWc+Owo+PiArCQkJU1BLVkREMS1zdXBwbHkg
PSA8JmJ1Y2szX3JlZz47Cj4+ICsJCQlTUEtWREQyLXN1cHBseSA9IDwmYnVjazNfcmVnPjsKPj4g
Kwo+PiArCQkJd2xmLGdwaW8tY2ZnID0gPDB4YTEwMSAweDgxMDAgMHgwMTAwIDB4MDEwMCAweDgx
MDAKPj4gKwkJCQkJMHhhMTAxIDB4MDEwMCAweDgxMDAgMHgwMTAwIDB4MDEwMAo+PiArCQkJCQkw
eDAxMDA+Owo+PiArCj4+ICsJCQl3bGYsbGRvMWVuYSA9IDwmZ3BmMyA0IEdQSU9fQUNUSVZFX0hJ
R0g+Owo+PiArCQkJd2xmLGxkbzJlbmEgPSA8JmdwZjMgNCBHUElPX0FDVElWRV9ISUdIPjsKPj4g
Kwo+PiArCQkJd2xmLGxpbmVvdXQxLXNlOwo+PiArCQkJd2xmLGxpbmVvdXQyLXNlOwo+PiArCj4+
ICsJCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNsb2NrcyBNT1VUX0NMS09VVD47Cj4+ICsJCQlhc3Np
Z25lZC1jbG9jay1yYXRlcyA9IDwwPjsKPj4gKwkJCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8
Jnh1c2J4dGk+Owo+PiArCj4+ICsJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQkJ
cGluY3RybC0wID0gPCZjb2RlY19sZG8+Owo+PiArCQl9Owo+PiArCX07Cj4+ICsKPj4gKwlpMmNf
YWNjZWw6IGkyYy1ncGlvLTEgewo+PiArCQljb21wYXRpYmxlID0gImkyYy1ncGlvIjsKPj4gKwkJ
c2RhLWdwaW9zID0gPCZncGozIDYgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4p
PjsKPj4gKwkJc2NsLWdwaW9zID0gPCZncGozIDcgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09Q
RU5fRFJBSU4pPjsKPj4gKwkJaTJjLWdwaW8sZGVsYXktdXMgPSA8Mj47Cj4+ICsJCSNhZGRyZXNz
LWNlbGxzID0gPDE+Owo+PiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPj4gKwo+PiArCQlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8JmFjY2VsX2kyY19waW5zPjsK
Pj4gKwo+PiArCQkvKiBibWEwMjMgYWNjZWxlcm9tZXRlciwgbm8gbWFpbmxpbmUgYmluZGluZyAq
Lwo+IAo+IHN0YXR1cyBkaXNhYmxlZCAuLi4gdW5sZXNzIHlvdSBuZWVkIGl0IGZvciB1c2VyLXNw
YWNlIEkyQyB0b29scz8KPiAKCk5vcGUsIGJ1dCB3YW50ZWQgdG8gYWRkIHRoZW0gYWxsIGluIGR1
ZSB0byBhZGRpbmcgdGhlIHNpNDcwOSBpbiBnYWxheHlzLiAgSSB3YXMgaGF2aW5nCmlzc3VlcyB3
aXRoIGFjY2lkZW50YWxseSBvdmVyd3JpdGluZyBwcmV2aW91c2x5IG5hbWVkIG5vZGVzIChpZSBo
YXZpbmcgaTJjLWdwaW8tMCBpbgpib3RoIHRoZSBjb21tb24gZHRzaSBhbmQgdGhlIGRldmljZSBz
cGVjaWZpYyBkdHMpIHNvIEkgd2FudGVkIHRvIGdldCB0aGUgbnVtYmVycwpuYWlsZWQgZG93bi4K
CgoKPHNuaXA+Cgo+PiAgCj4+ICAmcHdtIHsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3M1cHYyMTAtZmFzY2luYXRlNGcuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1m
YXNjaW5hdGU0Zy5kdHMKPj4gaW5kZXggOTRkY2I5YjY0YjlhLi40MmU2ZTJkZTE5N2QgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZmFzY2luYXRlNGcuZHRzCj4+ICsr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZmFzY2luYXRlNGcuZHRzCj4+IEBAIC0yNzgs
MyArMjc4LDkgQEAKPj4gIAkJUElOX1NMUChtcDA3LTcsIElOUFVULCBET1dOKTsKPj4gIAl9Owo+
PiAgfTsKPj4gKwo+PiArJndtODk5NCB7Cj4+ICsJLyogR1BJTzMgKEJDTEsyKSBhbmQgR1BJTzQg
KExSQ0xLMikgYXMgb3V0cHV0cyAqLwo+PiArCXdsZixncGlvLWNmZyA9IDwweGExMDEgMHg4MTAw
IDB4ODEwMCAweDgxMDAgMHg4MTAwIDB4YTEwMQo+PiArCQkweDAxMDAgMHg4MTAwIDB4MDEwMCAw
eDAxMDAgMHgwMTAwPjsKPiAKPiBJbmRlbnQgdGhlIGxpbmUgdGlsbCBvcGVuaW5nIDwuCgpXaWxs
IGRvLgoKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4gCgoKVGhhbmtzLApKb25hdGhh
bgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
