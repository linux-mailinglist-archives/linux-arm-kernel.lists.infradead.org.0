Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612781CBC1E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 03:35:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MPGNMv6jlHV2CPdYC42SvKIBOJg6FoetDoRHIOG5vc=; b=YUCZhciU2DpjIK
	OIWYWbfDfA/LO/7oTKyMqcAhFM/wdjm6t/ksf1UsCO6wbE2FjcGfX2N/LR5exdlsfIWYZUD2UmCN4
	R6huBB7P2EnKzgPxkf1hqOyAtwEbJATAsvEkFevgekYwUBuUfkYX4X1GP56g3rCQZv5PWc3excaj5
	stjq5LbtIaMDlDFcZyUrtj8LVGnPA3/YTBhqrbwqW0q3p6JGO8dmZW0CWt4Wb6rxlAx7Qj8ikhf1+
	6WlwcR78TT/k7cBY+XFPaendkDg6Gh4vQL6oLHfROsW4dY1S0+TKtU2tPyv6qaFcKQQeFvOpwUSK3
	khaG2O0vi01RRZ0vY+Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXEOF-0006NM-Be; Sat, 09 May 2020 01:34:55 +0000
Received: from mail-mw2nam12olkn2031.outbound.protection.outlook.com
 ([40.92.23.31] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXEO8-0006MP-4k
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 01:34:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fxAt6Yw3a29xPbXCUIsYdXRk6+e7v+cGmZ/HjG1MQRm90Qw0f4jDLLxPsCzc2btto6evkEMWWlycdSelN5yMXhsSRiue/rvTQ4+17C0lyencFn2z4EOfTj0XhEptbe/h7alIN/mGo07vyHr7bVkcniicOTGIu+dTi3kfNLBOcGetWZRiJjZ4RVrLQsvx9CZ9IDIuPqaH8R3jXqbkVzKCu6MXNdc7ZlHld+hRRZFEvqw3NSPfZZgbJn9maqHSQwhAEibtwqqNkg9aA2C38j45HsDX/g+w4dLY5zCowBLOizKhmA6yJcLCEzvnfkx2PyAVnhOICva56pANf3+ge0iP/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zg0OsvzlU1eLMvS0vAoFzf9f4nkJrus+FNqiK+LOu2I=;
 b=Xnc79Th8Cj+D6eh6Iv2z+22qULBstWjonQ6ShBeGpxY1gbm4LLU8XebPkvQUVg/r7/EhGY5ldLWZv1dvMmGwzUUqe1sbr3HxyzPWFTxFaw/eV8uWF77LM7/Sf2wVYoJqzEbsfDaL81TN/y4F1HYVSdYEByjsQYu63mVzXTBL765xj437Hb3giebRq0Gs/OhMOM50DabHS5ct3VIaae6QCxugStItk0uK+aXJDC2hgRgUqp8EEbtOs+mW3lWL+6TfGx8zdOLbGtEed9iBn5t3mihALBLwDfUyU0BPkLn1Nmj9owKZg3/pYmj2ua1Q14hXyKqD2PC9bMJ7rPuYjLhDPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from BN8NAM12FT019.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::51) by
 BN8NAM12HT197.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::385)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.11; Sat, 9 May
 2020 01:34:44 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc66::49) by BN8NAM12FT019.mail.protection.outlook.com
 (2a01:111:e400:fc66::416) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.11 via Frontend
 Transport; Sat, 9 May 2020 01:34:44 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:D3D0BD23F8AD38415164C897CD7B9247A5EB6F568E4DEB138FB449DB98DEBD0E;
 UpperCasedChecksum:059D37F2A3F4A1A387B49EDA450D39FF8E59769650961E57C50C8618236AF017;
 SizeAsReceived:7738; Count:48
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2979.033; Sat, 9 May 2020
 01:34:44 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, gregkh@linuxfoundation.org,
 jslaby@suse.com, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] tty: serial: samsung: Correct clock selection logic
Date: Fri,  8 May 2020 18:34:33 -0700
Message-ID: <BN6PR04MB06604E63833EA41837EBF77BA3A30@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: CO2PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:102:1::17) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200509013433.23152-1-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 CO2PR04CA0007.namprd04.prod.outlook.com (2603:10b6:102:1::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28 via Frontend Transport; Sat, 9 May 2020 01:34:43 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200509013433.23152-1-xc-racer2@live.ca>
X-TMN: [NN/Ci17XNAwKoNPXso5hxFZpP2g50cHt4TsXayU35974VRbh31XZ/ItSSL84vS+8]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 78b3340d-b96b-452d-59f6-08d7f3b926bc
X-MS-TrafficTypeDiagnostic: BN8NAM12HT197:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S+Pmf+7X1j1nLgegg525J2+23iYcy2bhoHxH+EkC2ENEuS36A+dHlaKl+L/r2a5je2rG37sXbLxkR0w215OhBM0UKKp04P/s0wk3jwcy9hGo3M1Vge4l4nd5xjDKwqKhahvyoqrNBQ5M5b9dHXA4KfXbqT1bM1UOOpfNWTNeWOCOBshLsAXZlb9EYGUaOA76nZjJuun1WKmBTTQe2tW87Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: osNfQuONJHWs8koab4YCXiQIb3SnKhMK3W9431E2kJQRg+sFYCTBJJbSS+BrWYQwCVZN/+BEsywDEW5Bf/Dg8yq/4lOHipVOl0ZJ8eCrcWrH/z+zuzqateBKfPQLVNXhlFe9I6HHfFUumU3qoDh2nys89Ndyg6tH7szq/RW7yAf/LOn9UKRpv9xoLXr6AhG5E3eCcXnXno2nlNKa/mUQHw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78b3340d-b96b-452d-59f6-08d7f3b926bc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2020 01:34:44.6349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT197
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_183448_185153_9C830DFB 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.23.31 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.23.31 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some variants of the samsung tty driver can pick which clock
to use for their baud rate generation.  In the DT conversion,
a default clock was selected to be used if a specific one wasn't
assigned and then a comparison of which clock rate worked better
was done.  Unfortunately, the comparison was implemented in such
a way that only the default clock was ever actually compared.
Fix this by iterating through all possible clocks, except when a
specific clock has already been picked via clk_sel (which is
only possible via board files).

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/tty/serial/samsung_tty.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 73f951d65b93..9d2b4be44209 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -1281,14 +1281,14 @@ static unsigned int s3c24xx_serial_getclk(struct s3c24xx_uart_port *ourport,
 	struct s3c24xx_uart_info *info = ourport->info;
 	struct clk *clk;
 	unsigned long rate;
-	unsigned int cnt, baud, quot, clk_sel, best_quot = 0;
+	unsigned int cnt, baud, quot, best_quot = 0;
 	char clkname[MAX_CLK_NAME_LENGTH];
 	int calc_deviation, deviation = (1 << 30) - 1;
 
-	clk_sel = (ourport->cfg->clk_sel) ? ourport->cfg->clk_sel :
-			ourport->info->def_clk_sel;
 	for (cnt = 0; cnt < info->num_clks; cnt++) {
-		if (!(clk_sel & (1 << cnt)))
+		/* Keep selected clock if provided */
+		if (ourport->cfg->clk_sel &&
+			!(ourport->cfg->clk_sel & (1 << cnt)))
 			continue;
 
 		sprintf(clkname, "clk_uart_baud%d", cnt);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
