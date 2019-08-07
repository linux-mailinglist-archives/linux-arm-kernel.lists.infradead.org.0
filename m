Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F65842B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 04:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=guCMuYOHmDFI3J6mxDyqWGa1L56DBMF3/BaJjPcOniQ=; b=X2ctfSOLsozFVn
	EeI+HTCmNr9l5RtYVbLS1Epml2CSpsZhAyJVy4uB/gG3dB5ugFc/dH5FAyycnyLvKPhTothFY+5wW
	eUHhqkKh/hpeKvZYOLFH9wtLig0kfN1YQr9yXBbtkytOKYdEJtrln1OPsDdKonIvoiS3VCXvMdNJl
	qyKtrnUz3a/ujBvvdqRFFW0AdSORG1zMdUO1v7lla/62ieeHcerioNAmXqo9DgBa1yxz7uDuGo0V+
	PicaPam/Aw5iWyNtomMiz1mdxg25s0Ge1qYBaXcf/sXsHvk1EL1ckmCi4We76V8UJX1Xm4erU3Eff
	E33/4WvSJR6NDdR0i3eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvC8L-0001Lz-P3; Wed, 07 Aug 2019 02:57:01 +0000
Received: from mail-eopbgr760085.outbound.protection.outlook.com
 ([40.107.76.85] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvC8C-0001LZ-NA
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 02:56:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWPdnakyhnR74NSGjGh6eeOnrfGShlgsES5yCt5u9qW8CiGVa5Oi03XDhefr9DvPvPdXQpbZqzMa86Uv9VlrE+86fxrRHb9cPZiTl43uKUrKKNj9HIkYOea3/jLxZWWolAM+Qdupc9Xo92ZINI4Wf6i1YdTxTiIIrAx7YpU8BVASWV3QdgTr8ZPPKAXOvPfE8eO+QmIAtfoDAYIbrD/rO+u86E2E1OQ767uuCtGAZObSypgEMaPxC6wx4IyBh2APfzo2PKRK8spuqTb/60lN1oSU7c0N4m95V+9yUBmeLOXLz+KLoWiDFR/tOLFjK3Mc8tYd83Usp5FqpDajaaz2hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yky6w6/M4SeHS15mmKKQtpK5alww9+bmfDk4qJna3/I=;
 b=iZsglEpD5wGKBLonXv4jYlGzYDUHXZ4UP+HUvqAu497fFWCGfFffwc3vA7E4Xc/BfqJU0rYMQNHduYzqajW1XpEWuTZitbDdPdmGtPN9xsaxg3K5eMeaOrED7UscDRPIr2xlI/vtszhrU8oJi8PS9k6lMHFxVRdBeQj4Ynlz/Nl1ShPtdTK43/Be6q98VAwhpjQYC5gcGM4A6RfIke1QHLFuGJ7O2U4k6xnHrJQbEboLdnrS2CG507uqLxFSIeRfGjb7tAB8TokITvW8hALzkhGSJDjU/x6Z/tWoNedMCdQnTQk5EZUMI8OluwwXQ2eqNjC4s3CvDH1PQb1ZeeQS2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=none (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.linaro.org
 smtp.mailfrom=amd.com;dmarc=permerror action=none
 header.from=amd.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yky6w6/M4SeHS15mmKKQtpK5alww9+bmfDk4qJna3/I=;
 b=01vV5quKFaefE/H7PL5mupPTZ/YJQG+6uE8GW8OsGfFU2XJbyfvgAMNKtyE4GICgc6ejbFBSYjM3bNPbLj1KT2JKOpwY0jxVB54/WdLBkUkpMg57POJmGTrLAW3AH9EvzIJ/DTFjqCYZUXYZu7pi8g7he/9aW4qc2VJHdv0LLEw=
Received: from MWHPR1201CA0021.namprd12.prod.outlook.com
 (2603:10b6:301:4a::31) by BYAPR12MB2710.namprd12.prod.outlook.com
 (2603:10b6:a03:68::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.19; Wed, 7 Aug
 2019 02:56:50 +0000
Received: from BY2NAM03FT043.eop-NAM03.prod.protection.outlook.com
 (2a01:111:f400:7e4a::201) by MWHPR1201CA0021.outlook.office365.com
 (2603:10b6:301:4a::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.13 via Frontend
 Transport; Wed, 7 Aug 2019 02:56:50 +0000
Authentication-Results: spf=none (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=permerror action=none
 header.from=amd.com;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
Received: from SATLEXCHOV01.amd.com (165.204.84.17) by
 BY2NAM03FT043.mail.protection.outlook.com (10.152.85.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2157.15 via Frontend Transport; Wed, 7 Aug 2019 02:56:49 +0000
Received: from taozhou1u2.amd.com (10.34.1.3) by SATLEXCHOV01.amd.com
 (10.181.40.71) with Microsoft SMTP Server id 14.3.389.1; Tue, 6 Aug 2019
 21:56:47 -0500
From: Tao Zhou <tao.zhou1@amd.com>
To: <amd-gfx@lists.freedesktop.org>, <alexander.deucher@amd.com>,
 <hawking.zhang@amd.com>, <dennis.li@amd.com>, <broonie@kernel.org>,
 <akpm@linux-foundation.org>, <christian.koenig@amd.com>
Subject: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Date: Wed, 7 Aug 2019 10:56:40 +0800
Message-ID: <20190807025640.682-1-tao.zhou1@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:165.204.84.17; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(2980300002)(428003)(199004)(189003)(68736007)(2201001)(486006)(50466002)(48376002)(476003)(53416004)(6666004)(2616005)(356004)(426003)(126002)(336012)(186003)(86362001)(6636002)(47776003)(478600001)(4326008)(26005)(70206006)(316002)(54906003)(1076003)(16586007)(110136005)(5660300002)(7696005)(51416003)(53936002)(8676002)(70586007)(36756003)(8936002)(81166006)(81156014)(50226002)(305945005)(2906002)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR12MB2710; H:SATLEXCHOV01.amd.com; FPR:;
 SPF:None; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8bdaf23d-67ff-4dfa-a56e-08d71ae2e4dd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328);
 SRVR:BYAPR12MB2710; 
X-MS-TrafficTypeDiagnostic: BYAPR12MB2710:
X-Microsoft-Antispam-PRVS: <BYAPR12MB271044796759B6AE287FF480B0D40@BYAPR12MB2710.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:466;
X-Forefront-PRVS: 01221E3973
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: cM6Rs+5qRQZU+kNfIqs1zxyQY8bCl0jE7pJBdn2dOoL7uQ0LruNrBOw1lEKvQZXFLXNGI739+x63BVBLi4mfxLNtCygclmDn4+993i156ejaccChEvYksXAQ7cySfYFBON0654AeDjYezo4N7XoWJWMNRwgKZgqly/cjgz8Kozti2tmYZXasvj14Y9sx9fRSsCtwDFG+xCsNePlyWt7Pv0unWS4z2DOtrkgUnkWfPT/rp9r0I+gi+YYI2rcOAhDa4bWzYHqujH8iYXTTXFXOKXOUgzQPVm56LW/GNxD4iSNz/+naXSAb+WC4Hyg5pV70H9QWXSEzsXqM3clZ9ev0IL5xEeTIiNrSP5bmOVXRmt92lW+cgRpMEsFxNw9JcdT9tGrRybvHQQaRTGxH0en6TzlnmJS6xFXQ+sV89QXr1LI=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2019 02:56:49.9265 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bdaf23d-67ff-4dfa-a56e-08d71ae2e4dd
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXCHOV01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_195652_817224_116AF5C8 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.85 listed in list.dnswl.org]
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

readq/writeq are not supported on all architectures

Signed-off-by: Tao Zhou <tao.zhou1@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 558fe6d091ed..7eb9e0b9235a 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -272,14 +272,10 @@ void amdgpu_mm_wreg(struct amdgpu_device *adev, uint32_t reg, uint32_t v,
  */
 uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
 {
-	uint64_t ret;
-
 	if ((reg * 4) < adev->rmmio_size)
-		ret = readq(((void __iomem *)adev->rmmio) + (reg * 4));
+		return atomic64_read((atomic64_t *)(adev->rmmio + (reg * 4)));
 	else
 		BUG();
-
-	return ret;
 }
 
 /**
@@ -294,7 +290,7 @@ uint64_t amdgpu_mm_rreg64(struct amdgpu_device *adev, uint32_t reg)
 void amdgpu_mm_wreg64(struct amdgpu_device *adev, uint32_t reg, uint64_t v)
 {
 	if ((reg * 4) < adev->rmmio_size)
-		writeq(v, ((void __iomem *)adev->rmmio) + (reg * 4));
+		atomic64_set((atomic64_t *)(adev->rmmio + (reg * 4)), v);
 	else
 		BUG();
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
