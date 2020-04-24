Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B151B7CF6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j3Qiu7QnNYzce95GtLVX6/QtJO+a13oeKRDSwi8aCoc=; b=OXNjPtVdNUloRE
	U6Ow7Gwy0ux8Fdx0YD+eiIr7S29kRISoZCbAtKxFffzEetbfZQU7lagxS8cSfaEjg8wMQMdKWQyYY
	uLpA+dRs3pGjfeNF+qPFXIr8lPC9DckV0Z7rw0vZLmvdrdUobZsdPk2vLVBqUnZ/CdgsWkufL+k13
	MYyBmBffM8G3kpNYpwqV2PeSuNh1xxZ4UVfe99sbF5z0Rn4F2fML/Ofo9cNtJ4ZCwb12Mv3lAT5mI
	RQ70BRDzz6LGtK/e7QV/Ji3oFibv3J61LMfwqqyGltWHfSGCxRDwt/11WTGtwkvRnu1vemKK3DQA0
	VBemAvHvY2vt0k8if4lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2Fg-0005r9-Qv; Fri, 24 Apr 2020 17:36:36 +0000
Received: from mail-eopbgr690055.outbound.protection.outlook.com
 ([40.107.69.55] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2FV-0005op-R7
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:36:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B7dbZBQHhFzMHMfSSHZsn4kiJuwuNP5H8Xt0qAlOCp1FBljxrIuTYoTcIsmfHPIm4W+fwzsOLfzw5UyjO54Ah6MWfQZ1sF1xu8nVV5lK1gRz90Q9zHq5DZwAp1+APUGH5XNYw/rwdipEyJTxfPzyYHrA3chD5d324la7Y0T+0Imet9HRTP8M04C/xRHVmZk07seHKUZrNHhI/2X76NK3C+ZetpShXftvwTJbj/K8HFQk2f7diTGcaFZvtjyGOX2ojIEGosOO7WjLFGayYaZ856BMwaDRWFeJUamVQNNVfgeDlegbNkMYnuVMt45VnhMEnhjOyeNc7XBxkmGVAJ2ztQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+BBhENEpjBWRCEOm+f5v8aMtKGqbcGJ/p2rT+v9Dkms=;
 b=Rf/DZ8pWhpx0N/NUCXV8SlvARGQVcVpQtVR0KxWZmwq5tr65MpggzihzKcT6c+M16G7t/eLlxbF3WsQDl/1Uts80/hf+vpYypTrvCvGzRZpdzOPxjbKjgX3XkvrF5B8rD58vRFRmkpwOKwGksN/7IhYPbAcq0Lm+jeScKs6+JPlKqAiylwfvxuYXwZG3TaOP79D1fbZIEp6ir1l140WwBRR9Q2WsGFtGPWTuwDYssYSg840rE206TYJggRhTKpi3LfZUTnGm/CkTtMhBvaWpmYly04rpS3icFs0oVhkXMijeCdkUVZUjnp/xD4vsMbsZsCjb1Mb9Y24TpHU4MyrrIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+BBhENEpjBWRCEOm+f5v8aMtKGqbcGJ/p2rT+v9Dkms=;
 b=C4GOXAvBd4aU6uknAm0CKBVw+cD7cqhQKGmBhK0jFpydRnsMP+1OOTAJVUvXf2UaRhO6opsXIltxZEXkPOFpni8mHjj7ptl91BrmS/BJb9VE0pA0IlTDxNPI58pdE4KzDB9b0Rjha8Yyge86ORNnr7axBi5mLoDr683WHc4s4jc=
Received: from CY4PR18CA0029.namprd18.prod.outlook.com (2603:10b6:903:9a::15)
 by SN6PR02MB5229.namprd02.prod.outlook.com (2603:10b6:805:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 17:36:23 +0000
Received: from CY1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:9a:cafe::8f) by CY4PR18CA0029.outlook.office365.com
 (2603:10b6:903:9a::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 17:36:23 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT028.mail.protection.outlook.com (10.152.75.132) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 17:36:22
 +0000
Received: from [149.199.38.66] (port=41733 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2EJ-0005BQ-P7; Fri, 24 Apr 2020 10:35:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FS-0006l0-Al; Fri, 24 Apr 2020 10:36:22 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OHaAAX026362; 
 Fri, 24 Apr 2020 10:36:11 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FG-0006h9-Q2; Fri, 24 Apr 2020 10:36:10 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 0/5] remoteproc: Add zynqmp_r5 driver
Date: Fri, 24 Apr 2020 10:36:05 -0700
Message-Id: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(46966005)(81166007)(82740400003)(7696005)(186003)(336012)(2616005)(8936002)(4326008)(81156014)(8676002)(44832011)(9786002)(82310400002)(70206006)(70586007)(5660300002)(316002)(478600001)(2906002)(47076004)(26005)(6666004)(426003)(36756003)(356005);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39f19d1f-671d-49f2-3310-08d7e876018f
X-MS-TrafficTypeDiagnostic: SN6PR02MB5229:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5229959D51799DF60115D656B5D00@SN6PR02MB5229.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FiKWFyU5hVmE8jyV3k57NUT0Tj5bzl0b5w7loXFRuIDK30NvY3fzTp8iLFGnmSBpCUBA0a8G3ddPQiUMefD1NPEjB2RybG0iWPAdc47a422lRVeM2A4NS6CadsN74WFgA/im9L8rLhbkrkB5Ae/WmghHHQnZMt+ef+Pi32BZS5tOmcnKRcDMs/Kn/mDTvgZvgwB0R2iroGeIwd96OpEn1TQmqtV5Hbtj4C8oH9f90isA05Z+GkzW96CS7VgOUBDf3iqzXaYQgk3kSMQo71d6E86WL4u60IL2ZMuVhsxghx+vnlZn2WPpLYg0qtM79aYejy7e3U2qJP2yMNlXEe5a+r3/2DEfeeLjgXVq9usRuMnHVuLMp1yUEGjvkYFMWbOZ69Ia9Zi9JlfQjsCwPFFkxs6TDEdJO4UGn1HmemPnWEN4nk6/9zubYPMNgcMIB3+EXGtKQBXC/dJ6DpSNkn7E8Oed9ln2DSoWpi1vcgxB8eRCBdP4YHPW0urfBYsilZtpDix9fq/PgDyT/4Lb95wMxg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 17:36:22.6031 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 39f19d1f-671d-49f2-3310-08d7e876018f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103625_878875_B796944D 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.69.55 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide basic driver to control Arm R5  co-processor found on
Xilinx ZynqMP UltraScale+ and Versal MPSoC's.

Currently it is able to start, stop and load elf on to the
processor.

The driver was tested on Xilinx ZynqMP and Versal.

Changes since v1:
- remove domain struct as per review from Mathieu
Changes since v2:
- add xilinx-related platform mgmt fn's instead of wrapping around
  function pointer in xilinx eemi ops struct
- update zynqmp_r5 yaml parsing to not raise warnings for extra
  information in children of R5 node. The warning "node has a unit
  name, but no reg or ranges property" will still be raised though 
  as this particular node is needed to describe the
  '#address-cells' and '#size-cells' information.
changes since v3:
- add default values for enums
- fix formatting as per checkpatch.pl --strict. Note that 1 warning and 1 check
  are still raised as each is due to fixing the warning results in that
particular line going over 80 characters.
- remove warning '/example-0/rpu@ff9a0000/r5@0: 
  node has a unit name, but no reg or ranges property'
  by adding reg to r5 node.


Ben Levinsky (5):
  firmware: xilinx: Add ZynqMP firmware ioctl enums for RPU
    configuration.
  firmware: xilinx: Add shutdown/wakeup APIs
  firmware: xilinx: Add RPU configuration APIs
  dt-bindings: remoteproc: Add documentation for ZynqMP R5 rproc
    bindings
  remoteproc: Add initial zynqmp R5 remoteproc driver

 .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 126 +++
 drivers/firmware/xilinx/zynqmp.c                   | 134 +++
 drivers/remoteproc/Kconfig                         |  10 +
 drivers/remoteproc/Makefile                        |   1 +
 drivers/remoteproc/zynqmp_r5_remoteproc.c          | 902 +++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |  75 ++
 6 files changed, 1248 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
 create mode 100644 drivers/remoteproc/zynqmp_r5_remoteproc.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
