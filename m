Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E82003CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TmXo3VqMqhMQMLIFTvMtz3hhSh7t+nS29qF78qWxdsQ=; b=nv9CHiVDUyWaq/
	snGrGEVt3yCFFIsB1GRBBS9z1st/g8CHSw3rL/JDFQwy5ny4Ni7Lry66d/Ak7Z7tJsrXmCmS+wWPp
	iOFIimebMnrZoqtTDCWq8qRgHcSXydyyaKLKMyEfWSYzc0QIWaeo0gJnMmY3kTDVxlyDTNoCzalA/
	KVF2qk686orKa9tut6z3240T5K/+tlBAif8/njVRFy/Vse7lotSkMp9ncT8ElykxSZ2oGblkZK/Ao
	Dr+IJqoBgDmyDsLog0QARBzcVMyy4Y2IElA3rvaT2afE9AcBLTW7WCKsi7njUSjjCLOJ2GpZVb249
	v4Wwp330L1lyJh2XnMvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCLG-0000BT-Vn; Fri, 19 Jun 2020 08:25:42 +0000
Received: from mail-eopbgr70102.outbound.protection.outlook.com
 ([40.107.7.102] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCHd-0003O0-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHkcoJAVAFXZVDJ9/kkc8UlSc8tAxQ207zz6SBobL60haZiB/FnOMm6w9uRPNX0E8Gw4IOoBXZEBgJyY+GoM8tl0Xi2yvtxR/Q57GC26BMG0wLKOiEVyrh48fKuJYnchcMaAYcxW/1JgTrucvNhaGzGeDDAxyLeuy881E2+Yfcd05BM+uQn0UT/BGXzdzJ3y9Tugaa8muBTbc3ISgu2Z7b2jvP679Jf1ICQ8YU8cu3HVLEz1sMAToUMiAqsKBAbHDhQ8bgSmdkOjGyU6WNd9S1nkKrbprHi0kixOBBV6+ZzM1U6SnCp5Qna1B0BPbp34TR0YlMAhle1T6NmHiW74xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FpxCOmA5i+lalOqtu4YHvkH7ZLCkLPPfsbgxtnde5as=;
 b=PgxFVQPmsQzeEeANWGjOPhevDvxnlxKXHsy0ZP4vzaxCW+k1XKcLXWcTZKcBynOg4sfdlOs2EtXl3OxliJS9zHVhpPdk4OOfLt5q04w+3Seu8UFEvfmKtcprJRFv7WzodgertDkgZ0XvOTxzo2NnsxbCplzHueif3/TsCtr1XCN3keeHgOnJ5JO0nM/nhRuNRi12z45qKq09nmnMdvyyEXJcBixgd0zC6jaVzzqIJScpcnhZWP3ONpw2/n67EcpQGTZmqPmXWfcp7m+UycPpjjVnoaeRtLTxptVkgKuE6m0VS9YlUInDR7VhsEsyeYbE0kpEiLRCpO9ywh32iNCJGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=voleatech.de; dmarc=pass action=none header.from=voleatech.de;
 dkim=pass header.d=voleatech.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=voleatech.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FpxCOmA5i+lalOqtu4YHvkH7ZLCkLPPfsbgxtnde5as=;
 b=SWMM+HddkyiGLk9hDLfLGlToLlPgwUIvFSNBRUJT4f/dfFTIYvKkeIgEVSVa/YMfzVXhCQgNQPeZMEdG3PCHbTojfV0ypoBRgLpu9Ql+ahszwUwgcEJOvHIybjfXQtlmJTNT6O+18c/qTL0UjyKWwbtN8TojH7qbfybnv+LnUHc=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=voleatech.de;
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11) by AM4PR0501MB2818.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 08:21:49 +0000
Received: from AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39]) by AM4PR0501MB2785.eurprd05.prod.outlook.com
 ([fe80::39a1:e237:5fef:6f39%11]) with mapi id 15.20.3109.023; Fri, 19 Jun
 2020 08:21:49 +0000
