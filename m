Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCA183A51
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yZ2WutxwR0rHcae23NWXQhqhseJSN8NwsmKa0Cl13Q=; b=MSmYyoE6nC+2yf
	JG/4deITZS5k15tOCqyjXd65nli+hunD6SSWDwXK0uKdlLgZnAdgx4hFJ+o5w4p46ihIVaabIW117
	PEVJqWAyCPs8PZBxLuroEOmX9e85IU4lmyflo6JshYhutXC8gx9p2epaGLQK/wEG1z7NbhhmEfEok
	VZlX4Kc0MliBqS4OyXhIOfoJ4uxB9E8Pfi81tIsavuNIxBJ7KuStjhU1CWC/Kd+DbEG5+HfY0gE4f
	7O8nem5igdrKivOXxcmqSzoB4/BV2fyj9haY7H6fHmILbGiMtHomiHj/Oar2Weo+nNyYJUPXGU2iF
	Uxn4kHmCEMM7/klAdNhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv698-0007lX-Ng; Tue, 06 Aug 2019 20:33:26 +0000
Received: from mail-eopbgr820111.outbound.protection.outlook.com
 ([40.107.82.111] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv671-0005kG-AM
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:31:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MHP6RNtDZ/bxwTkE7LTcYy2yi2ndI4e9kZD+r9Xe7Xn4P9s4r9QPRt/Gu9vlDHdbWcyzHZfF9j4SJUrW/ZxJSIfDfNqAnGKUoLke2WUuQO8qLKoCnAHL+P5B0qgaqtk8c7nth4JPYoho4Xc70Ds4S1aORN3ENA3i1f/hTMq+Jn4ZvyzmrnesrAKDpnAfbukTepdehil+C+Axt7Zu9HqVjkv7rl8qi7wZE+fLObHZXn28wMujwWGx3v/zpM4HIUbyM7vqXMulfyZZMKr4pwwumzS8clXb8eoIfY7I7Ewxs8iqJhZgbc0dLNmAVZD+NZPrrt8LjHn4erO3TFgRdRk6pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ax0dn0iS/KfEV1e+P4MVCkf7bW8prZ0KC7OdzfuPdXM=;
 b=OAOH0uFOyHwDplp9Ok23vkHZWM/IPnTTuRaKhuEsXALfCNEhBF8fBuNDdjcpr7LjOCusCCaA1vHH+GeGDk+mdXJ+Lx7OwlMOuM5mZ3H5E7ISXKl1ri7qIhOTa4/RiCSuUNngIUBRoyMzMdqNnJBQQ7HCpfbpIQaiDQoqYwmiJ0VlU5FH5PCCUnDvGdJOxQn23AbNYcE2cRNhwbnJ128QuXYfP/Dhxs7wiuSbCBODLspcxLjwz2Rmi6m5iPdfqO6FtaFnKJOaDLgJrpunz8cTQehab9AUAGcCd0M6q5Fk9ZVCs+cHSP+AfMAzV7T/muHJkhw3kIZdB4B897d3crmEuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ax0dn0iS/KfEV1e+P4MVCkf7bW8prZ0KC7OdzfuPdXM=;
 b=kSLaYlionJtKdRNbuhoY8fQ/xfcNRBV6ZMWUQfXbX7hqRmqA10vBfkAJtZNOUoZW6r7lvMNQVhR7E+2vwiw/U9tAst+A9V//3yAoJiap3o8W99x77eYHz2d7SzUMdn5WSqAOUjuYLo/7a3P4/iMcSLjClvUosCfxjsFLtRUco84=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1255.namprd21.prod.outlook.com (20.179.57.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.9; Tue, 6 Aug 2019 20:31:11 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:31:11 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v4 7/8] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Thread-Topic: [PATCH v4 7/8] Drivers: hv: vmbus: Add hooks for per-CPU IRQ
Thread-Index: AQHVTJXiq1nf/PrTQEeROpHi9r13SA==
Date: Tue, 6 Aug 2019 20:31:11 +0000
Message-ID: <1565122133-9086-8-git-send-email-mikelley@microsoft.com>
References: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0030.prod.exchangelabs.com (2603:10b6:300:101::16)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abb0d250-d848-41b6-06d3-08d71aad04e2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1255; 
x-ms-traffictypediagnostic: BYAPR21MB1255:|BYAPR21MB1255:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB1255211AE652AEC637A3FC4AD7D50@BYAPR21MB1255.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(189003)(199004)(71200400001)(102836004)(71190400001)(386003)(6636002)(6512007)(66446008)(7416002)(10090500001)(6506007)(10290500003)(66946007)(316002)(50226002)(110136005)(14454004)(4326008)(6116002)(1511001)(52116002)(64756008)(99286004)(2501003)(2201001)(25786009)(68736007)(476003)(11346002)(446003)(86362001)(8936002)(3846002)(486006)(6486002)(256004)(8676002)(54906003)(76176011)(26005)(4720700003)(186003)(7736002)(81166006)(81156014)(2616005)(66066001)(66476007)(22452003)(5660300002)(2906002)(53936002)(305945005)(478600001)(6436002)(36756003)(66556008)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1255;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P6mxwQvPGqTwmd0jC161SaVFeyZonp/UdEUH1XlhQJ77oqUoX/JDFmLBpNJOrCrJv/6bc/LR/o/X/7yxUqphVdL3QHUg5Wk5sV1riU09u3PzR7Jd69Am8UxQhhaOe97X1ArvdupMZu9G/0qrRDTy93xGcP8NCO3H/7X4WQo2YZtUd9m/5uFbMEjqeHwIqElFOvoAuYRLOa4QmctpNvsd03zF2GceCGG+aM7o6nsGeEeUaRQN6PTeL3qZLW70idekt7gzIvV6M+M/KjHEnWc9RiqYyGShAZw6H85zjnUpLLwQjpQrbYwvAcV4Ozf0spP/1A7tGI9CtSmVfqA7QUZGq3r+ogjlOjMSJjAmZGkQpA7WVMrgXweB8Q5mYP0/7v4AXmiyRwIx7i+UXOtVwdaJN8t17ef45mppiNccX+Kqjd4=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abb0d250-d848-41b6-06d3-08d71aad04e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:31:11.1353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0BN77rop+1aEAoLcn5qHr8NbQmjvN1cNNI/hZf6Rph0wC5RGEVc4N3xp/WY0mj1Ln+YlSGCLYmgJQgPM8Y4KkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_133115_463331_30415713 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.111 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/hv/hv.c                 | 2 ++
 2 files changed, 6 insertions(+)

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
index 6188fb7..86f5435 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -180,6 +180,7 @@ int hv_synic_init(unsigned int cpu)
 	hv_set_siefp(siefp.as_uint64);
 
 	/* Setup the shared SINT. */
+	hv_enable_vmbus_irq();
 	hv_get_synint_state(VMBUS_MESSAGE_SINT, shared_sint.as_uint64);
 
 	shared_sint.vector = HYPERVISOR_CALLBACK_VECTOR;
@@ -272,6 +273,7 @@ int hv_synic_cleanup(unsigned int cpu)
 	/* Disable the global synic bit */
 	sctrl.enable = 0;
 	hv_set_synic_state(sctrl.as_uint64);
+	hv_disable_vmbus_irq();
 
 	return 0;
 }
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
