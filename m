Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6476215D2A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:16:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5cJ6/lwWMlzPBsw6rs/aM2p4tArV25XrDopw3p4ON8=; b=J/jatkH8btEi5H
	yfCTgulLzt9LiLspK8c2oPp0F8uwmgB+bkz3dKphe8M4S9j4jGXhxYKzvT7x4ia6+gPUD/0nG6ZVi
	hzcOo98OnF6gyxJhKQrfU7L3/QKfBx0QHLW9od8ER3YXnQvQAzgUsgpI3xJy+LKykpotsJN+/8zlR
	ZhjuweOZ/KIJSyf0OcidX1SbTpnog4PLUJEzMKWPYDqk57U210NQV8YySol+R00Gxjr9P621jdnls
	xUQmggnckWdBxcmnfFwQY7hHxhYmPIR6XjFbeA23039jP+oyGj8aHipvH8+VecldSF6vkAryyAVYB
	2xfrynTQxe09oSvLrXmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VD6-0005cg-Qx; Fri, 14 Feb 2020 07:16:24 +0000
Received: from mail-eopbgr760071.outbound.protection.outlook.com
 ([40.107.76.71] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VCh-0005Tu-05
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:16:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1aYfVsko3uX0udqQUZotmltR1Jt0zQTvzG370MbN1LqBOTCGg6ZZealDavWAsx0UbhKDII/zHirM/qMfMmFJ/4Fb7AjX8s2OnloRgVfGS3Tfu8FNeiBC/7II9D+1R3AeUtt8sgHANrvw/u2uqzD/0IPKfnet/WFfEHCeUof8TPRVc3lcLLvBclHCPySE5w7lSVpXRyL9DKelCz7P5TGSvu/LFZ92AGMtOWg3/K6NYF92YEUHad62ivB1eFJlNcZTr7h/o/tf+WAVLi41pojzhEHGqae34hpRGoDVrc3Pel+g0iREfnDRM2LrYbnUvt4OyplO5Q5Oo05qfzab6J1gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXsWs/NILqtvJmeQDIZn/NpG5VHTbcjJu0sEZpembgI=;
 b=R+hEogSlvJdaDLnj0U20LRa5yt+B3dw2gg6qGbJ6L4bUxWWnU1Siw5K6i3eUK/RC7QwLRGxGcdVbHTIPKW4JLl2XxGuT/OeaWmsNgf22nqY8SrkvnCZvBA79IWuVb3nYJlQtirlBn8yWrXWkShaZkLZUPFH2WP8A3y5QXh9wu98ZTdjfTbKASq3KtA2v2EXQnlFTlZhe6PX2arjhft/FfHYLeCfa+5rz8k0iLa9H+IdWTREA7M3kYZT74DCQ6+qvA4/nrYXSyX37njXCTAxcsoE55CnoVNPpqfzOjQb5ojV+zsv0G5wPoD+j9+cWayh7Dyr2uSoG/eyRNv18ir1aLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXsWs/NILqtvJmeQDIZn/NpG5VHTbcjJu0sEZpembgI=;
 b=Jm9J6wnElYaNazJgHrl8MuOhOKuqZDb3/GZ8sBOFozXh3nb15K+zM4+ywZe0qIuROrOqT07VUnnDPJCD5nwB/daqAHplqqhwRKo+xFhd+tn9NrycCSdCCYQQ75djt/ySitE0ruJkfFgJGgiwUOYZSNS78h65PwgC7fnICDjrJyY=
Received: from BN6PR02CA0042.namprd02.prod.outlook.com (2603:10b6:404:5f::28)
 by MWHPR02MB2528.namprd02.prod.outlook.com (2603:10b6:300:40::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Fri, 14 Feb
 2020 07:15:54 +0000
Received: from BL2NAM02FT014.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by BN6PR02CA0042.outlook.office365.com
 (2603:10b6:404:5f::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend
 Transport; Fri, 14 Feb 2020 07:15:54 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT014.mail.protection.outlook.com (10.152.76.154) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Fri, 14 Feb 2020 07:15:53 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCb-0006Ek-Cn; Thu, 13 Feb 2020 23:15:53 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCW-0000Q7-9Y; Thu, 13 Feb 2020 23:15:48 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01E7FkZ3015550; 
 Thu, 13 Feb 2020 23:15:46 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j2VCU-0000OQ-6q; Thu, 13 Feb 2020 23:15:46 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V2 2/7] dt-bindings: gpio: Add binding for Versal gpio
Date: Fri, 14 Feb 2020 12:45:32 +0530
Message-Id: <1581664537-14386-3-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1581664537-14386-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(396003)(189003)(199004)(81156014)(81166006)(4326008)(26005)(5660300002)(8676002)(107886003)(44832011)(478600001)(186003)(6636002)(426003)(316002)(2616005)(9786002)(7696005)(8936002)(356004)(70206006)(70586007)(2906002)(36756003)(6666004)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2528; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 565e7657-1d55-4f28-cca8-08d7b11dbabf
X-MS-TrafficTypeDiagnostic: MWHPR02MB2528:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2528405AE4E5B9F459F2524BAF150@MWHPR02MB2528.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 03137AC81E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4+e8gbpEoZ+cSblxR51aG3sGvDy3s+OQszyvCxctGBcT3gMrpOMmPlJAp5AHA1iXdlelvzncNMi52ocg1cld2PvNVdr8LQ4N8yQhgZiQs170wcu3MYsPn4x3TBvgiL7Dyov7JpacAcP1CVz8hiyKeHkhb9y/LTvffqe657sSb411IrozhoSkpL7uu4ji9NPDonxKnNw9UMVt+A34/x0G5ZOAXKUM7dItLbWF8uj2r2B+SnP97ep1fuKmmoMqhSq8iyARLTaTr5bnh078u9Fx1pmj0dRci8K0okJMrJhhP4V2xzylZMAB78S/XlE4f1X2lvbg2/TfKim39vuJgIChykec7ycptuuodgk3XioKvZsuqX5MJA0T32RNcrT+zEpo1R+O4dYnroAeyS6tCgyU9QxCScmjSu3aAGCSjfMZbsXXqa53Hgwk44rAsAIFSDpd
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2020 07:15:53.9784 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 565e7657-1d55-4f28-cca8-08d7b11dbabf
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_231559_046261_5074BFFA 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.71 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Add binding for Versal binding.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 Documentation/devicetree/bindings/gpio/gpio-zynq.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
index 4fa4eb5507cd..4806d846c0fc 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
@@ -6,7 +6,8 @@ Required properties:
 			  - First cell is the GPIO line number
 			  - Second cell is used to specify optional
 			    parameters (unused)
-- compatible		: Should be "xlnx,zynq-gpio-1.0" or "xlnx,zynqmp-gpio-1.0"
+- compatible		: Should be "xlnx,zynq-gpio-1.0" or
+			  "xlnx,zynqmp-gpio-1.0" or "xlnx,versal-gpio-1.0
 - clocks		: Clock specifier (see clock bindings for details)
 - gpio-controller	: Marks the device node as a GPIO controller.
 - interrupts		: Interrupt specifier (see interrupt bindings for
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
