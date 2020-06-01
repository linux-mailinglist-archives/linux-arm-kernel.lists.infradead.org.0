Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8F91E9C2C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 05:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PYOZClDWRyl6pH34BTbOwpZ54wWpt/9H405BndyqJr4=; b=GiEx0OZHTMbFOx
	BDYgaSUsqA1GCxEldOVL5pzZnOOpDockDi2KLDqu3LGB7BFBk6NKwhWVuESv+15gA5nRPYheU6Knk
	VNwr7FOxRDTmBXi2E6WQvovQB8W7jSxjUPNO+b5+xbJSKRHKoQ+qHOIDQsz6WdK1zZfXXDFE1Tdil
	B5jXI9Mqrg2iRUdorCXSmnwTBv/twpdNpH276cBm4ItUiYTKlonteJLQK0oIRvBnes+SF5VugIHCs
	N7tEw0k1o8nKRXBZL6MhFev+v3aRHogyEjE9FmWHrRW2qh397jLrn/0L+gmohfSZ7Z0A1w4oU7we5
	adwL4a+YJ+aQmac4Twfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbWO-0007fk-1p; Mon, 01 Jun 2020 03:53:56 +0000
Received: from mail-am6eur05on2080.outbound.protection.outlook.com
 ([40.107.22.80] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbWF-0007ep-6T
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 03:53:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cpihDk/Aqz6WFB/xVTsMJMpZB62clyHCT8owksUU8II0xhjXaJXajG84KmaoqZ74LR5Ar6XDv9LrQz568dWqbqPi2j8yMP4OpnZwqRNUlrTWnWBgK8tFNAx34UwlhsKjCsQuMc7xXhXRxeIdutjQERN88atugPYWOGlYkDsgANneu7gTQ1lIP48mdSyYLYHV4Igg/df2AYeq8uWlQEd6D97MHAn5fdQGAykQXXU7QmAuqQ0Bl0sP7xm5u/ydM2ajS+49AmEz6bUR0PWxAno5BCSqXP3yKwry43UqW0DEV7zdikAyXkkYDx/6FWpiSt7BYk+xPOeETjterCRPqzDHtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FwbhX2Idsrxieujj/Kq5c0pr0q2R66ph9RRONGZsnp4=;
 b=jpmKN0J4LBRIoqxh57kRzb7eSMD7up1+iotnfBRfATFckgmGIROkiM03OY9y6JGmNovkVvjdRaS6ZjV2AvZnwY1zvXoS5mB7Hv58NVzdtUqxpj7elEVIkd9RqOIYceGbhshhqlWJP0X8pox8pwGhzvKSSoNQlp1b7AT/gTN+arS8c912EAG4zAvV5uzQ5tyeQvjbdXvebU+70Q7AY3qzQ8g0/zxKJJQwMQlhivKVLaSNG3xrP+SlollvrxlmJWrmnd839KEPRCTCbQmOuhcscImsn5AIpc4Tyn+DUdm62rbcbIrXtoG/0XpYDPdaBCN6HbHLWRsgik0+DWPvnQAgUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FwbhX2Idsrxieujj/Kq5c0pr0q2R66ph9RRONGZsnp4=;
 b=UzjUoCfifcYznK6Frijky7bJ/Mcp8fClasTCYM2XE39IRMfaUc2Ms9Znjzn9iOBtDKwJDDTQZtSE/3eS3ouNVHeK70w/IfnS8h1Z1tdUBFw5Deb7SXu3sbytojBoRsTlyc/1HI651QfRWZRXExgmoEEmfCenay3uNxT9TGcWvhw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2920.eurprd04.prod.outlook.com (2603:10a6:4:9d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 03:53:43 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 03:53:43 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de, jaswinder.singh@linaro.org
Subject: [PATCH V2 0/3] imx8m: add mu support
Date: Mon,  1 Jun 2020 11:43:16 +0800
Message-Id: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:4:7c::24) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0096.apcprd03.prod.outlook.com (2603:1096:4:7c::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.7 via Frontend Transport; Mon, 1 Jun 2020 03:53:38 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e9b92cd3-023f-488c-b84a-08d805df607d
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2920:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB292040F4891454E055FC7272888A0@DB6PR0402MB2920.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1284;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m8tpC0YIBbSf6V1JDlPVJqQQ3hFyekuyRVA+/QDxU70+TH4U8tgsb0/zMMFriNlXxCniMNwAa71UqhN7go5k7tVup5tUKCzf+ivcakYWprCnCnXTneDoDpHtLq+5u32eI2dWjopb4WpXYWG4vpLBtHvqY6v+/yyYqD7OztMXT9w6JosuBd8mdHu0/cX5RlPof2sXzedOSu+Crr0wnDv4rQlFTfHb1f14DQFzqjUBE8poOs64VbloEYOLvedAT0VNFmVfXMebm98D+UrBwDFm2dXZBiq68au5/MAfWbu3UobN9oEhU72fmYFQ6ksRojQRrzD5vlLUnJi5n6OspUhhLJXJVwyEzg5uydWGyWQ1UqYnfNNUnkj/4Xq91gwvWjPtZtZq2d2FLACPDZ+KwGvNCKnYWX83kndru1yZuRirm3E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(36756003)(4326008)(6486002)(8936002)(6666004)(8676002)(7416002)(6506007)(9686003)(6512007)(478600001)(69590400007)(16526019)(26005)(316002)(52116002)(5660300002)(66946007)(66476007)(4744005)(2906002)(66556008)(86362001)(186003)(956004)(83380400001)(2616005)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 5mNPz3F7DR0BRWUy2y+SQaKni9+HgvqyFjDvKXGGGqRvKFOY8luTRUBXL/OMiUP33S0G2tGvJgks0NsK0oZqyzg2erxrMPUXhpJUphyTgdt5EwN198WikPEnoUVpvG7BPNPoUODr0z67IwQu73v6flFLiLLzkJfVRWNgkS8V0gwcAmMWEaNRcjYUTl5MwMzBjXw8Qd9W9Diy/XGkJCJehzcPjgPTEA5wZcFr+zAf9lqIJmj85fxiJUhIOIWsqyBNAqLZp5oIhtUQFQSxVO5vwkd3RTAx+11LdZ+YSrfW5Kh5P1vwOAUhHdbJ8AemEuDCJhRyqj95wtwn+xQelWKivPKifJ9x4zBvuAsK3U4YQNMo9MPeupHuF1m0z6X/Wm0S1/gBj/037L9MdM1coRLnJkZ23I0Qow96y7Jt88RtBy09BHzJlAiR3sBv4UipEJ/VDTS58M/m28+8AbH45nyDUHFzZZTW0unHvfZvnTK3OzY=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b92cd3-023f-488c-b84a-08d805df607d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 03:53:43.1391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0tI/ZZCmgvPkNbeEKSgIp3xaajsk/3dP+r3qA8fD5ejjVX8uUvvC9O4lxBErz4DWNVd3E8fvqOueOiBbTfhQDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_205347_238991_764CF78E 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.80 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Add dt-bindings
 Merge dts changes into one patch, since all is to add mu node

Add mu dt bindings
Add mu node
Add i.MX8MP mu root clk

Peng Fan (3):
  dt-bindings: mailbox: imx-mu: support i.MX8M
  arm64: dts: imx8m: add mu node
  clk: imx8mp: add mu root clk

 Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 3 ++-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi            | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi            | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi            | 9 +++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi            | 9 +++++++++
 drivers/clk/imx/clk-imx8mp.c                         | 1 +
 6 files changed, 39 insertions(+), 1 deletion(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
