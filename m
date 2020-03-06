Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C476817C910
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eMBRfijv2Wrwt8miWd9gMfNPn2vSVz/8R1MBqAnyHo=; b=T8wu+aTntVXDY2
	X83l5aN0m0ybPZXCu6FkmVqUtxC3ddkOaJrOZMxBGwppAHtpaNhh2qX8KEidq7u6YWkfZ646Yqrjn
	D1OfTU7/Nkm7PsOyupt3FuSFFXylX1iGHy8zuxY0UJH3ExGPEliihUH+JGkyq0EYME8/E3fs1GmBu
	9V6ZG/IBUkL9Dn24uvY/2xXEnj4Ev7LKoQpiY9Mks/6qL8hCM/fWYDTTZ6ZgaCSMNq6+jfnqvLD6c
	woElNerJ3JLEPTp4s4+0ScHQSApjmOwq8M2uV194xfWjt7TcIbBnp2sEHhd0bGQVu7C6N5hz1bh6E
	l2Ke1r8scZJkW1ZuSDug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMl2-0001k2-Fb; Fri, 06 Mar 2020 23:51:56 +0000
Received: from mail-eopbgr760049.outbound.protection.outlook.com
 ([40.107.76.49] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhF-000603-JK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktnPhPWWSBd49TSf0LLXTkf1KPOAdNX1DuGEyFk6e3tuiMgeSCuJAe0PtjdsqH9Y4nMm+nuQ+/hPpMlA3+4+X9nyqVBbgxYILBFQPX+ZetRQWt1+VIYkO6QIsE8V9cNryj+FhalUpyaar3d4ObQHFp4Ee12tS7FETGZ3dzSo1D/ECvS8Qh3ei9laAw2S5SrISimhY8PHQZ+DBbncWj8nw46Zd1FEyHui3/SgeJAvXhtVWShzseoaT5NEfqGaZpw+C+ajoqOrJM9SttkcUcAD9tNFXp/UVJa7ssQ0ph/TT/pBMfDy6RtNyqAZMOHFkVNhwifBGQfbwe5uAo6bp+5uUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUQD+tVNM9/V+kSwZK0vxdBl2Ob+4YuCk29XxL+gH5g=;
 b=TR5vcAvJpUeLvLgGVEdKXeWsg0wo+6RFuwEP3WJBYCo/ZDeVkteBpYs2cPR7PYI7tBUXJRddnEB6QJNYwULhiGa7+qNrLSdU+n7uNcBzk3t1IkPuKcD1PyDrIiWrid6VT6OX6oUVF4QOZo5s8fQyS1CWGF44P4Z+6FmwXEl9+IMcDXhhpDwnGcr5oPzhJKbPuBMjSs86N8kHc5U2gTUCA6DbU/5HE3JT0HWMaQagscby5whaytcsRK0XYXjHYg7nANHOKY2WLTCxxbCv5dtggkedflOAsjHgvfhKaPI2ENOPGZwLomcTybaxpYtJWQWRFtvaf0hIVf7AbeKhfmIzmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eUQD+tVNM9/V+kSwZK0vxdBl2Ob+4YuCk29XxL+gH5g=;
 b=Lyl8oWNCF3lSI5uM8x5j0PmcXnvrn4hs1rIPnVH9fr3KYG9YGs68eRSRVXNbdVqE8whRG8arupYOqOnhFlY2qDK9LUDnChpoUTPUwDNnRV2Y3522aBezFSJYzidUAEIRXvXeJ75vW/TKoXK6PC3IEWFvk3/kktv9nDAwGfmul4Y=
Received: from SN4PR0601CA0018.namprd06.prod.outlook.com
 (2603:10b6:803:2f::28) by DM6PR02MB4777.namprd02.prod.outlook.com
 (2603:10b6:5:17::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from SN1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2f:cafe::39) by SN4PR0601CA0018.outlook.office365.com
 (2603:10b6:803:2f::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT028.mail.protection.outlook.com (10.152.72.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QM-TZ; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-QU; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NllQT002428; 
 Fri, 6 Mar 2020 15:47:47 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-Ul; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 22/24] firmware: xilinx: Add system shutdown API interface
Date: Fri,  6 Mar 2020 15:47:30 -0800
Message-Id: <1583538452-1992-23-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(199004)(189003)(186003)(5660300002)(70206006)(26005)(478600001)(336012)(70586007)(107886003)(7696005)(6636002)(2616005)(8676002)(8936002)(9786002)(81156014)(81166006)(54906003)(316002)(426003)(6666004)(4326008)(356004)(2906002)(36756003)(44832011)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4777; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3998ec2a-080c-44d1-5967-08d7c228cd45
X-MS-TrafficTypeDiagnostic: DM6PR02MB4777:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4777AFE47DE2471FF983031DB8E30@DM6PR02MB4777.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TkeylbjyAkkrsvozIPOyRNvFJlu0XoHZ7Tu4UqsqY/2ngCGwbHJif/+gJcYJcbid4jBPKe/06TuRGdoKUvRYdAhix7lJLPNEX5V8qdl5/aCEdEOVUXALcm5pYEa2UEX4FOngK7BpwV4jRv5Bo9XdWFb3ArQxzHwjyV+DnTR5e49VPMQq3wurBbQFgNlc6/s6HZt54AkST3+plmrf3goS32OCLHXGQbuqjNpamOYcwEEFvUQEW3pdKvLyk2DxWxPGXxAp9zgO/Yn/oFOGe0yvMquNSV0kz09SzlmiC8DW1F8DXySXKxTONnGdW3FKW0bNCcXz1GgfxRMw5LZ0vgL6s7RLKeHtSqRdn6SKmy0h9cF9D7lVtIGb4sSWLrpKd4rQs7cpXOuIeqTzwaw5+7mwlGlXS8fEYcDd5K+Ave8hMSRNmhlDGdRUes5aJ9zARYer
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:59.3448 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3998ec2a-080c-44d1-5967-08d7c228cd45
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4777
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154801_636280_87A3441C 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jolly Shah <jollys@xilinx.com>, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add system shutdown API interface which asks firmware to
perform system shutdown/restart.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jollys@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 13 +++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  4 +++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index f671b6b..d3f637b 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -834,6 +834,19 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 EXPORT_SYMBOL_GPL(zynqmp_pm_set_requirement);
 
 /**
+ * zynqmp_pm_system_shutdown - PM call to request a system shutdown or restart
+ * @type:	Shutdown or restart? 0 for shutdown, 1 for restart
+ * @subtype:	Specifies which system should be restarted or shut down
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
+{
+	return zynqmp_pm_invoke_fn(PM_SYSTEM_SHUTDOWN, type, subtype,
+				   0, 0, NULL);
+}
+
+/**
  * ggs_show - Show global general storage (ggs) sysfs attribute
  * @device: Device structure
  * @attr: Device attribute structure
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 8ccaa39..13b9fdb 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -66,7 +66,8 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
-	PM_REQUEST_NODE = 13,
+	PM_SYSTEM_SHUTDOWN = 12,
+	PM_REQUEST_NODE,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
 	PM_RESET_ASSERT = 17,
@@ -327,6 +328,7 @@ int zynqmp_pm_write_ggs(u32 index, u32 value);
 int zynqmp_pm_read_ggs(u32 index, u32 *value);
 int zynqmp_pm_write_pggs(u32 index, u32 value);
 int zynqmp_pm_read_pggs(u32 index, u32 *value);
+int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
