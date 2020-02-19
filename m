Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CA016410C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sAY6/i7ZEksOAXyGZ3Iqvi75Q+grGJ/RzXnEYLpL2ks=; b=q3jS1U0yMPqJI0
	e4uajD1wnzilr6YdJLk9i0hMPWLfUMq6yn67Lxzisv8ebSYJbVJ562OSNajbr5r60mhIkmfipY24/
	NU0fDhOFpU3ln7tgHIgJS0skngQe6WzfzqLIjxu5CTE+wKE7N3eeiSi0G8ujCVtkGB56alQs9kS2x
	o8VUJQNtje9rQ83mKJJRjhLToNmwZ1ezT8o6007EGpLv6fjOGzWmErnAP24g/oLhYn/nYljAJZcmu
	B0e0/C+9nQrAwuPQDmC0exfAtFAb+lXF7wuAB1cn0VCdNQKCUbzNRwRvLqbyCI6yUX8N3/jtsjrhA
	eLQ2gc4FVI4PvNqqzdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4M9O-0001q6-A0; Wed, 19 Feb 2020 10:00:14 +0000
Received: from mail-am6eur05on2053.outbound.protection.outlook.com
 ([40.107.22.53] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M8s-0001fz-Cz
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:59:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ViuTN4t1WoxGvObKyKJhfjtFfMyJPdMuTo7nCy3569jxX+FAAAXiujrUMsDYcDkoyWXt/e5AA6L2FZx0WvWQmJx6TvIhYviIYKzp4yKxuyXYmuesM6+dGkmdTK2YXdrXGtX6bSMssvOrURRNrektBFd1RuOEnAp3oLI9NeILwr3jH/RJgoS9PugKxFrH1MXAhOpEzvFwf93+4nrnuT0ZmOOnpX0M4EQM7MDiX2WFv9XKSdRJig6FZ6q3AvU/8hJXtJMRhs13mVsSkMNQGnPF9JqjrZWIaz+HSVV7jxX5AbQvDwbRfTFPpG9kCMqj31iQRyTTAEjN5ce8PBfz7n+Y5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUs0+8jKfz67XE1EDU0COV3hY0F1wHrKeEL5stXCfh4=;
 b=XxlMOsN7nP+el48TesKRI2rE0wQrbs6lRnpTXOmXOR9Q7sSFxJr5F8fDSVWhXEvU9JQ/BvDhxJnfqcbb/eMbcWUPKszIgWYvCLsvXepjeGNWJUNMDbFpvetTqtg1FUNnTMOobi/E7W6PrxfybkdHZjBNieAu+PbJnXBB2eVyt773xN9eXXpcndtQrPuQuAOGAcCsVHt7ok/IxuH5Y61JeH1XzWv/Y8w1Lr2S+IJscMpq9dewnbChhbWeD3RvduZ2nmY9R+arC7CvC2h3b8WBysKGaEgSS+IGhdBattgdzxvGuCRqFHV5bu3zzECW8yglSSJTxNNnkm1ZGY1WnIFrQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUs0+8jKfz67XE1EDU0COV3hY0F1wHrKeEL5stXCfh4=;
 b=r88Wp/UD1wO3x5Fvkeo/6slIVSZjoj3IXD2O9/DUIr1WBmUha4azIxAcqv+4uCOF5/I5mULg1uD6ktC/oLmewZxXKrWnaqso+2in0pbCBmcils6yO9irPFzQdl7OJ4m/U6Z3xT4E5g8rotxZxxG35hieuFkEhfK2Xd1wSp5hPFI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6514.eurprd04.prod.outlook.com (20.179.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 09:59:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 09:59:39 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH v3 0/4] clk: imx: imx8m: fix a53 cpu clock
Date: Wed, 19 Feb 2020 17:53:34 +0800
Message-Id: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK2PR0302CA0008.apcprd03.prod.outlook.com
 (2603:1096:202::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0008.apcprd03.prod.outlook.com (2603:1096:202::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 09:59:34 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e8ac4cd8-a3a6-4213-b6ac-08d7b5226ef8
X-MS-TrafficTypeDiagnostic: AM0PR04MB6514:|AM0PR04MB6514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB65143663F3703822FC5DB91488100@AM0PR04MB6514.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(4326008)(2616005)(956004)(6512007)(5660300002)(8936002)(9686003)(16526019)(186003)(478600001)(81166006)(81156014)(8676002)(36756003)(2906002)(6486002)(6506007)(86362001)(66946007)(52116002)(69590400006)(66556008)(66476007)(316002)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6514;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ld55/VfB6iZDzJk6QRMhxIWP0iuf5ZOZ7j0/5fTG89KKJnwAznHvIUTx1i3Pj75geHFMU5EXG0DrsmOsdlumcN6Gryr2syXs7zpzisOO5eG5ld5A3F6dG19zJ1P+HlyK+Dp0aMP3vc0oPdby8vgUtFYu0CihbgMr94Ob0rQ4qNKGDZFYzuNDI5TZ+jlVRnK4opt3DU2humIrP0HuD/s+AkfevDA6ZnfKWgzFbRChL3MF9UD+C1aCb/PDGi7KJSuX8A4sumjmcJu/DmWhxXDE0bUs7ryU9P4vMlHP5Or+vJPANi5iTp1X1vEq4xVtxn7GIHIpGvqDGpn5gaIcjLnM//iy6ukkrdqivs4LtsofVDGnm1dvyj9NG2+NdVK+iAOOZJZ8KnuPFZt3+4Zc9JvueziI8/0Xp+DRO10l/SHqrNtAYC2ygJsp2D/a/yOBVxXtd1g1PiEvln8uSdJ/w5u6b9edsuH8oUqxIMOIMumudKJiWO6fQZXy7aM2DjAYxNDJeoq4ueOgDHr3KHQGxEtJg8Gc76AggXkOGJgeuvcCAQ+LGgnmeSlMxW3NGfsQUQSL
X-MS-Exchange-AntiSpam-MessageData: BeOaCoLIFR3Yo5Uwgtu15rX48MC5jahHh7pVMR9NTedDcItHrerIRYAfDe451T0EqwSc9tW/pnmUqtYMjpBCF7rNyt4OGyM9LZ96/eUCNUYHvNdVOGfe5CqAlU886L2iEHKOrulA2bPriUxj92BO3A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8ac4cd8-a3a6-4213-b6ac-08d7b5226ef8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 09:59:39.5351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qewFcObmvNFQ15roaR/j3whPr1Zpm1dNTinsHS1652X/4xmotcU1tFkV3iVcHZ1Y/W4lh/pJc/UbfXXxEb12Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_015942_449619_6625F806 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V3:
 Rebased to Shawn's for-next branch
 Typo fix

V2:
 Fix i.MX8MP build
 Update cover letter, i.MX7D not have this issue 

The A53 CCM clk root only accepts input up to 1GHz, CCM A53 root
signoff timing is 1Ghz, however the A53 core which sources from CCM
root could run above 1GHz which voilates the CCM.

There is a CORE_SEL slice before A53 core, we need configure the
CORE_SEL slice source from ARM PLL, not A53 CCM clk root.

The A53 CCM clk root should only be used when need to change ARM PLL
frequency.

Peng Fan (4):
  clk: imx: imx8mq: fix a53 cpu clock
  clk: imx: imx8mm: fix a53 cpu clock
  clk: imx: imx8mn: fix a53 cpu clock
  clk: imx: imx8mp: fix a53 cpu clock

 drivers/clk/imx/clk-imx8mm.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mn.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mp.c             | 16 ++++++++++++----
 drivers/clk/imx/clk-imx8mq.c             | 16 ++++++++++++----
 include/dt-bindings/clock/imx8mm-clock.h |  4 +++-
 include/dt-bindings/clock/imx8mn-clock.h |  4 +++-
 include/dt-bindings/clock/imx8mp-clock.h |  3 ++-
 include/dt-bindings/clock/imx8mq-clock.h |  4 +++-
 8 files changed, 59 insertions(+), 20 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
