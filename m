Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3E01CA795
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 11:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yq8+MtCzh654Jzsduce0owbGJ/9UpMChsQuZLibQzI8=; b=NsBpcvx3lKc348
	1fzNpCadvwT0yhAVy/eqeQOIlybD+B2YOiZr3vZjtYDkmYa4S21JGDSccSfBMmtloJh7bbhQnZ+CA
	M3DvIsx46zYPTK+fnLKFtv7BZSYljWNVTy4h9rvqbTECYceZV5YxJgy8jc9cSBDjMgvD0Y6815/Ep
	w/NnyiV4YU1zstjwl8YOWIcDvXhC+rgCzGGwUsnGMvFPuLB8Cx9jEpdXNnT8qKN8aswdq8TQSTedp
	KUmfwIptyfQ4NMIq2V2/ZKc7ksXhRV29+KkTxGhYb++0whG18yp2A5u1b6iKgxSnwvEF3ikl+ZVsq
	pC3zPZEq1tijeoayzVdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWzgH-0002rv-It; Fri, 08 May 2020 09:52:33 +0000
Received: from mail-eopbgr120088.outbound.protection.outlook.com
 ([40.107.12.88] helo=FRA01-PR2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWzg9-0002rG-1W
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 09:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M29HzgUFDlk/rtKj3vbJ/+RaBfLCY1j2eNAg54IJ7ic=;
 b=bwow+7IM6z1siM2ez6r3SMx7xX4IW+9rWvpQQ8Dh/1E7FjS1+UeBWiVOZs48TFZuNLOc59jH80Ly2LEFSb1HbIPmbkfnz4vrMHYqPmONshjdHkEbYnEgQVVSl71pTu5j4FAsV2ybxlblmayNHxqllAf63yE8Nf8LHAcFa9zxgEc=
Received: from AM6PR04CA0018.eurprd04.prod.outlook.com (2603:10a6:20b:92::31)
 by PR2PR08MB4649.eurprd08.prod.outlook.com (2603:10a6:101:1f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Fri, 8 May
 2020 09:52:22 +0000
Received: from VE1EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:92:cafe::21) by AM6PR04CA0018.outlook.office365.com
 (2603:10a6:20b:92::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27 via Frontend
 Transport; Fri, 8 May 2020 09:52:22 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT004.mail.protection.outlook.com (10.152.18.106) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Fri, 8 May 2020 09:52:22 +0000
Received: ("Tessian outbound ff098c684b24:v54");
 Fri, 08 May 2020 09:52:21 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 52431477484d2502
X-CR-MTA-TID: 64aa7808
Received: from 26703805e3e0.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BCDDD3F6-4DE8-4F6E-8B84-F79CD54B7EF6.1; 
 Fri, 08 May 2020 09:52:15 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 26703805e3e0.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 08 May 2020 09:52:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XW1fZhRZ05l0D45ouFBE2R5tPBBuTUpbryjqoXq9qO5+4oWt6+6jHczqkEf4F6a/0VoqYP1wf1VfD1/lJRlSM8PHufoYaAlZT6D26FlcHNF6zNeTL5XBR5YE6JE1OthwXg58cAUKnTEJ7N8nwnIx6O7aYIdiRaGbhF829Vrv0B41lAmeni5I16iVt8oLy3gA8Hj4onQrqggi6kNj5bvwsMkLJ0+oVf9gM1xy8Jpk4YyEV+1Ead3nQrcs2BYSqBiQbde57PFc76HUElZ47011OIbiAGgjG4Z0LHXTWGOSKYSzGY+AqddY8lI/yLNlHKGtBYRJRW9oNLcEb7ptc9AuLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M29HzgUFDlk/rtKj3vbJ/+RaBfLCY1j2eNAg54IJ7ic=;
 b=XN9WRsnFs/Ii4bwfBJXgyaKErif2Tp+1n2AGoWzevqhD71qkUsaIKcFKb8+v8/rrmINcZjyAJRD1LzW9m+g2/ap4hZhv5XSBGwPkFZcyICkiZ96dL/lyIjR6Y63Qp4JV0TjbDtzrYZonn+clV/1ly16zVtWCN4N1nVQjSM9f1Ttgw4FjKZMrPJuFcDzsyztwUc9fb2cJp03n6bJQ3VORl+ge8YzG5AySmdahVjaLPNTvc/mzuOlsKS7EN4BVmwTELDY1uiLKu+ovt9lVvAntCZknIinpy0suQ896lGpV/AfVtf3nZj4lxDyXxKXdV1TZHXip/7wBoXA7oBTo6GeJ1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M29HzgUFDlk/rtKj3vbJ/+RaBfLCY1j2eNAg54IJ7ic=;
 b=bwow+7IM6z1siM2ez6r3SMx7xX4IW+9rWvpQQ8Dh/1E7FjS1+UeBWiVOZs48TFZuNLOc59jH80Ly2LEFSb1HbIPmbkfnz4vrMHYqPmONshjdHkEbYnEgQVVSl71pTu5j4FAsV2ybxlblmayNHxqllAf63yE8Nf8LHAcFa9zxgEc=
Received: from DB8PR08MB5259.eurprd08.prod.outlook.com (2603:10a6:10:bf::13)
 by DB8PR08MB5161.eurprd08.prod.outlook.com (2603:10a6:10:ea::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.29; Fri, 8 May
 2020 09:52:14 +0000
Received: from DB8PR08MB5259.eurprd08.prod.outlook.com
 ([fe80::951c:f6f0:2397:392d]) by DB8PR08MB5259.eurprd08.prod.outlook.com
 ([fe80::951c:f6f0:2397:392d%3]) with mapi id 15.20.2979.028; Fri, 8 May 2020
 09:52:14 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Thread-Topic: [PATCH] arm64: vdso: Fix CFI info in sigreturn.
Thread-Index: AQHWJR4GrYiegZWLm0yCnuYpTVtWxqid8naA
Date: Fri, 8 May 2020 09:52:14 +0000
Message-ID: <DDD18BB4-B773-4471-B5E0-9DDD839B7D46@arm.com>
References: <30E488CA-46FF-4927-A07F-8CE11263B92E@arm.com>
 <CF896434-E995-438C-88F8-86CCFE24C5A2@arm.com>
In-Reply-To: <CF896434-E995-438C-88F8-86CCFE24C5A2@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
Authentication-Results-Original: lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=arm.com;
x-originating-ip: [2001:4c4c:1b20:6f00:184f:4ec7:4e92:bc62]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5b8ed02f-aeda-4dab-09aa-08d7f3358120
x-ms-traffictypediagnostic: DB8PR08MB5161:|DB8PR08MB5161:|PR2PR08MB4649:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <PR2PR08MB46492625384A3E4A7D3BDCC5ECA20@PR2PR08MB4649.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:758;OLM:758;
x-forefront-prvs: 039735BC4E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: G5dXHd8B7mFOIBiG6RlSlxaopZYlkXxJgZJUwX1kIyQPvhb/x3E0vB9AELsCyQIHCDLm61AA8K/yHTH4QmnCWzpXiJuBAMJ9rnCggL07KTkF7mjqHxOdtEjdpXoUPMGrsXTwTHaiErxSBVdQKx3nbUSbF5fGQih+ES15/ARi/p9o7n8dN+S7iXIb6Uf8SYJiAmwCDN9nbf8dF3LFt8mcuqsltCihvZEzL2qK4PpnLyL7EgCPDhHGPnMXLi3xEo1IFdgtVcuzsJ8lmWTaF8z9QOHW061TFy9s7i1vLMvLwGmfqdeAY6DtQSql5H/pQVex54+JHxB9W3HpgA9VgzUqwtGf9DfKGCN9P9qJhoDiE4CHPj8HRcqpiRvA9gaQiDKnk0OINpPoQXJVqYriBtpKZL7KNMcFaYjbAb1UYP7/0nWTWWglA+685wwak8kEK43xXi10uP17tFljpFqqnaUYxV03Ckv2GSHm/CD93jsA23kUtHMyfdSfNV6Ibz44+h4iOwHINchUW6yybkdnJ7sy5w==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB8PR08MB5259.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(4636009)(366004)(346002)(376002)(136003)(39860400002)(396003)(33430700001)(66476007)(64756008)(5660300002)(83310400001)(83320400001)(83280400001)(83290400001)(83300400001)(54906003)(6506007)(36756003)(33440700001)(86362001)(2906002)(2616005)(6916009)(8936002)(4326008)(33656002)(8676002)(66446008)(66556008)(316002)(6512007)(66946007)(478600001)(6486002)(71200400001)(91956017)(186003)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ZCZr4da0Rr33xJ4DQqrKgcMrdBy4X505vvm5rPIGc29wyW1sra+n6p/mm1bGjamrDLVxYZ9xFRVKVQO8jGXKR7GhwexrSulY2IR3x8kUJ1rcvNUscklj5g5vRNBTVJsNCNEnm+HUSYa9bdzThWPG7iraoqMw1frEP2PbrXG+SxSUyP+r17CbUcFcvtbXak3QsQED7c4lv5TFsC4ost7C5Y369eQ6TfkKrob6uu4iZyyyWWz+f+ZfP1I5TNNzWGKUVk0B/vG5u2fVLT3Fb+cGzB4pxLAybJw/Ya2wP3zObY6WaiZHEiFbK59Y86pt1GoEDPxX/zYpstA9QC4058Mbk6XW/MC16s6ZqKzUmE0XNBHUa971jcEivE7GBcgXQQSOYbxcp8J7cqjHl0jJ6Js0no8J+pFD9MTK/ITQr/je+gTR3nVXdfGo4T+JTC6SJ0rp8rEziQEXK/byyENvEKeZR8qg+8FIP7JM2udjVCKfdgOfc2/+5ikgbNpAyax1wQxekYh0E81EdEqJsII9mAKzD/BpOa8HZLY9IyFkxhM6LcAqp0CV3KMU0yoauGDzXF0T
Content-ID: <C6A110752DC0F04897DC7CD2CF6C1EEC@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5161
Original-Authentication-Results: lists.infradead.org;
 dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT004.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(4636009)(396003)(346002)(136003)(376002)(39860400002)(46966005)(33430700001)(186003)(33656002)(36906005)(70586007)(316002)(54906003)(70206006)(36756003)(4326008)(6512007)(6486002)(8936002)(2616005)(6916009)(2906002)(8676002)(336012)(86362001)(478600001)(82310400002)(81166007)(47076004)(33440700001)(6506007)(356005)(82740400003)(5660300002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 64c5fcd0-03c1-4b4c-2b57-08d7f3357c85
X-Forefront-PRVS: 039735BC4E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qupUS/k89/uG2k4NfR4f4wvXoaJklR5ZlGkdLWwfY4JG5AZ1GFBXdy+dD60cAtiiNTieJ2jBeiZNnXpC86vHlHNhRB+vPZvJkVpYvCynZ7LQFMm/tXhv1BhBO2Sf0SaiiK22FQgvAvVWM6g5t+LdiGtNKXBYU7vtCj6K3SExrPiiOFwfDKdyEtOxMFTKcjvjiBTqq7ELnme3uwQuPjadKEmM/LC0+phO5F+bopuRbmhjDMzP6PzMYHfvAuMKpakUrjTIQEXIgsMdDTQdL6PFvuJDmjoXwa/DfbessSS+j69EXElAzEgSshSCs/AbgQsCMkZlgKkpXKgYcwFSMe1LoHNMm+clU1O0nnzjThxzda4S854GDV6JWJbT/EVNfiwvdJQSPo4vXMwXgodRcvBece0mNLU4prCPqXWTVOsMrxjpwk3VjPWafgmzPgdqDCqVW+Jgfh8+nnqwfBxvyNYEE3FNuByXYBW3wdlT7ypJJ3PPOINgoGss17NcX/x50T0SxHBOusYgTJ9MFiySceFId/ugq24sUwBYEFphKFMKXybApQDlQ2LQRNTrR8OyP6r+VRW0mgMjwHlI+JoRM14C+Q==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2020 09:52:22.0331 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b8ed02f-aeda-4dab-09aa-08d7f3358120
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2PR08MB4649
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_025225_087900_B4F832B5 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.12.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.12.88 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tamas Zsoldos <Tamas.Zsoldos@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[PATCH] arm64: vdso: Fix CFI info in sigreturn.

When the signal handler is called the registers set up as the return address
points to the __kernel_rt_sigreturn. The NOP here is the placeholder of the
branch and link instruction that "calls" the signal handler. In case of a
return address the unwinder identifies the location of the caller because
in some cases the return address might not exist. Since the .cfi_startproc
is after the NOP, it won't be associated with any location and the
unwinder will stop walking.
This change corrects the generated EHFrames only.
Signed-off-by: Daniel Kiss <daniel.kiss@arm.com(opens in new tab)>
Signed-off-by: Tamas Zsoldos <tamas.zsoldos@arm.com(opens in new tab)>
---
arch/arm64/kernel/vdso/sigreturn.S | 4 ++--
1 file changed, 2 insertions(+), 2 deletions(-)
diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 12324863d5c2..5d50ee92faa4 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -13,13 +13,13 @@
.text
- nop
-SYM_FUNC_START(__kernel_rt_sigreturn)
.cfi_startproc
.cfi_signal_frame
.cfi_def_cfa x29, 0
.cfi_offset x29, 0 * 8
.cfi_offset x30, 1 * 8
+ nop /* placeholder for bl signalhandler */
+SYM_FUNC_START(__kernel_rt_sigreturn)
mov x8, #__NR_rt_sigreturn
svc #0
.cfi_endproc
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
