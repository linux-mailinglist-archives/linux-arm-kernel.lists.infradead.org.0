Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AAC1A2F2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9aukeedvd2t2zHV9+ebe6qJkXLeCiVwPQWgsLUmDXg=; b=TYq3k0ukcBwisR
	zoWbgGdWS8hO4TZRuU2z10OLIQ5pEMxNXlMspLwU/y82OYFF/BrCIirg8rqQxsxE5brj2Bexdtctg
	kv7Xq4A5JLM0kacFggqvEgpemNBLidzpkB5CgeBRPK4kYxHZrbMfu92759vTHQ31RKmdJhGSFqTzv
	WY+xdMFpCnCRy+fnE+faeQF+FFU4NCu2skG+cqHAiGdNUmZd8qko//Bje+ThIFmqt0Kzm/Xew6TjZ
	tglRtT36uDQzOt8hTnsKbld9Cbex8M7Et8bcPI1kRg4ehs3M7aXY3mu7EAwCShc95GPeBDzT5kE2H
	8HRNPSTymLWaGsbw2i0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQed-0003Lc-F0; Thu, 09 Apr 2020 06:27:11 +0000
Received: from mail-co1nam11on2074.outbound.protection.outlook.com
 ([40.107.220.74] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQeN-0003Gn-DD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:26:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6PA/ctDEa9FiF2IxOy8K4vozdRYi0uah4BudUbCubGQNYkpPIzmkUl//K/Qq36U+8joByJU1Dr6ltIMinUToCRD+8OeZ+CYlSMAqMZE2IryJkkLKJyOwK24lC7OwqkY32tXx6TrAi6rVg8aA4MIa0IeYC3P2Wwz62zYQn9Lz4mf9BuBfAlM1r4323e2vQLDUn99GHFg2/keWDMgBX1BtHxEWetsm+INtmGUHtfrwRLfjJyyQViIKLuhr+dvf57oAtlvqXWdK2tGPw6ZcTHV795mXs/Ebb6gI+PtTJZPeOTV57gKmV6sa2Ctgssmd2oYYr9lPBkbUCYZe8LEYJAvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVUjpAO42Z6vvZnd80PGVWDuoZsUdVtLW/tWXRjNYiw=;
 b=VnU69USKGMwtFOqWy+oMbUBqzRilfDsoYTSysM5e1O/gDlc5IAP8wharsfUwILMj7Z01e1f78tnt7bXVeRdMOb+jKFkpzx+whiUxVzbqFh+wzfqEnEfBSfKDzUMBrkjhX+J7E7pDLD+Wp7mSYxLupzOivHPAp60+54e6gNmnNkH8spX3WCbhDpRTi1hSaDDV4aHAFXzMjpTkoWs7Z+uh7EzuFRr34UtHa32O41u4TjfuZEdz/iq3xQkKXdHlCFw8yLhdIdadAd2cdzt6wMRx3bKnZX+UIqn92snpJElwr9VTPR2+O5nbSoo9iGGftL0z2rpKK8P1GRbH5jSUAwgKnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IVUjpAO42Z6vvZnd80PGVWDuoZsUdVtLW/tWXRjNYiw=;
 b=kW0uf1h2URT+Pt9sI8U3Qf3TY1VHDU6QnDzAlfbPAyL+jGfqY2AraGAtj4kkwcTovQUiwRGnNnFXFuLms3PVwgpXmSjn16MkSa2nirnD9P2gWoU3lfWLKrMPE0NTG62j4LjxxcfL1mKCTf7LGuqN5GxoS4lf+Zcq9vLHgMV535Q=
Received: from CY4PR14CA0043.namprd14.prod.outlook.com (2603:10b6:903:101::29)
 by DM6PR02MB6235.namprd02.prod.outlook.com (2603:10b6:5:1f8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 06:26:53 +0000
Received: from CY1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:101:cafe::c) by CY4PR14CA0043.outlook.office365.com
 (2603:10b6:903:101::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Thu, 9 Apr 2020 06:26:53 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT041.mail.protection.outlook.com (10.152.74.156) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 06:26:53
 +0000
Received: from [149.199.38.66] (port=46635 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jMQdw-00086r-4T; Wed, 08 Apr 2020 23:26:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jMQeL-0004Z5-1M; Wed, 08 Apr 2020 23:26:53 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0396Qj8Z027511; 
 Wed, 8 Apr 2020 23:26:46 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jMQeD-00046h-CT; Wed, 08 Apr 2020 23:26:45 -0700
From: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 1/2] serial: uartps: Wait for tx_empty in console setup
Date: Thu,  9 Apr 2020 11:56:02 +0530
Message-Id: <1586413563-29125-2-git-send-email-raviteja.narayanam@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586413563-29125-1-git-send-email-raviteja.narayanam@xilinx.com>
References: <1586413563-29125-1-git-send-email-raviteja.narayanam@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(376002)(46966005)(70586007)(81156014)(316002)(4326008)(70206006)(478600001)(356004)(5660300002)(7696005)(6666004)(2616005)(426003)(26005)(6916009)(44832011)(82740400003)(36756003)(81166007)(9786002)(8676002)(8936002)(47076004)(186003)(336012)(2906002)(107886003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20dc1ec5-2623-49f1-d396-08d7dc4efe9b
X-MS-TrafficTypeDiagnostic: DM6PR02MB6235:
X-Microsoft-Antispam-PRVS: <DM6PR02MB6235B9B9BAA1DD4A8F42BE37CAC10@DM6PR02MB6235.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MK+yVkQM4tmuBLOditDZ7nPSS/8UE0Iam6k4BNcO45N+/5jrM/hvEanWqVkhZMn3cdeLHSg8qlvXXeDBVVVatMHmlMkgGyjAjEcIsTZBXPJdSj8Xq0aa72ENvpx+a00Sy5bpKccP/0uPh4tZbDjrYM88wZ7hBOgTY+TbEDGyFC3Lwr3PCWmksorGtTWVqUK8Rv8dDQT42pLqbF9SH/G0Ngek9Pcb4Gj9fIIHX5dVYkzSHcOdt0JYbmcSGH5MJCfRJBpg9ct24X0zhD0p8CafqPIbzsXL3rXjmcLR/RJrmA+Q0evd5yv2VMKkSVpR8ZFnaBLIsj3TdNMcBDOBymfkxquy61BfhsD31C4uWVFXJhzPU1WuoejOsxA5h+Ee3anYyyB5A1XPdnQK0epUTiUZqZppkxhAwvDv53J4kYHl+bZEQfQT23xkK4oxfxwEoeaKWF8/XdjbclzHHzVLi8Pek1/MintsNAqcuATyBoITIvKNPf7//3oqA0iPmfeXFmt/4+GMTlHBUYxv5X7xj8HBeg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 06:26:53.3309 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 20dc1ec5-2623-49f1-d396-08d7dc4efe9b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_232655_450448_9502CFD2 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.74 listed in list.dnswl.org]
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
Cc: Raviteja Narayanam <raviteja.narayanam@xilinx.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, git@xilinx.com, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some platforms, the log is corrupted while console is being
registered. It is observed that when set_termios is called, there
are still some bytes in the FIFO to be transmitted.

So, wait for tx_empty inside cdns_uart_console_setup before calling
set_termios.

Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
---
 drivers/tty/serial/xilinx_uartps.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 6b26f76..0bf946b 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1260,6 +1260,7 @@ static int cdns_uart_console_setup(struct console *co, char *options)
 	int bits = 8;
 	int parity = 'n';
 	int flow = 'n';
+	unsigned long time_out;
 
 	if (!port->membase) {
 		pr_debug("console on " CDNS_UART_TTY_NAME "%i not present\n",
@@ -1270,6 +1271,13 @@ static int cdns_uart_console_setup(struct console *co, char *options)
 	if (options)
 		uart_parse_options(options, &baud, &parity, &bits, &flow);
 
+	/* Wait for tx_empty before setting up the console */
+	time_out = jiffies + usecs_to_jiffies(TX_TIMEOUT);
+
+	while (time_before(jiffies, time_out) &&
+	       cdns_uart_tx_empty(port) != TIOCSER_TEMT)
+		cpu_relax();
+
 	return uart_set_options(port, co, baud, parity, bits, flow);
 }
 #endif /* CONFIG_SERIAL_XILINX_PS_UART_CONSOLE */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
