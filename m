Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A3720074E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wvRHAGKlGvm4uonpeLyOewu6pz3Upry2mZX30VD3Vc=; b=bz1FodWoOejczb
	seJhFXtfEYp51R6pEukhtY/+F66doL45Bh3ESHRlIuXMT2E+FSe/vdOxA2rPkNdBDjmAyfhBfEmyU
	XyfPARw7YWWH0pDeCehZTZ8Je+HEctMRNPYGyGfWxpwvyF+DJ83v9dOwh6u8G+OAhNE78oPDFWgwx
	IdyAF9CHEg51KXz50DGdHZWkabwmKm9coflLzEZHPgAS9JdLxRNksx0t4pQoPWz2eovVmFjcirsgJ
	k1c6og1aGRpYNBNAIMzy2qrNS8M6QMO2zIa1oABPhZdfX3tyQIeevQd7vJPvr9BVLb08LLR94dbGN
	CvxErg+lYThDmBPm/nyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEcm-00088Z-L5; Fri, 19 Jun 2020 10:51:56 +0000
Received: from mail-mw2nam10on2064.outbound.protection.outlook.com
 ([40.107.94.64] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEXq-0001Od-2P
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:46:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nbZW0mbYg6fQECtlOgN2gJp32U5imqTfPjZTzK/P/83sN/h5k6v1fvws2wg0YXoVd3SOuakHEG8r+yDygK4KrgoT6P5HZTt/6SHiKszW8xrbe3LKfGMzlO3g9dSgPlMxAKc0fjVqxwKbmYJmd3acPHy93HnIGRgMfieo4EJlAcZ0wXWn0Z9nQWbmzg0J0DnEbl7PZqC1WnM/pTVO4REnkhnTpkx+diNChJ0tVpDj5MKO5255Krxm7r1JTkFO3cVpwuqkBq8zPo3NhJvgDaIRZXNdhNhuIVq5qGkCYJL13qFmjuy6VxbYmURjl9/ZZERLJr24wO3oliOyYwlCjsi1yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eenDrgmTWSh7Kp6zW81NtmLtvVOOsYMfiiu0rYTtWdI=;
 b=bxcWHnxoP4ZX6eKOX0wvmvKTd2RzcjYH6LOYQmLSDM5F5d5AehbWgmkutAmnWdGGLNM3RX6ymSCHJxGCMaM1Rs0GjPRKhzoYZ+hBJ/NEsPjXMUxzrcfBXJ82OHOWgizZ2QfZmGcFUHrM7AUiQwAlXlQjNhoFOL3sCNXTSSsWLD0UbgFToNCSymlX1MLgpqFt8EUOGfUPaZPyCHusCMm6DC88GWv8rsjH3NsKswxNbocRvdXo0pUVXxwN3M5fpDXkDEkZRbQ9OQDEeBE7lW88VMCZYRtw5lT/6Zp/vB381lVH0XgtmXSKislkrfFF/qZeOfUpHmN9NuNynNTNTd79Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eenDrgmTWSh7Kp6zW81NtmLtvVOOsYMfiiu0rYTtWdI=;
 b=NamRngyqIl1OdhTKOwdqzE4+DNNM85DGAdZEocdT42bf/RtDcJOwBzg3xqV5R9Dv346W0qTkBRYjAvgQOxFA2kZ00Mu9znQuH3yX0MLQflQdpAkaaHf+zYKU3P4JLFf17yvpa7OJYBtNyrWmfAhLXW2HGsqLVsfsBpBxwfh2WFI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=synaptics.com;
Received: from DM6PR03MB3580.namprd03.prod.outlook.com (2603:10b6:5:b2::14) by
 DM6PR03MB3481.namprd03.prod.outlook.com (2603:10b6:5:af::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Fri, 19 Jun 2020 10:46:43 +0000
Received: from DM6PR03MB3580.namprd03.prod.outlook.com
 ([fe80::3122:b605:87fd:339e]) by DM6PR03MB3580.namprd03.prod.outlook.com
 ([fe80::3122:b605:87fd:339e%6]) with mapi id 15.20.3109.023; Fri, 19 Jun 2020
 10:46:43 +0000
Date: Fri, 19 Jun 2020 18:45:35 +0800
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 2/3] arm64: perf: add support for Cortex-A75
Message-ID: <20200619184535.44835b99@xhacker.debian>
In-Reply-To: <20200619184423.5e61a838@xhacker.debian>
References: <20200619184423.5e61a838@xhacker.debian>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: TYBP286CA0040.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:10a::28) To DM6PR03MB3580.namprd03.prod.outlook.com
 (2603:10b6:5:b2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xhacker.debian (124.74.246.114) by
 TYBP286CA0040.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:10a::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Fri, 19 Jun 2020 10:46:40 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Originating-IP: [124.74.246.114]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2871fc6c-c7d9-4473-e809-08d8143e0e58
X-MS-TrafficTypeDiagnostic: DM6PR03MB3481:
X-Microsoft-Antispam-PRVS: <DM6PR03MB3481A87C339B732B4FEC9637ED980@DM6PR03MB3481.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0439571D1D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: njjuhUn1/zZ2tXuGZg8ToOX63ZDGDJ3UuAiUKB9i3Ky8eA36fGscm0Oq798NCAAoIMQDKK5gpVm90YN6c9+Rkw0G8A2gxnCMjMY6K7HWVn0NDzqaZYaf4j7frzpR0MCHAh4Jhhnjl3xq63MpVJMmhP/4yWeuHLHXn8X2JFahShslGU9P+XU/u3JuVe5GBcp5mOh9ZWG8er/hEwIC1kiSMo2rmPV9dBtLMWEz7ImzVEI2vQOENw7U75NFfUa+Kl8ZcH4OYdy4p6WRBjcT1t56/2ZZjMUfrV7mp7bt9ov4aFolSZb9/tTjHhgMsJQXtIEqK+8fBDUfLTQennC38axHAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB3580.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(366004)(66476007)(6666004)(66946007)(66556008)(5660300002)(86362001)(52116002)(16526019)(7696005)(186003)(55016002)(9686003)(956004)(8676002)(2906002)(6506007)(1076003)(26005)(83380400001)(110136005)(316002)(8936002)(4326008)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 4JKUWlsoOUOMglmFNkuRoe7YAAU60EnMAFgX5fBV2FhTOxPPxv+ulhtr6K98nbqawHg1NF140VWhgJYL6F+lN212b/RtSVe3kaCjaQODG24oOPNdVjtcOnYqAqJio35nPzhrWYGRGiFNRWa5fPLn5K9ummkCnHlXTUTCNoKl36G7ar0ov1K2B0UCn2nda7eG2QdhMvN349P+1V7WOAUqJI5tje0reyvXgTQ0btiW0dGDrXFf3+QeJ/52RF8IWkHaP6xsn+pAjv9Tcq2Yx+hfXVuwStV6LO+vbbacRuYe6PDMiHTNnd58fWa64XhPeTIuEEkFqTssvLE2LPW6+68vmk8zLQLDfPA/PM+XYpJIK8ivJ2ZZIQogEgI/UL3tRGjicAr6JWfrhrGYg+AOtZN4TbzEh618GMQ+lOGnm2vBuJpSS1yO3cnk7H870E2l4DunQKTywD8Bca9b50v66AQDWpw/E7zFWPBireBGnqyCeqKojld1BpAF1lmPKT86a+e7
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2871fc6c-c7d9-4473-e809-08d8143e0e58
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2020 10:46:43.4930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o+fQp+zkrvxf4AKqo/se3zfCRg22phKSA5CJQZvWfPQlTLBtmNVvqIrRmI5DWMha/PXK2cfd3a4VUSmu7g/q/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3481
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_034650_225243_D4F99881 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.64 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Cortex-A75 uses some implementation defined perf events. This
patch sets up the necessary mapping for Cortex-A75.

Mappings are based on Cortex-A75 TRM r3p1, section C2.3 PMU Events
(pages C2-578 to C2-586).

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 arch/arm64/kernel/perf_event.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 743affbe0cca..55e1d75af708 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -123,6 +123,21 @@ static const unsigned armv8_a73_perf_cache_map[PERF_COUNT_HW_CACHE_MAX]
 	[C(L1D)][C(OP_WRITE)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_WR,
 };
 
+static const unsigned armv8_a75_perf_cache_map[PERF_COUNT_HW_CACHE_MAX]
+					      [PERF_COUNT_HW_CACHE_OP_MAX]
+					      [PERF_COUNT_HW_CACHE_RESULT_MAX] = {
+	PERF_CACHE_MAP_ALL_UNSUPPORTED,
+
+	[C(L1D)][C(OP_READ)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_RD,
+	[C(L1D)][C(OP_READ)][C(RESULT_MISS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_REFILL_RD,
+	[C(L1D)][C(OP_WRITE)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_WR,
+	[C(L1D)][C(OP_WRITE)][C(RESULT_MISS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_REFILL_WR,
+
+
+	[C(NODE)][C(OP_READ)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_RD,
+	[C(NODE)][C(OP_WRITE)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_WR,
+};
+
 static const unsigned armv8_thunder_perf_cache_map[PERF_COUNT_HW_CACHE_MAX]
 						   [PERF_COUNT_HW_CACHE_OP_MAX]
 						   [PERF_COUNT_HW_CACHE_RESULT_MAX] = {
@@ -940,6 +955,11 @@ static int armv8_a73_map_event(struct perf_event *event)
 	return __armv8_pmuv3_map_event(event, NULL, &armv8_a73_perf_cache_map);
 }
 
+static int armv8_a75_map_event(struct perf_event *event)
+{
+	return __armv8_pmuv3_map_event(event, NULL, &armv8_a75_perf_cache_map);
+}
+
 static int armv8_thunder_map_event(struct perf_event *event)
 {
 	return __armv8_pmuv3_map_event(event, NULL,
@@ -1101,7 +1121,7 @@ static int armv8_a73_pmu_init(struct arm_pmu *cpu_pmu)
 static int armv8_a75_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a75",
-			      armv8_pmuv3_map_event, NULL, NULL);
+			      armv8_a75_map_event, NULL, NULL);
 }
 
 static int armv8_a76_pmu_init(struct arm_pmu *cpu_pmu)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
