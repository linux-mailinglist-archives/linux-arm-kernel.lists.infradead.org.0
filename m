Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779C1151090
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 20:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DicHEjvQ4VjMd+xkQBN7Y8RdsPx97A9C92HTYY0mT4k=; b=SX6G+cDNyTzkXu
	2v4fwemezXimC4/FRki8OX7FAxRvc5ZDZRLayxNHzW3S7Oasd0KnkXARDnu4oy2eYgPahLF/pFJNK
	OnbNixWxUFsog1622vHTb9x5AeBvV5w8NcUbowxPhPfAB0Q3NHMAJrE+QuZbZzmCmP3mMGc+nCAAx
	HUTXTWBFxzZcmrOwoR0Tkffvu0Wkre7lSHhdMZUGO1nQ2LHj+5ZEzC5ocqgs26OhXoKwA/eKvktMN
	AqwpHS2/8ypZtZ4Fhj3x4fQhgwh/u2i/lA9qy6oShgrn3AUMoRzvme5Eve288QUzSHtjXsrUnaBQD
	qx3XObTovnkEYYLsxVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyhoo-0005pe-BU; Mon, 03 Feb 2020 19:55:38 +0000
Received: from mail-eopbgr770102.outbound.protection.outlook.com
 ([40.107.77.102] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyhoh-0005pM-B7
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 19:55:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X0UXBFBNoB7pShZLHO8p7G2cyVALhsLxU4r1HI9um71pDEKj97vvjT+yLbPJs14Bg4ajqPKrBklFbP2cTnnfXxUSpCCmnXSEIdVtooLtD4BRTFcV8wnsbmx54O2NZcY0fzuZ8w/4F1T7nNEY3QtwVkUR4ZA9VjMNL18sDpn3XfETww0I7I3tBdfmoJpnjLw07b1YimgyakJ6gtnTVj0CtoebxEh8D7NUv6pM98JYvbd3dcR98bhUYyD23Glk2bGkcWYXIDVSP65/4hGTHLWrT4tDq/39wO3cK9kBsPOHBf9npFod7xP+WFh6/vqN/kOkVEk02NCWcX5Jcr0QtnSvnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JgcSFwvhOVVRLqDHPFmOhT9wNQ0jQz4i5OuW31uoSGk=;
 b=PNvqg+ZUjCmrr6TDqox0/iUT6TG1KHzGNi7kfshe3eJGHE2Q7uG8eZzntyEcbXQWoE0wi7DtylUoCXijumajC1vdtiIEwJyTAJQgxr2q5Iuqf7a0v9XlfdxRzddQFITfXVKKOXVYgl+HudcxhQ2SjJ+7l11A6rTlSpyV6fuCCB2oQbKUEGTDqpGrw1GQlvU4i76DDJCA8iV9KdNxHvFm9rlPzfVeBQjCu7D74R4Z8qAXVJ5pOH3HjwMMnFjm5W0kCJnaG0yvPx5V4z5Y7q882wBQgtX0PBRDrvg8enqn6xGjYwA2zlq/aPKxFlltxRLE3ICsO2oHhtY3oqfvf3R9AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JgcSFwvhOVVRLqDHPFmOhT9wNQ0jQz4i5OuW31uoSGk=;
 b=bUMpLgnPdTGVGA41V0qYw26S1kY9b1XgYqXv9UuCbCXVbkzmJaeCHEyzufWiAI3OO8MEUNxOLq1WYp/6mjcR6I4Ib+M3KoCy4+oQxNuVAGEl/QxgaLxoxb6Ua6fK0j0Vr7JMMmIO/Yoh2zi2NjkNcFejZXtAfyndC2iOIKYqCP4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=hoan@os.amperecomputing.com; 
Received: from DM6PR01MB4090.prod.exchangelabs.com (20.176.105.203) by
 DM6SPR01MB0023.prod.exchangelabs.com (20.176.117.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.34; Mon, 3 Feb 2020 19:55:27 +0000
Received: from DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::e148:5333:b3b1:b153]) by DM6PR01MB4090.prod.exchangelabs.com
 ([fe80::e148:5333:b3b1:b153%5]) with mapi id 15.20.2686.031; Mon, 3 Feb 2020
 19:55:27 +0000
