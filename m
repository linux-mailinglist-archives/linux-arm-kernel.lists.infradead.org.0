Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD9FCAED3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uunqojf0KBCckfIOToGt2YW+f9jJbvVAagcXDDaMYY=; b=aeFxKfNQns3Us5
	czd4tEy0nQUxMHq15UHWMSBBBzoXuScwgLuoazKjxLdONkTbHtMHs1Gv5EPYvsPvn04TvfrhUdFxe
	+XAUyE7Mkutxq4TWYV9oTxCGIuqd6ipYYG0KuwPwc5Aj0uzRvthaZl+V5FhwRUuqmOUzqHAFyWmCg
	3hTgqSIDgIOTlzPlRUgtI1JlsTwsAKOA3j7UP+SiBSyzsx3cGO1rVqb4WEXP12ll6MZkilhYalmVh
	EfdKBS+FR/nnbQmBlNroJhtkv+vALUGxZ88icWxQRHYu2c2+clwe0FX0frFl5g9DeAWeRLhowIk3c
	aLskLTdF/UgGip/QdDVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6Qd-0003H3-QE; Thu, 03 Oct 2019 19:06:19 +0000
Received: from mail-bl2nam02on0730.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::730]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6O2-00085M-24
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:03:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHcn/pVZq525w43DkB++gd6C+3g7YNxD63eGO/4R3E1uLHuNonYbztHlvU7N6MzmvAV32p8s4M3/yfl+1IzEdUibR3fnHNJPdBL3h5diaM+RdlZ9ClgQH9/uGh3H0p+Hok/ugQEo7tU0soRcACdKFoIRyXuRpDv1EnHHPqOT0gvjHaJ6YLJi8gZADDQCSotFPTBM/c2DtB8LuBRbNEeLO4ha+BFnQhm15goYGUhUhlVOiZT6vX/mSYRkvfM2zCUlw3/wvojaPt0WNjVOgGEQtpawRaTz/08RHJ+UmvKxi/u+QIY1I4cEChvJv/S3ub6+79pV1WfBKk4P7qgVqdeubQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLXgUw7V+5fUB0JzXqkHG+oFVPVmofbsYFU/BFZAkIo=;
 b=i97lWcX4d8/CG70PNk3W8ebz+r3HFae204KzbmrXesX7wA2wWmELdLmLAiY9IbfsssyxFM66uXOswIQ3uoqEBPuuIqSAzaQ6Nj2WjcZeIdQc10oRU7iPm8EeT5A0lFcMltUsCjYKUyXkrbUr9sZCQJJnC/ea97MmjmkTbYXs/P9LsueYLkYxEE978w8aHjYBnbgfP3w0+ld3iMnJblXd1yEaLS1fnUNiKE3G3UhgnjL8tjr+qnKXD6OSkjlzg4y65PMalz/VSjD7Y+pE32wzQRGWAp9lED5fod0se3evFKrX9B2HcXPsQKyLPcQFT4KcXXrUPFFoz8ig+rCzDGCGFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLXgUw7V+5fUB0JzXqkHG+oFVPVmofbsYFU/BFZAkIo=;
 b=dLE1O3au+ZE5IF53fZ1chr8ZS6vhs3gXTX37NtYyXFUwZtS9lG9nq5+4Gha79c7bBI8SMxIDbN2xJGF8tqbmtf2V0wgU0XeWv1KmjtempEQMN3rO22ICuGK1j9DTUDb+yNFIWS9QiExB+IlNknsEk+6Bphy/cVO7UvnGAbGroHI=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:26 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:25 +0000
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
Subject: [PATCH v5 7/8] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Thread-Topic: [PATCH v5 7/8] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Thread-Index: AQHVeh08iAhZ6pKxjEa5CJwraGxfEg==
Date: Thu, 3 Oct 2019 19:03:25 +0000
Message-ID: <1570129355-16005-8-git-send-email-mikelley@microsoft.com>
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
x-ms-office365-filtering-correlation-id: 7fcbe12f-f681-4eda-bdb5-08d748345e70
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB11021F5E4E0B9BACE8FBE7A7D79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(1496009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(446003)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(11346002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(76176011)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wTKWdd4+zIZW68WoSUIFCAH4CX3c95fs0vD++DfW9lEyCMrZ836qCjEgkfvFp73/POLLOdJDxFB3xhxpSqLn5XZ4k7YIEJWYczn09KuTQ+ql6DzzFbHxxZq0jk8VUFKQ8ZXmiTN2nwtBatUeoCt9w2mgBg232nFSMi381bJJWBmT696fmojWzkcBOlBEoDC22Jgj4Pidkffuff03oYMYwnsXthNWTqhqVPL20+WtFSkMFd+Na9O+1vNZgsSOWo5IRAUCsARBlWXWwSmIyDxCZsZpSWHnW9wMCiLPK0nQs9mdzJFmIGGrMD/myaXeIn6AeNhO+7Pjy46aAeHafpJYiTMOT2XGw1E+6jTMwec+20sbckU3i4bL2mmJeFfLXK0OE5/cz1tugFtQPOgd1BkeJRrpVi7URiMbdZdxPigBUd0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fcbe12f-f681-4eda-bdb5-08d748345e70
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:25.8119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kvb6bKShAQ8AYQreZle1EiX41AC5wMxkNFWlo0hUqcayzNRfxVudKyVqV9NbDtLHexlcwjOWCs6lUs5xGb1W2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_120338_236621_83C5F366 
X-CRM114-Status: GOOD (  10.14  )
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
index f4138ae..583e1ce 100644
--- a/arch/x86/include/asm/mshyperv.h
+++ b/arch/x86/include/asm/mshyperv.h
@@ -56,6 +56,10 @@ typedef int (*hyperv_fill_flush_list_func)(
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
index fcc5279..51d8f8a 100644
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
