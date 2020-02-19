Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C420A1641CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sAY6/i7ZEksOAXyGZ3Iqvi75Q+grGJ/RzXnEYLpL2ks=; b=jfhMF0eFW3EwIZ
	8RV3P7Liu/OsIevlSXFevZTy15l0aa7O6TQO9kVlCD8Ew+mPtfIpsa5Km+E9ifhxjExTWv/7mP7y9
	BAblKxoxpPBxwZdaHZIwYhYtguTAUid6DP8+v+jUQJ8xPWjYzAS0XdE5XunbbHC066Wcenk4w3zHQ
	sI0raj371Z0uh2Es874TKWxhWeyBRcrbwu00Q+1xoOTpTG1RJ17QZ5p55WARxN8wg9kc/9WE+KBNO
	AGBdyohHFFY2klaa6anmLB4faGdmo/+ik7Xo5RyrIc3pN0u89w55EV9p4s8c1X6g5xEDv/2xAxf6d
	7jx+CwCdJsxKsDakLvOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MVs-0005Kq-DF; Wed, 19 Feb 2020 10:23:28 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MVc-0005Jz-Lg
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:23:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyzqVx1DYcKAx5uk+u9b2TVeX0MYd+8fIVNq8v72KMI8GSfllGBeCzVfiF6Nq8V5yko+e6/aLqGt3LwBLvG8TScCqxcSf7EmEgiZI+08Ryw+2zY4NqT7OJHzCy15QWWj26T42CQ4q07137Cyog9PVxbOUVP9oL6JDRF6ZAA7pSaeX0ArsJbN8Q3BQjrGzDPKLoSbcOb4rW6xf3pJQvfkeYaW1jT+ueHznAwAXOXccOxtwJHxx1FuFUwL4E+9mxosbbdnuS+q/PRGwpqQB73bcO/AdsR+9znTPIh1TtzwxQu4UpNdlBQt3mL9QA5b0F62G2Oj484/RwgEveZrn5hjEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUs0+8jKfz67XE1EDU0COV3hY0F1wHrKeEL5stXCfh4=;
 b=dLERd8OlQEae1PdD55jYvQFqDsHy4KiiUv7WZjnRK/YN3UzjKX/5H1mf+n5ly6G3rNxW8MtEJdtRBb+hcihdaWuGLsG63GPFH9OiGLDPdKGAA0rHHcXyF7Vj9iFFBuCT0kIcwAzo4KgbrtEH0ErhrSsabGs20yDBLNGln1FsWzB80fqFy+21dGPSwHxXA1ZY9gSnzYTQ4CvJtxHpVwhbgLP1u/GsIIU/RuOiEnn5PPXuy+T80WZbPnnNwMkejDuQ+PutbENbprW6zjv/HuteoWJr6G98YCl5xQDMLFS+Jvf/HXbt1qepBOkK9Y/Eqb12lFet+tW6001nkyHkc5tIYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qUs0+8jKfz67XE1EDU0COV3hY0F1wHrKeEL5stXCfh4=;
 b=eDnN/5gAkDA4EqKLXXJkynbU7v5k91mUUAuN0McGNI/5X7WG9ruOyvvY30TZ2TA0UrYnx/kxpUxFxnpFZkIex9dqaw4f9//Jdxs9c9bJ0ECdBtPI/kOJ/l4nreiXVVyJI56QYhyzZirfag4wSrj4PrEOrJ3G5ZXQtMEcJ8DmB2Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4676.eurprd04.prod.outlook.com (52.135.152.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.31; Wed, 19 Feb 2020 10:23:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 10:23:08 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH RESEND v3 0/4] clk: imx: imx8m: fix a53 cpu clock
Date: Wed, 19 Feb 2020 18:17:05 +0800
Message-Id: <1582107429-21123-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HKAPR04CA0014.apcprd04.prod.outlook.com
 (2603:1096:203:d0::24) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0014.apcprd04.prod.outlook.com (2603:1096:203:d0::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 10:23:04 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5e70990e-8b29-43ee-7a65-08d7b525b6e2
X-MS-TrafficTypeDiagnostic: AM0PR04MB4676:|AM0PR04MB4676:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB46769F0274F66B552AEA784588100@AM0PR04MB4676.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(39860400002)(396003)(136003)(189003)(199004)(6512007)(9686003)(86362001)(81166006)(36756003)(6486002)(5660300002)(8936002)(8676002)(316002)(2906002)(478600001)(81156014)(66946007)(66476007)(66556008)(52116002)(186003)(69590400006)(26005)(6506007)(16526019)(4326008)(956004)(2616005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4676;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wgbbEG2aSUB3dRoo7KwG0lokd86t6fsxg2NI3/H6xfTpjSVohyPv+xiD/D7bS/u3o6WDYmesSdrQKxX+Swl2uIQAaIwHGog2ZPAg/P5vMVSlyBBxqZMaOalSPlqJsH9ycRkB7bWGg4kDNtMwhAXwK2Ih8y9HxNZOSREF2BMvOxRJDYZpH9XxFzgykEVP9OAnS85L2dbOMeUPQHKznCI0rz4lB5CLQFtzyacoKGR0AnnG/5LfnO1MwqN9yv5Y0cXr4zGMmq/EHYMQQtZKF8xoMZRFFSay1/DvzCk3XRuNYIuNN7QMZSAlsQwF1btlKtRn8dcU+HaEZyHFQIEK1mtrNMsADrUkpRO3v7M/9qFk32hSg0DRsbM1MZWX4E8ijgxdPLCnWloq3mgh5I6bu/h360pMrooEgrXUpAEMsdygDVxBP6sg+wymZrj3XnGQDhE6NluHiXzbPZVqf6TMpQPB1J738ZHpBU8TfsPzYNrVQKH38pYITYl0VO5XAR2Fxr7Q+47kKMNE3Stp/fDSCq2uCufa3w6dDqvV3G5mvbzFOAa8/YH9HoKiSXPQjWF4z72A
X-MS-Exchange-AntiSpam-MessageData: RSrON4Z9hRsWQV53vHUDoEPD6ZtFPrdPOAZTNejqhpSeBDY4tt5erMkD/udiRP7W4evltxdWfn9n8xEB3Vxdk5EN5TKpwgXLF6gET9GpaM9iIaWchbgHg1acKYCpQ6JYuE74KtmVSy2jQZbn9q7K5A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e70990e-8b29-43ee-7a65-08d7b525b6e2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 10:23:08.6325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6rOrClj0yZtWOs2AXbMzKGo3fj3lSr7Hgs0OZUwRLYW6SUihlTJzeKZX5rhSKgJkswESyX0zCQ4fNgDsUtUxzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_022312_707257_9F587C15 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
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
