Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217F41B9308
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6a/ku+8qf6ODED+xsJ6QIFIxCo3HnAXtFloQqWsXDs=; b=meey96e7rb56lS
	EXo2b7wqHLb8W+T2OAVpJ1rp9vXEvmno9sVU2vplcKu0djqe1ph4/hcas9K8WoXVqxF41pRireCa2
	rQxP1W1FlIUU2y/DtV2mWJiuxujssTrgni3TUomiHsj4h442imPCIFx4TxImeRYS6mxjhzmLhLl2p
	+aBkZDxof+FOwrII0vfpd4IvDR6zW/Epij0Sy2qrKLEJ84d0Kx6mABEFNAlPPXL/n+B958hoeeaUE
	J+QCE7yp3G6did/DjOM7dOC1Gx+g/ycjcKrgsahHcy6sm1eWmV7uVXJHi8EHB+UH6lQeT9dI5AqdJ
	UiJj7zErMpTLiVT+Gevw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmBe-0008E4-Rl; Sun, 26 Apr 2020 18:39:30 +0000
Received: from mail-co1nam11olkn2086.outbound.protection.outlook.com
 ([40.92.18.86] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8v-00062V-At
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvqjvSQo9eYJbRnQKSyVz+lPVH/YneWv2bEKDGUh/FK1XC06u9Qmj+xwP9ShJiZvHSW0RPMK9xY/ir8qXl+SYCmrBVj80zbqMMCdwuratH2mBi2dWCs1sxQLlYrGpxGWxHYhc2646QB3D1cseV1n4S8BTM36hPub4wi9e6iXwnZtvJTE7QsnadPUqoxmWXPyGQiRQfvq+63nDvkmnWCDqsBqW4K9+O2BTGAg2rBYAp/ysQr4LbzXTjUfxK/wUA3Op/RdfbNmOdxiWg9Wu/jehfhsT1SUsHayYJ/KWc1iZ4zMRY7yKojUWdOl9jk8JCbBuyRNlDoeVjHpuQFisvTHYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3ANvzOSC6QBgJ3h9QyuwoRjD/dFEnablZURsNl5Ry/Q=;
 b=JzgV5ee8298hARcMEBBxNlkmfckXj+DU8ljumAsnnWLMJywVbdUmNClHVxTFPf0geY+Lf/EcvA+G+jmAnNXMdOOmFLfp0D9Zyfo1WxS3NG90L5j4OyMsL5f8toGLH8Z2/4AjEfV3iPQfGljnRqXPXywCIq6L8418bv20Nh8V+zfLpCMBqbqM2Ad1gNJwgWGWc/OTNyF26bS5tkSAF/RkPKv41bDwFWjaeRXjWPZeqcrQNnV7xlUuYO5uKCrPXtEpASJgrPvFcuQ9v8SjgMGCnSu50nt6eP4yfY8NljhVcBQtgXA6XKPiBbwrrKWjDhthttPkuZuTlAADhFEFM/R4aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::44) by
 CO1NAM11HT181.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::187)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:39 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:39 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:4034047005717F4C81398863669A381DADEF24AE78B70DF6F03E6C1B3BB9044B;
 UpperCasedChecksum:E332E393AF75C0DE442CEDA33790EFF753C373611BD052E64E8DB0F9E72704B4;
 SizeAsReceived:9048; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:39 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 07/13] arm: dts: s5pv210: galaxys: Add si470x fmradio
