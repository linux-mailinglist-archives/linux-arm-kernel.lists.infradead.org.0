Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA5D1855F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 16:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDbZL+V2LqAS5OUV0bP2TWEn3fmCAhfXv+GvpSUIbew=; b=baVSGRcWZh8EUW
	BF94p0YstultRfiWgU9EqlWhW/0irR0VPdihyFuhoutzYft0g0JMdHS+HzKDnKuoB9WJ85i1XPlh0
	XjSfD+/HgH3oqhFwJajIEQ+hPBr33YCTrXj/o736KNhP9S6jL/XVo6R9pvV1+SYE2i42bDnq8bw/Y
	dp8Kg7LAQ7so/msyTK3wdFdsdyiijBKILB8ORIak4onuatdMEQlg2e0xUWJE713Iuh0FppF/F6vsr
	wBhax89+cl6CYJ3qNxT22WcV9xHvnnb0/jZxQLapVcIqkFP7US465tYKrRHnGbvWJa4QVu89rklsv
	EddxDOMkbSHgApihDfaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD8s5-0007kV-He; Sat, 14 Mar 2020 15:38:41 +0000
Received: from mail-mw2nam10on2100.outbound.protection.outlook.com
 ([40.107.94.100] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD8pj-0005lv-4f
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 15:36:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GupV7cE44Q6XCYtRH1CRqGmAZJeKH+Boo6JBM2aCYgOdRD0qxz83131HKTkkxWQpnKVqSwJzjm4384Gk0c+wBqaWyD1X1ozFedlaXHybOjiYoklBlJOIVH3KnPVMxtuMuHBPYAszOsdnMn+p9NngfO+flIefoiygn7QUacZOuho4hhaDd9BNxDWPZSg5b7wBQKS9RAcYgUDhL2fZv0PZ9w9ufC1OjqH8ssSmaflNYx7tN4t9iUpwmrfpWkMsR1UQTUtvTtF+PRc0qydRVeOK59maTMZWcZrjVMVUwp7/t0xFDIp147UWMbf3do+2UQueMlVf8pcnUk5a1fTNAiKR6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mI2g93bs0EJBL5NI/4tVGZ1opEWhoTs3mBeo+EAQeQI=;
 b=K566kEjZ5aGLWXEUpfgMJI2D2PglNnOtlkIaPm2xtqxoMcoZmHtn41NyrhgI9NsOAecc0yvOKr7YqCi0SnXd/T2GmPdmlwg5snXmY+6xNZMam0QbulOyQJJaxN/NKU85/gZu/mWu70RgAFV7HtkfULfwztdfzv6envuPRYZ27rhXTYh7/HgWECu8fHiB6+qLmFJ9rU5evppRIlmrvELLewGyK+O5ENp4I66/qXSgpDiroXuw/JCbNu03FIqW7/3IR+auXp76n7FGszNdR9sNP/39+yIRE/Pf87JfiwsGX/rtI3Suvo7W3hDtqjnrO885W6VP6lmfY3kFWJgxm8DzOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mI2g93bs0EJBL5NI/4tVGZ1opEWhoTs3mBeo+EAQeQI=;
 b=gXm6Gtm4ISDyJ4OHcuVp47bPVrYQnzBnhnuvqBDerXqoDXwlexuHMUR50pWkdGJndSiwKXvuWHXnnM32/FDRiwVcoD5URPTa7hEKx4BJ6G4r5BBo81SOnLqhVDefGu1Zp/i+axq4E1GYTqcv9h71+b+m62GHT1RTuCHL5D0ZoR8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com (2603:10b6:805:a::18)
 by SN6PR2101MB1632.namprd21.prod.outlook.com (2603:10b6:805:53::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.4; Sat, 14 Mar
 2020 15:36:10 +0000
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3]) by SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3%9]) with mapi id 15.20.2835.008; Sat, 14 Mar 2020
 15:36:10 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: will@kernel.org, ardb@kernel.org, arnd@arndb.de, catalin.marinas@arm.com,
 mark.rutland@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-arch@vger.kernel.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com
