Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D7C16F697
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rFecvA4PBSG7nBv8db3WBR0RJIncNd1VRXiEOpLc9uQ=; b=TCR2EZ9Rr2lYOo
	6oE0J4auPy9JaP88v7zF/guBBy05RVyOj99IyUzIG0gb29+YOK1sodEVwQCdiHVrK/j7HOT9qDIXo
	sjEy7EjixHeJmKUOfj9I/1/Ws53H1r+NLJGZZoXpxzksNJbQCZ9L0xtJNaOtKuXZk/eI/1+oxKMjl
	oW03nxAO3x0vkkynnST8gLEhHN0qpPBr3La8uuKN7RLLAw2/Yt2HvA7jn12LbD9iIBFj3/SLZkxRs
	EunE3EH6gmHFonW3NyGpK97VvdsWY222k5cYDnX/piCUAzLI7rlxuOCiJRMkP8aZ8dSnf0WjxSumo
	igF00ueAXZIxLfrteWEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ob7-0002xk-4S; Wed, 26 Feb 2020 04:47:01 +0000
Received: from mail-eopbgr10044.outbound.protection.outlook.com ([40.107.1.44]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6oau-0002wr-Re
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:46:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOAS0dJKgTA4ywWSLE2RJE7bi5vKZOaNgS9KOWYWnjF6awq2l8beN1a+z5wHyigqMfeq/rQLlzra03gEJai05nQG5r0hhrO7x3evmflxTijvrbHdI0y3ENnHRBVEGURCa2xo84hUfEkW7dp4VsQnNLkYrPjk0VjVva589borkwTssJDMdefFBKMmj4OGxhhSGbHFAou7V+g60eUvalU/E+sSE96+HoWMexbHozNaAcpA9MawB6j7Hwp4KIgEt7nWiv+Fb1gX8bO9SXf6irjMbg2UY3ZaCwKpQRjEWvG7EpOrc7yqWCOp/BQfc4n302GUH2ZIUKWMfkLmt/dNNR9n3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYuCEoEzcR/qhzHlia3eFVR0dLTljxPsdFi7pMHbulI=;
 b=HxQaIY9AU/uXOc4//vIhnaLtwqnuX7h3XgFgQAKfWqKWRC7OVsxHI/N1O+Z6NuFoHUoRcO1sTnjBYex852Bfo7enJkRDTaLCMW5/JdnuLqChEemZ8JD8JARRBKxXn/lqHYEBjt/HZcWvhIy87gObzO2YpWnZWe3lSyZ2gileWodI8TkL88VaSVUuPeuSOIkfQWy0s7kQ/yM8JCXS/LsxSOwkfyOR8oEjnweD2z6EyccG63i1JP237E8j6svnyJftxMlIvhoFy9m8sb9dIDA0fLBgRp3Tj9ogxpeI5OthSPYS9+967Xx5RSNOY9qUsT1n2a2BtUJ/AcZ9CrPInQimqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IYuCEoEzcR/qhzHlia3eFVR0dLTljxPsdFi7pMHbulI=;
 b=NXF8xZ44uZWBhdtA+w9xbDb1NqX+tYJQ8UTuhstV8i9IkZwCbkstG1mEoxxlC0zU6LlNZpofUEIqI9NB/wkiBE/6c48myRN/UMPvsqqSygChP2R66yZf8BpRm8KtL+9nfZdoJh/SMUlF/EWHmhqtIEpcN+NOEwOAtmuRaG9RmM4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4291.eurprd04.prod.outlook.com (52.134.126.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Wed, 26 Feb 2020 04:46:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 04:46:42 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, robh+dt@kernel.org
Subject: [PATCH V3 0/4] mailbox/firmware: imx: support SCU channel type
Date: Wed, 26 Feb 2020 12:40:39 +0800
Message-Id: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0135.apcprd06.prod.outlook.com
 (2603:1096:1:1f::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0135.apcprd06.prod.outlook.com (2603:1096:1:1f::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 04:46:38 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c5bcb701-65da-4fe0-5670-08d7ba76e036
X-MS-TrafficTypeDiagnostic: AM0PR04MB4291:|AM0PR04MB4291:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4291EA8842A5C82F0431F1D288EA0@AM0PR04MB4291.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(189003)(199004)(6486002)(316002)(6512007)(9686003)(86362001)(8936002)(2906002)(36756003)(4326008)(8676002)(81156014)(5660300002)(15650500001)(81166006)(52116002)(478600001)(66946007)(956004)(2616005)(66476007)(66556008)(186003)(16526019)(6506007)(26005)(966005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4291;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qm6ykU2db2A+oU9aVNE5D2R+G4HJCdn+NK5mOZtjINMRhUKySzogwAb883jDLpKa7td++ESOCx+hEyrvro9Y8kUD28CJFOxlkqOUnPTpzDoN0J2IB6T7nPd8PxHcmQkfzYlMAv2agEuiSreqS4+o8GXA1vGtqIrRLdc1y+hWjR8WqdbbawsLAhhAe8vGY+VvBsfQsvu0/zt+6r1i8V2vsDBrW/P124mOtrRkxn3tejdDhExf3K/H26pqiONLtY7kok1KAdklugPU7YW/FDgsjMabRzHKZVJUwkdz+S3T9EXssp/6wGwtjcTK/3Wk/CoINtSjdCWW6RXZ20sF/5+0cYmRJ1Imd+crQhXcPrzd4GF8SuBh2YZMpj5IDgq+MKOGiQDravqvYFROUVfJeOHiJzP+x00K/5ZgHYufs5uJVhFv8C+Ja3OF1L/c6V4Huwr5bwZNdw7UwI7UOTkwfG0La3B86DoQuNrpKdsosn5lOBtVv2eT0LIkt4RuXBQA33oDJevuIItw55kDDzAYL5/O+A==
X-MS-Exchange-AntiSpam-MessageData: H3ut792Myxe/hZ/DJkLGvIAb4w42PWyc1WM4DRUkuYNL2cjvZgyNsmCELcaJGmyBTKC6FMXTQIPhnZaviYgOMSt0WmRCRX7a0BQxjGKWafNgRHhJgJFmtXx5Lv3lpdPri85nPLJ0tbleTB1PC7Nr3A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5bcb701-65da-4fe0-5670-08d7ba76e036
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 04:46:42.9057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wjg+tDPdWSRsdGg09zgZKH4MSjVUPexmqG1ObnKSekoB2tOa7G3eWCuYfLNu2POfPNxcoogP0+ZdjQSkwsLNPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_204649_019533_658749C1 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V3:
 Rebase to Shawn's for-next
 Include fsl,imx8-mu-scu compatible
 Per Oleksij's comments, introduce generic tx/rx and added scu mu type
 Check fsl,imx8-mu-scu in firmware driver for fast_ipc

V2:
 Drop patch 1/3 which added fsl,scu property
 Force to use scu channel type when machine has node compatible "fsl,imx-scu"
 Force imx-scu to use fast_ipc

 I not found a generic method to make SCFW message generic enough, SCFW
 message is not fixed length including TX and RX. And it use TR0/RR0
 interrupt.

 It might need https://patchwork.kernel.org/patch/11395247/ to avoid
 build break.

V1:
Sorry to bind the mailbox/firmware patch together. This is make it
to understand what changed to support using 1 TX and 1 RX channel
for SCFW message.

Per i.MX8QXP Reference mannual, there are several message using
examples. One of them is:
Passing short messages: Transmit register(s) can be used to pass
short messages from one to four words in length. For example,
when a four-word message is desired, only one of the registers
needs to have its corresponding interrupt enable bit set at the
receiver side.

This patchset is to using this for SCFW message to replace four TX
and four RX method.


Peng Fan (4):
  dt-bindings: mailbox: imx-mu: add SCU MU support
  mailbox: imx: restructure code to make easy for new MU
  mailbox: imx: add SCU MU support
  firmware: imx-scu: Support one TX and one RX

 .../devicetree/bindings/mailbox/fsl,mu.txt         |   2 +
 drivers/firmware/imx/imx-scu.c                     |  54 +++++--
 drivers/mailbox/imx-mailbox.c                      | 165 ++++++++++++++++-----
 3 files changed, 176 insertions(+), 45 deletions(-)


base-commit: 48b4bfe7105f646e270596bf9d22df0e8a4ae217
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
