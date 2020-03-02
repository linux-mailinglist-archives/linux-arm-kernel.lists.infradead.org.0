Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEA0176661
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfdTxOPf1cU0a1Xj0cvym3qFzbXBPncIH60LoXrvLH0=; b=lPCrEg3m286hwN
	kSzhXvTKckUJcyeNc7/MR2TFuN6QxW4RIxjEtzLSDSiO3/ApoHYfwm3aV/UlnFPz6GbnsCSbxtuj9
	DmO37md1dNSFFwWAahTe4/TwOo9TPRfT4j0YRszR5QwhZtAkDl+4iiUPwo4jQp+PcSZIVYvkaHAlm
	PO2+4Q8DwHQyw+VWheQx4wc5OKBUo/2sdIp1ehChBdNO6b7JYl1nsjaI+AV++7cXK5GPeAPiy71u2
	H8zX7QStcf4LFFD5x4uC0nfDyFmtMf7fbOVf2ZdhDwm1MHNV29m/t0LXPp6KVhu0Cn+ZJ5kg8RCFi
	nl56YmiTSVZwP3UMyraA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sy3-0006zD-UH; Mon, 02 Mar 2020 21:51:16 +0000
Received: from mail-mw2nam12on2080.outbound.protection.outlook.com
 ([40.107.244.80] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sxu-0006y4-SB
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:51:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oOZq6tTRqiBdP+y9eiYIGjybgFYZbzNQZV+Qt/holNV0LhiVK1Ba0+QQhC5kT9z1rVUkpUI2l0Unj1c9eF3Jm9yz9tFtks2+rBiw35rfFgTJ8twKzDK6syDKs9Ze4C/PuVinGUF15aUfW7Y0kzTRhOwz/eHGs0nDzHZzRbSQaFg8nxiPn9+vRn3MwXPZ/lb9DagFQ9sJOiKKdbwvRuBf/rw+CwKjEN0mGUk3ZVb3MA8doxw9dld0MgLf9NrpeiY4e1Ay7zp4DUBBlT6lQ8L25hUMnpR475W1sqCMrd3/sPltAmFBHcXGvKO0K5/bv9C+kXkaqizV9PQyusRLTQVEgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/xVlYc/R+TRQOYmwrrZgcBT+Cj5ANkycUcVaN5jcRg=;
 b=S1Bk+4vBeOqvM5lEIebaS5f2y6gXZjoWiz+ptsjPjAvh5C1YPtwsFFHShZ4QyB/NR7e4hN5lP2kD6eMS1FjV7WZUfiFvMEY+gpjvW/uSQhUcRHGnzOmRBe+C4fWB4owr8NjzxAezSFGpfDUWZadYCgXi6PTvU5C9ablm9AOztOOUfrDCQpifAuTXDEE6y8RQmRP5jj6YSEImGZStJRa9hy4V4N3tWw2spTuDV9fiiASfSTSXjsBUSPXQzd+0YGK14tRr+WSwyOA/F+6LhRV6vCPd7KldtLXDK+eNYW+c/bLtKLfY2jSSuYadol7j/FS9cwwr8tI5BP8TnsLOkCGOMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3/xVlYc/R+TRQOYmwrrZgcBT+Cj5ANkycUcVaN5jcRg=;
 b=Y1b1dIR7GetVB9CE9bFytF3WS51jekDqI+ymSX3dHwijiOycHuAdqNL2kTG4wVhurhhLM9r1AbcyHVf71sfEoUmbTpAlc3lJMZz3uNHvuTMbTaoMnaehjhvpRl3aXxqTO2Iuv4gi6HUAPyC3dJs+e1tWDNiEVKE3Gg/D+ZP98lg=
Received: from CY4PR21CA0022.namprd21.prod.outlook.com (2603:10b6:903:dd::32)
 by DM5PR0201MB3607.namprd02.prod.outlook.com (2603:10b6:4:77::37)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.19; Mon, 2 Mar
 2020 21:51:05 +0000
Received: from CY1NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:dd:cafe::74) by CY4PR21CA0022.outlook.office365.com
 (2603:10b6:903:dd::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.2 via Frontend
 Transport; Mon, 2 Mar 2020 21:51:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT032.mail.protection.outlook.com (10.152.75.184) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.15
 via Frontend Transport; Mon, 2 Mar 2020 21:51:04 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sxr-00022Y-RF; Mon, 02 Mar 2020 13:51:03 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sxm-0005jv-OF; Mon, 02 Mar 2020 13:50:58 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022Lops6009838; 
 Mon, 2 Mar 2020 13:50:51 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8sxf-0005fm-JR; Mon, 02 Mar 2020 13:50:51 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@kernel.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH v2 1/4] drivers: clk: zynqmp: Limit bestdiv with maxdiv
Date: Mon,  2 Mar 2020 13:50:40 -0800
Message-Id: <1583185843-20707-2-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(346002)(199004)(189003)(107886003)(336012)(5660300002)(2906002)(356004)(6666004)(4744005)(316002)(70206006)(44832011)(8936002)(426003)(478600001)(36756003)(9786002)(70586007)(81156014)(81166006)(8676002)(7696005)(186003)(26005)(54906003)(2616005)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0201MB3607; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 95ac7238-35b9-413c-85c1-08d7bef3ce99
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3607:
X-Microsoft-Antispam-PRVS: <DM5PR0201MB3607A8F4077ADBFDE19ED1D5B8E70@DM5PR0201MB3607.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: agpgrUPPk6TKZQvp8603OK+YBXQrhHSe2WUqi7DWwrPgH+Le8XpWL7VWlfzYc9N/4PGTP8PxVb5apN/DuIHqogTckFB6mABYJWoTREKJy7ZkMY0aqb5/+er9b/2s4RbQhXPB2vZKBOqxv0jxHfbTzlH9o3JzrWDGL1RNwx7SEHgzsInSGWJg+g/S3zZidU01r+cHCBaY/jYIw6w3g445H6ocw3JNL8GKQrKRu5JW4bOnhhJttc/frXbJ07LRfxMbxAriW9JfbhBXUMtXh1TuS2gr5qep3H2i0HILVOF2D3ZSUuXAxX4Q2HVYN7L5HFkb/tVOut0eDMaD3GmrYdg9nO7lKL/nJBqbPQ3YnwcQkNKSfxz2hHArVSCNr9y9P1hsrnLlSrIlKhVkYap2m8iDDDLH9VO6cjagAx16KrvqogdG7UTll540LOzyaiaxcfaH
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:51:04.7421 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 95ac7238-35b9-413c-85c1-08d7bef3ce99
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3607
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_135106_908817_FD117985 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.80 listed in list.dnswl.org]
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Clock divider value should not be greater than maximum divider value.
So use minimum of best divider or maximum divider value.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 973cdf0..7d2cb61 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -198,6 +198,8 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,
 
 	if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
 		bestdiv = rate % *prate ? 1 : bestdiv;
+
+	bestdiv = min_t(u32, bestdiv, divider->max_div);
 	*prate = rate * bestdiv;
 
 	return rate;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
