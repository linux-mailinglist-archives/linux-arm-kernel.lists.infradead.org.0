Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E42B1C1138
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1awbzn/XTihbcAxnsoPbnGuDr2xxLHYDcOsp/O7DDY=; b=LlC5sWfN19ZPAQ
	S825PJMbhIIPZYjM6iuAUAjCWk6m1BaHDIcouNeIgTKQCAgTSovgeJ/uudGerOhhpWaW0kJ6FsSbX
	EhHpm/UVNBpLSflyCes4d64CIY8yjKQGLBZOk+wyp0H9OopMQ3QXinGjWojaw18VmI7AgE/hJzvtv
	f/gc5cJfhyEJFrAu/8jtXIPJ9yYcNQBYaOZ74gXrWwOVG0PLh5ewOQ7ETfldyBDe9Dsvj/g344YjA
	nNSwriiaiIiDfayIur+QCgGS0Tfa254SqSit5Sm/2DJIbcWo62sPakzBzrMzvDtEGjKwVPm1KBGZx
	nx8XDjWKYFfkl74fY+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUTHp-00079T-4C; Fri, 01 May 2020 10:52:53 +0000
Received: from mail-eopbgr750087.outbound.protection.outlook.com
 ([40.107.75.87] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUTHi-000790-Rh
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:52:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfTQpHXkiDMUiExoWtLJm6Pvd34DxXUvyfunZnePYR7E4aLHzgakvxakPEYWoFyXc93uXrIVMSmzyK1K7JREG93hJ2ByuFGZKBTSCDv+QesfSwz9qv2PdUt2SIPsrcd1+LE+g211dTHFNwJsEfC1ktFUpNXqTnQ/njkMDMhFjYac1RR35X8LqBHSA5aR0web/mYg1rwVdhh+hQHsEczg2DfK3x+jQZx7ndwz3I0mKISnzBbUPUvC/HvrS55Cg/GSt8vdSr5ZmRkymTJt6P+SoSEB9C3btWtFE/yDOqVC9L0rHK+BBNLKavCm3lHp/6rKPt3Uv4kGgPFlyZuCUyxaTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Thw+s4qdYO8SQXU9N7HA0sRw/J0et2+3mdtKo82XHdw=;
 b=BFv/eeizNQXuOPJcBf95rjRYqirfcrPBlxVIfNhIXqIgIdlSn0QbrjrOyUEFQMQc8paBvtmmobfnHHKO45YvwwoYn91pOKXx8d5JUFnwN20j9VjuKtUYDsp1itSY5XIURjk/NEEaPO0bX0MGFEHArlq6e6i4vRosvOASi6R1Hzo6Lqu79h5BcIajUilxIISqNZifMaf1hhNGlb7gxrFPLK8P65K7oap+j0wwPTQZxx5h3eOZ5mEf3/j5oi2FIBpL7W3DGbL2SiHO+7f+KIDwtTK4S6Ekd2VWoBD/LsHVjBcfNHOJdHwmi4mTxk8FZrRardd+1rk4Mg74myVvcejOlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Thw+s4qdYO8SQXU9N7HA0sRw/J0et2+3mdtKo82XHdw=;
 b=djTYzpjjX2yKUVKNmAvMPTBhcnNnq6a/1zyDc2r/nxZaPCLPQCJ38jFvRXHLa89zzqQE7QJpAkgodl+dGPD5xt9a6rtYPsCbdREc0Lm9nJprPRvZqWJLn+cmr8iZNsgRt58cfPum/y2SGbsAjpBBSJSAB6ALlQ8fls2aphQWQRM=
Received: from DM5PR13CA0050.namprd13.prod.outlook.com (2603:10b6:3:117::12)
 by BN7PR02MB4131.namprd02.prod.outlook.com (2603:10b6:406:f6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.21; Fri, 1 May
 2020 10:52:44 +0000
Received: from CY1NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2603:10b6:3:117:cafe::d9) by DM5PR13CA0050.outlook.office365.com
 (2603:10b6:3:117::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.14 via Frontend
 Transport; Fri, 1 May 2020 10:52:44 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT032.mail.protection.outlook.com (10.152.75.184) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 1 May 2020 10:52:43
 +0000
Received: from [149.199.38.66] (port=50830 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1jUTHd-00005o-Rf; Fri, 01 May 2020 03:52:41 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1jUTHf-00043h-DE; Fri, 01 May 2020 03:52:43 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 041Aqep5019321; 
 Fri, 1 May 2020 03:52:40 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1jUTHc-00043E-NE; Fri, 01 May 2020 03:52:40 -0700
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: herbert@gondor.apana.org.au, davem@davemloft.net,
 gregkh@linuxfoundation.org, kalyani.akula@xilinx.com
Subject: [PATCH char-misc-next v2] crypto: xilinx: Handle AES PM API return
 status
Date: Fri,  1 May 2020 03:52:34 -0700
Message-Id: <1588330354-27942-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588328091-16368-1-git-send-email-rajan.vaja@xilinx.com>
References: <1588328091-16368-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(39860400002)(136003)(346002)(46966005)(81166007)(4326008)(70206006)(70586007)(186003)(26005)(36756003)(6666004)(7696005)(316002)(9786002)(426003)(336012)(5660300002)(47076004)(8936002)(356005)(82310400002)(82740400003)(2616005)(44832011)(2906002)(8676002)(107886003)(6636002)(478600001);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bad77a4-de7e-4653-5667-08d7edbdc6d5
X-MS-TrafficTypeDiagnostic: BN7PR02MB4131:
X-Microsoft-Antispam-PRVS: <BN7PR02MB41318C2BFD6D3D13B1CF25B3B7AB0@BN7PR02MB4131.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0390DB4BDA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L4+cXY+FA7xIty/vqSUUf8o1gueGiZnP53hQM6mbLi5NokBvXCASK70n/2hv3p4yvnu3WuvP8pmSyvl2XokzbpIbKBYRvoe3c3gwNcftG+MhxEGE6Pjtxcli058ZVAZS7LK/hTTngM+Y1dlhvlcKQeDCTXIBlGBcFNduiY7W9Xsgv8H3FNcWF5xDzuJBFTZebzOM4Dx8IY2MwY9PH4qeUMo1ySOMy+JmOzg9hO81ACnknPNlilNalT2Mb5f6J/dgFk1VeUAAE3a7oiIcRc2sSb1oajeGCsm7shN77C095ePhfZOQruSAmIIHi3Z2iBpvctXT4kdVwjGCR1rJ71VAXDAM9Tlj+nyMZKSBt4PcCTuakJgiCAWTErPB4o9vHL1djBpzWCpTseFLcOTUaIjz0gWeSxbmdL4QAtL+3plusD4FHgu5pYKLlLELwk76Vu6OWrZUDR+TgJdkbEnU5P0sswm9DH5H9uBnfVFbrA4p7SlSlrGg0jfUF1IC9TOWp5ZiPosaMvKVLzUPKRSD9gqKQw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 10:52:43.6586 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bad77a4-de7e-4653-5667-08d7edbdc6d5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_035246_896202_55A3DF13 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.75.87 listed in wl.mailspike.net]
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, linux-crypto@vger.kernel.org, jolly.shah@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Return value of AES PM API is not handled which may result in
unexpected value of "status" in zynqmp_pm_aes_engine().

Consider "status" value as valid only if AES PM API is successful.

Fixes: bc86f9c54616 ("firmware: xilinx: Remove eemi ops for aes engine")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
Changes in v2:
- Add fixes tag above s-o-b section
- Add reported-by
---
 drivers/crypto/xilinx/zynqmp-aes-gcm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/xilinx/zynqmp-aes-gcm.c b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
index d0a0daf..a27e3550 100644
--- a/drivers/crypto/xilinx/zynqmp-aes-gcm.c
+++ b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
@@ -85,6 +85,7 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 	dma_addr_t dma_addr_data, dma_addr_hw_req;
 	unsigned int data_size;
 	unsigned int status;
+	int ret;
 	size_t dma_size;
 	char *kbuf;
 	int err;
@@ -132,9 +133,12 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 		hwreq->key = 0;
 	}
 
-	zynqmp_pm_aes_engine(dma_addr_hw_req, &status);
+	ret = zynqmp_pm_aes_engine(dma_addr_hw_req, &status);
 
-	if (status) {
+	if (ret) {
+		dev_err(dev, "ERROR: AES PM API failed\n");
+		err = ret;
+	} else if (status) {
 		switch (status) {
 		case ZYNQMP_AES_GCM_TAG_MISMATCH_ERR:
 			dev_err(dev, "ERROR: Gcm Tag mismatch\n");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