Date: Fri, 19 Jun 2020 10:21:48 +0200
From: Sven Auhagen <sven.auhagen@voleatech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1 v2] cpufreq: ap806: fix cpufreq driver needs ap cpu clk
Message-ID: <20200619082148.4qyv6wt2fmt7s44h@SvensMacbookPro.hq.voleatech.com>
Content-Disposition: inline
X-ClientProxiedBy: AM0PR06CA0074.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::15) To AM4PR0501MB2785.eurprd05.prod.outlook.com
 (2603:10a6:200:5d::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from SvensMacbookPro.hq.voleatech.com (37.24.174.42) by
 AM0PR06CA0074.eurprd06.prod.outlook.com (2603:10a6:208:fa::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21 via Frontend Transport; Fri, 19 Jun 2020 08:21:49 +0000
X-Originating-IP: [37.24.174.42]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 59efb161-cdc3-4ddf-a40b-08d81429d052
X-MS-TrafficTypeDiagnostic: AM4PR0501MB2818:
X-Microsoft-Antispam-PRVS: <AM4PR0501MB28185BE618829E162A52B581EF980@AM4PR0501MB2818.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0439571D1D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pn/sCIglp8zF2hbivxZJzqPDAYl/RQnOh09Ww1qAZWzNIE3PXFwo1r1nb3IBnQ3ZuA4kRTQpMn7RWNLWqo4+rS+Jy5HTJT9+0Fpg4AilqtJXNrPtMhwsatzZjLOj0/2jmjzFtqil2sRSou9PdHFlQwTyjZcg8US/ZgB5xd8D1NGfiX5qr79JI3QpobcLdYZX+dxSSBYou97JaYfBQm8oLMmE+kpBy/nDIR/tHBcbHhogvXVbIsFhbEB5ttZV2ZXVQ8mpaHgQP5foZ4IfIpbC9pKACMYy+ZDlqXyHJvok0jtXwjsUg+2v/gvqdeBMz7Vh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM4PR0501MB2785.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39830400003)(136003)(346002)(376002)(396003)(366004)(316002)(956004)(1076003)(66476007)(66946007)(66556008)(86362001)(7416002)(6916009)(9686003)(55016002)(52116002)(6506007)(7696005)(16526019)(186003)(26005)(508600001)(4744005)(2906002)(5660300002)(8936002)(44832011)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: kADge3b+b2TheMZT7ARQmZ1EkVKGBUYV6rFNuuJqPEj6PIGMvbpd2V5udMMFQmtYQvyAfKK9cpcK7qfYm3byBxApdECFUbqp4g6QvJCMTOnXZ/3LH9jEuKnxvIm4FfZKKxw0p9HA6R9CAk8u0V7xLydlyZUkWP+y16N4DPmoKLrukNxLtY3IgfaHRGl34Nrh2EQQxxxj+SdSaaZ7WvNB2Fkhn01j23btull9mS1cxjax3p7fIYKNmP+yuhzdduw9djS7AOmgOr9RnqydIhREHpKizMBY6iF+ZT9TpX0QyL3plPeQYIB6s85gTmyRWQ4J/0I4ugDLrLrTCd7bSRDN1GP6FKiv3jWF8eAZnLlYigbFrsIKX5XKkpaABKiEXvWViFWss4NjL2Xudw2Hf1d14YbBysDi9gXTu3YBr3f5o3CmgfkFQZ4dN5TbnA9TJvCX80Yk7PKJvIDbEFM/ZSJb7N7PeO3AImwxzZfZvJtF38I=
X-OriginatorOrg: voleatech.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 59efb161-cdc3-4ddf-a40b-08d81429d052
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2020 08:21:49.6285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b82a99f6-7981-4a72-9534-4d35298f847b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MG9GSOFFZI7pDWFpRAhs+r+AS1vW2iRe/ITPSYNdOrEy1jH5wAhxxu5gXHlpZYK1B+rQqA0bqHDXcETxXc2oYhgmgUhW9r9xz8gy08tNfBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012158_182593_ED1E4CA8 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.102 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.102 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, jason@lakedaemon.net, antoine.tenart@bootlin.com,
 viresh.kumar@linaro.org, gregory.clement@bootlin.com, rjw@rjwysocki.net,
 maxime.chevallier@bootlin.com, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Armada 8K cpufreq driver needs the Armada AP CPU CLK
to work. This dependency is currently not satisfied and
the ARMADA_AP_CPU_CLK can not be selected independently.

Add it to the mvebu platform the same way the Armada 37XX CLK
driver is enabled on the platform.

v2:
* Resubmission without email footer

Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 8dd05b2a925c..efb5355c9eea 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -146,6 +146,7 @@ config ARCH_MVEBU
 	bool "Marvell EBU SoC Family"
 	select ARMADA_AP806_SYSCON
 	select ARMADA_CP110_SYSCON
+	select ARMADA_AP_CPU_CLK
 	select ARMADA_37XX_CLK
 	select GPIOLIB
 	select GPIOLIB_IRQCHIP
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
