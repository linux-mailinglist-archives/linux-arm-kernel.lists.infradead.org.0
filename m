Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35436CAECE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGD10QrmPDFoOquxCZR6vFzeLhCBed4c/SBWhkKYUNQ=; b=hh9pAEK3VFKknp
	23AiIURs2w6j0mZ3hWvR78VDS8YrcN7ViqM4Tau7PnU7lfQSHpwVrsJNPwo0bh4QCtbcmvuipRe4K
	AOnqUXcrAKXQCzi1FX2kCFQDA3Bjw4WYy3QL/kFV4f0a5qJWEGVCC0LW/pCJfXHRtSyWX19JjzqNl
	o47r6tIm5cYdcx5gTTQOZJFno7OcpTfaIrVAtKD/pnWgDvt3uqLE6mLJ1FxxjTg/NC8O9+R1YEiRi
	cCUHXX54Mr3Gfs4q+IQEI5Jjy7S3uUn/pEYQCL8/E8OALZ/QQpNq8DoEIvVu7cqcCPF3vFLV639Br
	/rs+71ZdHNPZpuYVMFMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6Pk-0002CW-WC; Thu, 03 Oct 2019 19:05:25 +0000
Received: from mail-bl2nam02on0730.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::730]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6Nw-00085M-88
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:03:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J3BsW6IirEM3DUbu3KI/zvOCbd1b6lRlFGU518xnbc3rQEPDrYUpTuY99o1TDnfAh47uL2dDJRSE0V6INcTEzWHZuhBxnkYqkzFfrEYrA4SZywVwmb8dyAA7PWP1vU97yiXZs3Zc1EKtCbE9b2r2VO8y0uLd+wR+qw90vH4v/89iL0yYj9V2cMcWK8KggNJPVIJtHCp6tIiIZVDTIE1OPAYMX8GtD2SX1lJbzyWn9dxyevJA23kVGeh5ain8xarrQbFmFtSeNJamkydvtIBvk8oPvMHLwHXIu6Fom8raX3jFSeaolC494toPYFo4kjcm2xNAHb30wT1pgvXs1L0p9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJ4JKZIyEkt+ZqlOZNewTe208jaLwJVudybMI898C8A=;
 b=GDOgjl7yepcPf5yfQ2092cuOH6hIGI73jIUFe3z1tj3J3Pz/PptOwRDT9x/KI+dF912qfXyX/PFtEpsUicR230X49xXR5tUC0O0Q4iH7y5pwmLM/C3Vy6Tx6OY6qa8JX8FrmjFuV5486NiFWfdH0fmQUNsXHt1yCu7zrJNA9W6cvlIb5qoSUTDWZOH65gzCk7x5sAwvKbXcLXOGPiP0ObUbFoVzG/Yhaqfdcov0XoatJq9VCJe1/oLHrWPb1A+ECF3ISgQq50guoW9UB0/WQ+dPoICmZF8cd8gbY/LX9BDe0Ke5q1gLjuktp035bjhv0dcUlgv/1EALZ1R84GLDUwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJ4JKZIyEkt+ZqlOZNewTe208jaLwJVudybMI898C8A=;
 b=iKS4xbiL3hnwoBIvhFisB+0BYm9AaOCqvV65t1J9aRRsGNCJ1DF+c/dgGPEW4+ReOiXk3bj71E+XKyiFjD1Mg5SZsfjajAFDfWnAbv7KIHBm8kV9VlPXoIzOirI5nuKsZrPa2qnq3OOLCMN1pB5Qqu83LHdLme4A3M2m24Iywb8=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:23 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:23 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will@kernel.org" <will@kernel.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maz@kernel.org" <maz@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v5 5/8] arm64: hyperv: Add kexec and panic handlers
Thread-Topic: [PATCH v5 5/8] arm64: hyperv: Add kexec and panic handlers
Thread-Index: AQHVeh061lwHwOE2YkCeV8m8JkvvYw==
Date: Thu, 3 Oct 2019 19:03:23 +0000
Message-ID: <1570129355-16005-6-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR10CA0006.namprd10.prod.outlook.com (2603:10b6:301::16)
 To SN6PR2101MB1135.namprd21.prod.outlook.com
 (2603:10b6:805:4::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.159.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a726748-8960-441c-b777-08d748345ce2
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB11024546A5D4633EC30F9637D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(446003)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(11346002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(76176011)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HAxDbrtfQE7kY7UU/+RJuqBuk+MWYxpjMO1z8YuxbPuZbAI8nf9xxliAQ7+PhcZFSpjKa1gKUVrqCzCeqYgctt7x/QnvverejzjwaogaUDJA0uIu1euik9e1rukv/On4YgO+qiTKa7okIM9eUN/8eRJA8aBU5JBc4PuFddAelyRiUivCYfBgmKSF3PA9jY1uz3XOBTfeXcSLONlVIlT6UvlNbHg6KPiSSoiSh3I4Uk661GSnZbujXOoSRuv17AsIYq03XAG+yJDflMlRfJxf4fPFetIpzbbUqU2h2Foh3nXvplpobNUHs40QqJJUP7MKrJoSVMl+yDmYrp65sSEtSVLBQ/rPBAh74w2XricQfBegaTs2nIZAStNDyqpHzrlY4HN0j0KdlqFo2rS9AQO1TPD884bzB526bnWBnFrrm+0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a726748-8960-441c-b777-08d748345ce2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:23.1904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hVzmI/y53as47C1VCiNOcOvwreP47ioc4m9UA5GZ5ObmWSougUlzDcLGG/9UD7A3t6F/hedwdFdQt8Vbl4tEBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_120332_302350_84246E83 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:730 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>, Michael Kelley <mikelley@microsoft.com>
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
 arch/arm64/hyperv/hv_init.c  | 61 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm64/hyperv/mshyperv.c | 26 +++++++++++++++++++
 2 files changed, 87 insertions(+)

diff --git a/arch/arm64/hyperv/hv_init.c b/arch/arm64/hyperv/hv_init.c
index 9c294f6..67350ec 100644
--- a/arch/arm64/hyperv/hv_init.c
+++ b/arch/arm64/hyperv/hv_init.c
@@ -199,3 +199,64 @@ void hv_get_vpreg_128(u32 msr, struct hv_get_vp_register_output *result)
 
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
