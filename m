Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A71F1A1233
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i4UoBv//c/juEhXrF4WKF/vqcTwT0mmUvA8qJ8aW4mk=; b=GjYyyCkO0Gnn1e
	w3lE7gpesNNe3JtzZD+gHyYWjkazMwnBInQFBe2MQFgVpK6ytQZXf7HK9UR8RPYwIvmJmjlmOOi/D
	9ESyiuoa0cIo1QIRb31sbQ4HEX/cguygvKwVupPGeCG//w9Q2ONB/0Y3L9OROGnnQTsZRi2OA5Yau
	RKFxPlCYpcDNUZPnsumdozJwsafTfnRjoBIsuz7KNb3PrRsfG7XQ+TGTWhK0D0A5q4RCxbzF5qP3X
	Q2ogQjxzsS7QRvEmr/PCle/zKWCGHkT8nJBxCUB/JxN3EjeoamikFXImPUdWBM7Plp3noZP6OPjc+
	GB0O3dip3hQ9egwkuQnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrUH-00082P-Ss; Tue, 07 Apr 2020 16:54:09 +0000
Received: from mail-mw2nam12on2070.outbound.protection.outlook.com
 ([40.107.244.70] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrU5-000807-Oy
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:53:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CG20QeQdsK55JiNvGy+SfiyRq2zjW9dJ0IdPzQZN3KTnyEEteoNZCzWqYBKZZ1lYXFU9oHb38u8hbjWESYHJhQPCCww1I599oqiVpF0WvNYSVNm3m0a+YAynx8surusC1Dz+j3TTdSVi7+iFldRdYP4zlrqksXbiYyjbyGsjHoWY86h/t16PeGnC7gxSTmJc6BMfN76WoFRNhWtD8OtW0Ag+g4nSFAA9bY16CfkdsZ3FwNXv7HwvZXpoH+XqOeTY5DSWutbhmvYAu9TUON3T3uwHL20tYbUnuORV+7JDnp0BafbIt4xkLrMKnzzhfG//ILgNNjYNXZe8KN+UaECg/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ncLq4h6vTCWAcP0zMECTHr5V46u0rOk8RUFt3MyuRHc=;
 b=g5ZOol6/meevaZLvHiV6Wbo2dqxy5MT5lArgkCiMaEetrWI0+arobd+2GTao+9ehLFEPu8J3py/6AaKhE3qb/rxUuumX/4kSk7dn27OUmvAkZKyakAH97kOy1dR+oumQoul5Xg2rNPNMVZ66cnuztVaQAoLxJ12Q1mGs1x7Pm9+LjiHkeLxWS+MFc4J15cG7Fx+CCqKx5wT30IFW2WZtALNxgKcK+ICCXPIn6tgyYq1uniG5wwf6smfMlh/NNI9r9rgSlwl/iwCNHDUeQJ92W0qld66y5A89lnBrGS43dxsXq5teoohbIhizVDSKSpUmJTjaCacEiYKpZg3wiuZCCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ncLq4h6vTCWAcP0zMECTHr5V46u0rOk8RUFt3MyuRHc=;
 b=W2Ql8Q/myk33OEc93xJt+D0Q7vYgqK6pnh8XLMHDG4Je2Y2lVOQR+O1CU4vdBO1Kn/w+3erWtpvRbnbN10Y65iMrpAV0e3mrjYM69CmOEiAqOX9apDO9ewmjEFZ9evbrBdvbzvijxoQKs5ksp5pUOSF8ASaGbIocmvERuIer/sI=
Received: from SN4PR0801CA0003.namprd08.prod.outlook.com
 (2603:10b6:803:29::13) by DM5PR02MB3814.namprd02.prod.outlook.com
 (2603:10b6:4:b3::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Tue, 7 Apr
 2020 16:53:55 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:29:cafe::f6) by SN4PR0801CA0003.outlook.office365.com
 (2603:10b6:803:29::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Tue, 7 Apr 2020 16:53:55 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Tue, 7 Apr 2020 16:53:54
 +0000
Received: from [149.199.38.66] (port=59348 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jLrTi-0004w3-1w; Tue, 07 Apr 2020 09:53:34 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jLrU2-0004bc-Dl; Tue, 07 Apr 2020 09:53:54 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jLrTu-0004Xd-2s; Tue, 07 Apr 2020 09:53:46 -0700
From: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH] serial: uartps: Wait for tx_empty in console setup
Date: Tue,  7 Apr 2020 22:23:11 +0530
Message-Id: <1586278391-9061-1-git-send-email-raviteja.narayanam@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(346002)(396003)(46966005)(6916009)(82740400003)(2906002)(47076004)(478600001)(336012)(316002)(36756003)(26005)(5660300002)(356004)(186003)(426003)(9786002)(2616005)(70586007)(70206006)(107886003)(44832011)(4326008)(81166006)(81156014)(8936002)(7696005)(8676002)(6666004);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1bc043e8-97d4-4930-6605-08d7db1441e1
X-MS-TrafficTypeDiagnostic: DM5PR02MB3814:
X-Microsoft-Antispam-PRVS: <DM5PR02MB381411B162DFD40D6A05155ECAC30@DM5PR02MB3814.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 036614DD9C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I3RM3665aCbqmHuQhmJH6pxkGwlu2fPROoVpH/C0KVQs0iH06b2NIsiYI8EHHjSuUWMADqbdnctvBubQbGi1phrRWqe/bwJ6WHAbLpQVrPTIziQcajpSsOkcl6SA4G7/78xai4tjkAlip/mkfgeadKNUiaUFweawqpQAik99jvO2pvyu0CByC8PczaMgUR4+i8lamc7AS2rzUNM9lLIKjGIWgHqbzhw8UM9W/RpThUjKkzTMKqxB4GX4i2jhu+9A/cI8tRqWyWjo/2Hn0PbNIdHxA5Ek1SpE8Ovij2MNmsAiB/BQQyrI28slonC+fL3NhL7dfSSG7to0+xJwsNrsfbJVtn2AAEdVtsQXpAS5Wa92oA5RAvP4C44xMV8SZYUSLeUcxjeEKlcVVknZmOaG+Vee7kf6QNxCP4uYeSz9BidVy6qWTSOrc9mhlrFedSgKPFz52b+Dk5GWuwgLgItryYzPDxrd6gJLbucC95rdsjYmqTFxYLqnQR3cj9xo3JaRVxYCh6Z2hoJ6nfTzxKqL6g==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2020 16:53:54.7244 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bc043e8-97d4-4930-6605-08d7db1441e1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3814
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_095357_821896_7CB71035 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.70 listed in list.dnswl.org]
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

So, wait for tx_empty inside cdns_uart_console_setup before
calling set_termios.

Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
---
 drivers/tty/serial/xilinx_uartps.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 6b26f76..23468ff 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1260,6 +1260,8 @@ static int cdns_uart_console_setup(struct console *co, char *options)
 	int bits = 8;
 	int parity = 'n';
 	int flow = 'n';
+	unsigned long time_out = jiffies + usecs_to_jiffies(TX_TIMEOUT);
+	int status;
 
 	if (!port->membase) {
 		pr_debug("console on " CDNS_UART_TTY_NAME "%i not present\n",
@@ -1270,6 +1272,14 @@ static int cdns_uart_console_setup(struct console *co, char *options)
 	if (options)
 		uart_parse_options(options, &baud, &parity, &bits, &flow);
 
+	/* Wait for tx_empty before setting up the console */
+	while (time_before(jiffies, time_out)) {
+		status = cdns_uart_tx_empty(port);
+		if (status == TIOCSER_TEMT)
+			break;
+		cpu_relax();
+	}
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
