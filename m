Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7F2182C54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bc6F1UJyJHuqMkSDXpQfhDxU2n905UXtLxks3+JrMuk=; b=qUe2+jvZjaFt5/
	scbRHsJVIvga3d+X3vLjKxsMqD+4qM/9sGhb38qVengPxQMius9f90a6PJZxv5y0YCFgURmofUkbo
	9RRDEe4mNvKlzb8U7yB+GK2Xbbgu7Eshyz8jdKI/7rGk4GNoak9iSpDSdrtUZOspCf0+xawyBzZEg
	qpDcQIp6DWsXLtUsZEwPQnAq80NXcESkme0XZQSg97i4v31BarTL5mG84vqnTZY1DMtZ1/LMh3Y1W
	KkAzhuSKjvzhLWy8FJNTDTzEMH3nOy5tWKiDlSsF//8dx+9XE5jQLToY0ut7mjcelphdOcyKpOX9m
	ww//MhJmZQtOdzyb2qDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK4n-0003w1-GE; Thu, 12 Mar 2020 09:24:25 +0000
Received: from mail-eopbgr130059.outbound.protection.outlook.com
 ([40.107.13.59] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK4Y-0003vH-C6
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:24:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FfQW/kTP0vVgac2xyJpDqiIOHGm0FXSQDuwJxSsx8cC6uxZ3GNjIVkLtf2T1TwfzfyPOE/CkVV5tsxEO6gIEBS1P58B1UBfuqZUHnXm489/6MRubuzEpSuBdoxjKsahxhg05pEEvr9qTIY2RuYO+oeReZ6qd89gPp+Ls9KVRwm1ePlIvvKPrgSzT4FZBRzMg63IdzpS9EKek93AmraBWEIoCQGVPovz2KpzdFFpgckorJCkpEgXuxCTLF6CzSY3rzNJCS5ZK7hH9gBbjTTa5/xWrV8zvI6Z8zNSTRv8NqzQT4Q28KzoCOB5auMsB9iEDglmIBAOi9jZKaOvk82w9Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1vgNOYIEHm1GJnhcKpeTOncfmcQYdWgzXYLqnqvAKo=;
 b=Wn8/pfTGFK8j4EY2HNEMCPnGbhiVWY+tvWxPAiC9gZ0QmHZs9p1Kjs7FeUd5rABr88NWsfl+Bq8iuq7i9pDldiwGiVME21ulRavCiPcA94JmcV6i63cGp3GpLF8pkbYl4IH0ZuXgh3pC+o4RLSWa11o8dVQ+MI/luqoF0Vk5rlGoWbSWJb0VpAJ0OrrlDHAkCeN+EREhiov1YrTmPwin1HWZSNEeJcCbchizCu+oeQFLyMIXzLsxqAPtZ919uj1jX/CHeFDgjriBRqiy8wsgAaHI+/hiMIj/wNWhOT2EqXt//D/0ZmZ+aE1JzZ6AuRcC10AZdTXHOzCCmyo1xX3VyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1vgNOYIEHm1GJnhcKpeTOncfmcQYdWgzXYLqnqvAKo=;
 b=bo+yZQyM6Er0bk00TkObmTcEh+y6o8WMGoMbmIM/BghYsMikuYokHWI8zPCQGKU2tpFfNMv3calvsM3nskJ357sYeMrrdIoFoSOIkFfoc5jvP8fuUngDVlQ6w6ePgaXBuxGCQIgAGIgo0QR7iQePOk9Jd2UyZkyx5oRngxHaMGU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5042.eurprd04.prod.outlook.com (20.177.41.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:24:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:24:07 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V1 0/4] ARM: imx: move cpu code to drivers/soc/imx
Date: Thu, 12 Mar 2020 17:17:21 +0800
Message-Id: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR0302CA0001.apcprd03.prod.outlook.com
 (2603:1096:3:2::11) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0302CA0001.apcprd03.prod.outlook.com (2603:1096:3:2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 09:24:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 650cc49a-8ea6-42a8-9d13-08d7c6671d21
X-MS-TrafficTypeDiagnostic: AM0PR04MB5042:|AM0PR04MB5042:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5042304AD21149713D065ABA88FD0@AM0PR04MB5042.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(39860400002)(346002)(199004)(316002)(52116002)(8676002)(8936002)(6506007)(36756003)(81166006)(81156014)(186003)(6666004)(9686003)(6486002)(16526019)(4326008)(66556008)(66476007)(26005)(7416002)(6512007)(956004)(5660300002)(966005)(86362001)(478600001)(2616005)(2906002)(66946007)(69590400007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5042;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yGtd1c7ZOpPGUnwU6g3rjvWq3qagwROcKANC6od1SJLPnB/PZndh4IABUcRL/WH0GO+NvRRjN1b3fVOlDJtHa+mX+4Cjbbe0JKPNF0NRYANwXI4c6O0cAboxXZuH1rD6fdqqsNf5i8kKMr6NDWHPp+BIWX7OmgZwERlPlSU3X2YWsYRSifDjYPcz81aRiE6yrfQfUKfi2MLxSTROfa3PbbZBv3Cky2APdubGg7bsYs3DFcBPnyEvBqULYmuLDh6EAsr9hiUOC0Uj+VT9RRioMEm6ryiLNOqe/jeEzEChb32YLj+qOsFcmY1GeTQBXODhDgLanTrJT1cbwJGugnyAfTmWWC88VoCUErwjKjUuodVyL52VirNq73zxU0aVkR5ynRO3b6UyC1D+V2p5TuduX6ih9WEpFWdko34Yp60yme2g62vicrPEgFsyMI9XjcJWgzMgKNos8+imQx+eCOzpyoXQdFzlf/4qIpgqzL8cqgTqx3qXHjmqKejC//lKOv9ZWQ+BNBfg5o0ZScjBbAVP+yNXpXBA5pXe4uKgfjivJfym5nZr8D7ofrNnCbBXGtoKYWSzbsdKXdAUtwcy63yuWw==
X-MS-Exchange-AntiSpam-MessageData: GQa6UKM3F9mrD+AuaNBakh6bNDC12LffW+5IPQhn2wej0pfDfFgyXAxMSWac5xcmS5rP03L8v9C/Vl1PBnLf+UsQ03PzzcZI5ZBv8pcYJXo69OD8dNMdnOxdiN4p2bewMUvf6ZPS/N8y5dyQRVeVxQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 650cc49a-8ea6-42a8-9d13-08d7c6671d21
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:24:07.0796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1WIlepKl4+/jRad5pcbBKtBotftHA3zUPMkKAkdsSyktD/JUTLe2yhrR6LAMn77SmwMEzQofuhf+4hRvVRVpbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022410_418185_2EAC5272 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, ard.biesheuvel@linaro.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

RFC version :
https://patchwork.kernel.org/cover/11336433/

Nothing changed in v1, just rename to formal patches

Shawn,
 The original concern has been eliminated in RFC discussion,
 so this patchset is ready to be in next.
Thanks.

Follow i.MX8, move the soc device register code to drivers/soc/imx
to simplify arch/arm/mach-imx/cpu.c

I planned to use similar logic as soc-imx8m.c to restructure soc-imx.c
and merged the two files into one. But not sure, so still keep
the logic in cpu.c.

There is one change is the platform devices are not under
/sys/devices/soc0 after patch 1/4. Actually ARM64 platform
devices are not under /sys/devices/soc0, such as i.MX8/8M.
So it should not hurt to let the platform devices under platform dir.

Peng Fan (4):
  ARM: imx: use device_initcall for imx_soc_device_init
  ARM: imx: cpu: drop dead code
  ARM: imx: move cpu definitions into a header
  soc: imx: move cpu code to drivers/soc/imx

 arch/arm/mach-imx/common.h       |   1 -
 arch/arm/mach-imx/cpu.c          | 159 ---------------------------------------
 arch/arm/mach-imx/mach-imx6q.c   |   8 +-
 arch/arm/mach-imx/mach-imx6sl.c  |   8 +-
 arch/arm/mach-imx/mach-imx6sx.c  |   8 +-
 arch/arm/mach-imx/mach-imx6ul.c  |   8 +-
 arch/arm/mach-imx/mach-imx7d.c   |   6 --
 arch/arm/mach-imx/mach-imx7ulp.c |   2 +-
 arch/arm/mach-imx/mxc.h          |  22 +-----
 drivers/soc/imx/Makefile         |   3 +
 drivers/soc/imx/soc-imx.c        | 146 +++++++++++++++++++++++++++++++++++
 include/soc/imx/cpu.h            |  30 ++++++++
 12 files changed, 185 insertions(+), 216 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx.c
 create mode 100644 include/soc/imx/cpu.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
