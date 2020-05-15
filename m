Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA2A1D55C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r2qe6Pj55I8Zehvoyq/NGHQvqsXNdn8ZiC9xUdLAd3M=; b=AnPisEaLWzlCLK
	Cl/ODrVpq6z0fcA9CTkGdcdxfRsN88ezJ6iMYCPY46jISk3W6Mb5jbNP5Bc4dQRkzS+QA2oRnQNrK
	uL7mVJPCIyqmdcE2Cayi0Q3qIUdBOOOXJLd7slOpe4AnKCPiOcY5bYHHPCEjUXvUcuQw1U+1A7/kO
	BtJcAI5a86J0kY55YIm1vPlqNxsJAYQmLj0ZDxJSwsiRCTV/KnVl3VAoNwIeXDVC1haOTx49VZZSs
	zvho3jC8XZDQ+RA8AL+PZ9oy0aA4l+stUMm1LXuJVqnMYTe37So6c4GhXnqHtsaEVnRXHWFu2Qqj4
	bCrKA4/u9eEoXSzYVUpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZd4z-0000mD-8R; Fri, 15 May 2020 16:20:57 +0000
Received: from mail-eopbgr00041.outbound.protection.outlook.com ([40.107.0.41]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZd4o-0000kL-B8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:20:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nqh6OX7TRE00gSAEuyT2klNIFTSFjN2rVJGQ/UT9wxw=;
 b=PQPJAHPWkr0fAQ5OBbWjNmLZCZU5Nas5SxHUqTsIVI9+vxtOCReEJ5DO53uA+cqvZuVcvdATG/IxarfaQ7jVe6K3cqKuqJm0ue3YbaXGs83DxT6AmKDDbsIAJS64GPmtBBK34IS06KbYHWyL/sPqgLmvAoSDDVBrZM2WOa5SSxw=
Received: from AM6PR10CA0048.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:80::25)
 by DBBPR08MB4869.eurprd08.prod.outlook.com (2603:10a6:10:de::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Fri, 15 May
 2020 16:20:41 +0000
Received: from VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:80:cafe::4b) by AM6PR10CA0048.outlook.office365.com
 (2603:10a6:209:80::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25 via Frontend
 Transport; Fri, 15 May 2020 16:20:41 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT056.mail.protection.outlook.com (10.152.19.28) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.19 via Frontend Transport; Fri, 15 May 2020 16:20:40 +0000
Received: ("Tessian outbound 567b75aed2b9:v54");
 Fri, 15 May 2020 16:20:40 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 64d71e2ad0aeeeba
X-CR-MTA-TID: 64aa7808
Received: from 26c7100fcf92.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 14B85DB1-1E98-49A0-B818-22E12D43D360.1; 
 Fri, 15 May 2020 16:20:34 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 26c7100fcf92.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 15 May 2020 16:20:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDWDVo2gAwb7GnHL+lRnuMgOBSe/jpxP5kZC1xRCePkaVu/u7l8cQDQ5SEHaIJZToFRauGq/IXZP/lSdQcgU1nME8Hkwz/QbYwwx/HVL5R6C5FYfEEBJWpyYxCcV9WJmMrnINK0YlHWbomuo0XBbM050YYi/EhD7xYObrj4ib52JFd9JdHVKZc0mS0OP/bPF98MhQibOimex+T5Y+Ao5bjl1exKYGgW/tGBlRjWpwkXEN/k4/F5KkHeQWir960Nu2vmvp/qbus0UlsvI0oQ/NKuPKWByvfo/puhPrOc+7dhXgNqWinYoYxUrLADHjJzCoVBAPpTbt3RWRD8U4Orirw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nqh6OX7TRE00gSAEuyT2klNIFTSFjN2rVJGQ/UT9wxw=;
 b=is9iwx87WWkMKmm9LGpeaNQiWtHVzZGTzbBS9RADKc3j/CSOcxxohAt3ADwgptmkiPMDGrWbpMUbRRVxdhXPR8RL75vQUH7X5jLeOB5j+QFnbct+oE7vkmYOXQv0AFMYj3psYpIRL7u1ZLiFgLNYRc8U8Ut70c6wRUdXZza88HzMAgGAujp37FiRP91s3+fJ+lGc/6OPkOx3fJRnfQYTlEkuSO3gPyam0AKzb1ryGm4DJ9AOWNc8u1QDc/tL6iBRrboFPK0PrRJaOBihd9QhvL6PgOVWDxaCoNIPZU9ozfLV6iYg14S4Hw6uFHZXrVo90MKdmFYT3ToF7XYVDJcXiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 40.67.248.234) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=arm.com;
 dmarc=bestguesspass action=none header.from=arm.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nqh6OX7TRE00gSAEuyT2klNIFTSFjN2rVJGQ/UT9wxw=;
 b=PQPJAHPWkr0fAQ5OBbWjNmLZCZU5Nas5SxHUqTsIVI9+vxtOCReEJ5DO53uA+cqvZuVcvdATG/IxarfaQ7jVe6K3cqKuqJm0ue3YbaXGs83DxT6AmKDDbsIAJS64GPmtBBK34IS06KbYHWyL/sPqgLmvAoSDDVBrZM2WOa5SSxw=
