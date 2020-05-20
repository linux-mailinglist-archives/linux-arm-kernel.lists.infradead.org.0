Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 338FB1DA7C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HpLaeWFlOkgRhQtUesMo45+YVw10+Gs0Rby5dcmzdA=; b=Nk+iC8kLDnkv5R
	VMs+eikh6aq7XP0zdWY7dQCisr8ITwoHEQN3V2fU+eM5m6VG4uiuRsfh+XncfPMKb8Z456Oae57hS
	BybcyDtecT+9dGALj6NvLCXAfHfa9uV37ljnMp8w43X2bdAzW3cHPw8fGjKL8zQ0iSOP4wxIDIV6Z
	DuBxxhwajyGLWwJYQulNiPTwdT7gj/X8uqtWNFo75FV/FJd7V0jI0rwdZytr7rNiNxfJjkzwi0x14
	fbRT6YHdTJU49hBZWSzLwHirJ+ljhlvMKU1agGvtKN+BGStXN+aeP8A8lqYQgTjErczqoyxLhDgUj
	/cwZvUo3+LdE4s9mQGMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEEk-00084J-Qk; Wed, 20 May 2020 02:13:38 +0000
Received: from mail-eopbgr00041.outbound.protection.outlook.com ([40.107.0.41]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEE3-0007hi-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:12:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhprzgciV98nkhH0zRklYdm6sJlFy5/t38bAjLhwNf1yt1C0K/uQoEnn+WaLTuc+8Qt8hA+LXQqIs+NUZ+SmkUfpaVF6QeeNC6AWux3/X7Qjj2baspi74c5WOqSz0mH/VCctULoTGs7H6YfooE/xMW3YyWQCVrvJh5Zgz4p9uZ68nM6aaxXxVARDURkQUszi5dcxxjKjr7F5L5arJj/QCLsReEAxgQ7G3k4agT3mV3GfS1JX4qKJDUXrTfH7AatyCxX9tZdRC7oYpq6cX53z5PiHc9Si4AV/P5fxzfbhTItvizUfdWiM6WQgbq4Cm4IaFkMrIHYv7H+Rg4kjKFVgqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yJFFS2IVhMlWgz9jLEX8t2Cy1f8qrHNc3gaT3zLTFqY=;
 b=DfjSGBlEdLFoWwNwAqjva8NIqmn3gxiHtXpiEGj0MBm3kFOnGJZZ6NwXsPKso4MpHAfeJAubT1hp98AHeIC2NBhMDh/MB8eQyGaj7QUh7xZvtVTqDb6yTqOf/rl21ok83mx3hs+BWZKjJg6UNrEVUPnyMEDIp1xywf3XV0j123Fqauqy9g3mR8jdFsWWxa+nDpOkQynu+jPi5mapTVmfyKAVP52uwB7wbtSNlCWyaJU0kTzF6uOinR1gKspxVEOavWjyWYU84gj7Wb2lkfTgrx9S2QVXv/pfSdl9fIXMQs4gclIo5DpqD8AL2SFrl2VPcB4iEByqOThkJvjbHQzGoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yJFFS2IVhMlWgz9jLEX8t2Cy1f8qrHNc3gaT3zLTFqY=;
 b=LkYVd88xR3kxhb8yWLn+E28vhHKVh6SNQN05Gea92X4supq5tyWH2Q66/pJL43Yp43U1zY7MeAsfK6m7sAfgPoRKUvysg3JKPprRE8ya8e8XZTgAH1CNUfEH99MblYLWu1xTME9sQJYlt9ZNkLEvEcKScTBChDYOdD22bdJPrcg=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2741.eurprd04.prod.outlook.com (2603:10a6:4:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 02:12:53 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3021.020; Wed, 20 May 2020
 02:12:53 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com
Subject: [PATCH 2/4] arm64: dts: imx8mq: Add ethernet alias
Date: Wed, 20 May 2020 10:02:44 +0800
Message-Id: <1589940166-736-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
References: <1589940166-736-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0099.apcprd01.prod.exchangelabs.com
 (2603:1096:3:15::25) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0099.apcprd01.prod.exchangelabs.com (2603:1096:3:15::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3021.23 via Frontend
 Transport; Wed, 20 May 2020 02:12:45 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c9809b93-49f9-4d95-ecbc-08d7fc634d5c
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2741:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB274129EBC3F3A9E7409EDFC988B60@DB6PR0402MB2741.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BHAUgZVQuEvmush2zJJumy7XpLCuv/qoSwU36AjnMqfch4pwKXglAdKzEULGKIvTtMZ5rvUMiKG1dziB2uOs3ftzQZyuVwVeQuUXpQMwnN9JN/2o6fITNhUZIoa4Q0xq6HORKftTW+hYs8rtvMaESbXUlNFJ98H1JMmSWeRohVCtFl2w08C1DjiGAwNtCnjhtgRZwOccpBmeKsBo7ilWl+eBoORSNgXtPa8vWto3AcA5dwsAgpw2BGELr6NfeyZVEQuN1HU7ouHmDT+XQZI2TP+wUvki8AE3zsB2ImMwwkoM/H3uawlmoNdIKjt0ba0UFjJkn3t/49EfrbneshSRHpwc14zugBdTKP1BmqnhR2Zo9bLPMQDpfKjK1XNrsIhpFovDwtOCtJD1IGxkG8LzNHOHr0DJA6iLRoufrAmZ1T9haOVkvSobO1N4szkRQGvZIq1f4IQ0tNnpEmVV75/h/Zt+Jpz8M4E7sbABr0FFksWwCqidn3mTAdnCsN32PduYnaboGt64P6S7wqnYi677DA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(36756003)(8676002)(6512007)(86362001)(52116002)(9686003)(66946007)(66556008)(66476007)(8936002)(478600001)(316002)(5660300002)(4744005)(26005)(6486002)(69590400007)(6506007)(4326008)(2616005)(956004)(2906002)(186003)(16526019)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wwQLg9wJZcPx8S4CpWulqa1VmU4VcMLPfkZTd+XPTwexmTNSdhvv5xcbAFRbUTMByh++DMljZXPWbEaO6rRPjyFYeSWRZGVUbpbpeFt8Z3tgpk8SSoHlMk1dhUMN3FIWD6AzzDLkqZXAAvYWeODP0c6zmMjoD4xberOBYXo7ohv2q98zfzbqXLr+Op2C/XAfJIKcNnAvEIX0k+pB6ZiRhYyE0Z3FF/7+dve6yQoMGHT7mscJ6mKYQQQ5qFii/KPXKsW+QGnJdGJ4+b32n027Sfg7+mJStS1PxV9ohyL65EeBYvN02fV01x5t/eN2rXvjPUOkQE86OKRz7zlOOIYIBvDGGFRR6IXbhnLuhoL1ddE4QMmKhygNuTFVa6g92wsnssXVcNQEMKVeV2cT4O5J5cahYChVBCG/FCil27OB9kqI4QRCr6Hr0NeWJYkaY3pf+xWNAtzYIqLcRoA2sUqPg/w0f93mc1OHrKjpJTo0IhnxOufZe5RAagO37ztxlYep
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9809b93-49f9-4d95-ecbc-08d7fc634d5c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 02:12:53.0000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdFq4ka/oHYTevAx9NXBR3/q0iUdyT5y608mMiZ1BF4OZUQ0+3+n9jih+1j9SjbWbZFISZMheBSDu+MOOD9fWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2741
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_191255_752209_4A6EE812 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add ethernet alias, so bootloader code can use this to find the
primary ethernet device, and set the MAC address.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 9d3c9693d713..1d15680a4962 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -20,6 +20,7 @@
 	#size-cells = <2>;
 
 	aliases {
+		ethernet0 = &fec1;
 		gpio0 = &gpio1;
 		gpio1 = &gpio2;
 		gpio2 = &gpio3;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
