Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F70D1C21AF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ux7FxpQY5yPFHLDK5buhDKjKiY+XFNH6E9BhCIPQRZk=; b=L9Dp+JGjC9RYRa
	uBv22i7V9Ty2l+FBbTT0EWQC8uI050APcDHG0d1JrmXlpPSiOaJ84jU6sTc0VoD5fhFK5IVECSKJx
	kPpeOfrGaR1RrVMVm3buyTIlqP+DaSUlzqCzwOF6tqVGyGqMeAFBVUNyy+6sjtpj7zFQNH6if3w+B
	hwplV8RC46yenpxxfQBYVcEKlnBpbZ7fV1L4qmUyf6AJUchhabscLmdjE8cc3/M6KG6dpuSGXlDJO
	fw4W8SC03+fLVBCCzNUipfP6gmrkcbaeZ8i7jDE0nsRVMRMofRPv/UnZy13HI9lLxcBj2hGpK0zh+
	7IT9o9KwokMJSOEkT9hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfUA-0001Sx-44; Fri, 01 May 2020 23:54:26 +0000
Received: from mail-dm6nam12olkn2082.outbound.protection.outlook.com
 ([40.92.22.82] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRL-0007Se-Il
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GQi9LWdyTrmRT9UM7zas1wFvO21k2ixBs0UWipPAvyUHFhUkUH24bmP0pikCxWc5dg3+NYb3hxeHPyqh9OxkpgRMI88AOBDEN66zg40CdEh1ic5KUgfRFZkj7P4Xxq9s3yLxmEruYMKOhVeQVw4vD3on1bCc4KsOyBFE91IKro7iVX10+jw9bRYA+Zk9hQVIbfPUkIJVKpkJf6HlvLQ/nI/3qVR5oBy6lWNolBF6iHXSHFdJCxXSV/zVVY2Lg9afjuZsuvAMZYt1kLAi9KSgrct8V9fBb5nubp0pHwfjDfwCDaujeTj1aRdTmb9mg3FFE0KCDvAxWrTjcuhAYFoqQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cd/rQufjw4g/ZnjocC0edes0R1MAvXhYF76hCJFuEd0=;
 b=eReWpOMpYeUGuAPRltAFEu3qx1H/NSQ/vRQodXL1LW6h/k05BY9XinxM/7rcpJbbYIvCd0qZ+JGYC5Wlr6iYYbYaiwse1+SfnY5BFayBKq+uZvUxgTQgxteeoxmOFpj7uATtNv+tg78OZkgk8eTnps5Py9it53TE7iFXM67AZl84sEPPSzuf14FgQMZrhxhg3V7xho8929jZQUGT3c3khPkz4EU342CloJmOiNQS5Uf17whDRDDfdWFjPatr4jVpBuqRDxGql8p9esFM3bxQb9MHTrea24sZ6Hh0U/7LFp9Z/XzbaCqJcdRGepnfW3ZmH1osboa+DxD/1gCVqjd+dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4b) by
 DM6NAM12HT076.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::378)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:29 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:29 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:0DE8F0A40CC586553233A8681A370E201C08B952643FD9CF7DF753BC6D7EE667;
 UpperCasedChecksum:F42C7F27292D9BE2B48C4EFC4049873EF2A656C590D7C39168756702B3A3F2C1;
 SizeAsReceived:9094; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:29 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/18] ARM: dts: s5pv210: Add si470x fmradio to galaxys