Received: from AM6PR10CA0077.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:8c::18)
 by AM6PR08MB4424.eurprd08.prod.outlook.com (2603:10a6:20b:73::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Fri, 15 May
 2020 16:20:30 +0000
Received: from VE1EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8c:cafe::8a) by AM6PR10CA0077.outlook.office365.com
 (2603:10a6:209:8c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Fri, 15 May 2020 16:20:30 +0000
Authentication-Results-Original: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 40.67.248.234 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.67.248.234; helo=nebula.arm.com;
Received: from nebula.arm.com (40.67.248.234) by
 VE1EUR03FT050.mail.protection.outlook.com (10.152.19.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3000.19 via Frontend Transport; Fri, 15 May 2020 16:20:29 +0000
Received: from AZ-NEU-EX04.Arm.com (10.251.24.32) by AZ-NEU-EX04.Arm.com
 (10.251.24.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1415.2; Fri, 15 May
 2020 16:20:28 +0000
Received: from e120529-lin.budapest.arm.com (10.37.8.4) by mail.arm.com
 (10.251.24.32) with Microsoft SMTP Server id 15.1.1415.2 via Frontend
 Transport; Fri, 15 May 2020 16:20:27 +0000
Received: by e120529-lin.budapest.arm.com (sSMTP sendmail emulation);
 Fri, 15 May 2020 18:20:26 +0200
From: dankis01 <dankis01@arm.com>
To: <linux-arm-kernel@lists.infradead.org>, <Vincenzo.Frascino@arm.com>,
 <mark.rutland@arm.com>
Subject: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Date: Fri, 15 May 2020 18:20:20 +0200
Message-ID: <20200515162020.78169-1-daniel.kiss@arm.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 1
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report-Untrusted: CIP:40.67.248.234; CTRY:IE; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:nebula.arm.com; PTR:InfoDomainNonexistent;
 CAT:NONE; SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(46966005)(82310400002)(8936002)(356005)(2906002)(186003)(36756003)(110136005)(26005)(54906003)(478600001)(1076003)(6666004)(6636002)(8676002)(82740400003)(47076004)(70586007)(5660300002)(336012)(2616005)(4326008)(42186006)(70206006)(81166007)(316002)(426003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd7c5473-ad92-4d7d-803e-08d7f8ebe935
X-MS-TrafficTypeDiagnostic: AM6PR08MB4424:|DBBPR08MB4869:
X-Microsoft-Antispam-PRVS: <DBBPR08MB486991371E713DA8A25BD97FECBD0@DBBPR08MB4869.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:608;OLM:608;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: EPVJ2AZvx89cWKoxcBcL4ADZ3AQgEKxIu30LkbpWmIgAtUttq5TZta/4M5HNH0Pn++DdEt2jy/lYQSR00eQG88U5u4ws2QDIdz1E8b3ZkE3n/dcGQlOiuhfNBZ0ycEZ+T3YR5rjKfEms8GSq6/et8HyQ0kTMo5OimkIb8Ec3zGreE8Dl3A6p0Gg7+R8ONmMl+c6MQDQq8QTX0a7xzniLP5bP8Xyq1X8DaKIORNL9jhffkcEJNkO3KrYKe32WCmJuPx7UussTdNyEBwN5d6xRuaamE1RdGgf3UQLPCpTf0KK9jGYzrf7tMmd7dvwC7l2AR2Orf8IY6URCLguyAUPmke3LVEVAZWC8JuOGl1FJ4GTEURiWkcTPmLeGOV9zV2c9zUpTNaS/cyg/IclTRNIyriUFzpR9ZUlWmVvu3zPZBc2ks6VPUQNjgRpa6htXtEZWujozUhdRo+3RcUW/M9bJBhZtFzIVYB6mHLCWIfhh0+qhUMW3XqmX7XEl2KXC7yB6Rw1tHEwQLzT40IsxJtJzRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4424
Original-Authentication-Results: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=arm.com;
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(396003)(46966005)(8676002)(42186006)(70206006)(70586007)(82310400002)(81166007)(336012)(316002)(36906005)(186003)(110136005)(426003)(2616005)(54906003)(5660300002)(4326008)(6666004)(1076003)(26005)(2906002)(82740400003)(8936002)(6636002)(36756003)(47076004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ad5d289b-00e1-4cb3-5526-08d7f8ebe290
X-Forefront-PRVS: 04041A2886
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zVzHGBHAJlIjqj3W1sdPzbvcosTcwexPGbTJINIKsQummO8TsfwmFa+tayxejU0dqv6gc/pSwaMXiUMRdl5n+iZqcngpZqtCVFKn0x2oEvWOGTB/QE0INodOhl3HDqGCxE07vEDHbmAos+mxF6topYOa2yHtebqaNYCKEuhIhFDlNiRYdW3Y0TZEiaQtOQInqQ/7GRbFIdmwlKIrs8BMyUZHQnoFyg+6s3lo8vp2Y3m8DzTvKu7RIAzE0yvCuSOZUzu2m3LMKpbdYJzYBO7RlCN1uVbnVcxiX5N7+HdRpdBtjoHfT5Hh9HSVMxwT3tAUVxkAEdkJ0MRJPb+F8UKKkcGaXmpVJfZOHxM06lxyAY6fjX1IbMl6c34JbRVbGq2vtygBHysgGlLyBLdhAZlaMOsa7GuHT02dW9WYazuz4UQqqMNIEaAoeH6ZcMKLothUbXgaGNMxLWwBqB9HpcpArLb694GizIAJQyrxfSiTQb6QG+KbPC3vxLZGshbDNPMEYLsb3Az2mO5AVW2MyODhgg==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 16:20:40.8735 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7c5473-ad92-4d7d-803e-08d7f8ebe935
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4869
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_092046_453990_7EA62E34 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.41 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the signal handler is called the registers set up as the return address
points to the __kernel_rt_sigreturn. The NOP here is the placeholder of the
branch and link instruction that "calls" the signal handler. In case of a
return address the unwinder identifies the location of the caller because
in some cases the return address might not exist. Since the .cfi_startproc
is after the NOP, it won't be associated with any location and the
unwinder will stop walking.

This change corrects the generated EHFrames only.

Signed-off-by: Daniel Kiss <daniel.kiss@arm.com>
Signed-off-by: Tamas Zsoldos <tamas.zsoldos@arm.com>
---
 arch/arm64/kernel/vdso/sigreturn.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 12324863d5c2..5d50ee92faa4 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -13,13 +13,13 @@
 
 	.text
 
-	nop
-SYM_FUNC_START(__kernel_rt_sigreturn)
 	.cfi_startproc
 	.cfi_signal_frame
 	.cfi_def_cfa	x29, 0
 	.cfi_offset	x29, 0 * 8
 	.cfi_offset	x30, 1 * 8
+	nop  /* placeholder for bl signalhandler */
+SYM_FUNC_START(__kernel_rt_sigreturn)
 	mov	x8, #__NR_rt_sigreturn
 	svc	#0
 	.cfi_endproc
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
