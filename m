Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95719161441
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1ekAz1okNKZ6gFXY9j89mPHMdiQc6qnMHlRXBrRJok=; b=Zxr/f6U8iMWjDc
	7R7BwVoEFq1RsZu+ofLKZFpUhF6zCa8bPiZI3+Y9OsnlnM9fHbeZREV+IFeMUAZ9RcwZjeu15V2GB
	27gq/XWBB28ry8egl4lHkbgozzPH3UBjWSzeFHWByF04TmcxqOP2TlCUPLN8UxkjikcmFknc0m6DD
	ExtmAxz3EBZCK8lofBudpaxP/PYSIGbWk85mKA5lon0OmgkK7ir4Rn/p0EzB1nMcMaTU4gkm6JFlf
	9QW70spdw1oEz9NmkwNiSdn0sCLWga33OGeCFsT9bWfXqiKqxJQTFfG8FYhAeQ7xS85jw5zhi0da4
	evdW7yKj65KbpOjtSa7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3h7s-0001Nk-ON; Mon, 17 Feb 2020 14:11:56 +0000
Received: from mail-db8eur05on2098.outbound.protection.outlook.com
 ([40.107.20.98] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3h7U-00018K-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:11:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RW5QkjWUGr1AiZRfgM9m0t1fBy6YT80UcbMZJA/KgyRCt5xoptrgQXlgcX/4Jg141sAZRxuFafogfIvbqeYL/NYfmSsxODyJ9s7mXeW6JSWT3A/OSfdQ5P6WPKfpZ4l+mZrggP56YXXdCZrYg8Zzs/qBvLCyynMaGByfepK9GhAVIs5KGzGf6ECFpzndzdGGvck56Zh1tTYoXh3AialtvNYDcdHjFfwJk0adAKWe3O2HWvAbdDlEt6n+0WcYgdmgKoxY6z9A9RXf7EWIHHZYN3RzRISho4+tj3NyiJtVNUBj/Nphxh9Ioc8Fo1caVgx9scBOhcY8obTdN4fKBDtm4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QpBzFUt8+CR65vQxJPaFhhfjVPFQlNmvgc4okBd60a8=;
 b=Orhax7z9Yzljl9P/35EFxdk9bG/9UH00thM3u+G2wl03XZ5fha1Nk/1Kg6qgYb0G7TUUxM6/SFufW886GJYfKo++juvTfYFYba91edoSFMWebNQ9yoXU3BNAC1SI3BRlEmLvb8W/MNEN7AFzSqMQ6OxNrL8/W3KNWbK+9mZU515vT4wAqwRcqaa4BwStWj1Fc4CTEnz1NLr7DG2UJflos3LaUJCxmQzZPbDRBW8yJGGwnhTQX2Gl/vO2cY1TxU6C9nW2zQybNtdJsEIsFNA5Egr/Hdf13e77SZUE+MtMmQ75jxU0+t/hw9L8KIrcYH2q2MpT1rGD87VCaKef4a5/Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QpBzFUt8+CR65vQxJPaFhhfjVPFQlNmvgc4okBd60a8=;
 b=TPxaGr3QWsYq/MpIxtyJIl+0HjNcyjwqU4CB0lIOXW+jn7AjXUQtbpB6Qjh+xSErAkqXWqMhmpNKhauaSwBUMV/soCFe7TE7/ONLSYMG4lKQSeFXSs0K/uJFJsSydSeQydRVYQMTTyMlC6ofPlyQ547wx0SvFEtjDs7KzFxHmC4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=alexander.sverdlin@nokia.com; 
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com (20.177.203.20) by
 VI1PR07MB5056.eurprd07.prod.outlook.com (20.177.203.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.12; Mon, 17 Feb 2020 14:11:26 +0000
Received: from VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::20c4:7ce8:f735:316e]) by VI1PR07MB5040.eurprd07.prod.outlook.com
 ([fe80::20c4:7ce8:f735:316e%2]) with mapi id 15.20.2750.010; Mon, 17 Feb 2020
 14:11:26 +0000
