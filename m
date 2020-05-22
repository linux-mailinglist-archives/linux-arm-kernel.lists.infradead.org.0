Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEF41DE398
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ybpaBVUKcPNLDyT4Q7riDJq6Khb5K8sPIp5uatnTG7A=; b=Mnaw6wJI6bTYXAPD/YFrNAZZR
	hQDcssS+so9XPFDQA4Gd00GP0H6H9ERfi68av37GW8R+kOL9hGBeQlRXCNQTMi1tFR7JUXzxolYy+
	KyA4OnGFrAbGvWW0PR0yAagUHXvJZWGNGU8J+QLB8S+cZMZ11FG41dhKYFQlv9/JSqYBv8q4ewFwf
	S0jtZqXX2uBS+2+lj27h7MeRh3VcFkPFuQye71zbkG+P+OdOLt7YxK1BahXC3cHNO3KCfu8rGfaOA
	Zk8Iz/+t2A6zKDm+QB1V1gzJBanUzC1GvvDy5+8RvMdO9o72/b/PI6XT+pO0U7doj3Hen9V0mcARh
	tTc0SS9Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4Qr-0000n4-O9; Fri, 22 May 2020 09:57:37 +0000
Received: from mail-eopbgr80071.outbound.protection.outlook.com ([40.107.8.71]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4Qg-0000mQ-Me
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:57:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpyOOSlJAodHsklUaFRH0TymYWyt6DPUt+hS0CsJput523K+xt9FWrMsSw0rFnvN7GAHMTejjhFnYu2WUy+H/tuN4ENDT48pyNahSP2hX9Ac8Jcc/zgJ3PgQqDdrO6cDwodVL7ozrgU+loJBSK9FFRoJanI84tJpkBYbr4Iay/JulYbhnNgECms1/ZaKFmzaNFD5jtbnrxt92fQ6FTo4nBh9aJmhUEatRFbCqv8PNRWaVZYQsVtlPhoHwcExRAv4hL1i6NwECsPBAsr5i8HIGrBaXscOpWs9U0ciq9qexBsHioLbV+BV3UfRSB1H65xo7RoWSzN5dz9bRDYPp/eK5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DiRek/1gWLqwYviHH523BGPtwtE2kagpc48+ur8iZg4=;
 b=arAFKKmlk/FDNZ4gIpMyBqYTfYw2lQV8WYVbjLVY4FTie2kisaIMtZqXxZQ6ZTvYCZBuuQIY/WMKODJVjWBFZ5WPiPnSWJKzuA/kkNd29N0ik0Mv86JwBIwRsogRJsKbW1S7WWP+1CZ5UUf+3mwWnIgrJJ5pN+RTFNDa6BDt8YGl+97J35+LCYljgmiSGVP9/TZoI+V9+UE5prCufAqV4YqbwfWzuM+Ti/WDsBxy5/f+C/1ktgGRGZwlqtM23NqKexgg9ZhK/yjNH0QMrtNRJTWkWfsPVolTSm3oUjcyWXWvMmW1ger6BwXVsCi75S3FuDCgHNrTFXwelwLGDYk7Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DiRek/1gWLqwYviHH523BGPtwtE2kagpc48+ur8iZg4=;
 b=Gttv99l1I8j39M/iAC6TKoAAqrGjUBkvMaUF2Oq8p8WqdURCn0fK10l3pBK/EnGMYZWfwzFqr4KjWRpBUX76TI9Nf6VXP+8sAj0DMvurDbOJZRZ8s75NKBG5iiC4ABShPTryLuXQiwo6mHoq8IRljEiso/Q6bZo/ZlKocn+yfxk=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=oss.nxp.com;
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::16) by VI1PR0402MB3616.eurprd04.prod.outlook.com
 (2603:10a6:803:8::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Fri, 22 May
 2020 09:57:21 +0000
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::81fd:56b7:594b:59c0]) by VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::81fd:56b7:594b:59c0%10]) with mapi id 15.20.3021.026; Fri, 22 May
 2020 09:57:21 +0000
Subject: Re: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
 <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
 <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
