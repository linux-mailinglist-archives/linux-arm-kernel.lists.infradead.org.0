Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FE682FC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRq8QeBBrY/mGIEtl33MBHKhJWN8HV3lEHxO4wWdVyk=; b=skvlp4SMQCiAyM
	aI4m06KUyikBto+R5lBpeyb0bm/a+7EaocB9JI7ZQxVhsYDCi5DbPnQwHHGdxkfXE4cAfIVpvtcsn
	2bn2z37AqP/jVfjCwgJ0QunDBXUOq2BtXhm8SCgM9RC+O0Yp+1hS8cdIZK/aevxAV+qVilrucO0cT
	Nm1iZV8pAXY7kSSZ6/Bxy0HjG68XbIO38bH8bojFQWSZkMRTGctxSb+qxPO8a/Tq+FzhF+vSfD4q8
	jZ6FTYaHqEcahxVGEaQrcTVk0Bfak4FSsuNDNPf7dOVZ42lnFaWahUJGNrhbxQQXbC5m441K5mwYj
	qlBHydSYoxqrVwKs+Spw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwmA-0000Gh-2t; Tue, 06 Aug 2019 10:33:06 +0000
Received: from mail-eopbgr790048.outbound.protection.outlook.com
 ([40.107.79.48] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwm3-0000GE-8M
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:33:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkWUHFVTLa2aaw4ZLfYaTTv1mMGRDJ2WUt4fZRoKhSYY6NDsdLZ6TUMhSPA4lULNiUl57fif5WtpeKuqIoqvFxLz5TZc3TBx6yQ5uvX9wZnjRN5MjqsVzhTCOVaqla7UdqXGFr/jLBhwvdxbORtvOAJVMqD/ywH/15m823hHk2iDu0RtxJ6WRIsGVYmfKJT/+VETagHoOLqwav1neZSSg4vWhV+kCcV+hhGyvW1Kcstf4aiiLJSCCgRdzkQ2x8jiu3dKm+luPpNpI0POtHN4ELbh76BltzTKCGDpHZjQBedPnujGcAwKzLSiTHzOLS2LqydCF3tpLySlj6gw4LaDFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzAXGpSTkbbExFeOoqJkDsCFO2FrfxE8FI4e1WDjUU8=;
 b=RpZcgzbJpFl9P+IJPUXrKgIttYaMdKqAzmQJTjCE7E0Ugfw9CEqEs2GQxEyj3tTUvclSw3p+PPf534HOfL3Ev2EOQagADXIHoW2hDiIyDbjQI/0YwQTROIPqWm9dPZN9aR9izsS3gv7n2wNlIKP0CaSsWTbWfhPRt75uLZbq2Nsm36f/jQMrYZxoAYtctld4fW/5/sIMa5jaQNZAVmGdiQCMrIAHfTWEEjB3N5ZASqsRxEMQzc5BjuzFnBdhNbX9pefnCJIGllFX6xEaiTvZif+tlhtifbiL7kh7H6HK7xAhy5rc4VighqFce8oyi+V2WKuXwv6F8QF6MW2X1fei3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=amd.com;dmarc=permerror action=none
 header.from=amd.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzAXGpSTkbbExFeOoqJkDsCFO2FrfxE8FI4e1WDjUU8=;
 b=O3CnbVdPSC2O80WmMJbD0tX+wRjMUKEclQuJovsOdCMpQRbd99Z0PyuP+XrQxbNVRfTqdTZ04YsDhEGaRwLrd9AAK/kMEXlnLb4OTxSz7AfZDs+kkDvCsF2ofD/mmf+Nyw9jEVvEZg2hNPX8yn72OjSiT1kCgOjavMe11+rrXgs=
Received: from DM3PR12CA0049.namprd12.prod.outlook.com (2603:10b6:0:56::17) by
 BN7PR12MB2708.namprd12.prod.outlook.com (2603:10b6:408:21::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Tue, 6 Aug 2019 10:32:56 +0000
Received: from CO1NAM03FT035.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e48::208) by DM3PR12CA0049.outlook.office365.com
 (2603:10b6:0:56::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.15 via Frontend
 Transport; Tue, 6 Aug 2019 10:32:55 +0000
Authentication-Results: spf=none (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=permerror action=none
 header.from=amd.com;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXCHOV02.amd.com (165.204.84.17) by
 CO1NAM03FT035.mail.protection.outlook.com (10.152.80.179) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2136.14 via Frontend Transport; Tue, 6 Aug 2019 10:32:55 +0000
Received: from taozhou1u2.amd.com (10.34.1.3) by SATLEXCHOV02.amd.com
 (10.181.40.72) with Microsoft SMTP Server id 14.3.389.1; Tue, 6 Aug 2019
 05:32:54 -0500
From: Tao Zhou <tao.zhou1@amd.com>
To: <amd-gfx@lists.freedesktop.org>, <alexander.deucher@amd.com>,
 <hawking.zhang@amd.com>, <dennis.li@amd.com>, <broonie@kernel.org>
Subject: [PATCH] drm/amdgpu: fix compile error about readq/writeq on arm ARCH
Date: Tue, 6 Aug 2019 18:31:56 +0800
Message-ID: <20190806103156.3778-1-tao.zhou1@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(2980300002)(428003)(199004)(189003)(70586007)(48376002)(70206006)(86362001)(8936002)(316002)(305945005)(81156014)(26005)(81166006)(186003)(68736007)(1076003)(53416004)(486006)(5660300002)(47776003)(36756003)(8676002)(51416003)(7696005)(50226002)(50466002)(4744005)(2616005)(476003)(126002)(53936002)(336012)(54906003)(356004)(426003)(2906002)(16586007)(478600001)(2201001)(110136005)(4326008)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR12MB2708; H:SATLEXCHOV02.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e804145-08ce-4a84-62b6-08d71a59719d
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328);
 SRVR:BN7PR12MB2708; 
X-MS-TrafficTypeDiagnostic: BN7PR12MB2708:
X-Microsoft-Antispam-PRVS: <BN7PR12MB27084DA08DC9552B7237B40EB0D50@BN7PR12MB2708.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:386;
X-Forefront-PRVS: 0121F24F22
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 6pTUcoNUBVv5Ae7rpBHXaaa/xWecxGRsqTrDLEfxET1jbNeB3KChoOAjIkFPEkxXC/qDSPJGdvmXYz0BkJfpWK9Gf2xHE5mDxkgfrJQDQpUE/AJy7L+H5EwB3oPmwm9rEKNVG+VnbB2lLkqU0METR8FnbL0aoVN+QKx9ORIGijd5vXXANnf/EfXj+EgChfJYnAYJgfVDnGH5Xxy5Xs/kPF+FSUeCMNU6Cqb2ocC5CIJ+vkBhxLGZ0MCj3r1JfpTDf56SbB3UaZDudo4LONv08bvEAOyBJhfxQyskiGqmgFaJ6V2An7Tq6y+6L8jU8Vl+iwOtCeGX83I8DHmWhQdPk6dUByuRSXy4d0bl3EjaKRosHvLeHFhpDyxTmfbyAJ39je9pD4b0OoV776jR3w9Ta2q1YwbzWHSJF2+k29h2bHk=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 10:32:55.4717 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e804145-08ce-4a84-62b6-08d71a59719d
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXCHOV02.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR12MB2708
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_033259_363264_ECDF6D16 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.48 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tao Zhou <tao.zhou1@amd.com>, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

readq/writeq can't be found on arm architecture, implement them
with 32 bits operations

Signed-off-by: Tao Zhou <tao.zhou1@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index f62d4f30e810..aaf7f31cf8df 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -29,6 +29,7 @@
 #include <linux/kthread.h>
 #include <linux/console.h>
 #include <linux/slab.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <drm/drmP.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