From: Alexander X Sverdlin <alexander.sverdlin@nokia.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 1/2] ARM: PLT: Move struct plt_entries definition to header
Date: Mon, 17 Feb 2020 15:09:54 +0100
Message-Id: <20200217140955.211661-2-alexander.sverdlin@nokia.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200217140955.211661-1-alexander.sverdlin@nokia.com>
References: <20200217140955.211661-1-alexander.sverdlin@nokia.com>
X-ClientProxiedBy: HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14)
 To VI1PR07MB5040.eurprd07.prod.outlook.com
 (2603:10a6:803:9c::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ulegcpsvdell.emea.nsn-net.net (131.228.32.181) by
 HE1P191CA0004.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24 via Frontend Transport; Mon, 17 Feb 2020 14:11:25 +0000
X-Mailer: git-send-email 2.24.0
X-Originating-IP: [131.228.32.181]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cc0d8d86-0914-469d-620e-08d7b3b3467a
X-MS-TrafficTypeDiagnostic: VI1PR07MB5056:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR07MB50564DAC79BB411F1582383788160@VI1PR07MB5056.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Forefront-PRVS: 0316567485
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(189003)(199004)(26005)(6506007)(6666004)(4326008)(86362001)(2616005)(6916009)(52116002)(1076003)(956004)(478600001)(54906003)(186003)(6486002)(8936002)(8676002)(2906002)(81166006)(66946007)(81156014)(66476007)(5660300002)(66556008)(6512007)(36756003)(16526019)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB5056;
 H:VI1PR07MB5040.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aF3T1ik8F0yERWJ5XH+vUvkP7KzhNgvcSV/I54yXblaaEEAACjXBaNS8gewSc5qcULVdWOlfv4U5iNH8KEdkHJFi7iRpdk/Uevl6ZtqA/DAfqMXcCKSR8/0Ac4fwGiMrQUw4neaaio2MICV255YzjrNUGxKTKqjDVj7FnNzzf6JyvW8bH/Xfep63PrW1CB2AOzEYQWw1HJJimcaw0w9bvpYSBUvrLW2eA/r2VDtDELgsl1yw9nmEW4ZTiEulVw8Od9vxAe2GYP3iWuJ0Kog+fTqrqHjtCVYB+5/YsRCye3yQyVp/rxuAFrtcyIl+HLuyoFd8sV7fSQzyN5bhbmEybvmHl2CN1C+JB5i02aqTYy6DATBLz/jT8zYn99f5Sjt/FAZNWqzSt4S2TTxbqo8OESwKMKVdD/h3p2Q5sR/MZtCcz30wFm0yMJ9EBm6ZDlSo
X-MS-Exchange-AntiSpam-MessageData: BolKjEGMaWQS6yXj6LXZeOZme9HnpCTbym5BHIclgHphHpfduE/4DB9AllFjbEKYoWjdyExQqmsVQqEAQN42ZsQX5HXaFUKxdHvYg6hSLW96hJc8EXjT5RQGnTjCfNO4VcEQhgveK0E/FWEYueg4lA==
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc0d8d86-0914-469d-620e-08d7b3b3467a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 14:11:26.0267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1inIrjm18BcNlFdlRe61x1JH8+VLbc5XqIgpbOwJuN4SrIHO65JErZs8YF64w5HrWeWFbcnr4mFpN+BqPvcEMpcxoHh07OA1oajnrWu07vY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB5056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_061132_773565_8DBB8ACC 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [131.228.32.181 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.98 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>,
 Alexander Sverdlin <alexander.sverdlin@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Sverdlin <alexander.sverdlin@nokia.com>

No functional change, later it will be re-used in several files.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
---
 arch/arm/include/asm/module.h | 9 +++++++++
 arch/arm/kernel/module-plts.c | 9 ---------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/include/asm/module.h b/arch/arm/include/asm/module.h
index 182163b..78e4c16 100644
--- a/arch/arm/include/asm/module.h
+++ b/arch/arm/include/asm/module.h
@@ -19,6 +19,15 @@ enum {
 };
 #endif
 
+#define PLT_ENT_STRIDE		L1_CACHE_BYTES
+#define PLT_ENT_COUNT		(PLT_ENT_STRIDE / sizeof(u32))
+#define PLT_ENT_SIZE		(sizeof(struct plt_entries) / PLT_ENT_COUNT)
+
+struct plt_entries {
+	u32	ldr[PLT_ENT_COUNT];
+	u32	lit[PLT_ENT_COUNT];
+};
+
 struct mod_plt_sec {
 	struct elf32_shdr	*plt;
 	int			plt_count;
diff --git a/arch/arm/kernel/module-plts.c b/arch/arm/kernel/module-plts.c
index 6e626ab..d330e9e 100644
--- a/arch/arm/kernel/module-plts.c
+++ b/arch/arm/kernel/module-plts.c
@@ -12,10 +12,6 @@
 #include <asm/cache.h>
 #include <asm/opcodes.h>
 
-#define PLT_ENT_STRIDE		L1_CACHE_BYTES
-#define PLT_ENT_COUNT		(PLT_ENT_STRIDE / sizeof(u32))
-#define PLT_ENT_SIZE		(sizeof(struct plt_entries) / PLT_ENT_COUNT)
-
 #ifdef CONFIG_THUMB2_KERNEL
 #define PLT_ENT_LDR		__opcode_to_mem_thumb32(0xf8dff000 | \
 							(PLT_ENT_STRIDE - 4))
@@ -24,11 +20,6 @@
 						    (PLT_ENT_STRIDE - 8))
 #endif
 
-struct plt_entries {
-	u32	ldr[PLT_ENT_COUNT];
-	u32	lit[PLT_ENT_COUNT];
-};
-
 static bool in_init(const struct module *mod, unsigned long loc)
 {
 	return loc - (u32)mod->init_layout.base < mod->init_layout.size;
-- 
2.4.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