Subject: [PATCH v6 06/10] arm64: hyperv: Add kexec and panic handlers
Date: Sat, 14 Mar 2020 08:35:15 -0700
Message-Id: <1584200119-18594-7-git-send-email-mikelley@microsoft.com>
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
 15.20.2814.18 via Frontend Transport; Sat, 14 Mar 2020 15:36:08 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [131.107.159.247]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5bc55ea7-d86c-44ea-e03d-08d7c82d6b5d
X-MS-TrafficTypeDiagnostic: SN6PR2101MB1632:|SN6PR2101MB1632:|SN6PR2101MB1632:
X-MS-Exchange-Transport-Forked: True
X-LD-Processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR2101MB16329F6537CD030137E1CFE0D7FB0@SN6PR2101MB1632.namprd21.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 034215E98F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(10290500003)(478600001)(2906002)(6486002)(36756003)(8936002)(66946007)(26005)(86362001)(2616005)(16526019)(186003)(956004)(66556008)(6636002)(66476007)(4326008)(7416002)(316002)(81166006)(8676002)(81156014)(52116002)(7696005)(6666004)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1632;
 H:SN6PR2101MB0927.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 31j413vFbttxrXeHZSZIwLS1zTJ8CMRqWeIebYMJqpg6SLmIfBf8yeYGZLWhwMmsuDcvp/6s/LLcbewpXAjRKBi+jBwRSzYefq4clJuLqED1QeNTutU1vukfJTF5W0+cEgI4TNKVHAowxkNqfIzdxzuXGjYuBK1DhqlonSGCuuZo8DB/FMd59YS1FXCzI85sptREoS1QIktV6u2YGo6zjTDulBr54WemnexlW1nAyY2aql71QIhW0Vx9UV9IE1yZQbpcpgJO1xwVtKoduh6yySziLkp80xZXNZSrWiCHgUBv+D+jNRCEKehrzDrvZmGpAcqfCHKiI8M+s5myw4rz1okg/xp620zT9uu1EDZ9po5x1mFpHDALmriHa1XlOJW42jlw38CqXlDT8fByr43Z9KdJqBMgAgmp/1nb7TQO0cFqvDYd40lyiwtiWLp6q1rX1WIkafjGfPblNANhg+SLeBhJv2SMLh16sQ9idVeI14RFxHvbfJXuAHCMe8mpD+Os
X-MS-Exchange-AntiSpam-MessageData: FX+ozvb70ObrmKn/ItO4NYPeBv3suvNKjQ/7l/ZmusXQr4evaw9BqNfhkxn7hEaEVNweW2cFAbyUcCACCtUzS2cC9TOOVqWYPlzY8SpPaqyoNBP7Y8uHVbh78JW2BLZjmLMqFAGZHHuuXBr+cj9CHw==
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bc55ea7-d86c-44ea-e03d-08d7c82d6b5d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2020 15:36:09.8531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hmwZBAw1Otpve2dD2AqtbuvFxa4QxNWeIjbFQ5ZG4EJRtmz/JkIhZ9QZBV0gZaV60BKagd9r/dGxaYXCoZEUtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_083615_230168_494A68F8 
X-CRM114-Status: GOOD (  13.17  )
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

Add functions to set up and remove kexec and panic
handlers, and to inform Hyper-V about a guest panic.
These functions are called from architecture independent
code in the VMbus driver.

This code is built only when CONFIG_HYPERV is enabled.

Signed-off-by: Michael Kelley <mikelley@microsoft.com>
---
 arch/arm64/hyperv/hv_core.c  | 61 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/hyperv/mshyperv.c | 26 +++++++++++++++++++
 2 files changed, 87 insertions(+)

diff --git a/arch/arm64/hyperv/hv_core.c b/arch/arm64/hyperv/hv_core.c
index 4aa6b8f..8d6de9f 100644
--- a/arch/arm64/hyperv/hv_core.c
+++ b/arch/arm64/hyperv/hv_core.c
@@ -199,3 +199,64 @@ void hv_get_vpreg_128(u32 msr, struct hv_get_vp_register_output *res)
 	kfree(output);
 }
 EXPORT_SYMBOL_GPL(hv_get_vpreg_128);