From: Diana Craciun OSS <diana.craciun@oss.nxp.com>
Message-ID: <ee7a5c04-814e-215f-ec74-52c2f3b881d0@oss.nxp.com>
Date: Fri, 22 May 2020 12:57:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0169.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::38) To VI1PR0402MB2815.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.122] (81.196.112.2) by
 AM0PR01CA0169.eurprd01.prod.exchangelabs.com (2603:10a6:208:aa::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24 via Frontend
 Transport; Fri, 22 May 2020 09:57:19 +0000
X-Originating-IP: [81.196.112.2]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3c04f067-51a7-4fc4-cce7-08d7fe3684ca
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3616:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3616D5811326B2BE8C6383C0BEB40@VI1PR0402MB3616.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 04111BAC64
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lZK/RkyvmIvq4ObOJ01NQnu1OgK0NbX696tlJ/QZuwOlHHJLn0VsQ3S5c5CZHc6sfgsBV32k0djdccGHfNJccHacCuzOVH/WuYuh9OjizawKYBv8E0ri46Vpuej40I44Z0A2CAbcd9RxtymHfCyTvFPjcC6N1HIvLZ/4rkgIfbBCEeaW9J+1LyNhKy8Npolz/eW2u+rhT3iZAtlfuXVTBSDAmR5Y/J9fMXABXdTl9L+kZgGHlyU8l8ETSFglW+bEA9VfpsD71pOzoOu8cTT306+hSNTPIVUC9MQBMewh/rUH0ETeEtBZTwqfLRTJTacGPANi3k6XqoPGwkCh79X4if6X8YpvtpohDP5CHetwC71BwY5oe+L2A104orWdQxtbdBkwAzBvyH4UdqL0zYy92R/qnRQZVj1JOBr8SnPaYnaaIpH2m3QrIKC+ZBoWJWJYRfJAdof3DbwRChqWmQ1Fu5qYcFtWCdkXHPfCcDlsAV89QERkHaah9SXvSSHpnynEkeRD40Fgs4hZoYeW3NaijqmODeTfeej8k+crGR3Gd3z7h9T4/0Xhj8E1N2qGUMJBYd14973LP3wfN/Xktn0p2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB2815.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(376002)(346002)(396003)(39860400002)(478600001)(5660300002)(966005)(7416002)(66946007)(2616005)(86362001)(54906003)(16576012)(52116002)(31686004)(4326008)(6666004)(316002)(956004)(2906002)(6486002)(53546011)(8936002)(31696002)(110136005)(8676002)(16526019)(66556008)(66476007)(26005)(186003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: LiNugFNsLsT2IU/m+fXuKsRG4k2Q3PXQG1aMgarynHUWdpAj1iAC8rt+LTzpDibfXqTrkzxNEkg2e3UaFZ5d1I9q8aLYZqTUeWx2Ehej7ZNzJ4/FnAAbJ8CKH3Z7/d8q0No5pfebAONHFXSjFLY+of67LquzZqSKCAfwL+0mD0hq/0kOZu/jdcoPp+piHi+YVIJMbvKZ+Xo6q+Icob2k80tLAfRt69xmOClgWKKXbBec0QoP8JnBqy75CvwtlUOSM6C7D0Wp7O5K16nrYWK/HJ2Ng6r2dfju0P9bXTYLrDHi5ikAU7xxwEIM8puwzG8oPdroISrdkDvBEAm0ZB2S0MYFDu/05JfFYkqNYcSP7zOou9BMyqAw1+QnR62PfmXAK2GsKxohFdQx0Ta+3qqanPK0mLM9CWNXTvXazUOB39PMuD6QbwPTjgNAGavVoFOfC79FaDercYcEQvsH+MfkmRYO5MAML9FY3BRCwxdqp/8=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c04f067-51a7-4fc4-cce7-08d7fe3684ca
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2020 09:57:21.2573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pd+ALR22Ie+M3ExeLZPReA8jU3lSist0knQclq0eaOPVI+5K+EvG/NeNNb06atARrVHZGVNOhUG5/TPBI4p38w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_025726_801962_CB941B48 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.71 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 PCI <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Marc Zyngier <maz@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yMi8yMDIwIDEyOjQyIFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjAyMC0wNS0y
MiAwMDoxMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+IE9uIFRodSwgTWF5IDIxLCAyMDIwIGF0IDc6
MDAgQU0gTG9yZW56byBQaWVyYWxpc2kKPj4gPGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+IHdy
b3RlOgo+Pj4KPj4+IEZyb206IExhdXJlbnRpdSBUdWRvciA8bGF1cmVudGl1LnR1ZG9yQG54cC5j
b20+Cj4+Pgo+Pj4gVGhlIGV4aXN0aW5nIGJpbmRpbmdzIGNhbm5vdCBiZSB1c2VkIHRvIHNwZWNp
ZnkgdGhlIHJlbGF0aW9uc2hpcAo+Pj4gYmV0d2VlbiBmc2wtbWMgZGV2aWNlcyBhbmQgR0lDIElU
U2VzLgo+Pj4KPj4+IEFkZCBhIGdlbmVyaWMgYmluZGluZyBmb3IgbWFwcGluZyBmc2wtbWMgZGV2
aWNlcyB0byBHSUMgSVRTZXMsIHVzaW5nCj4+PiBtc2ktbWFwIHByb3BlcnR5Lgo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IExhdXJlbnRpdSBUdWRvciA8bGF1cmVudGl1LnR1ZG9yQG54cC5jb20+Cj4+
PiBDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KPj4+IC0tLQo+Pj4gwqAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9mc2wscW9yaXEtbWMudHh0IHwgMzAgCj4+PiArKysr
KysrKysrKysrKysrKy0tCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21pc2MvZnNsLHFvcmlxLW1jLnR4dCAKPj4+IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL21pc2MvZnNsLHFvcmlxLW1jLnR4dAo+Pj4gaW5kZXggOTEzNGU5
YmNjYTU2Li5iMDgxM2IyZDA0OTMgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWlzYy9mc2wscW9yaXEtbWMudHh0Cj4+PiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9mc2wscW9yaXEtbWMudHh0Cj4+PiBAQCAtMTgs
OSArMTgsOSBAQCBzYW1lIGhhcmR3YXJlICJpc29sYXRpb24gY29udGV4dCIgYW5kIGEgMTAtYml0
IAo+Pj4gdmFsdWUgY2FsbGVkIGFuIElDSUQKPj4+IMKgIHRoZSByZXF1ZXN0ZXIuCj4+Pgo+Pj4g
wqAgVGhlIGdlbmVyaWMgJ2lvbW11cycgcHJvcGVydHkgaXMgaW5zdWZmaWNpZW50IHRvIGRlc2Ny
aWJlIHRoZSAKPj4+IHJlbGF0aW9uc2hpcAo+Pj4gLWJldHdlZW4gSUNJRHMgYW5kIElPTU1Vcywg
c28gYW4gaW9tbXUtbWFwIHByb3BlcnR5IGlzIHVzZWQgdG8gZGVmaW5lCj4+PiAtdGhlIHNldCBv
ZiBwb3NzaWJsZSBJQ0lEcyB1bmRlciBhIHJvb3QgRFBSQyBhbmQgaG93IHRoZXkgbWFwIHRvCj4+
PiAtYW4gSU9NTVUuCj4+PiArYmV0d2VlbiBJQ0lEcyBhbmQgSU9NTVVzLCBzbyB0aGUgaW9tbXUt
bWFwIGFuZCBtc2ktbWFwIHByb3BlcnRpZXMgCj4+PiBhcmUgdXNlZAo+Pj4gK3RvIGRlZmluZSB0
aGUgc2V0IG9mIHBvc3NpYmxlIElDSURzIHVuZGVyIGEgcm9vdCBEUFJDIGFuZCBob3cgdGhleSAK
Pj4+IG1hcCB0bwo+Pj4gK2FuIElPTU1VIGFuZCBhIEdJQyBJVFMgcmVzcGVjdGl2ZWx5Lgo+Pj4K
Pj4+IMKgIEZvciBnZW5lcmljIElPTU1VIGJpbmRpbmdzLCBzZWUKPj4+IMKgIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9pb21tdS50eHQuCj4+PiBAQCAtMjgsNiArMjgs
OSBAQCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9tbXUvaW9tbXUudHh0Lgo+
Pj4gwqAgRm9yIGFybS1zbW11IGJpbmRpbmcsIHNlZToKPj4+IMKgIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9pb21tdS9hcm0sc21tdS55YW1sLgo+Pj4KPj4+ICtGb3IgR0lDdjMg
YW5kIEdJQyBJVFMgYmluZGluZ3MsIHNlZToKPj4+ICtEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLGdpYy12My55YW1sLiAKPj4+Cj4+PiAr
Cj4+PiDCoCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+Pj4KPj4+IMKgwqDCoMKgwqAgLSBjb21wYXRp
YmxlCj4+PiBAQCAtMTE5LDYgKzEyMiwxNSBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+Pj4gwqDC
oMKgIGFzc29jaWF0ZWQgd2l0aCB0aGUgbGlzdGVkIElPTU1VLCB3aXRoIHRoZSBpb21tdS1zcGVj
aWZpZXIKPj4+IMKgwqDCoCAoaSAtIGljaWQtYmFzZSArIGlvbW11LWJhc2UpLgo+Pj4KPj4+ICst
IG1zaS1tYXA6IE1hcHMgYW4gSUNJRCB0byBhIEdJQyBJVFMgYW5kIGFzc29jaWF0ZWQgaW9tbXUt
c3BlY2lmaWVyCj4+PiArwqAgZGF0YS4KPj4+ICsKPj4+ICvCoCBUaGUgcHJvcGVydHkgaXMgYW4g
YXJiaXRyYXJ5IG51bWJlciBvZiB0dXBsZXMgb2YKPj4+ICvCoCAoaWNpZC1iYXNlLGlvbW11LGlv
bW11LWJhc2UsbGVuZ3RoKS4KPj4KPj4gSSdtIGNvbmZ1c2VkIGJlY2F1c2UgdGhlIGV4YW1wbGUg
aGFzIEdJQyBJVFMgcGhhbmRsZSwgbm90IGFuIElPTU1VLgo+Pgo+PiBXaGF0IGlzIGFuIGlvbW11
LWJhc2U/Cj4KPiBSaWdodCwgSSB3YXMgYWxyZWFkeSBoYWxmd2F5IHRocm91Z2ggd3JpdGluZyBh
IHJlcGx5IHRvIHNheSB0aGF0IGFsbCAKPiB0aGUgY29weS1wYXN0ZWQgImlvbW11IiByZWZlcmVu
Y2VzIGhlcmUgc2hvdWxkIGJlIHVzaW5nIHRoZSAKPiB0ZXJtaW5vbG9neSBmcm9tIHRoZSBwY2kt
bXNpLnR4dCBiaW5kaW5nIGluc3RlYWQuCgpSaWdodCwgd2lsbCBjaGFuZ2UgaXQuCgo+Cj4+PiAr
Cj4+PiArwqAgQW55IElDSUQgaW4gdGhlIGludGVydmFsIFtpY2lkLWJhc2UsIGljaWQtYmFzZSAr
IGxlbmd0aCkgaXMKPj4+ICvCoCBhc3NvY2lhdGVkIHdpdGggdGhlIGxpc3RlZCBHSUMgSVRTLCB3
aXRoIHRoZSBpb21tdS1zcGVjaWZpZXIKPj4+ICvCoCAoaSAtIGljaWQtYmFzZSArIGlvbW11LWJh
c2UpLgo+Pj4gwqAgRXhhbXBsZToKPj4+Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc21tdTogaW9t
bXVANTAwMDAwMCB7Cj4+PiBAQCAtMTI4LDYgKzE0MCwxNiBAQCBFeGFtcGxlOgo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLi4uCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsK
Pj4+Cj4+PiArwqDCoMKgwqDCoMKgIGdpYzogaW50ZXJydXB0LWNvbnRyb2xsZXJANjAwMDAwMCB7
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFybSxnaWMt
djMiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLi4uCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpdHM6IGdpYy1pdHNANjAyMDAwMCB7Cj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJhcm0sZ2lj
LXYzLWl0cyI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbXNpLWNvbnRyb2xsZXI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLi4uCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4g
K8KgwqDCoMKgwqDCoCB9Owo+Pj4gKwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGZzbF9tYzogZnNs
LW1jQDgwYzAwMDAwMCB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bXBhdGlibGUgPSAiZnNsLHFvcmlxLW1jIjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVnID0gPDB4MDAwMDAwMDggMHgwYzAwMDAwMCAwIDB4NDA+LMKgwqDCoCAvKiBN
QyAKPj4+IHBvcnRhbCBiYXNlICovCj4+PiBAQCAtMTM1LDYgKzE1Nyw4IEBAIEV4YW1wbGU6Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1zaS1wYXJlbnQgPSA8Jml0cz47
Cj4KPiBTaWRlIG5vdGU6IGlzIGl0IHJpZ2h0IHRvIGtlZXAgbXNpLXBhcmVudCBoZXJlPyBJdCBy
YXRoZXIgaW1wbGllcyB0aGF0IAo+IHRoZSBNQyBpdHNlbGYgaGFzIGEgJ25hdGl2ZScgRGV2aWNl
IElEIHJhdGhlciB0aGFuIGFuIElDSUQsIHdoaWNoIEkgCj4gYmVsaWV2ZSBpcyBub3Qgc3RyaWN0
bHkgdHJ1ZS4gUGx1cyBpdCdzIGV4dHJhLWNvbmZ1c2luZyB0aGF0IGl0IAo+IGRvZXNuJ3Qgc3Bl
Y2lmeSBhbiBJRCBlaXRoZXIgd2F5LCBzaW5jZSB0aGF0IG1ha2VzIGl0IGxvb2sgbGlrZSB0aGUg
Cj4gbGVnYWN5IFBDSSBjYXNlIHRoYXQgZ2V0cyB0cmVhdGVkIGltcGxpY2l0bHkgYXMgYW4gaWRl
bnRpdHkgbXNpLW1hcCwgCj4gd2hpY2ggbWFrZXMgbm8gc2Vuc2UgYXQgYWxsIHRvIGNvbWJpbmUg
d2l0aCBhbiBhY3R1YWwgbXNpLW1hcC4KCkJlZm9yZSBhZGRpbmcgbXNpLW1hcCwgdGhlIGZzbC1t
YyBjb2RlIGFzc3VtZWQgdGhhdCBJQ0lEIGFuZCBzdHJlYW1JRCAKYXJlIGVxdWFsIGFuZCB1c2Vk
IG1zaS1wYXJlbnQganVzdCB0byBnZXQgdGhlIHJlZmVyZW5jZSB0byB0aGUgSVRTIG5vZGUuIApS
ZW1vdmluZyBtc2ktcGFyZW50IHdpbGwgYnJlYWsgdGhlIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkg
b2YgdGhlIGFscmVhZHkgCmV4aXN0aW5nIHN5c3RlbXMuIE1heWJlIHdlIHNob3VsZCBtZW50aW9u
IHRoYXQgdGhpcyBpcyBsZWdhY3kgYW5kIG5vdCB0byAKYmUgdXNlZCBmb3IgbmV3ZXIgZGV2aWNl
IHRyZWVzLgoKCj4KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogZGVm
aW5lIG1hcCBmb3IgSUNJRHMgMjMtNjQgKi8KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW9tbXUtbWFwID0gPDIzICZzbW11IDIzIDQxPjsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLyogZGVmaW5lIG1zaSBtYXAgZm9yIElDSURzIDIzLTY0ICovCj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1zaS1tYXAgPSA8MjMgJml0cyAyMyA0
MT47Cj4+Cj4+IFNlZWluZyAyMyB0d2ljZSBpcyBvZGQuIFRoZSBudW1iZXJzIHRvIHRoZSByaWdo
dCBvZiAnaXRzJyBzaG91bGQgYmUgYW4KPj4gSVRTIG51bWJlciBzcGFjZS4KPgo+IE9uIGFib3V0
IDk5JSBvZiBzeXN0ZW1zIHRoZSB2YWx1ZXMgaW4gdGhlIFNNTVUgU3RyZWFtIElEIGFuZCBJVFMg
Cj4gRGV2aWNlIElEIHNwYWNlcyBhcmUgZ29pbmcgdG8gYmUgdGhlIHNhbWUuIE5vYm9keSdzIGdv
aW5nIHRvIGJvdGhlciAKPiBjYXJyeWluZyAqdHdvKiBzZXRzIG9mIHNpZGViYW5kIGRhdGEgYWNy
b3NzIHRoZSBpbnRlcmNvbm5lY3QgaWYgdGhleSAKPiBkb24ndCBoYXZlIHRvIDspCj4KPiBSb2Jp
bi4KCkRpYW5hCgoKPgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjYWRk
cmVzcy1jZWxscyA9IDwzPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
I3NpemUtY2VsbHMgPSA8MT47Cj4+Pgo+Pj4gLS0gCj4+PiAyLjI2LjEKPj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IGlvbW11IG1haWxpbmcg
bGlzdAo+PiBpb21tdUBsaXN0cy5saW51eC1mb3VuZGF0aW9uLm9yZwo+PiBodHRwczovL2xpc3Rz
LmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9pb21tdQo+PgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
