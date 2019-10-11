Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB803D3D7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43f3kZmxUNjJJGOiCETo29igi47csSlmXewbju6zpdw=; b=fubW3I5rYcDTZn
	egJm4YR6v+44l40tQP+OiN73Er6/HrflnLDodbaUtUOEU/Ez3qUul1sXQ9KZV/ob0v1+hPD9J27G1
	WGLodebavG8GE29xrvytyq1ihoKxbY8htAbP3mX7xY8tN4r8Gpsq7MeqMitetoxwP6snq8Py7jIAh
	PIP5IbW2fLSBYijV9iRWeOcS44z45NjPIjS6TEyK8wmzmrsx7EmZtfpmuRdJKaKdZ5Ahhd0fSuvin
	LaqxdxuXZlSiwT9GctDstj6fHIOtqcGytwV3wy5H8HZjgvtTBdIY21DwsqpGcquRnT1kEULYq/cRT
	BVPmN0a/FtIeEx5YKh4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsHC-0003vH-2F; Fri, 11 Oct 2019 10:36:02 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsGk-0003iO-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:35:36 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BAYviA014967; Fri, 11 Oct 2019 03:35:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=bkYjBV1QKokm4GNxTf8VfP7hR+HIUHvjLL+Wvx1iDSo=;
 b=KoOnCTIp4GGjhjpz7cPoz//xobT6M7fevg/2PPzEdT/3QV8J+3PHieH0NCEqSfMFh373
 K+BaVuU+w+UKOQ0kghTRG9IJdW9k5OQwYE5hsgTyczJfV+jDebloptPJcpETMt6NJXm/
 74lMsF5/0gcC61ExR4qwS6ZvOQw2sE4d0AWUdNKhS+LSkszwrkM2C3kj83pzB7RQlePo
 jNvpu9osAqTOi64tIi3lekvvratAQZKGjKfyVe1Q8msZGIRMZA7bOO8BNI9aRYg9SVOA
 CZRsyQapq1M77K636R2viwjC4p5XTxmmeFzG8ratI7ZP6Sln+YraGqArQI5OuKwHlq3e RQ== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2vjj6v181k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 03:35:26 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 11 Oct
 2019 03:35:24 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (104.47.32.56) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 11 Oct 2019 03:35:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isJ/SICOlEw4CIlynb5cHsGbTCbHEPiQFQTr01SkD7bEQbslTjY9K5becwq+IBVOxtBlswuLKy0BSzWEetSWnGaHth+OjPbOCInjGoxvo/R4wggjfAlkS92VUSzE0AlgXIKveXDeqc607j2+8S50EmtWbcKQYrGDQQKXCYUfri56SSu1EqC3fjRWeCxPrMSzL7JjAKU1IZij/NHb1jTI+7ZTK1cNaoh8DDh7Nhj/EDZBnMkFFnVA0ZUuh9Zi+EnJdgAdVZEKc/qgrOr/s9q4av7Jlus0sLVTLF7kC827AQ6PadxuibtZE9JcS9GviGRm2t4XZavlDnB+kg3pRbFM5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bkYjBV1QKokm4GNxTf8VfP7hR+HIUHvjLL+Wvx1iDSo=;
 b=fFCrieO0zRdFDRUwc+zYqIubqhVcLMYt+DbBAjPmyq70lyNZtFS2KSmwV/utfxoqkXlyJyI45oB2J/umpEHQrBKFM5b7eUzqGfKGdbdt4vAq536H/e+lM1yoBcFPeKVn/B7AtJWjDF8sucg3Vh39vHB0lTlwdpnA+FJpJrsOnNbIqas5gR7HB85OdKWbwrXhJlLyZ9vmBuH/uYbiDJ+UR80vxk7a1DjIqN82vvySS6phXl1s0TzREiaa6x42O8mhL1TcpXgSBslCNUBg5S4Hd18XRQXEI1ProFBp96SGcHnidStia9aIUQpVY+R3HdP3eHyxK+pXrh6M7KBroUyADw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bkYjBV1QKokm4GNxTf8VfP7hR+HIUHvjLL+Wvx1iDSo=;
 b=rTRSY+uYUkI+h7w9wLu55koV3g1+Rfv13QomZKF3s7k/XQtCDdRNyfPDnrwyLkjO+KU2O/8cptXAZxzF/TrOtAd6+vBDDm1JSFCcirtfNpaoiGcyTsz6zcJjMt0JFfz/7ZnBrALL+6J5uRcqpYl2aEp1aaAy7+s+XWSgEYyOz6g=
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com (10.171.254.153) by
 CY4PR1801MB2006.namprd18.prod.outlook.com (10.165.89.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Fri, 11 Oct 2019 10:35:23 +0000
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b]) by CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b%7]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 10:35:23 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Marc Zyngier <maz@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "kvmarm@lists.cs.columbia.edu"
 <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH 1/2] arm64: Workaround for Cavium ThunderX2 erratum 219