From: Hoan Tran <Hoan@os.amperecomputing.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Kconfig: Enable NODES_SPAN_OTHER_NODES config for NUMA
Date: Mon,  3 Feb 2020 11:55:14 -0800
Message-Id: <1580759714-4614-1-git-send-email-Hoan@os.amperecomputing.com>
X-Mailer: git-send-email 1.8.3.1
X-ClientProxiedBy: CY4PR02CA0044.namprd02.prod.outlook.com
 (2603:10b6:903:117::30) To DM6PR01MB4090.prod.exchangelabs.com
 (2603:10b6:5:27::11)
MIME-Version: 1.0
Received: from engdev037.mustanglab.us.amcc (4.28.12.214) by
 CY4PR02CA0044.namprd02.prod.outlook.com (2603:10b6:903:117::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.27 via Frontend
 Transport; Mon, 3 Feb 2020 19:55:27 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a165989c-0d51-4c9c-7d8a-08d7a8e3040f
X-MS-TrafficTypeDiagnostic: DM6SPR01MB0023:|DM6SPR01MB0023:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6SPR01MB0023E8F6B2E9EED38F396437F1000@DM6SPR01MB0023.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0302D4F392
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(39840400004)(346002)(366004)(136003)(189003)(199004)(66556008)(26005)(4326008)(956004)(66946007)(107886003)(16526019)(6512007)(86362001)(52116002)(186003)(5660300002)(4744005)(66476007)(2616005)(6506007)(316002)(6666004)(6486002)(81166006)(81156014)(478600001)(2906002)(8676002)(8936002)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6SPR01MB0023;
 H:DM6PR01MB4090.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
Received-SPF: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vnICTzxcqrErTymH5egEdm3QaQZZ5q3YHQfN5Qx1i1M20hSyH44DiGa7Q7kgsaO2jc6NoCQGguxmb1SIy+jvxUbjDvZEua2sjw67yz5XU48WR6MVjS87/rioSXNc3y0WVAwwXJwlqUvl0GL//XHp3XNAn77fkryTw4oX3gaIZV08k/Gt30wXOK6u6jjdhwd01nVVweZrlnRjhrOnlfFcuelOkSbLLfGTpj4b5YN2r4OgkWeNXbz2SLdtmdpQJXkXUlLIn0KQVQcttjf6ztmKvdTB1V48EQPiNI3AYpOR/5frU7bKTlOrc0oQg0xsVeBd9PualnN6LdETTxTxAxDiWY4/WGv2k9W27GcpzFLv6DkpubzA80JbGJtZU3j6C/SCa4kRJRXDaRKEprIzeJe8EvlVZdkV8PuhwoDUcq/9uKYONGOO7HrT935KQZu5cehA
X-MS-Exchange-AntiSpam-MessageData: 9MRghyd7Ci2EUfz4W8EmzAzI1nhXb2Tk+YENUHeYEXv8kI8y0Mz1uHNhezm5ntsLaCii2VehTNerl6Cx+JBx2zMNi1UGE1/gQcFShw9ABN18CHksUV5Mw19bH1ArRfi8/SJP+rXHosE/8aVohMUU1Q==
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a165989c-0d51-4c9c-7d8a-08d7a8e3040f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2020 19:55:27.6460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k1KFyvnbnULvfaTKh9JwOatFlo8iOD8tAS1beG/56eCsra8f2yDvh5RQA/aOL/QkwTEu1kGnSwpmOdVoHz068CCUWld+1KcTUbJRjs22F9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6SPR01MB0023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_115531_439772_7E5E5099 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.102 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.102 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patches@os.amperecomputing.com, Hoan Tran <Hoan@os.amperecomputing.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some NUMA nodes have memory ranges that span other nodes.
Even though a pfn is valid and between a node's start and end pfns,
it may not reside on that node.

This patch enables NODES_SPAN_OTHER_NODES config for NUMA to support
this type of NUMA layout.

Signed-off-by: Hoan Tran <Hoan@os.amperecomputing.com>
---
 arch/arm64/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e688dfa..939d28f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -959,6 +959,13 @@ config NEED_PER_CPU_EMBED_FIRST_CHUNK
 config HOLES_IN_ZONE
 	def_bool y
 
+# Some NUMA nodes have memory ranges that span other nodes.
+# Even though a pfn is valid and between a node's start and end pfns,
+# it may not reside on that node.
+config NODES_SPAN_OTHER_NODES
+	def_bool y
+	depends on ACPI_NUMA
+
 source "kernel/Kconfig.hz"
 
 config ARCH_SUPPORTS_DEBUG_PAGEALLOC
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
