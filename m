Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439BD1C2163
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWV3JdqAzDZoBmIUchhlB3OGg3nm3JdApAza3IQTECQ=; b=vCdTyWhfKKlnpQ
	vQiDdkdcYvbaHY/EiaftaE8eNRYqHN4EGK2lgffTK8PmPhj7VvU4Br+2KfZCnEStL7z/6C6zOVdU6
	ElPKaQko5s6oOJF3bv/48rqJ6KD7tw6pGvlm87pJ7uyVdhC5SRYj3YIUcmoRRY2Q6Pw8GS6DBQoob
	aYigpEpPYihj3lNLQxJNKM52luthhI+jgUaLV2qVusmrrs+QZdwcEH5xhlJrSGEP5Rn56lV1cEblR
	2ts+0dJZ0LC/hfXwMr4CdzIKS4z/BqaOlC0oJj7xgRs2diQj/fMp/UG1kqqMooPHEFQou1KS1i3Ak
	kngapEAkbm8UgpCb+dQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfQe-0006e9-W8; Fri, 01 May 2020 23:50:49 +0000
Received: from mail-dm6nam12olkn2046.outbound.protection.outlook.com
 ([40.92.22.46] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfQV-0006cU-Al
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:50:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mq45JtdJcy3d2gpRQddej5lNkWZeTKKmZCC+WAWastL4zXJklL6pMxYcHNuvrUPwhzemVx62Md/70iuv6bHxwnLsLQL0VaKZE4tRybBZGZf+pMhhoa5xmvrMLulsiOkc4FRDHSajFLeaKdg4YBQZWZYvzkbLUOY1lBkXoPSGpZZJYRWnfnpSYNCiGiMcwgXEslnxqNM9s7QX/1vduV8kPBHt/5u5Y2fXIJ0J4/H1ABvFlLyleRxfkfr5miOw0z0JfdHqaq8pOie5Nh70n+VWfIplqlO/ThYGiLds04yeGAkrnBDnq92lWLhPJXULZdnBwirJbshjRCHMU2/Q/trmOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hHbPFWpsRbkefIZ4i541TbXLn8ODtJiK4zPWuqef1M=;
 b=O5gM+2X+i/xAviooq5tA2paqhwYK1BYES9/+vO65ocy7p/Fi3+Gw2I7qNrJSc0qDSgXkNbFP+oKCZaMzZiLkcQrUF/kqKCoN1oTNL7HrEX2FTqbwPt4oAsb79EKOcmAURBrmZ92NTmlw782o2OBOBA8Zm5tpYPjsL/03uFCfNxowxQ+SFDfKutr8lnpZWdXWTB8+vHCx0aZFmW8jWSWcE+uDDxy1HeRScqzPWrcQVaQObYDu7g1KD+F7vaDu9pUJmqKJwYrrP66AIUfvHrwxCLLoo1bQzQU8HR3ttYnaMssop6vCU0yy8bplBKZVi6D+2Gkk7jzdDAJcuO8fZcvdUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4e) by
 DM6NAM12HT149.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::248)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:50:37 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:50:37 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:1CF40882429895DE9D9A82BE1D1E601ACA0A71C02B8499FFD184B35D0538E6EF;
 UpperCasedChecksum:642801319F308311AD72BBFAA4CFDEC5981AFA26870A11F430A1015F1E4D94E5;
 SizeAsReceived:8958; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:50:37 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/18] S5PV210 and Aries DTS improvements