Thread-Topic: [PATCH 1/2] arm64: Workaround for Cavium ThunderX2 erratum 219
Thread-Index: AQHVgB+W9r2gQmeWGUKCgsdm1RtG0g==
Date: Fri, 11 Oct 2019 10:35:22 +0000
Message-ID: <1570790105-31829-2-git-send-email-jnair@marvell.com>
References: <1570790105-31829-1-git-send-email-jnair@marvell.com>
In-Reply-To: <1570790105-31829-1-git-send-email-jnair@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To CY4PR1801MB1895.namprd18.prod.outlook.com
 (2603:10b6:910:79::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6da6c9f-0a95-40e8-9168-08d74e36b87d
x-ms-traffictypediagnostic: CY4PR1801MB2006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1801MB20066D09C06E91A295880EB9A6970@CY4PR1801MB2006.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(39860400002)(366004)(346002)(199004)(189003)(2616005)(4326008)(14454004)(305945005)(8676002)(11346002)(6486002)(76176011)(316002)(6436002)(8936002)(81166006)(5660300002)(446003)(102836004)(81156014)(386003)(26005)(52116002)(66066001)(6116002)(2906002)(7736002)(2501003)(99286004)(476003)(4720700003)(256004)(7416002)(478600001)(3846002)(64756008)(66446008)(2171002)(66476007)(66556008)(110136005)(6506007)(486006)(71190400001)(66946007)(186003)(54906003)(25786009)(86362001)(2201001)(71200400001)(50226002)(36756003)(6512007)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB2006;
 H:CY4PR1801MB1895.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cmOc+pK9sLFXuQMCjNau38/xP9N1PSQx4RwebeH7HJUz42rbQR9GJx1cosRA3gSqduD6AiVjuWGhjsDaObCEy7pVt2V81+49uWz4qfgvEgddBpKx8141OtKGOHCdmqkMf7F5rSOG64QYDwPGCk085wf7G5aHCWAuV16MJJTciQzyIOLI25kUzuAB01cj9APBk4pnZ/y3kuilPVmmaXNXm85ApS51rWxdd9TyAQaSYso4cxK6hNQnL9y7b63cazBazewDBSPKHoRGRggjA9vk7isBlyw2D8e4oLjiA+eXdlTzKqhLdhQfvs3w3OHYizbk1Bwxt/sg1TYcsZRs6LTb161kBLcr1hViZYOGKLsvt6p9y+SU8JXYJ8ur/JUa2YaesGbgPFLP1GyDHOby1uq0yNeYct49V7Hceoku+bOm+Lk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d6da6c9f-0a95-40e8-9168-08d74e36b87d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 10:35:22.9530 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yjp4pv2Hd64iufZ+/d+1uKiXcKusgWBBC261LoZP+x6j2jN6dNktx/WpyQl/8L7Xkr8KUZn8l4aXrs6eC+7cmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB2006
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_07:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033534_566277_2EB2FD97 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomasz Nowicki <tnowicki@marvell.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 "stable@kernel.org" <stable@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

A prefetch, load or store instruction after a TTBR change but before the
corresponding context synchronization barrier can cause a spurious Data
Abort on Cavium ThunderX2.

An optimization introduced in commit c7b9adaf85f818 ("arm64: entry: Add
exception trampoline page for exceptions from EL0") for prefetching
trampoline vectors ends up triggering this issue when KPTI is enabled.

Workaround is to turn off the prefetch for ThunderX2 where it does not
have an advantage.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
[Updated commit message and erratum information - jnair]
Signed-off-by: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
Cc: stable@kernel.org
---
 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                     | 12 ++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/kernel/cpu_errata.c         | 15 +++++++++++++++
 arch/arm64/kernel/entry.S              |  2 ++
 5 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 17ea3fecddaa..ab7ed2fd072f 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -107,6 +107,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | Cavium         | ThunderX2 SMMUv3| #126            | N/A                         |
 +----------------+-----------------+-----------------+-----------------------------+
+| Cavium         | ThunderX2 Core  | #219            | CAVIUM_TX2_ERRATUM_219      |
++----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
 | Freescale/NXP  | LS2080A/LS1043A | A-008585        | FSL_ERRATUM_A008585         |
 +----------------+-----------------+-----------------+-----------------------------+
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 41a9b4257b72..d2c7c9b22dae 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -617,6 +617,18 @@ config CAVIUM_ERRATUM_30115
 
 	  If unsure, say Y.
 
+config CAVIUM_TX2_ERRATUM_219
+	bool "Cavium ThunderX2 erratum 219: PRFM between TTBR change and ISB fails"
+	default y
+	help
+	  On Cavium ThunderX2, a load/store/prefetch instruction after a
+	  change to TTBR and before the corresponding context synchronization
+	  operation can cause a spurious Data Abort to be delivered to any
+	  hardware thread in the CPU core.
+
+	  Workaround is to drop the optimization which does this. If unsure
+	  say Y
+
 config QCOM_FALKOR_ERRATUM_1003
 	bool "Falkor E1003: Incorrect translation due to ASID change"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..a0666dcff72a 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_WORKAROUND_CAVIUM_TX2_219		45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 1e43ba5c79b7..1bbb89d0379a 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -712,6 +712,14 @@ static const struct midr_range erratum_1418040_list[] = {
 };
 #endif
 
+#ifdef CONFIG_CAVIUM_TX2_ERRATUM_219
+static const struct midr_range tx2_family_cpus[] = {
+	MIDR_ALL_VERSIONS(MIDR_BRCM_VULCAN),
+	MIDR_ALL_VERSIONS(MIDR_CAVIUM_THUNDERX2),
+	{},
+};
+#endif
+
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_ARM64_WORKAROUND_CLEAN_CACHE
 	{
@@ -851,6 +859,13 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
 		.matches = has_cortex_a76_erratum_1463225,
 	},
+#endif
+#ifdef CONFIG_CAVIUM_TX2_ERRATUM_219
+	{
+		.desc = "ThunderX2 erratum 219",
+		.capability = ARM64_WORKAROUND_CAVIUM_TX2_219,
+		ERRATA_MIDR_RANGE_LIST(tx2_family_cpus),
+	},
 #endif
 	{
 	}
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 84a822748c84..c282e6570a5b 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -1070,7 +1070,9 @@ alternative_insn isb, nop, ARM64_WORKAROUND_QCOM_FALKOR_E1003
 #else
 	ldr	x30, =vectors
 #endif
+alternative_if_not ARM64_WORKAROUND_CAVIUM_TX2_219
 	prfm	plil1strm, [x30, #(1b - tramp_vectors)]
+alternative_else_nop_endif
 	msr	vbar_el1, x30
 	add	x30, x30, #(1b - tramp_vectors)
 	isb
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
