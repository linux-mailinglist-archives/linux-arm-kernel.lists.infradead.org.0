Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B20120515
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzAdey8kqhuD10aSpPLB+qp3uJyTUL5G/1rH2qhu06c=; b=MIYEbFmu8CK401
	dhRvNabM3BRLLWqnx8LacMSmcC4cdn5UucS+D5SLH4JLZCeQNWkqwHI2fzaWNoNPJWOYq9/Cg18Nc
	/Sd4Is2UnABPz1Rv3Sp6pP9lF+tnJOMPsLr4O2LvQc5Y5TmmNTTSr5ou5r4dKru+An+CrHECsndwp
	5XfXRywBefuuOaJkJlMD8latOxw4V9rfSSKN7Uv57OPdRiNk9i0AcTPbtal3EsEbC6PWBmH6txILa
	OtvQASyLxrPzCzair5rSxauiplDPyzh51iqqbCxFkYwDDxZwhSPFoaZqAy3tMuIr0uymZtwPRIWS9
	SfAC6ZLs48tVyHpytAyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpCq-0007Os-DP; Mon, 16 Dec 2019 12:10:32 +0000
Received: from mail-dm6nam10on2082.outbound.protection.outlook.com
 ([40.107.93.82] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpCU-0006J5-Nw
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:10:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/YH2Veu6UGUtAX8ACSiMrlx0mlHN1XNlmlw5LoScJEtkpAkkdccHi0pITuRK3woPKd8Go0Zj//dVoOzGi2L0SD578qgaeTPTuvPUqHUN77lk6QLHraDeJ8Ekoud8T34qvA3xfF7PQ/naWORXOxapwPLMkheCCgoUBc9YVtnPvqBLXKcoBQx/Y+zirnsTCb/phEtzWzaIdF6dVRfsvu/2g89t9kRy0M1lMDeZsd4xRb3E3kzpFek/3AVvVzPoQYqqRx1BHJWah9rEqWyNZhRtGEu6xu5vb5tbKp+gAaciGDlXsU5huOvhZqYKoT4XEFZJI0jBA+1Du68EEVZPYRl2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3ezAtLSe9xP2+5D7r3cbNGC2JMI4J2cfvyH5CBsgZE=;
 b=OUeuLq3QRslnGPQUxxkVlh8gt+8pFAEw9+ClLzsSOFda0SRYa4VaXD6YCbkmtlyCt2Z4cmXy8i3xc/G/izenT5u5WEODeqPfYfLAOdSccyGTbTKmtRLfUvPD0HwsK8RecsxfuURvDe5yhxzz5O8EEPiXqe9EKSRMuqVPcG5FHXIx3hnOAzG4dk5CytnY1gVkGM9JBAN+KaBx0x6ZPM+p+4hkdK9lPxuO8omPAltPEXbWQDr3MCCdC/cRrtdr40o7HvcdjirZiwTgmQe4Kdy22okumirrAc3gZP+PPX42R3/hq2uSTN+uARowsHUFKSHd6D8uj9sI1dFZjpaqhqfT8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b3ezAtLSe9xP2+5D7r3cbNGC2JMI4J2cfvyH5CBsgZE=;
 b=pJQpxhAo5G6Sf8pVjYicHkyJ5nf9ydXv9w7SVW4j9k0JMNq/MpSxkvuOplCNnELOWhKL4NQImIi8Tn4ErEoQiGgSQir+AKEoFNkk1NY5WHm+BbZb3VEe7zTaJBsWDIQzKF8C5uGO0z+T3tdr/DWBfzK8oLjbYpKi5UbRO1N9uaM=
Received: from CY4PR18CA0042.namprd18.prod.outlook.com (2603:10b6:903:9a::28)
 by CY4PR02MB2293.namprd02.prod.outlook.com (2603:10b6:903:e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.16; Mon, 16 Dec
 2019 12:10:04 +0000
Received: from CY1NAM02FT045.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:9a:cafe::9) by CY4PR18CA0042.outlook.office365.com
 (2603:10b6:903:9a::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15 via Frontend
 Transport; Mon, 16 Dec 2019 12:10:04 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT045.mail.protection.outlook.com (10.152.75.111) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Mon, 16 Dec 2019 12:10:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAz-0001l8-CK; Mon, 16 Dec 2019 04:08:37 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAt-0000wi-KB; Mon, 16 Dec 2019 04:08:31 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBGC8U55024882; 
 Mon, 16 Dec 2019 04:08:30 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAs-0000wL-AP; Mon, 16 Dec 2019 04:08:30 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 860A01053CD; Mon, 16 Dec 2019 17:38:29 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next 1/3] net: emaclite: Fix coding style
Date: Mon, 16 Dec 2019 17:38:08 +0530
Message-Id: <1576498090-1277-2-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--2.380-7.0-31-1
X-imss-scan-details: No--2.380-7.0-31-1;No--2.380-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(376002)(396003)(428003)(249900001)(199004)(189003)(6266002)(70206006)(5660300002)(81166006)(2616005)(316002)(42882007)(8936002)(107886003)(498600001)(336012)(6636002)(42186006)(8676002)(81156014)(2906002)(36756003)(6666004)(356004)(26005)(70586007)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2293; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; A:0; MX:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6a1ae95-ee57-47f1-ba82-08d78220e23e
X-MS-TrafficTypeDiagnostic: CY4PR02MB2293:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2293BC56DBD622C81BD84098D5510@CY4PR02MB2293.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 02530BD3AA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6n0BOncQ+o/X0tCg+LDbKTuhqkBF/8ADYmSd+lON6vjmosfH7UPBfROpiREyFG2ToQL/kSiXBIwFaYq0mWnorG6tiuX3UOJVspYaTDUd41l7927c9zhdfp2ZTR95opqCv29/nJhJysuYutuJtYptsHQ0fgQxYmgfvAhBNV+35txTu8MrNN2IWfkOt50T0y3AhDQ4UfnVK4frlkXPjGNvXlxiraqd+phdXtTEFgGFFh/zctnjobw5RDaLxNX/0PJtbRoR0qCv6jDXSk5d57e2Xg86R4NeXRByusSpBI5TSFHF6zcG4SXUtvMmbxbA1JO7kDnbhFLmGytZkLsUVDQrtt8R6AT7x0G+yrgYbUB8bYHodeLTfA5HH1mUjEcxosck/bjWIaXTtp2IrdkxDC0OO9dsmRQZXyjWkXQ9/Ddt/mwD0nAD4d1IC2nCREzW3ugh
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2019 12:10:04.0799 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6a1ae95-ee57-47f1-ba82-08d78220e23e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_041010_795029_B82A92D3 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make coding style changes to fix checkpatch script warnings.
There is no functional change. Fixes below check and warnings-

CHECK: Blank lines aren't necessary after an open brace '{'
CHECK: spinlock_t definition without comment
CHECK: Please don't use multiple blank lines
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
CHECK: braces {} should be used on all arms of this statement
CHECK: Unbalanced braces around else statement
CHECK: Alignment should match open parenthesis
WARNING: Missing a blank line after declarations

Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
---
 drivers/net/ethernet/xilinx/xilinx_emaclite.c | 35 ++++++++++++---------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_emaclite.c b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
index 0c26f5b..4aa6752 100644
--- a/drivers/net/ethernet/xilinx/xilinx_emaclite.c
+++ b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Xilinx EmacLite Linux driver for the Xilinx Ethernet MAC Lite device.
+/* Xilinx EmacLite Linux driver for the Xilinx Ethernet MAC Lite device.
  *
  * This is a new flat driver which is based on the original emac_lite
  * driver from John Williams <john.williams@xilinx.com>.
@@ -91,8 +90,6 @@
 #define XEL_ARP_PACKET_SIZE		28	/* Max ARP packet size */
 #define XEL_HEADER_IP_LENGTH_OFFSET	16	/* IP Length Offset */
 
-
-
 #define TX_TIMEOUT		(60 * HZ)	/* Tx timeout is 60 seconds. */
 #define ALIGNMENT		4
 
@@ -124,7 +121,6 @@
  * @last_link:		last link status
  */
 struct net_local {
-
 	struct net_device *ndev;
 
 	bool tx_ping_pong;
@@ -133,7 +129,7 @@ struct net_local {
 	u32 next_rx_buf_to_use;
 	void __iomem *base_addr;
 
-	spinlock_t reset_lock;
+	spinlock_t reset_lock; /* lock used for synchronization */
 	struct sk_buff *deferred_skb;
 
 	struct phy_device *phy_dev;
@@ -144,7 +140,6 @@ struct net_local {
 	int last_link;
 };
 
-
 /*************************/
 /* EmacLite driver calls */
 /*************************/
@@ -207,7 +202,7 @@ static void xemaclite_disable_interrupts(struct net_local *drvdata)
  * address in the EmacLite device.
  */
 static void xemaclite_aligned_write(void *src_ptr, u32 *dest_ptr,
-				    unsigned length)
+				    unsigned int length)
 {
 	u32 align_buffer;
 	u32 *to_u32_ptr;
@@ -264,7 +259,7 @@ static void xemaclite_aligned_write(void *src_ptr, u32 *dest_ptr,
  * to a 16-bit aligned buffer.
  */
 static void xemaclite_aligned_read(u32 *src_ptr, u8 *dest_ptr,
-				   unsigned length)
+				   unsigned int length)
 {
 	u16 *to_u16_ptr, *from_u16_ptr;
 	u32 *from_u32_ptr;
@@ -329,7 +324,6 @@ static int xemaclite_send_data(struct net_local *drvdata, u8 *data,
 	reg_data = xemaclite_readl(addr + XEL_TSR_OFFSET);
 	if ((reg_data & (XEL_TSR_XMIT_BUSY_MASK |
 	     XEL_TSR_XMIT_ACTIVE_MASK)) == 0) {
-
 		/* Switch to next buffer if configured */
 		if (drvdata->tx_ping_pong != 0)
 			drvdata->next_tx_buf_to_use ^= XEL_BUFFER_OFFSET;
@@ -345,8 +339,9 @@ static int xemaclite_send_data(struct net_local *drvdata, u8 *data,
 		if ((reg_data & (XEL_TSR_XMIT_BUSY_MASK |
 		     XEL_TSR_XMIT_ACTIVE_MASK)) != 0)
 			return -1; /* Buffers were full, return failure */
-	} else
+	} else {
 		return -1; /* Buffer was full, return failure */
+	}
 
 	/* Write the frame to the buffer */
 	xemaclite_aligned_write(data, (u32 __force *)addr, byte_count);
@@ -421,7 +416,6 @@ static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
 	 * or an IP packet or an ARP packet
 	 */
 	if (proto_type > ETH_DATA_LEN) {
-
 		if (proto_type == ETH_P_IP) {
 			length = ((ntohl(xemaclite_readl(addr +
 					XEL_HEADER_IP_LENGTH_OFFSET +
@@ -431,23 +425,25 @@ static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
 			length = min_t(u16, length, ETH_DATA_LEN);
 			length += ETH_HLEN + ETH_FCS_LEN;
 
-		} else if (proto_type == ETH_P_ARP)
+		} else if (proto_type == ETH_P_ARP) {
 			length = XEL_ARP_PACKET_SIZE + ETH_HLEN + ETH_FCS_LEN;
-		else
+		} else {
 			/* Field contains type other than IP or ARP, use max
 			 * frame size and let user parse it
 			 */
 			length = ETH_FRAME_LEN + ETH_FCS_LEN;
-	} else
+		}
+	} else {
 		/* Use the length in the frame, plus the header and trailer */
 		length = proto_type + ETH_HLEN + ETH_FCS_LEN;
+	}
 
 	if (WARN_ON(length > maxlen))
 		length = maxlen;
 
 	/* Read from the EmacLite device */
 	xemaclite_aligned_read((u32 __force *)(addr + XEL_RXBUFF_OFFSET),
-				data, length);
+			       data, length);
 
 	/* Acknowledge the frame */
 	reg_data = xemaclite_readl(addr + XEL_RSR_OFFSET);
@@ -668,8 +664,7 @@ static irqreturn_t xemaclite_interrupt(int irq, void *dev_id)
 	/* Check if the Transmission for the first buffer is completed */
 	tx_status = xemaclite_readl(base_addr + XEL_TSR_OFFSET);
 	if (((tx_status & XEL_TSR_XMIT_BUSY_MASK) == 0) &&
-		(tx_status & XEL_TSR_XMIT_ACTIVE_MASK) != 0) {
-
+	    (tx_status & XEL_TSR_XMIT_ACTIVE_MASK) != 0) {
 		tx_status &= ~XEL_TSR_XMIT_ACTIVE_MASK;
 		xemaclite_writel(tx_status, base_addr + XEL_TSR_OFFSET);
 
@@ -679,8 +674,7 @@ static irqreturn_t xemaclite_interrupt(int irq, void *dev_id)
 	/* Check if the Transmission for the second buffer is completed */
 	tx_status = xemaclite_readl(base_addr + XEL_BUFFER_OFFSET + XEL_TSR_OFFSET);
 	if (((tx_status & XEL_TSR_XMIT_BUSY_MASK) == 0) &&
-		(tx_status & XEL_TSR_XMIT_ACTIVE_MASK) != 0) {
-
+	    (tx_status & XEL_TSR_XMIT_ACTIVE_MASK) != 0) {
 		tx_status &= ~XEL_TSR_XMIT_ACTIVE_MASK;
 		xemaclite_writel(tx_status, base_addr + XEL_BUFFER_OFFSET +
 				 XEL_TSR_OFFSET);
@@ -837,6 +831,7 @@ static int xemaclite_mdio_setup(struct net_local *lp, struct device *dev)
 	of_address_to_resource(npp, 0, &res);
 	if (lp->ndev->mem_start != res.start) {
 		struct phy_device *phydev;
+
 		phydev = of_phy_find_device(lp->phy_node);
 		if (!phydev)
 			dev_info(dev,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
