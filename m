Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655315FB62
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkVOY7ZkmwAuERPs3pXHr3U35tuRvr28pBriSJGthyI=; b=UnE9jHCruhw9S7
	QHYywNO4b/CcYfWnVjTLCNFs7FHGf+ZbGju8tlotNDyAWCWyOi6z9zGqlsOAyiwbtX8d/6pa/ci1H
	WLHntfrSG0No2HzLmqWUvycRKyMgEHoPc6nCKzbTc1c/PBaOm3SaX86mAn+wxa5WFvMozRRmrv5pP
	A0u78W2QLDWDx6JSZemH75v4eicvPc8KO/XS9/q848QcrnfpEmwE011PU+Rlmu3EV5mGny8eqPGqi
	a7zWr3NSr9qX4h5j7kCn7IgeSFkL/UCD1EA9JJoGM2u4r8hZMzPqOVDUEonAcJG3EgmXHOWtU4Ijo
	TbLCtxosJySY5ONsBsgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4CS-0000wQ-HV; Thu, 04 Jul 2019 16:03:08 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4CF-0000vP-6Z
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:02:57 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id D06F562F263445D85588;
 Thu,  4 Jul 2019 17:02:40 +0100 (IST)
Received: from LHREML523-MBS.china.huawei.com ([169.254.9.195]) by
 lhreml709-cah.china.huawei.com ([10.201.108.32]) with mapi id 14.03.0415.000; 
 Thu, 4 Jul 2019 17:02:35 +0100
From: Shiju Jose <shiju.jose@huawei.com>
To: Tyler Baicar OS <baicar@os.amperecomputing.com>, Open Source Submission
 <patches@amperecomputing.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>, "linux-edac@vger.kernel.org"
 <linux-edac@vger.kernel.org>, "james.morse@arm.com" <james.morse@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "Guohanjun (Hanjun Guo)" <guohanjun@huawei.com>, "sudeep.holla@arm.com"
 <sudeep.holla@arm.com>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "lenb@kernel.org" <lenb@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "tony.luck@intel.com" <tony.luck@intel.com>,
 "bp@alien8.de" <bp@alien8.de>, "Matteo.Carlini@arm.com"
 <Matteo.Carlini@arm.com>, "Andrew.Murray@arm.com" <Andrew.Murray@arm.com>
Subject: RE: [PATCH RFC 1/4] ACPI/AEST: Initial AEST driver
Thread-Topic: [PATCH RFC 1/4] ACPI/AEST: Initial AEST driver
Thread-Index: AQHVMPZqphfhRm1STkOzQdqBSPqI3aa6dWVQ
Date: Thu, 4 Jul 2019 16:02:34 +0000
Message-ID: <86258A5CC0A3704780874CF6004BA8A6584514BF@lhreml523-mbs.china.huawei.com>
References: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
 <1562086280-5351-2-git-send-email-baicar@os.amperecomputing.com>
In-Reply-To: <1562086280-5351-2-git-send-email-baicar@os.amperecomputing.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.226.53]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_090255_392003_22CB2726 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tyler,