+
+void hyperv_report_panic(struct pt_regs *regs, long err)
+{
+	static bool panic_reported;
+	u64 guest_id;
+
+	/*
+	 * We prefer to report panic on 'die' chain as we have proper
+	 * registers to report, but if we miss it (e.g. on BUG()) we need
+	 * to report it on 'panic'.
+	 */
+	if (panic_reported)
+		return;
+	panic_reported = true;
+
+	guest_id = hv_get_vpreg(HV_REGISTER_GUEST_OSID);
+
+	/*
+	 * Hyper-V provides the ability to store only 5 values.
+	 * Pick the passed in error value, the guest_id, and the PC.
+	 * The first two general registers are added arbitrarily.
+	 */
+	hv_set_vpreg(HV_REGISTER_CRASH_P0, err);
+	hv_set_vpreg(HV_REGISTER_CRASH_P1, guest_id);
+	hv_set_vpreg(HV_REGISTER_CRASH_P2, regs->pc);
+	hv_set_vpreg(HV_REGISTER_CRASH_P3, regs->regs[0]);
+	hv_set_vpreg(HV_REGISTER_CRASH_P4, regs->regs[1]);
+
+	/*
+	 * Let Hyper-V know there is crash data available
+	 */
+	hv_set_vpreg(HV_REGISTER_CRASH_CTL, HV_CRASH_CTL_CRASH_NOTIFY);
+}
+EXPORT_SYMBOL_GPL(hyperv_report_panic);
+
+/*
+ * hyperv_report_panic_msg - report panic message to Hyper-V
+ * @pa: physical address of the panic page containing the message
+ * @size: size of the message in the page
+ */
+void hyperv_report_panic_msg(phys_addr_t pa, size_t size)
+{
+	/*
+	 * P3 to contain the physical address of the panic page & P4 to
+	 * contain the size of the panic data in that page. Rest of the
+	 * registers are no-op when the NOTIFY_MSG flag is set.
+	 */
+	hv_set_vpreg(HV_REGISTER_CRASH_P0, 0);
+	hv_set_vpreg(HV_REGISTER_CRASH_P1, 0);
+	hv_set_vpreg(HV_REGISTER_CRASH_P2, 0);
+	hv_set_vpreg(HV_REGISTER_CRASH_P3, pa);
+	hv_set_vpreg(HV_REGISTER_CRASH_P4, size);
+
+	/*
+	 * Let Hyper-V know there is crash data available along with
+	 * the panic message.
+	 */
+	hv_set_vpreg(HV_REGISTER_CRASH_CTL,
+	       (HV_CRASH_CTL_CRASH_NOTIFY | HV_CRASH_CTL_CRASH_NOTIFY_MSG));
+}
+EXPORT_SYMBOL_GPL(hyperv_report_panic_msg);
diff --git a/arch/arm64/hyperv/mshyperv.c b/arch/arm64/hyperv/mshyperv.c
index ae6ece6..c58940d 100644
--- a/arch/arm64/hyperv/mshyperv.c
+++ b/arch/arm64/hyperv/mshyperv.c
@@ -23,6 +23,8 @@
 
 static void (*vmbus_handler)(void);
 static void (*hv_stimer0_handler)(void);
+static void (*hv_kexec_handler)(void);
+static void (*hv_crash_handler)(struct pt_regs *regs);
 
 static int vmbus_irq;
 static long __percpu *vmbus_evt;
@@ -137,3 +139,27 @@ void hv_remove_stimer0_irq(int irq)
 	}
 }
 EXPORT_SYMBOL_GPL(hv_remove_stimer0_irq);
+
+void hv_setup_kexec_handler(void (*handler)(void))
+{
+	hv_kexec_handler = handler;
+}
+EXPORT_SYMBOL_GPL(hv_setup_kexec_handler);
+
+void hv_remove_kexec_handler(void)
+{
+	hv_kexec_handler = NULL;
+}
+EXPORT_SYMBOL_GPL(hv_remove_kexec_handler);
+
+void hv_setup_crash_handler(void (*handler)(struct pt_regs *regs))
+{
+	hv_crash_handler = handler;
+}
+EXPORT_SYMBOL_GPL(hv_setup_crash_handler);
+
+void hv_remove_crash_handler(void)
+{
+	hv_crash_handler = NULL;
+}
+EXPORT_SYMBOL_GPL(hv_remove_crash_handler);
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
