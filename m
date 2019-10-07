Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9349CEC2E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWFsqZriHhtwLsGJtp7K4C/zlNulK5+GwODhdoWkV6s=; b=beG0dOYgj/Jb9I
	GFno9nO51lSZvD+u8ujKbWx648II8y4g2gKfCxZnNkL3hDYYpe4yTs4/AKjpuHjG6ooz2Hy4efHyk
	ZLT7cEyE4n2EYXoC9z/oHhdRwuCXIxRFNZ++bD1NbdGXWVtahVQ6plMFa9BTbYzYfoJDInZSeS9/z
	nIzRbg0uVkSXznAog4t1zAM7W8L215k/NrBsWWmXpyIfnn/nRhhBlmVPuSfiCHuX5FBm5YeR+kiBt
	YPSSbyMZWG0XbDm3yuFvcpkAdwMKHroxOoKZba7OUHtY8IdxME3vQPgRNISncbWHo9htaonXj49Pb
	0/7BSagnzF54Y7Zpl+Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHY80-0001hG-F1; Mon, 07 Oct 2019 18:53:04 +0000
Received: from mail-eopbgr810043.outbound.protection.outlook.com
 ([40.107.81.43] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHY7r-0001g5-NM
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:52:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLD+3T1u6e7YWCnJuP0JAuWpDukeedoxpXXZAIH98EulN3xtjpBOc6sCzYsAydj5J/DRLYgSlzq1Y7qeV7T6CYf+22lIz1httrbYUhhtIyqAIgVs0tepEW/Gvw5yvRj+2nDjpFC5QlWt/kkepjZV2AxMN+NPTHmXqIuSjgFqJM1eu/NrOmBvwJ4PxAN6Cyuj6AoIEa86w5vn9Tn5PtX4gcgnmA3ZSB52kwJHBKtumlO2eVl2+WVLDn28re9wm5vt7f1Qxw01G5SoKSphP0NMqOv5fPxlMEYTUMSic80Qv4XVfPbuoIjc9KE1FuUuvt0t18F5wflzmuf+V9X1r/OSnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cgjyqqn8QPmefb8x5FXVTB+aPpS42Kk7SPeNBYAHjjI=;
 b=OOZAmu13WRnu/5/QlxB0MJi7UOqYhXp/F5IYz2b/3ak7TmAErhtYe/L7KYcXTFxNGdTa6lVaGAp4nRG5DJdXFRCJvJR3UuhGK/OqXexU5jn/CZQBLTiv2sWEd1CBxDdDxpTLKr56Nafk3UG986o5JS1ZfR8ITSzx18TMbZLoEm58AS5jF/0HEDXQKsVrDETVVQV/6wGpSUR+Q9bQXEhrzVJeZhIPytGDLKx2VQ+B6Hcwk6BV3HdkplHs2XZZ3iO/68Z8c+4Ag61otvBqsmNmKJnxsQfYNc5yb4Uq46gXKocgV4wvowxwah5nx+WkVrN+6ZcjQ9bCyfFvZfRPTAJ53g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cgjyqqn8QPmefb8x5FXVTB+aPpS42Kk7SPeNBYAHjjI=;
 b=Hl6H+30ionS3UJDh/GueVFhq+WLzNH0+OIG0paq72WCe7c7scSxkrE3QQxDEwToGwXJM4lr4i6+6gIYxfwrZdV+E1w4os45AV82mfKjuguSqbmyAOPc+5oBrOXdtnTAWb+D56ob45YEC2M5eru4CvgUsA5XF+p3cTSnVSK/CatE=
Received: from MWHPR02CA0052.namprd02.prod.outlook.com (2603:10b6:301:60::41)
 by DM5PR02MB3321.namprd02.prod.outlook.com (2603:10b6:4:6a::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.20; Mon, 7 Oct
 2019 18:52:52 +0000
Received: from BL2NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by MWHPR02CA0052.outlook.office365.com
 (2603:10b6:301:60::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.25 via Frontend
 Transport; Mon, 7 Oct 2019 18:52:52 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT062.mail.protection.outlook.com (10.152.77.57) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2327.21
 via Frontend Transport; Mon, 7 Oct 2019 18:52:51 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7m-0003TY-Vf; Mon, 07 Oct 2019 11:52:50 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7h-0002EM-Rq; Mon, 07 Oct 2019 11:52:45 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x97IqeUC022510; 
 Mon, 7 Oct 2019 11:52:41 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7c-00027p-P1; Mon, 07 Oct 2019 11:52:40 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com,
 michal.simek@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 0/2] drivers: firmware: xilinx: Add support for versal soc
Date: Mon,  7 Oct 2019 11:52:21 -0700
Message-Id: <1570474343-21524-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(199004)(189003)(4326008)(4744005)(356004)(7696005)(6666004)(106002)(8676002)(81156014)(81166006)(51416003)(50226002)(8936002)(7416002)(2906002)(478600001)(36756003)(48376002)(316002)(16586007)(426003)(336012)(486006)(476003)(186003)(305945005)(2616005)(126002)(44832011)(26005)(9786002)(36386004)(5660300002)(47776003)(50466002)(70586007)(70206006)(107886003)(42866002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB3321; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c373c99d-7534-4d87-7ea1-08d74b578e4f
X-MS-TrafficTypeDiagnostic: DM5PR02MB3321:
X-Microsoft-Antispam-PRVS: <DM5PR02MB33212CC4AEF64B5CC901AF99B89B0@DM5PR02MB3321.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 01834E39B7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ovm8PkKvHMIMniI5fs8dk34kq/dK93P0VlDtDVAl5XZOl34EGim5Wi6qVD71FOXLJEdPhMA/XDfOK2p2nX27/5yEIpQnTY9X+iXbnPGP5fk3ztkhsCPy2smtmhE64ScVGaOczqmKfK71VsIqTrHgh87qAB15S+C9Zr1UqzZTz/Bul4v0R7V1jKYnXyK/f/0bY/ThppW9dZuk+aS7+IO1Rrm4ryjE5cPy5N//DvJ80uYKV+x4BqY6IYqgChHR+0PHIKehN0eO6TCwPFWx/tjKLf4GVy45kBc9/qokqX81L+FbRrTfdDSkhfISaLpRD3cQ1yHdvgoEspyTmOnBgXOD0v6wiWinBURTCczEF1iI82OlUPV2J1OABz9UisbQHPR2ri3uqE8fkzlkfMaF2t7KhXH4UskvqX/7PvYZQ6/Vz+M=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2019 18:52:51.5974 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c373c99d-7534-4d87-7ea1-08d74b578e4f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3321
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_115255_765842_978A33F7 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, devicetree@vger.kernel.org,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Versal is xilinx's next generation soc. This patch adds
driver support required to be compatible with versal device

v2:
  No changes. Resending to include DT maintaners

Jolly Shah (2):
  dt-bindings: firmware: Add bindings for Versal firmware
  drivers: firmware: xilinx: Add support for versal soc

 .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16 +++++++++++++++-
 drivers/firmware/xilinx/zynqmp.c                         |  8 ++++++--
 2 files changed, 21 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
