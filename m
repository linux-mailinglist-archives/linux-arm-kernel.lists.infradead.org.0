Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3C21B9300
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 20:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V1+u3wbrjt8bfNyyj3d+tUfa9z4Bx5U7f6qhKVjo3bM=; b=ZqlQUgJa+JB/7l
	R1Vay1tQBKJTmLNOUgyoOYsvSXXu+qtBvO6CHgVipruEseNjTiJlWh0mqK+RruhjzuwtihsBzjI4g
	0JpZ+sX9dCSLdv+e8bM7nMeGwC+jQqi633JwvbCURs9hftByfuqCA9RyuCozcD9lWTfWVBSdOf3vu
	HFwywuEWRoYH/2+DjIq+xefuXfwi7zxdDjLKDQD0pONBBBquC/9CcZ5W6kX0yCeFY0WQP+f8Gj/y7
	CCmxUOFVvxEkKA1Uzk6iejauVhIWM+e+g5q2hZyjUHLVi1n6FLn3WqXOvq1A/VlvAXiIq0ALFu0E3
	gnB8mQEHt/DrZiqzDlHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSm9k-0006Sr-NG; Sun, 26 Apr 2020 18:37:32 +0000
Received: from mail-co1nam11olkn2032.outbound.protection.outlook.com
 ([40.92.18.32] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSm8l-0005tp-OH
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 18:36:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXfpgTx6eoYSig8AdwWtrRglv+VW88LnPco7F42ZixUK5KhzWhckObBHmOP2l/5zGNyjWQAqzYITg4PZD0lQ2u+Y58zm5/LtVAM9OB2Xj6asyZxt96GZOLYzmXukC3mAqS29mbV7v7nTP7Gp4s3qvn/fLmN2MKPXJEmS0U1vvTve0FSG3h9lk6L0hHK6OAjNh2HP9wzD5Cs5SxJbV4lC8gx2LOSv2Ov9BO0AwRKOVr3mq3vSJmu9KIE/lNgitHfty6NvSOAuo10Nj9JZWSkhotnEuxv3ZbwD98JQgpeyaD+ikjsXjmB+Yyteut90927nlbfSocyJ2AoqZu3HfelPjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HcywinMjnpK4WOAZSBfupWLquL2Wu01bkRh8en6RQlY=;
 b=mVHr3SpDnBGadjvyILQysWRM6q1ScCL733GTxiK5koeoqV1TlVppX3ZXCCubaD7orndjT4UPIYE46iczixqfZTPLuRsUDfLTOMJtpJs0eEN4C6VJHkpPCdztifzoIrYVnKC0RQTS/qlSaW7NgJAcvVW3ThSQ4fH0kB35SN4aio8KLu257Q3dfUFfnGv5SxDMdAwmEgZFTBpBaOEONXgoiYWlGSPj9f2ocUmTJiAgIDnbf+UHmtX0vW9drluVuUbdT/ijJBcRKekaMovg0CuUYReUGn+SiUgYfcVMgLZ6gGfZyXbcI424gvdmvo/jpThgKphdJgIIMUPUledZH3R6yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from CO1NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::52) by
 CO1NAM11HT181.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::187)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 18:36:22 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:3861::41) by CO1NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:3861::124) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 18:36:22 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:BC40BD68623AE0CAE03B66BE37DE60BD39DDAB0164AE5E88A9B9D58EBA0C884F;
 UpperCasedChecksum:AC097712BB4445F4C74B189E03600CEB382BAAAECEC94F527DA420040C148F25;
 SizeAsReceived:8857; Count:48
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 18:36:22 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 00/13] S5PV210 and Aries DTS improvements
Date: Sun, 26 Apr 2020 11:35:51 -0700
Message-ID: <BN6PR04MB06601A5656CF70A4DCA7998BA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: CO2PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:104:1::22) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426183604.28494-1-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 CO2PR05CA0096.namprd05.prod.outlook.com (2603:10b6:104:1::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.7 via Frontend Transport; Sun, 26 Apr 2020 18:36:21 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426183604.28494-1-xc-racer2@live.ca>
X-TMN: [to+dQak2XqC2/BclHWaTlL3bVr/gudmUyPMTla7ew7w760pgdr6TSrLXDCmm4UpO]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 0d886b55-8270-455d-55b7-08d7ea10b7da
X-MS-TrafficTypeDiagnostic: CO1NAM11HT181:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HkmFbZUAr1PPdd4EVEilzJQPyUkaVCpE5u+/6eduu/TCyvHSKK4dpl45XkPM+QLHfNtKmiXyJTUvl9LdiJDswKGPiiWJQaajOWYpi4ibHDQe1t8R0LI4ZwgW0LwLoS9IQO/MOTB66Fkr5BphwbVB7wNV544ev14lNbwSnM4GCpuh1B0HF5JPO6SL7nMXXBQO+CkcALVO8G7sMS5VvbvjHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: DZmapemEEuu6DxSF5zpn6ec6IzjqIgYWFlZpjFL+ZQB4vqBI6e5L28hj3WCVyPe1WIm/aw4nOU4g9IRdKNXfryjp0loYE3pFCK6pbTVpSNs42XTVkGW9F2TJ6yIt5oqFjsCOwRt274wWpUIjICGGZYrhw5cl+tsANYR0Iz2NJyycg3Q6y097a5yW5Lbkf8lo8HfAkDzu8r+gg/FM2XSPXA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d886b55-8270-455d-55b7-08d7ea10b7da
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 18:36:22.5188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_113631_786072_17216EE2 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.32 listed in list.dnswl.org]
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
aGVscGVyCmFkZGVkLgoKVGhlIHBhdGNoZXMgaGF2ZSBiZWVuIHRlc3RlZCBvbiBib3RoIGEgR1Qt
aTkwMDAgYXMgd2VsbCBhcyBhbgpTR0gtVDk1OVAgYW5kIGJvdGggY2FuIG5vdyBzdXNwZW5kL3Jl
c3VtZSBwcm9wZXJseS4KCkpvbmF0aGFuIEJha2tlciAoMTIpOgogIGFybTogZHRzOiBzNXB2MjEw
OiBBZGQgaGVscGVyIGRlZmluZSBmb3Igc2xlZXAgZ3BpbyBjb25maWcKICBhcm06IGR0czogczVw
djIxMDogZmFzY2luYXRlNGc6IEFkZCBzbGVlcCBHUElPIGNvbmZpZ3VyYXRpb24KICBhcm06IGR0
czogczVwdjIxMDogZ2FsYXh5czogQWRkIHNsZWVwIEdQSU8gY29uZmlndXJhdGlvbgogIGFybTog
ZHRzOiBzNXB2MjEwOiBhcmllczogU2V0IGtlZXAtcG93ZXItaW4tc3VzcGVuZCBmb3IgU0RIQ0kx
CiAgYXJtOiBkdHM6IHM1cHYyMTA6IGFyaWVzOiBEaXNhYmxlIHB1bGxzIG9uIEdQSU8gaTJjIGFk
YXB0ZXJzCiAgYXJtOiBkdHM6IHM1cHYyMTA6IGFyaWVzOiBBZGQgc3VwcG9ydCBmb3IgbW9yZSBk
ZXZpY2VzCiAgYXJtOiBkdHM6IHM1cHYyMTA6IGFyaWVzOiBEaXNhYmxlIHB1bGwgZm9yIHZpYnJh
dG9yIGVuYSBHUElPCiAgYXJtOiBkdHM6IHM1cHYyMTA6IEFkZCBhbiBBREMgbm9kZQogIGFybTog
ZHRzOiBzNXB2MjEwOiBhcmllczogRW5hYmxlIEFEQyBub2RlCiAgYXJtOiBkdHM6IHM1cHYyMTA6
IEFzc2lnbiBjbG9ja3MgdG8gTU1DIGRldmljZXMKICBhcm06IGR0czogczVwdjIxMDogQ29ycmVj
dCBGSU1DIGRlZmluaXRpb25zCiAgYXJtOiBkdHM6IHM1cHYyMTA6IGFyaWVzOiBTZXQgTUFYODk5
OCBHUElPIHB1bGxzCgpQYXdlxYIgQ2htaWVsICgxKToKICBhcm06IGR0czogczVwdjIxMDogZ2Fs
YXh5czogQWRkIHNpNDcweCBmbXJhZGlvCgogYXJjaC9hcm0vYm9vdC9kdHMvczVwdjIxMC1hcmll
cy5kdHNpICAgICAgfCAzNDkgKysrKysrKysrKysrKysrKysrKystLQogYXJjaC9hcm0vYm9vdC9k
dHMvczVwdjIxMC1mYXNjaW5hdGU0Zy5kdHMgfCAyNDggKysrKysrKysrKysrKysrCiBhcmNoL2Fy
bS9ib290L2R0cy9zNXB2MjEwLWdhbGF4eXMuZHRzICAgICB8IDI5MSArKysrKysrKysrKysrKysr
KysKIGFyY2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAtcGluY3RybC5kdHNpICAgIHwgICA3ICsKIGFy
Y2gvYXJtL2Jvb3QvZHRzL3M1cHYyMTAuZHRzaSAgICAgICAgICAgIHwgIDI1ICstCiA1IGZpbGVz
IGNoYW5nZWQsIDg5MSBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
