Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91DF17D140
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUITrib7BXVagjbqjYh2ZRgkB5r4JI7zzuxHOasmmhs=; b=Kg1tU0s/5hDeiu
	Hz/TS8XSkCKAiPdMtsQUW2m+0S5IpQq4bdclt9IAhvdewi2H+qxGUtmJEJK0XZE03drGjtwwQUMrU
	eTkYOcw7QTYgQrz2KEcGkZgW/o5B4N232uNxvXoqeJ982VekDql6MNLIq8FUpbRij1nWpYCyDXWmK
	wc8A/4fnzdNkuaW8CF9LcIdQfR3ciO/at1t0bMwlukZpDM4gllZJVvLH1NUB3rm129CWeYH1upnP2
	jhZ9ap9CHTCv0Fb/8QToXKwOTIWu/Vl2ba+Tc4QvHZeNps2hk9hXWSJcFfwDQauP8co0UG1p406lQ
	iviKxDG+5Z/XzrnV6+Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmzs-0000jX-IW; Sun, 08 Mar 2020 03:53:00 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmzf-0000j9-OG
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:52:49 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283l0Ch010565; Sat, 7 Mar 2020 19:52:20 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=MTgWmjDqBAQ16SXK7Xqo80CSSZHLL5odf6Rput0yktE=;
 b=eC2uXGxCFZoV0dYMWXP1qQlBD40o3RyHCUrjIK84OXJe4nK6m1k/U+o+qKdnw32T1Zr9
 Ocv3N3DI3b+Ai4nU9WuAD8EcbT2j/tjX2LknQgFo0qWCJmoAM3UuIgGe2PkZe3yl++Hs
 e4ny9L4roB18R7r7lvc6YOBYKftJE3Kk1jRz0KUxsRwt7PYPqY2miqz5u0KY19xzfJ3L
 Givv+v6vXKJbNGSRJF5HHTU+4prRrbexVKaRcXwlJ5Oml9UsUM/uVkMTugvD1vnjHBrS
 vRIHko8SLmoZGFFIm/x60p3Wzpr2Bj7jCz7iVgzCYLBL89ZX0hunwJASYdn8DI0YlDd3 MQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwavaa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:52:20 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:52:18 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:52:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+mXdxEKAdG+5In9jHxcWkdFx7s+tu/GioDDSsamcxP2gncQw3RIqyRohlx2ngfTuL6eZCxiFnBd6Y1pWERhR2T+qUT6mlGkGb+G1nOoHgLPLujbJyz+DhrEEKHuzGmPp7JOUVuGf853Lt9zP0r/ofRzif/7T0sqoCZRi/YhH910wRic1HcZu3XHNdqTgCZDk1Qxf1jZIIRDiwevAbcncd98ofQOtKib+EJuQS8pEs5oSpip4pvcBqqdiEJVvoWObPay/ZzTd3YDhqgksN7V4Uxj8+k7xOhKJzw+LPoQbFFfT4z79XMer9TSnHCa8PaklVggjqtD8I3nQ5TRbjU7qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTgWmjDqBAQ16SXK7Xqo80CSSZHLL5odf6Rput0yktE=;
 b=WZ7vNWHqpQUDYdzmqE+269MI5YDTyzZUzNWO8jHDwMQp/LDNg2pfxMpVdU7YOWnLR+zWqCH5xMhD8MlO972F2QKhbB5mpFi30tKb45xRJFj+5i3uMw3Dl4b5rkWJ8QpdhHrLE5HcGi5iu8AK3KaMxWkDz1DE6Lj2GH8aTDfWlQBGNxdKkRFPCkFdlDwFgIsJFA573F3exoEK220vGjem8vSs0O9x9Hu8lpC9T9I/r50XWMU3sOLLmZwmKtwmXGoN+ja2LG99+OssWZlSnZIj0SnVUmvdqMdWxkfkShWdsIyOr8H1Fo9vaZSrNf/CVFAVP4XR6pC/dAmDQRQcNlQbRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTgWmjDqBAQ16SXK7Xqo80CSSZHLL5odf6Rput0yktE=;
 b=nvJ5ZSo/9D/VdwVTgxHxoFqs9eJyq2rNI3AwRMSnZ6me2R0ogNa2/wTRbA+iGPkLQlWXdfc6BzlJGZ8Dkq5dp8RcqDPWk0guZWDMB3wMyxPBvzkAqN2YQSMvU1U8a1PhiXtozTx3VTyJVNNn4EHrL3GBrBZY33eaozGSEciAWMk=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2661.namprd18.prod.outlook.com (2603:10b6:a03:136::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Sun, 8 Mar
 2020 03:52:16 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:52:16 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 07/12] task_isolation: arch/arm: enable task isolation
 functionality
