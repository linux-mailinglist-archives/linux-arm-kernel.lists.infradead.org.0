Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D51F6122
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 06:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kCefahCeL8rvfahXCd08mBb6CoLvSMj4LTG/0W+wdAI=; b=HAHWzPuV4wkWrx
	YgHbq8BpRIrCTWyNL2AO0IzNanlgJ44Ri9k245yLOBwOcjjYYY+eW4AH8Wc5Vz4dyek1fQ2IGmVnH
	cP6R4qTK3UYbG8HRD0tV5tRKYKqM7tvpw48C4GidpaGrOMujhKZXdbHp2Mkzqq6XPsq4b/ELy4oxD
	y+zCbOBuKR2VAT1SJJ9swl4Q7j2QzvjQU6wefxDNw2SD19e32gomSfIyu1eSrfAKVOFg7c0z+3zJ5
	ILkQHEWLjxj0x6n0D3tW7Uya0N+0042QVrKYWxs6lzilrz1Gxd3F+Ib23o1MQ9CNKRUCf9KyZrDCI
	Y1iH8Jk4oLOvsEM3KyDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjFIn-00070z-0V; Thu, 11 Jun 2020 04:58:57 +0000
Received: from mail-vi1eur05on2065.outbound.protection.outlook.com
 ([40.107.21.65] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjFId-0006wz-IE
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 04:58:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZzuYSgaqr0LnBdu6jjL5MBT1gWkXDTa1zVFl8VwuCExQenCTm6eJV3X/Ax5wpF8EUJUiehVBqmp1RPHgzirH6ipXiG9BLZPuZbktyu83YVT6eJZTOz76UEc8TpUk3i8prxIG/gQprT2p8j1nclKfKQsuWx3i9UJB64cB3U5fVbpL1hCf2Fc4WbrA5kKF0YMhsXRuFK5Z/LYQDwDYFxmVxMYKh2T0yYI3fu42OZQKHyjkh0zHoPLffi2dcKoy20XuXyymYieGkwFfTLyuLZ4W2SZnhgKtPfmXh7cWwZdDnkhOeF9YbKoLSkriel5a2qE+bMpPvF2vbndp0Nfais53g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJ5XSrDA7EDJOTPFLRlRcPgnKnRbnyBpmcwzX43vYKA=;
 b=Y1O/Qq1MjiItIZfFqGGzSnH5gHecczDU8+jy7ypmW05qqIoM3FKOH8ZxChpkV1HcmcfalO8yVGQKcDOR6cSsI7ScfJVKCf7x76E40XrFRJbQKBtoMiF4jkXTy/hD5Bf9kYSPWGUph+MB2KxDtSLINne0i8e80ICLNcVjf6TXrf86o/zlXPRzcbnFeaSzDE/jFxb9h6mX6a5aCPBYdlqeTAB4oVnQHCGHQvEVhqbiaZnzpv+iVxPDWeool4oEpegNqWJ7TDmt5zHMXfI4ymrjOr6D1O0qGrSwggScD7FknsVWYwCWdGeAuj52NQIPRowdnfIvAHUKyQcQmfSpuKjScA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJ5XSrDA7EDJOTPFLRlRcPgnKnRbnyBpmcwzX43vYKA=;
 b=oIhd0XAWCaZ651ckXsjvg0O7CIOcOAyoD110MZDomtOgDKooRByk2pw9Wh0YLECUSFPbIAs+R/ts6Z/gadEgIC+h/2z0tHE9M2fPf3ElG0r1LEKOlEyNPPw5IpBAGhdKq/eDfj1vqR8WFGNt+WmnVaH1+sEm3aE0m8SsCEk2JjM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6750.eurprd04.prod.outlook.com (2603:10a6:803:123::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Thu, 11 Jun
 2020 04:58:33 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 04:58:33 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: broonie@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, robin.murphy@arm.com, matthias.schiffer@ew.tq-group.com
Subject: [PATCH v1 RFC 0/2] introduce fallback to pio in spi core
Date: Thu, 11 Jun 2020 20:58:28 +0800
Message-Id: <1591880310-1813-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR04CA0171.apcprd04.prod.outlook.com (2603:1096:4::33)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0171.apcprd04.prod.outlook.com (2603:1096:4::33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.23 via Frontend Transport; Thu, 11 Jun 2020 04:58:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4f454f80-730b-4ad4-ab7e-08d80dc41740
X-MS-TrafficTypeDiagnostic: VE1PR04MB6750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67502780F4F1A5BB47F8727889800@VE1PR04MB6750.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uA37TwtMsqHvRKHoWskCDKXLBoOC5VEiFhd99CsEHs7eCUcOuFVkbKs2rOqS5rsgTtL4vpEDA5KNlffoARKgi4WBq3DUDSPon6hWd04+O3iMt+1MfJNm0xU1IINq7dRKfdQdwrbJ8d6si1JJ/o0AGj08lvAU4Afi1OxLLtYpUC4vCi5wYaNrBLz4wmq+MasBomi54VhqmWUEAgcXZCcZ20OL40MlHwnaemKsXtBHO9JnoguQFJuDJx7aBgsdPxzkonachDyIcYBQgQyJUCTBnUWOO09l2aNSjt49q6PltcaHdre6PGkOFuIxg8RCsJB3oY3DcI4dy+psir5UT+GpR4f2Uco2ogbZSVcNrg2unnyEt+M/OINUTiXEekV4e6H2+Q7Xjd46LB45PDAH/p/rgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(478600001)(66476007)(8936002)(316002)(2616005)(7416002)(956004)(966005)(36756003)(86362001)(6486002)(66946007)(8676002)(2906002)(4326008)(6512007)(66556008)(6506007)(83380400001)(4744005)(16526019)(186003)(5660300002)(26005)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: iOxh2+46iPwQ/Sw/H27kE1v7LzxbRKON56sZpgSW/A7DutULwKMrYThGQVPLXIQ9XIISDhWicDGMYDT4GW6F8tUwN5SwRFPCkctIqHq0kxPzj+tcLi1vbuh0EwZrSjYdFu8lCLr4JnLTgrSCynz/9Na7u6GGndZEYYHh0YYXwVHAdYzKOrl0AWNuju6LD4MpaxX6DQKznqr5QezwJsP/SnkUK97NMO5d+gUncse7YqutXmQcDIoUcIwA0xkKBQMsCucEDZczdf/P4KAn/qGX481OpeAtMQ4IVRWpyMR5LXf0wODXyLpQZK971nx5o1XlR+YP3NvZy5stT9Rm1dgr6E53eU3bzwy+xIZX6r0064VbiASlpnbwLwFmZdAOqhGE0vUpx66uTDOl0xIxyGItgyFy3V7RAOl0ReUC7bOaQCtFGAO44wuX9MDYZ1M4y+igK1CmlWNnUm0ArxGFcHUghf9MFoazJt7ZWERJirPQIeA=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f454f80-730b-4ad4-ab7e-08d80dc41740
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 04:58:33.1928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WkPtgyulCMB5iWMthKmeJ2axihU8FbESPHlbGmdSI2GXhlgwjG5aH///Me4+bkBIyHx/q0KJ7aCbdDqwxJkGXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6750
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_215847_607686_E4AE834E 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.65 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introudce fallback pio way at spi core level so that the tx/rx buffer
mapped by spi core for dma could be unmap and fallback pio again. Hence no
need the below patch where 'dma_sync_sg_for_devic' to sync fresh data back
into 'device' memory and sync to 'cpu' again in spi core.
https://www.spinics.net/lists/arm-kernel/msg812236.html

If you want to use this fallback feature, please set 'master->flags' with
SPI_MASTER_FALLBACK and add 'master->fallback' checking in your can_dma()
to ensure it can fallback to pio.

Robin Gong (2):
  spi: introduce fallback to pio
  spi: spi-imx: add fallback feature

 drivers/spi/spi-imx.c   | 23 +++++------------------
 drivers/spi/spi.c       | 11 +++++++++++
 include/linux/spi/spi.h |  4 ++++
 3 files changed, 20 insertions(+), 18 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