Date: Fri,  1 May 2020 16:50:12 -0700
Message-ID: <BN6PR04MB06600948771289E9B3D750F7A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-12-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:27 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-12-xc-racer2@live.ca>
X-TMN: [DXWlrguAmHFFddJg6g/0m2ER62sAMuLqkZm57pu6EDbReCOVyZX1ffvkyRVhDBMs]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: c4d1dd24-9f84-4cd0-3c9d-08d7ee2a9139
X-MS-TrafficTypeDiagnostic: DM6NAM12HT076:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8aZV0zah56W1FMwEgAOotdSMHobzWONTCSrecNe2dP67aBEllbecyJCuj5F7q2PW0a2YTH/Y3+LKT1rqqFcg0BMRiEHD3HVCrJmuxMT6Wb8dGpeaBcgVfzqXPbi2Bybm6oIcI52h8W/byQL9h/GM7YrUtcFLVEZNfAEvxZR6TEDaX8oN1P2WQ9v7L81YacJ0/Dt7tXfuaQM0y0o2wFAKyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: LXvXp6pHTQNsWTd9tnFEVsqCUWcFAc5I1SZxg5HimoZm5ldRrqJuQhp6yGFUd4XXLWuJwFOe6l5uRdsPGr3rp14sqE7iF5ZKLnJ35KFvmoLVQ4yE2SBVaZCSBxXRqwo1S8cqwVwLwrwRltqBxHpuVrA/dNdYhOtGkD29e01CsLg1omZQ+CygNpHBQa9e8F0Q9BMRqyN5ibuGnMlTTyekOw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4d1dd24-9f84-4cd0-3c9d-08d7ee2a9139
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:29.4356 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165131_625624_83C74FE8 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.82 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
ZSBmb3VuZApvbiBHYWxheHkgUyBHVC1pOTAwMCAoYnV0IG5vdCBtb3N0IG90aGVyIGFyaWVzIHZh
cmlhbnRzKS4KClNpZ25lZC1vZmYtYnk6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2ht
aWVsQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQmFra2VyIDx4Yy1yYWNlcjJA
bGl2ZS5jYT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zNXB2MjEwLWFyaWVzLmR0c2kgIHwgIDIg
Ky0KIGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZ2FsYXh5cy5kdHMgfCA0NyArKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMu
ZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMuZHRzaQppbmRleCBhMzc0ODcw
NWRjZTguLjBmYTNkZTNjOTg1ZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIx
MC1hcmllcy5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMuZHRzaQpA
QCAtMTEsNyArMTEsNyBAQAogLyB7CiAJY29tcGF0aWJsZSA9ICJzYW1zdW5nLGFyaWVzIiwgInNh
bXN1bmcsczVwdjIxMCI7CiAKLQlhbGlhc2VzIHsKKwlhbGlhc2VzOiBhbGlhc2VzIHsKIAkJaTJj
NCA9ICZpMmNfc291bmQ7CiAJCWkyYzUgPSAmaTJjX2FjY2VsOwogCQlpMmM2ID0gJmkyY19wbWlj
OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1nYWxheHlzLmR0cyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZ2FsYXh5cy5kdHMKaW5kZXggOWJmNGE1Yjk1Yjc0Li5h
OTlmZGRhMjUyNjIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZ2FsYXh5
cy5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1nYWxheHlzLmR0cwpAQCAtNDks
MTIgKzQ5LDU5IEBACiAJCQl3YWtldXAtc291cmNlOwogCQl9OwogCX07CisKKwlpMmNfZm1yYWRp
bzogaTJjLWdwaW8tOCB7CisJCWNvbXBhdGlibGUgPSAiaTJjLWdwaW8iOworCQlzZGEtZ3Bpb3Mg
PSA8JmdwZDEgMiAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+OworCQlzY2wt
Z3Bpb3MgPSA8JmdwZDEgMyAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owor
CQlpMmMtZ3BpbyxkZWxheS11cyA9IDwyPjsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNz
aXplLWNlbGxzID0gPDA+OworCisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0
cmwtMCA9IDwmZm1faTJjX3BpbnM+OworCisJCWZtcmFkaW9AMTAgeworCQkJY29tcGF0aWJsZSA9
ICJzaWxhYnMsc2k0NzB4IjsKKwkJCXJlZyA9IDwweDEwPjsKKwkJCWludGVycnVwdC1wYXJlbnQg
PSA8JmdwajI+OworCQkJaW50ZXJydXB0cyA9IDw0IElSUV9UWVBFX0VER0VfRkFMTElORz47CisJ
CQlyZXNldC1ncGlvcyA9IDwmZ3BqMiA1IEdQSU9fQUNUSVZFX0hJR0g+OworCisJCQlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOworCQkJcGluY3RybC0wID0gPCZmbV9pcnEgJmZtX3JzdD47CisJ
CX07CisJfTsKK307CisKKyZhbGlhc2VzIHsKKwlpMmM4ID0gJmkyY19mbXJhZGlvOwogfTsKIAog
JnBpbmN0cmwwIHsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwm
c2xlZXBfY2ZnPjsKIAorCWZtX2kyY19waW5zOiBmbS1pMmMtcGlucyB7CisJCXNhbXN1bmcscGlu
cyA9ICJncGQxLTIiLCAiZ3BkMS0zIjsKKwkJc2Ftc3VuZyxwaW4tcHVkID0gPFMzQzY0WFhfUElO
X1BVTExfTk9ORT47CisJCXNhbXN1bmcscGluLWRydiA9IDxFWFlOT1M0X1BJTl9EUlZfTFYxPjsK
Kwl9OworCisJZm1faXJxOiBmbS1pcnEgeworCQlzYW1zdW5nLHBpbnMgPSAiZ3BqMi00IjsKKwkJ
c2Ftc3VuZyxwaW4tZnVuY3Rpb24gPSA8RVhZTk9TX1BJTl9GVU5DX0lOUFVUPjsKKwkJc2Ftc3Vu
ZyxwaW4tcHVkID0gPFMzQzY0WFhfUElOX1BVTExfVVA+OworCQlzYW1zdW5nLHBpbi1kcnYgPSA8
RVhZTk9TNF9QSU5fRFJWX0xWMT47CisJfTsKKworCWZtX3JzdDogZm0tcnN0IHsKKwkJc2Ftc3Vu
ZyxwaW5zID0gImdwajItNSI7CisJCXNhbXN1bmcscGluLWZ1bmN0aW9uID0gPEVYWU5PU19QSU5f
RlVOQ19PVVRQVVQ+OworCQlzYW1zdW5nLHBpbi1wdWQgPSA8UzNDNjRYWF9QSU5fUFVMTF9OT05F
PjsKKwkJc2Ftc3VuZyxwaW4tZHJ2ID0gPEVYWU5PUzRfUElOX0RSVl9MVjE+OworCX07CisKIAlt
YXNzbWVtb3J5X2VuOiBtYXNzbWVtb3J5LWVuIHsKIAkJc2Ftc3VuZyxwaW5zID0gImdwajItNyI7
CiAJCXNhbXN1bmcscGluLWZ1bmN0aW9uID0gPEVYWU5PU19QSU5fRlVOQ19PVVRQVVQ+OwotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