Thread-Topic: [PATCH v2 07/12] task_isolation: arch/arm: enable task isolation
 functionality
Thread-Index: AQHV9Pz1/BmyVtfMrEiERiaNilF2mQ==
Date: Sun, 8 Mar 2020 03:52:16 +0000
Message-ID: <8b86f8e92208d56cdfd1a680aa53001d27eab994.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09a35ce6-9ba8-48c6-a719-08d7c31417db
x-ms-traffictypediagnostic: BYAPR18MB2661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2661869EE1AAAC02C31CC86BBCE10@BYAPR18MB2661.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39850400004)(136003)(366004)(396003)(189003)(199004)(5660300002)(186003)(26005)(66946007)(66446008)(66476007)(64756008)(66556008)(6486002)(6506007)(6512007)(91956017)(478600001)(76116006)(7416002)(4326008)(2906002)(86362001)(36756003)(71200400001)(2616005)(8936002)(81156014)(8676002)(81166006)(54906003)(110136005)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2661;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s+0sV43imQGrl8KTQ53uM1z74M8xw9GJ6yXgpFGPdGdVMa7bGG36czs6+6ShynJm0Nn0htoFGN4O8JY57MUi8Fv4PjbCtnoYDyWoSwgCXVi8j5uMNwHQAo1RZ2mRWmjblJxs1nA7vo2xAr3LdrMxnlTh5edxr/KpOkbnfniSrPAl+rsJ8P85h3G8Dc9IriWlnQ1t1wOUjxbuQIelzFIdfSc+BmCgekLN0RyhVGuoNzOY/GEogvwY5M9utCEmOgyOQdayt7nLsSdsGLxF+0qqZ072vaXPQ5PdobQBHNr7vQ3KggxUc8mchGx8N/LlX2jNc4GPB9cfCUDsCpEQoFR8vsKO5PtiLYl10MBiNv0aCR0/M1kSdK3f886VHUqDQkbMN7gfOTeNWldfwwLNIa5VRapUvGKxEUkNl99v9sDCF5Lx4o5xe5gL0c+HYc+9MuZJ
x-ms-exchange-antispam-messagedata: k0f58bPzKTJoHeaLtoEYg237ZIpwDc1kEWLpys/yZ49d4Faml2aqLu73+PzoaVJcAvMMoxuRhyEQiTWYl30lt3JitzOPWxolphHEmp9excQZvfydJ2iyHJbu2nJ1UfnbtI68sKd99mMtbz1eeXOspg==
Content-ID: <B0E686FC9E04DA4AA478375E3CF7E1E2@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 09a35ce6-9ba8-48c6-a719-08d7c31417db
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:52:16.0909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oj6Qy/gC8SeKe0LroFqDkRH3vVN7XIoLqPlE+oKCm/LxATsmK50+U3gnzpAZ6XrAaoPQ2kw8bNF3y4mOiomrbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2661
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_195247_804452_FB424C25 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Francis Giraldeau <francis.giraldeau@gmail.com>

This patch is a port of the task isolation functionality to the arm 32-bit
architecture. The task isolation needs an additional thread flag that
requires to change the entry assembly code to accept a bitfield larger than
one byte. The constants _TIF_SYSCALL_WORK and _TIF_WORK_MASK are now
defined in the literal pool. The rest of the patch is straightforward and
reflects what is done on other architectures.

To avoid problems with the tst instruction in the v7m build, we renumber
TIF_SECCOMP to bit 8 and let TIF_TASK_ISOLATION use bit 7.

Signed-off-by: Francis Giraldeau <francis.giraldeau@gmail.com>
Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com> [with modifications]
[abelits@marvell.com: modified for kernel 5.6, added isolation cleanup]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 arch/arm/Kconfig                   |  1 +
 arch/arm/include/asm/thread_info.h | 10 +++++++---
 arch/arm/kernel/entry-common.S     | 15 ++++++++++-----
 arch/arm/kernel/ptrace.c           | 10 ++++++++++
 arch/arm/kernel/signal.c           | 13 ++++++++++++-
 arch/arm/kernel/smp.c              |  4 ++++
 arch/arm/mm/fault.c                |  8 +++++++-
 7 files changed, 51 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..1a66e6c6807c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -67,6 +67,7 @@ config ARM
 	select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
 	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
