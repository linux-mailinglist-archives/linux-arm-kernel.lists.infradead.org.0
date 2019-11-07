Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C50F2B18
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/1AV5SGkPLEbIKtXuUfLAoC70Omb+UNRAyungA3L1Sw=; b=ThfSvOawEo379i
	qrT/FYvIhUA5/DNaPqT1eQLYfNd5vu1vAuaZ6NObgvxrW8gfiPY1t7W8cj5UsojZK5tgMOF9PyCtg
	eyvlcGrGJPKxiAyI26ON/hm3TFpw5R1a0jxMHaDcmQNhm0ZbgRpfNZaBYDPKSSG3IVNpzrQWDbugX
	CtDYY84Ll+akwpsCgaOGmgf9Enu48ImAlYkOVB3+iCIZMPx3qu+iWs7HBygdaRXOf98oOkGFhOE5I
	vkNAiE2XNFak8sMzDLGoQYr6VT1ornSplkrBjzJnuv0J5JGFZiSNAXx8oueB7HuQUGgpIOIZlLJYN
	KfcYtm8KktaJnqgQ0dFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeLt-0006Dz-HG; Thu, 07 Nov 2019 09:45:17 +0000
Received: from mail-eopbgr750082.outbound.protection.outlook.com
 ([40.107.75.82] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeLc-00062S-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:45:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XEWRIjVGKKf/SYQpphYfzhgQEmXLPxD0R/+2O4Ilff9bfkRSfzJgK+iNJragbNy2wK5YTzWqTLfi9a89bxstty7JQEr515l6IYD7dzqu0vQY49HUaH44bLCKeolFw8B4xMtqId21oM6U+PLA49+0X2e8526fVSepybko4hbyMoGBGfysikgCWXeVJaT6lEcNQM++YBPE98PdjqAKMFojSyrwgVrKSrzknfvvY7NHnOgtbz/i3m0U445wCAiE6yjVpK2g41wSKLDsUu8SK/rxDOl72kh4bAIpKYorqFgDwU/467fCbBo5u7W+3Txl3dXsips6PwHWvk4Xr1ovoP6jzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RulU0edXA1TyT6JnXSne76ErB8gsSd+JxwLwU1Ez/7I=;
 b=Iy5wfpPI70b1MfyC/u4hs+sXxG9hAdlKwPf9avt5yUrLHq4cXv/t2e9xxryjSUfymLPKpIuM1saYPeP0CgC6FVtMWim6sWKfCK4LPipYOB67YZkEBsoq54ROx1AGS26fiV5N4eT53/KYQumQV7y3d+DPhqnuRHfXT/huiRgl6cLfcnPvm97CKdrGo4zX3QwzVevNxDqyhRRi3XsOsh+qHqpx56BuNOhhGsga2qSSXcHSWRau3+xKJoaxhhJ6TRFqu7ptOXItceoM/VXSYQH/0FjDW+UJnlJLOjHyjAe9NkkSuglb4T20+9yzUPnkcRSY/HeKnqjiix08BzrfHlVN7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RulU0edXA1TyT6JnXSne76ErB8gsSd+JxwLwU1Ez/7I=;
 b=P3H+eTJedW8Ogqm/aivCeDf7dZXu/LiQlogymavCwq/01iOjQn74kDKf+nCyESyWV1eSO0jUNeFkVv0C3+DIFwkx6nzaz7hKCUfBsnrpXgds0r3MMg4ss6Kea1pfz1+NrGi3B4+sw2xWdL1Uzfs+0IAKbhUGuWo+rbbOISfTvrQ=
Received: from BN7PR02CA0014.namprd02.prod.outlook.com (2603:10b6:408:20::27)
 by BL0PR02MB4404.namprd02.prod.outlook.com (2603:10b6:208:45::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.17; Thu, 7 Nov
 2019 09:44:50 +0000
Received: from CY1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::203) by BN7PR02CA0014.outlook.office365.com
 (2603:10b6:408:20::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.22 via Frontend
 Transport; Thu, 7 Nov 2019 09:44:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT053.mail.protection.outlook.com (10.152.74.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:44:49 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLR-0002k4-6n; Thu, 07 Nov 2019 01:44:49 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLM-000061-3x; Thu, 07 Nov 2019 01:44:44 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA79ifL8012799; 
 Thu, 7 Nov 2019 01:44:41 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeLJ-00005Y-8T; Thu, 07 Nov 2019 01:44:41 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 harini.katakam@xilinx.com, jan.kiszka@siemens.com,
 ulf.hansson@linaro.org, xuwei5@hisilicon.com, mripard@kernel.org,
 heiko@sntech.de
Subject: [PATCH 0/3] arm64: dts: xilinx: Update dts for zynqmp
Date: Thu,  7 Nov 2019 01:44:13 -0800
Message-Id: <1573119856-13548-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(396003)(199004)(189003)(106002)(476003)(6666004)(356004)(51416003)(478600001)(7696005)(7416002)(48376002)(14444005)(50466002)(36756003)(305945005)(70206006)(26005)(4326008)(70586007)(16586007)(316002)(2616005)(486006)(36386004)(107886003)(81166006)(2906002)(44832011)(47776003)(186003)(426003)(5660300002)(8936002)(336012)(50226002)(8676002)(126002)(9786002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4404; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d976a5d-8391-43f9-01f4-08d7636721f4
X-MS-TrafficTypeDiagnostic: BL0PR02MB4404:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4404BBEBC76170A052EF775AB7780@BL0PR02MB4404.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ubG7FbwME05900hBpCkgsr61qKNbvFbBB1qFtEw5vpyzgAJYvUfQW/bfbzej8fZyUPALAsqeuZ7WyIU+S9z6opC3/gqC/kiwQmF8lgrMTrtCb4vZxGbSH277fHB/nhWMxUmZTR2VgoCnl4xTm2eP5GWHJPLA+duGZGL1xsGuZNFnRejyXg60DZD31LK9AfR4LEBnsoXFRiqRGox4Hf/8G+XHvZSMJ53wpLu19kkRExguwgr5wgygrX6qniWwkik6jvCZOUiq9SH1+tfXFlC//OTrIXHajK4mpuXUuxDDlghvInG/z6pf0GO0+t897uJe69xX8ye3Xf2ICfVHO/IYPVUmtBSMCp+30P1dv37G8Mdzmm+21WRWli1j82BMAPFaty/aovg8UfsUUW7IoEi2wi2M3Rhp/IGQZqKYPOAcpat0Xbt3K8d6iTDyyEJv8pWk
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:44:49.7074 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d976a5d-8391-43f9-01f4-08d7636721f4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4404
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_014500_481296_0A7F174F 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for clock and power domain nodes in dts for zynqmp.

Rajan Vaja (3):
  arm64: dts: xilinx: Add the clock nodes for zynqmp
  arm64: dts: xilinx: Remove dtsi for fixed clock
  arm64: dts: xilinx: Add the power nodes for zynqmp

 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi     | 222 +++++++++++++++++++++
 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi         | 213 --------------------
 arch/arm64/boot/dts/xilinx/zynqmp-zc1232-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1254-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts  |   2 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts    |   4 +-
 .../boot/dts/xilinx/zynqmp-zc1751-xm019-dc5.dts    |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts  |   4 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi             |  72 ++++++-
 16 files changed, 318 insertions(+), 239 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
 delete mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
