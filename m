Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519E11855F4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 16:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HR0hrXmc5S85TKtbOBv5AmMVpb97+4QPvEeS5Y6Z4w=; b=FE5ggHcUNd6giW
	WU9Fu504hRMmfgp8L6pNi/SQ2ZqfttvfYSE0y+p/kpW0XRLN+o2k7mce3XCx4i16921MljSxQh7ec
	EBszA77NFpe4T/94rNldCRA0XTEIq58MwBVQRf8MvDkCaeC4ZSXpf8vsJ6fWiUG+EZz8b6YH36vAK
	pMXePFnX8pJnVs4rKkoxEAr5PSw8r3ZVSlKy4U92fmLBmLocAbHAv7J5ywo6Rue825Ld3L7rzw1rc
	d+jtfW1CO+JooxI/00nXYQxIZMwHz9u41bBHwak1ucJdsv6rV+9rW/fo9n+Fai99E/9UcUSbgVuu3
	AfxNIRf/JCbcEQVd8sEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD8sw-0008Ry-L3; Sat, 14 Mar 2020 15:39:34 +0000
Received: from mail-mw2nam10on2100.outbound.protection.outlook.com
 ([40.107.94.100] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD8pp-0005lv-Ad
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 15:36:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXUQw5KuuM++10ls4woQ+dcRPSEWsckb+8fMNSAP8mgONKxIgUOxvaOi5YmmeV9ldd0k4SeGDKMp7TQonq9q09/ko8QMyLrrhyGaVqkvMFUi9O8XYJ6Axs2I7q/6ixMQE/TVQ81+9pFJvVxVo+e2feX1jqV5jmcedjFYK4UwJ/rg1Vt4j14IhS1inbEGQtu3FdrpZv82XhEtt5ZpzskB2+2U30h/1/BUQMd41SYIRwCyv/fK9jewghzfOK32H9eMz8JXZqAcnVwtcmC3ILouTxiAGjIdZadxL+YYnzVKE0DZmNv3TP6HEygFkWR5eSeuou7/jqTB1MItDVVROjXShA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKyFmX+sVwoyVwIOuRmmVx5Ar1uA+tR/DgxgqE+ZvhI=;
 b=jdfdregmyIoFDF3JmtEsh3BmjJ4DLynB44GupBEZ3wXWNtYjnOO0ennVF+cKxwK6t8iq1Nwv0kRxQThn3pq6MBsC0VZs7675ngCxXyUK1C9PNGbfSqmnL2R0jUl28enWkTzxV+U9pcshX0z9VBybaUCQ+QXL5bHSL/tDlObZCKgyRg5bIgwMxX0pEZwtpLLGhDNd3zMm9OuVo/fbF8Bo9ZInKo59CEG5Pr4KdXVlJ6oFdKHQ5pEUxQp+H1yZd2oGF3HyCWScGEyCzNh+7uxR1aBX/0qY/d/WISTGWFHumCWwKWfKnB4qXkdcuIPJhzifZfuHygm+XZerxRQoozBbIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jKyFmX+sVwoyVwIOuRmmVx5Ar1uA+tR/DgxgqE+ZvhI=;
 b=BnPBX6apUpCLWx1jEl+QkMQpMvi4jfPrycIWhuqfj14Lu+nnx0z2yjZhSGq+8VLnsqrTQS9R1pGvqsCCjSJ8Fi39W2fbVIXrOiNGHpYpN88Z+OeE17rb2zwMpdqeJ0x1Yq5bfgwvxeGgTRbWqA1198NH3dIUY9+gg8iKSbuWcs0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com (2603:10b6:805:a::18)
 by SN6PR2101MB1632.namprd21.prod.outlook.com (2603:10b6:805:53::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.4; Sat, 14 Mar
 2020 15:36:13 +0000
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3]) by SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3%9]) with mapi id 15.20.2835.008; Sat, 14 Mar 2020
 15:36:13 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: will@kernel.org, ardb@kernel.org, arnd@arndb.de, catalin.marinas@arm.com,
 mark.rutland@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-arch@vger.kernel.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com