Date: Fri,  1 May 2020 16:50:01 -0700
Message-ID: <BN6PR04MB066033FD7FF6E5C37747C7A2A3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426183604.28494-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-1-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:50:35 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-1-xc-racer2@live.ca>
X-TMN: [DsVpGJGGst3MAdhFNnvR6RdkyndeK+opRMshOrhpvk6+samxXghKu4WEc9/SDWe8]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: bc9f038c-885e-4c5f-321c-08d7ee2a71d1
X-MS-TrafficTypeDiagnostic: DM6NAM12HT149:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JScvR5gTwNbRrRNMX4l4rkYmAqnRrpEWAeYrVRsRPUk4/FLwTcRsUNadeGodnjA2K5RNcC/NRlhLUoO2QFqvaTWXe8NuN4WqUUq9m4lGaUW7XzzN5Oehs8SoqahA1cKOVPCjmhzaQszw4Hh+134LxxFZMtPtWTzN3ULfIqAyGA9vCeGK+RBdNtfPp9JWKT2Ar06jw5BPdsxvSHzRr7fk2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 6XmTitN8zFx0jFp0lWb9DwwJKPIYarexUKavu1BY1UkyOwDfhgZU4sdmzO0n4Z1EzjLdGLcxGwjIyyQmVvQQpqk1G9/xK8umXTwoZT/e/QmSzrf33oFDztBLZnEHeO9RQZYplufYXkRdvLK0AxAR5APwhuHca0x/ia0ln54sU55qOiQsMx83yuHLWOEqD4/byiPn+Bpn253YvqP2QYPRMg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc9f038c-885e-4c5f-321c-08d7ee2a71d1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:50:37.4192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165039_371139_82D00C33 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.46 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.46 listed in wl.mailspike.net]
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaHNldCBtYWtlcyBzZXZlcmFsIGltcHJvdmVtZW50cyB0byBBcmllcyBkZXZpY2Vz
IHdoaWNoIGFyZQpiYXNlZCBvbiBTNVBWMjEwLiAgU2V2ZXJhbCBwdWxscyBvbiBHUElPcyB3ZXJl
IGluY29ycmVjdC9ub3Qgc3BlY2lmaWVkLApzbGVlcCBHUElPIGNvbmZpZ3VyYXRpb25zIGhhdmUg
YmVlbiBhZGRlZCwgYW5kIG1vcmUgZGV2aWNlcyBoYXZlIGJlZW4KYWRkZWQuCgpUb3VjaGluZyB0
aGUgY29tbW9uIFM1UFYyMTAgRFRTSSBhcmUgdGhlIGFkZGl0aW9uIG9mIHRoZSBBREMgbm9kZQph
cyB3ZWxsIGFzIGZpeGVzIHRvIHRoZSBGSU1DIGRlZmluaXRpb25zIGFuZCBhIHNsZWVwIEdQSU8g
aGVscGVyCmFkZGVkLiAgVGhlIEdQSSBncGlvIG5vZGUgbmFtZSBoYXMgYmVlbiBjb3JyZWN0ZWQu
CgpUaGUgcGF0Y2hlcyBoYXZlIGJlZW4gdGVzdGVkIG9uIGJvdGggYSBHVC1pOTAwMCBhcyB3ZWxs
IGFzIGFuClNHSC1UOTU5UCBhbmQgYm90aCBjYW4gbm93IHN1c3BlbmQvcmVzdW1lIHByb3Blcmx5
LgoKQ2hhbmdlcyBmcm9tIHYxOgotIENvcnJlY3QgQURDIG5vZGUgbmFtZSB0byBtYXRjaCByZWcK
LSBSZXN0b3JlIHJlbW92ZWQgcmVndWxhdG9yIHN1c3BlbmQgc3RhdGUKLSBTcGxpdCBjb21taXQg
YWRkaW5nIHN1cHBvcnQgZm9yIG5ldyBkZXZpY2VzIGludG8gc2VwYXJhdGUgY29tbWl0cwogIGZv
ciBlYWNoIGRldmljZQotIEFkZCBub3RlIHdoZXJlIHNsZWVwIGdwaW8gY2ZncyBjb21lIGZyb20K
LSBFbnN1cmUgc3ViamVjdCBvZiBhbGwgcGF0Y2hlcyBtYXRjaGVzIHN1YnN5c3RlbQotIEFkZCBw
YXRjaCBjb3JyZWN0aW5nIEdQSSBub2RlIG5hbWUKCgpKb25hdGhhbiBCYWtrZXIgKDE3KToKICBB
Uk06IGR0czogczVwdjIxMDogQWRkIGhlbHBlciBkZWZpbmUgZm9yIHNsZWVwIGdwaW8gY29uZmln
CiAgQVJNOiBkdHM6IHM1cHYyMTA6IEFkZCBzbGVlcCBHUElPIGNvbmZpZ3VyYXRpb24gZm9yIGZh
c2NpbmF0ZTRnCiAgQVJNOiBkdHM6IHM1cHYyMTA6IEFkZCBzbGVlcCBHUElPIGNvbmZpZ3VyYXRp
b24gZm9yIGdhbGF4eXMKICBBUk06IGR0czogczVwdjIxMDogU2V0IGtlZXAtcG93ZXItaW4tc3Vz
cGVuZCBmb3IgU0RIQ0kxIG9uIGFyaWVzCiAgQVJNOiBkdHM6IHM1cHYyMTA6IERpc2FibGUgcHVs
bHMgb24gR1BJTyBpMmMgYWRhcHRlcnMgZm9yIGFyaWVzCiAgQVJNOiBkdHM6IHM1cHYyMTA6IEFk
ZCBXTTg5OTQgc3VwcG9ydCB0byBhcmllcyBib2FyZHMKICBBUk06IGR0czogczVwdjIxMDogQWRk
IEZTQTk0ODAgc3VwcG9ydCB0byBBcmllcyBib2FyZHMKICBBUk06IGR0czogczVwdjIxMDogQWRk
IHRvdWNoa2V5IHN1cHBvcnQgdG8gYXJpZXMgYm9hcmRzCiAgQVJNOiBkdHM6IHM1cHYyMTA6IEFk
ZCBwYW5lbCBzdXBwb3J0IHRvIGFyaWVzIGJvYXJkcwogIEFSTTogZHRzOiBzNXB2MjEwOiBBZGQg
cmVtYWluaW5nIGkyYy1ncGlvIGFkYXB0ZXJzIHRvIGFyaWVzCiAgQVJNOiBkdHM6IHM1cHYyMTA6
IERpc2FibGUgcHVsbCBmb3IgdmlicmF0b3IgZW5hIEdQSU8gb24gYXJpZXMKICBBUk06IGR0czog
czVwdjIxMDogQWRkIGFuIEFEQyBub2RlCiAgQVJNOiBkdHM6IHM1cHYyMTA6IEVuYWJsZSBBREMg
b24gYXJpZXMgYm9hcmRzCiAgQVJNOiBkdHM6IHM1cHYyMTA6IEFzc2lnbiBjbG9ja3MgdG8gTU1D
IGRldmljZXMgb24gYXJpZXMKICBBUk06IGR0czogczVwdjIxMDogQ29ycmVjdCBGSU1DIGRlZmlu
aXRpb25zCiAgQVJNOiBkdHM6IHM1cHYyMTA6IFNldCBNQVg4OTk4IEdQSU8gcHVsbHMgb24gYXJp
ZXMKICBBUk06IGR0czogczVwdjIxMDogQ29ycmVjdCBncGkgZ3BpbyBub2RlIG5hbWUKClBhd2XF
giBDaG1pZWwgKDEpOgogIEFSTTogZHRzOiBzNXB2MjEwOiBBZGQgc2k0NzB4IGZtcmFkaW8gdG8g
Z2FsYXh5cwoKIGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtYXJpZXMuZHRzaSAgICAgIHwgMzU5
ICsrKysrKysrKysrKysrKysrKysrLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtZmFzY2lu
YXRlNGcuZHRzIHwgMjQ5ICsrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIx
MC1nYWxheHlzLmR0cyAgICAgfCAyOTIgKysrKysrKysrKysrKysrKysrCiBhcmNoL2FybS9ib290
L2R0cy9zNXB2MjEwLXBpbmN0cmwuZHRzaSAgICB8ICAgOSArLQogYXJjaC9hcm0vYm9vdC9kdHMv
czVwdjIxMC5kdHNpICAgICAgICAgICAgfCAgMjMgKy0KIDUgZmlsZXMgY2hhbmdlZCwgOTA3IGlu
c2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