Date: Sun, 26 Apr 2020 11:35:58 -0700
Message-ID: <BN6PR04MB0660205C8F173BF98B4D0DC1A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-8-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:37 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-8-xc-racer2@live.ca>
X-TMN: [7JOn8Uv2lYGIafiOEz7enJgYbAB8vFX0wgp8CpG+glcKUP7lRvolmQTR72Xnh63E]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ecc70036-b410-49b1-e922-08d7ea10c1c2
X-MS-TrafficTypeDiagnostic: CO1NAM11HT181:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: htBOo5DI70WIXqNQAbGASwvQOVlFlA9rGHxiDIh9kTdiNPsZfxUXBGpSbJnULAixd9xaJ3z1fFLmiHHOe6qb4iT1DBSUdaK3MATGCYynIdcM1UDcKiELFgULRAEXGIlmwIK7Izi13GrEmt53Z+yl9syVf+vBv+6Gnd3oJa4LUFchJsdZ7YjNvDEi3BJhvp5IMR48KvtrTO6ZgQrr48NbGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: +8XU+TalfQQ99O3Kn5SgSfEtBScItEvMXVHXv/z65E3aK+5KCqwZi3eN5NzuLP6Q58hu1iZo9tRRmlXAQrS7G7fWzZuiTx/7zmmbm7DZbD91t6wQ/HvIeUplfjRc9eA3lYzSZkyizb1LQEkA44gD/Veeh6VHw2unf0zyJzb+wnr6iE530WvAo2l50oGzw0amYqDDHK6iPmFcGpFtiJFnZA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc70036-b410-49b1-e922-08d7ea10c1c2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:39.2794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113641_486422_BFA61A68 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.86 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.18.86 listed in wl.mailspike.net]
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
Cc: Jonathan Bakker <xc-racer2@live.ca>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwuY29tPgoKQWRk
IHN1cHBvcnQgZm9yIHRoZSBTaWxpY29uIExhYnMgc2k0NzA5IGZtcmFkaW8sIHdoaWNoIGNhbiBi
ZSBmb3VuZApvbiBHYWxheHkgUyBHVC1pOTAwMCAoYnV0IG5vdCBtb3N0IG90aGVyIEdhbGF4eSBT
IHZhcmlhbnRzKS4KClNpZ25lZC1vZmYtYnk6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWou
Y2htaWVsQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQmFra2VyIDx4Yy1yYWNl
cjJAbGl2ZS5jYT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kgIHwg
IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZ2FsYXh5cy5kdHMgfCA0NyArKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJp
ZXMuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMuZHRzaQppbmRleCBlZjk2
NmQxM2Q4M2QuLjEyNTc1ZDY0YWEwNiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvczVw
djIxMC1hcmllcy5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMuZHRz
aQpAQCAtMTEsNyArMTEsNyBAQAogLyB7CiAJY29tcGF0aWJsZSA9ICJzYW1zdW5nLGFyaWVzIiwg
InNhbXN1bmcsczVwdjIxMCI7CiAKLQlhbGlhc2VzIHsKKwlhbGlhc2VzOiBhbGlhc2VzIHsKIAkJ
aTJjNCA9ICZpMmNfc291bmQ7CiAJCWkyYzUgPSAmaTJjX2FjY2VsOwogCQlpMmM2ID0gJmkyY19w
bWljOwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1nYWxheHlzLmR0cyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZ2FsYXh5cy5kdHMKaW5kZXggMmVmZjFlNjZhMmE1
Li5mNWMxM2ViOGFlNzEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZ2Fs
YXh5cy5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1nYWxheHlzLmR0cwpAQCAt
NDksMTIgKzQ5LDU5IEBACiAJCQl3YWtldXAtc291cmNlOwogCQl9OwogCX07CisKKwlpMmNfZm1y
YWRpbzogaTJjLWdwaW8tOCB7CisJCWNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOworCQlzZGEtZ3Bp
b3MgPSA8JmdwZDEgMiAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+OworCQlz
Y2wtZ3Bpb3MgPSA8JmdwZDEgMyAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+
OworCQlpMmMtZ3BpbyxkZWxheS11cyA9IDwyPjsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJ
CSNzaXplLWNlbGxzID0gPDA+OworCisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBp
bmN0cmwtMCA9IDwmZm1faTJjX3BpbnM+OworCisJCWZtcmFkaW9AMTAgeworCQkJY29tcGF0aWJs
ZSA9ICJzaWxhYnMsc2k0NzB4IjsKKwkJCXJlZyA9IDwweDEwPjsKKwkJCWludGVycnVwdC1wYXJl
bnQgPSA8JmdwajI+OworCQkJaW50ZXJydXB0cyA9IDw0IElSUV9UWVBFX0VER0VfRkFMTElORz47
CisJCQlyZXNldC1ncGlvcyA9IDwmZ3BqMiA1IEdQSU9fQUNUSVZFX0hJR0g+OworCisJCQlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOworCQkJcGluY3RybC0wID0gPCZmbV9pcnEgJmZtX3JzdD47
CisJCX07CisJfTsKK307CisKKyZhbGlhc2VzIHsKKwlpMmM4ID0gJmkyY19mbXJhZGlvOwogfTsK
IAogJnBpbmN0cmwwIHsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9
IDwmc2xlZXBfY2ZnPjsKIAorCWZtX2kyY19waW5zOiBmbS1pMmMtcGlucyB7CisJCXNhbXN1bmcs
cGlucyA9ICJncGQxLTIiLCAiZ3BkMS0zIjsKKwkJc2Ftc3VuZyxwaW4tcHVkID0gPFMzQzY0WFhf
UElOX1BVTExfTk9ORT47CisJCXNhbXN1bmcscGluLWRydiA9IDxFWFlOT1M0X1BJTl9EUlZfTFYx
PjsKKwl9OworCisJZm1faXJxOiBmbS1pcnEgeworCQlzYW1zdW5nLHBpbnMgPSAiZ3BqMi00IjsK
KwkJc2Ftc3VuZyxwaW4tZnVuY3Rpb24gPSA8RVhZTk9TX1BJTl9GVU5DX0lOUFVUPjsKKwkJc2Ft
c3VuZyxwaW4tcHVkID0gPFMzQzY0WFhfUElOX1BVTExfVVA+OworCQlzYW1zdW5nLHBpbi1kcnYg
PSA8RVhZTk9TNF9QSU5fRFJWX0xWMT47CisJfTsKKworCWZtX3JzdDogZm0tcnN0IHsKKwkJc2Ft
c3VuZyxwaW5zID0gImdwajItNSI7CisJCXNhbXN1bmcscGluLWZ1bmN0aW9uID0gPEVYWU5PU19Q
SU5fRlVOQ19PVVRQVVQ+OworCQlzYW1zdW5nLHBpbi1wdWQgPSA8UzNDNjRYWF9QSU5fUFVMTF9O
T05FPjsKKwkJc2Ftc3VuZyxwaW4tZHJ2ID0gPEVYWU5PUzRfUElOX0RSVl9MVjE+OworCX07CisK
IAltYXNzbWVtb3J5X2VuOiBtYXNzbWVtb3J5LWVuIHsKIAkJc2Ftc3VuZyxwaW5zID0gImdwajIt
NyI7CiAJCXNhbXN1bmcscGluLWZ1bmN0aW9uID0gPEVYWU5PU19QSU5fRlVOQ19PVVRQVVQ+Owot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