Subject: [PATCH v6 08/10] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Date: Sat, 14 Mar 2020 08:35:17 -0700
Message-Id: <1584200119-18594-9-git-send-email-mikelley@microsoft.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
X-ClientProxiedBy: MWHPR22CA0047.namprd22.prod.outlook.com
 (2603:10b6:300:69::33) To SN6PR2101MB0927.namprd21.prod.outlook.com
 (2603:10b6:805:a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mhkkerneltest.corp.microsoft.com (131.107.159.247) by
 MWHPR22CA0047.namprd22.prod.outlook.com (2603:10b6:300:69::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18 via Frontend Transport; Sat, 14 Mar 2020 15:36:11 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [131.107.159.247]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c3f4b2bf-e63e-405a-0aa8-08d7c82d6d22
X-MS-TrafficTypeDiagnostic: SN6PR2101MB1632:|SN6PR2101MB1632:|SN6PR2101MB1632:
X-MS-Exchange-Transport-Forked: True
X-LD-Processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR2101MB16325A5100C46539CAC95ECFD7FB0@SN6PR2101MB1632.namprd21.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 034215E98F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(10290500003)(478600001)(2906002)(6486002)(36756003)(8936002)(66946007)(26005)(86362001)(2616005)(16526019)(186003)(956004)(66556008)(6636002)(66476007)(4326008)(7416002)(316002)(81166006)(8676002)(81156014)(52116002)(7696005)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1632;
 H:SN6PR2101MB0927.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Y8/5JIdNHPpQYOriZHKxdY7dCod7Y4cj+TapIQ1g4uO0um9lETJNone/DA1OTp97fuOd+iDKldvAGcYakp2nFQBt92E9Tb2azwdqUZrLEODKC5QwRPFZdm/DVrn8fZfq0kxaiC9gZXhpIW1KqDO61EumsCxn4G9Ayfi9kq4G7wdBaie8nvxJIyQlfwWqotXxTaCbUu5jkYgXtgCuKiik0ddYCYi61APgz5JAt014D7LReZbDATThZ21pf8omuBAjsvUmHfmJqXzraPm75fSOrI6QAIj7CoMBGLiK82rvG9woOKbglcJp1R1szncegVW8Duf/0f1nny7JSorpOo0fJXcTfdzaHvjDUEwZN1lNB88Bp//iLmYmXggjd2y8QQT2ngadD+2mTaktRy4Iwq/72fGRsiFRWHqg7aZpULpkJBz0aEyHUHz9QGI6ydFHrQQBxCuAcd4p27DWb0q1g5g46455zknlk9udoNkzEYq6O/ErKhcrvDD/6HB1tZxgoNB
X-MS-Exchange-AntiSpam-MessageData: UkpBgxUHhF3uwM5PSVLPWaw2OixyDEJH5v1Qdxna128puF3bUg1pAUnd1Dx3a27ysrwz6v7firsp5AyOO8wVfYKjLHt3wxADa7zj8pw61a0njQpvu4hWjVVIBZyTZKUO8Zj+BUq1ysMbrz33vHqIig==
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3f4b2bf-e63e-405a-0aa8-08d7c82d6d22
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2020 15:36:12.8294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Ysw6tUh26o3cWR3oh3Pr4aOWyqX1cBidrLQvrHSlRX8zt/Af0Oeoab98lhkHFl1R94P9rsTvcIkcpexzrYfnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_083621_395347_9119D44A 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sunilmut@microsoft.com, boqun.feng@gmail.com, mikelley@microsoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add hooks to enable/disable a per-CPU IRQ for VMbus. These hooks
are in the architecture independent setup and shutdown paths for
Hyper-V, and are needed by Linux guests on Hyper-V on ARM64.  The
x86/x64 implementation is null because VMbus interrupts on x86/x64
don't use an IRQ.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/x86/include/asm/mshyperv.h | 4 ++++
 drivers/hv/hv.c                 | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
index 1c42ecb..0e5db78 100644
--- a/arch/x86/include/asm/mshyperv.h
+++ b/arch/x86/include/asm/mshyperv.h
@@ -59,6 +59,10 @@ typedef int (*hyperv_fill_flush_list_func)(
 #endif
 void hyperv_vector_handler(struct pt_regs *regs);
 
+/* On x86/x64, there isn't a real IRQ to be enabled/disable */
+static inline void hv_enable_vmbus_irq(void) {}
+static inline void hv_disable_vmbus_irq(void) {}
+
 /*
  * Routines for stimer0 Direct Mode handling.
  * On x86/x64, there are no percpu actions to take.
diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index 6098e0c..035d3df 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -180,6 +180,7 @@ void hv_synic_enable_regs(unsigned int cpu)
 	hv_set_siefp(siefp.as_uint64);
 
 	/* Setup the shared SINT. */
+	hv_enable_vmbus_irq();
 	hv_get_synint_state(VMBUS_MESSAGE_SINT, shared_sint.as_uint64);
 
 	shared_sint.vector = HYPERVISOR_CALLBACK_VECTOR;
@@ -241,6 +242,8 @@ void hv_synic_disable_regs(unsigned int cpu)
 	hv_get_synic_state(sctrl.as_uint64);
 	sctrl.enable = 0;
 	hv_set_synic_state(sctrl.as_uint64);
+
+	hv_disable_vmbus_irq();
 }
 
 int hv_synic_cleanup(unsigned int cpu)
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