+	select HAVE_ARCH_TASK_ISOLATION
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
 	select HAVE_ARCH_TRACEHOOK
 	select HAVE_ARM_SMCCC if CPU_V7
diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 0d0d5178e2c3..ec3c2084c391 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -139,7 +139,8 @@ extern int vfp_restore_user_hwstate(struct user_vfp *,
 #define TIF_SYSCALL_TRACE	4	/* syscall trace active */
 #define TIF_SYSCALL_AUDIT	5	/* syscall auditing active */
 #define TIF_SYSCALL_TRACEPOINT	6	/* syscall tracepoint instrumentation */
-#define TIF_SECCOMP		7	/* seccomp syscall filtering active */
+#define TIF_TASK_ISOLATION	7	/* task isolation active */
+#define TIF_SECCOMP		8	/* seccomp syscall filtering active */
 
 #define TIF_NOHZ		12	/* in adaptive nohz mode */
 #define TIF_USING_IWMMXT	17
@@ -153,18 +154,21 @@ extern int vfp_restore_user_hwstate(struct user_vfp *,
 #define _TIF_SYSCALL_TRACE	(1 << TIF_SYSCALL_TRACE)
 #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
 #define _TIF_SYSCALL_TRACEPOINT	(1 << TIF_SYSCALL_TRACEPOINT)
+#define _TIF_TASK_ISOLATION	(1 << TIF_TASK_ISOLATION)
 #define _TIF_SECCOMP		(1 << TIF_SECCOMP)
 #define _TIF_USING_IWMMXT	(1 << TIF_USING_IWMMXT)
 
 /* Checks for any syscall work in entry-common.S */
 #define _TIF_SYSCALL_WORK (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
-			   _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP)
+			   _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
+			   _TIF_TASK_ISOLATION)
 
 /*
  * Change these and you break ASM code in entry-common.S
  */
 #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
-				 _TIF_NOTIFY_RESUME | _TIF_UPROBE)
+				 _TIF_NOTIFY_RESUME | _TIF_UPROBE | \
+				 _TIF_TASK_ISOLATION)
 
 #endif /* __KERNEL__ */
 #endif /* __ASM_ARM_THREAD_INFO_H */
diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
index 271cb8a1eba1..6ceb5cb808a9 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -53,7 +53,8 @@ __ret_fast_syscall:
 	cmp	r2, #TASK_SIZE
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
-	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	ldr	r2, =_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	tst	r1, r2
 	bne	fast_work_pending
 
 
@@ -90,7 +91,8 @@ __ret_fast_syscall:
 	cmp	r2, #TASK_SIZE
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
-	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	ldr	r2, =_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	tst	r1, r2
 	beq	no_work_pending
  UNWIND(.fnend		)
 ENDPROC(ret_fast_syscall)
@@ -98,7 +100,8 @@ ENDPROC(ret_fast_syscall)
 	/* Slower path - fall through to work_pending */
 #endif
 
-	tst	r1, #_TIF_SYSCALL_WORK
+	ldr	r2, =_TIF_SYSCALL_WORK
+	tst	r1, r2
 	bne	__sys_trace_return_nosave
 slow_work_pending:
 	mov	r0, sp				@ 'regs'
@@ -131,7 +134,8 @@ ENTRY(ret_to_user_from_irq)
 	cmp	r2, #TASK_SIZE
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]
-	tst	r1, #_TIF_WORK_MASK
+	ldr	r2, =_TIF_WORK_MASK
+	tst	r1, r2
 	bne	slow_work_pending
 no_work_pending:
 	asm_trace_hardirqs_on save = 0