>-----Original Message-----
>From: linux-acpi-owner@vger.kernel.org [mailto:linux-acpi-
>owner@vger.kernel.org] On Behalf Of Tyler Baicar OS
>Sent: 02 July 2019 17:52
>To: Open Source Submission <patches@amperecomputing.com>; linux-arm-
>kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
>acpi@vger.kernel.org; linux-edac@vger.kernel.org; james.morse@arm.com;
>catalin.marinas@arm.com; will@kernel.org; lorenzo.pieralisi@arm.com;
>Guohanjun (Hanjun Guo) <guohanjun@huawei.com>; sudeep.holla@arm.com;
>rjw@rjwysocki.net; lenb@kernel.org; mark.rutland@arm.com;
>tony.luck@intel.com; bp@alien8.de; Matteo.Carlini@arm.com;
>Andrew.Murray@arm.com
>Cc: Tyler Baicar OS <baicar@os.amperecomputing.com>
>Subject: [PATCH RFC 1/4] ACPI/AEST: Initial AEST driver
>
>Add support for parsing the ARM Error Source Table and basic handling of
>errors reported through both memory mapped and system register interfaces.
>
>Signed-off-by: Tyler Baicar <baicar@os.amperecomputing.com>
>---
> arch/arm64/include/asm/ras.h |  41 +++++
> arch/arm64/kernel/Makefile   |   2 +-
> arch/arm64/kernel/ras.c      |  67 ++++++++
> drivers/acpi/arm64/Kconfig   |   3 +
> drivers/acpi/arm64/Makefile  |   1 +
> drivers/acpi/arm64/aest.c    | 362
>+++++++++++++++++++++++++++++++++++++++++++
> include/linux/acpi_aest.h    |  94 +++++++++++
> 7 files changed, 569 insertions(+), 1 deletion(-)  create mode 100644
>arch/arm64/include/asm/ras.h  create mode 100644 arch/arm64/kernel/ras.c
>create mode 100644 drivers/acpi/arm64/aest.c  create mode 100644
>include/linux/acpi_aest.h
>
>diff --git a/arch/arm64/include/asm/ras.h b/arch/arm64/include/asm/ras.h
>new file mode 100644 index 0000000..36bfff4
>--- /dev/null
>+++ b/arch/arm64/include/asm/ras.h
>@@ -0,0 +1,41 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+#ifndef __ASM_RAS_H
>+#define __ASM_RAS_H
>+
>+#define ERR_STATUS_AV		BIT(31)
>+#define ERR_STATUS_V		BIT(30)
>+#define ERR_STATUS_UE		BIT(29)
>+#define ERR_STATUS_ER		BIT(28)
>+#define ERR_STATUS_OF		BIT(27)
>+#define ERR_STATUS_MV		BIT(26)
>+#define ERR_STATUS_CE_SHIFT	24
>+#define ERR_STATUS_CE_MASK	0x3
>+#define ERR_STATUS_DE		BIT(23)
>+#define ERR_STATUS_PN		BIT(22)
>+#define ERR_STATUS_UET_SHIFT	20
>+#define ERR_STATUS_UET_MASK	0x3
>+#define ERR_STATUS_IERR_SHIFT	8
>+#define ERR_STATUS_IERR_MASK	0xff
>+#define ERR_STATUS_SERR_SHIFT	0
>+#define ERR_STATUS_SERR_MASK	0xff
>+
>+#define ERR_FR_CEC_SHIFT	12
>+#define ERR_FR_CEC_MASK		0x7
>+
>+#define ERR_FR_8B_CEC		BIT(1)
>+#define ERR_FR_16B_CEC		BIT(2)
>+
>+struct ras_ext_regs {
>+	u64 err_fr;
>+	u64 err_ctlr;
>+	u64 err_status;
>+	u64 err_addr;
>+	u64 err_misc0;
>+	u64 err_misc1;
>+	u64 err_misc2;
>+	u64 err_misc3;
err_misc2 and err_misc3 are not used. Are they for the future purpose?

>+};
>+
>+void arch_arm_ras_report_error(void);
>+
>+#endif	/* __ASM_RAS_H */
[...]
>+
>+int __init acpi_aest_init(void)
>+{
>+	struct acpi_table_aest *aest;
>+	struct aest_type_header *aest_node, *aest_end;
>+	int i, ret = 0;
>+
>+	if (acpi_disabled)
>+		return 0;
>+
>+	if (ACPI_FAILURE(acpi_get_table(ACPI_SIG_AEST, 0, &aest_table)))
>+		return -EINVAL;
>+
>+	aest = (struct acpi_table_aest *)aest_table;
>+
>+	/* Get the first AEST node */
>+	aest_node = ACPI_ADD_PTR(struct aest_type_header, aest,
>+				 sizeof(struct acpi_table_aest));
>+	/* Pointer to the end of the AEST table */
>+	aest_end = ACPI_ADD_PTR(struct aest_type_header, aest,
>+				aest_table->length);
>+
>+	while (aest_node < aest_end) {
>+		if (((u64)aest_node + aest_node->length) > (u64)aest_end) {
>+			pr_err("AEST node pointer overflow, bad table\n");
>+			return -EINVAL;
>+		}
>+
>+		aest_count_ppi(aest_node);
>+
>+		aest_node = ACPI_ADD_PTR(struct aest_type_header,
>aest_node,
>+					 aest_node->length);
>+	}
>+
>+	if (num_ppi > AEST_MAX_PPI) {
>+		pr_err("Limiting PPI support to %d PPIs\n", AEST_MAX_PPI);
>+		num_ppi = AEST_MAX_PPI;
>+	}
>+
>+	ppi_data = kcalloc(num_ppi, sizeof(struct aest_node_data *),
>+			   GFP_KERNEL);
>+
>+	for (i = 0; i < num_ppi; i++) {
>+		ppi_data[i] = alloc_percpu(struct aest_node_data);
>+		if (!ppi_data[i]) {
>+			ret = -ENOMEM;
>+			break;
>+		}
>+	}
>+
>+	if (ret) {
>+		pr_err("Failed percpu allocation\n");
>+		for (i = 0; i < num_ppi; i++)
>+			free_percpu(ppi_data[i]);
I think 'ppi_data' to be freed here?

>+		return ret;
[...]
>+
>+#endif /* AEST_H */
>--
>1.8.3.1

Thanks,
Shiju


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