@@ -251,7 +255,8 @@ local_restart:
 	ldr	r10, [tsk, #TI_FLAGS]		@ check for syscall tracing
 	stmdb	sp!, {r4, r5}			@ push fifth and sixth args
 
-	tst	r10, #_TIF_SYSCALL_WORK		@ are we tracing syscalls?
+	ldr	r11, =_TIF_SYSCALL_WORK		@ are we tracing syscalls?
+	tst	r10, r11
 	bne	__sys_trace
 
 	invoke_syscall tbl, scno, r10, __ret_fast_syscall
diff --git a/arch/arm/kernel/ptrace.c b/arch/arm/kernel/ptrace.c
index b606cded90cd..a69b0bfd71ae 100644
--- a/arch/arm/kernel/ptrace.c
+++ b/arch/arm/kernel/ptrace.c
@@ -24,6 +24,7 @@
 #include <linux/audit.h>
 #include <linux/tracehook.h>
 #include <linux/unistd.h>
+#include <linux/isolation.h>
 
 #include <asm/pgtable.h>
 #include <asm/traps.h>
@@ -921,6 +922,15 @@ asmlinkage int syscall_trace_enter(struct pt_regs *regs, int scno)
 	if (test_thread_flag(TIF_SYSCALL_TRACE))
 		tracehook_report_syscall(regs, PTRACE_SYSCALL_ENTER);
 
+	/*
+	 * In task isolation mode, we may prevent the syscall from
+	 * running, and if so we also deliver a signal to the process.
+	 */
+	if (test_thread_flag(TIF_TASK_ISOLATION)) {
+		if (task_isolation_syscall(scno) == -1)
+			return -1;
+	}
+
 	/* Do seccomp after ptrace; syscall may have changed. */
 #ifdef CONFIG_HAVE_ARCH_SECCOMP_FILTER
 	if (secure_computing() == -1)
diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index ab2568996ddb..29ccef8403cd 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -12,6 +12,7 @@
 #include <linux/tracehook.h>
 #include <linux/uprobes.h>
 #include <linux/syscalls.h>
+#include <linux/isolation.h>
 
 #include <asm/elf.h>
 #include <asm/cacheflush.h>
@@ -639,6 +640,9 @@ static int do_signal(struct pt_regs *regs, int syscall)
 	return 0;
 }
 
+#define WORK_PENDING_LOOP_FLAGS	(_TIF_NEED_RESCHED | _TIF_SIGPENDING |	\
+				 _TIF_NOTIFY_RESUME | _TIF_UPROBE)
+
 asmlinkage int
 do_work_pending(struct pt_regs *regs, unsigned int thread_flags, int syscall)
 {
@@ -648,6 +652,9 @@ do_work_pending(struct pt_regs *regs, unsigned int thread_flags, int syscall)
 	 * Update the trace code with the current status.
 	 */
 	trace_hardirqs_off();
+
+	task_isolation_check_run_cleanup();
+
 	do {
 		if (likely(thread_flags & _TIF_NEED_RESCHED)) {
 			schedule();
@@ -676,7 +683,11 @@ do_work_pending(struct pt_regs *regs, unsigned int thread_flags, int syscall)
 		}
 		local_irq_disable();
 		thread_flags = current_thread_info()->flags;
-	} while (thread_flags & _TIF_WORK_MASK);
+	} while (thread_flags & WORK_PENDING_LOOP_FLAGS);
+
+	if (thread_flags & _TIF_TASK_ISOLATION)
+		task_isolation_start();
+
 	return 0;
 }
 
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 46e1be9e57a8..95f19b980776 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -26,6 +26,7 @@
 #include <linux/completion.h>
 #include <linux/cpufreq.h>
 #include <linux/irq_work.h>
+#include <linux/isolation.h>
 
 #include <linux/atomic.h>
 #include <asm/bugs.h>
@@ -560,6 +561,7 @@ void arch_send_call_function_ipi_mask(const struct cpumask *mask)
 
 void arch_send_wakeup_ipi_mask(const struct cpumask *mask)
 {
+	task_isolation_remote_cpumask(mask, "wakeup IPI");
 	smp_cross_call(mask, IPI_WAKEUP);
 }
 
@@ -579,6 +581,7 @@ void arch_irq_work_raise(void)
 #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
 void tick_broadcast(const struct cpumask *mask)
 {
+	task_isolation_remote_cpumask(mask, "timer IPI");
 	smp_cross_call(mask, IPI_TIMER);
 }
 #endif
@@ -702,6 +705,7 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 void smp_send_reschedule(int cpu)
 {
+	task_isolation_remote(cpu, "reschedule IPI");
 	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
 }
 
diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index bd0f4821f7e1..acd11a69c4e4 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -17,6 +17,7 @@
 #include <linux/sched/debug.h>
 #include <linux/highmem.h>
 #include <linux/perf_event.h>
+#include <linux/isolation.h>
 
 #include <asm/pgtable.h>
 #include <asm/system_misc.h>
@@ -332,8 +333,13 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	/*
 	 * Handle the "normal" case first - VM_FAULT_MAJOR
 	 */
-	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP | VM_FAULT_BADACCESS))))
+	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP |
+			      VM_FAULT_BADACCESS)))) {
+		/* No signal was generated, but notify task-isolation tasks. */
+		if (user_mode(regs))
+			task_isolation_interrupt("page fault at %#lx", addr);
 		return 0;
+	}
 
 	/*
 	 * If we are in kernel mode at this point, we
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
