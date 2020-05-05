Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322581C5730
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9yBJlnxP+FsPmuUNdIqfCE37k+heMg8UAWV6yJmOos=; b=q9GSlit7DFep5j
	GAeYMMNtMYdTOxP1XddXjEwjki353peYxTJ9tyU80f4Xur1ecv9+4x9mvmvZc+J9phQwAb5tlVtwG
	jp/afrYNnIZAXkw8X4MCg+DLdpPOyvAzFsVyN0EKpcTeVz5A+NFYLJxC4ptEyxypd/UoOzQDyoGlq
	FbJFTvAy3eaBa5XtCgAc/VUFlHhugPR2M/HQDv7RMyA8onSKdPgm/IyoXDgSeyLlsXnMym9bL4eWI
	oVsmwB4kZD/xGkURgajl5fOIPiqIEb9ZHf2E+l50xgbJVYWbouSfkgLYSwviFVEvX8gdvRZR2cg1d
	+87HSPN9SmhZO0iyRddQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxod-0002up-Fd; Tue, 05 May 2020 13:40:55 +0000
Received: from mail-db8eur05on2078.outbound.protection.outlook.com
 ([40.107.20.78] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxoT-0002u0-UP
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:40:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SeCcuYhEV+dU/mSTTxaSDeEr7nVfjJcB/DVd9r6NYX8JujSpr7jpjQ/T1HTj3yvJmZjoO7RdcfvSIrbZr9zsCVcMhbs8SJQbIRAC2fplcMLhhulrKAZ2YwbEU921YSm4pwgLcEwgRKslrMt1IuMUAs7cmA9WKFHSBYC+6isRiWldahAOOhj1BqwVbuXtApSGmsX6qF194KOimUzCPwGJ9uVRuCFJitqedEdLNzHXntNBeaW8srQUAI/QipKQtAbSgd6SC1MVCJqWNWCddXdFJzuVEFKLiK7l5lrOPJ6FfDRRw3Xk2rZcR6SYKg6bQZjSij45p1hpOll7IqqiyoMnyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRotqXTcSsBDHa4PVW0dM7ESdzaavHPVM0yNWb72z8Q=;
 b=mYhS4AS3J2oITRxxYEARvwA45Anh9f7p1d8NhYmc0mXDzMdrY69/Bgq4lcJHstIbqz+b3a90lFm5ZGtFxzHRlRldTWt+U8Z4ZuaU3gb0GZj/WxYEpnDEhZcfU5fJJy/SJHzfjSRTM+Y5SydO3qDma6suCJNv1AcWHrhMwkQhJD4dFiCkpPF+54XO9c2+9xD1rl0VLz9xC0Euf66oEvQyzkTtl30MIR7eRKXfm7e0qfxdTdujJh3gZJkA5mk/Qpm3yhwmPje6EegAkDZtXjIJWBQD2sx/I7DDLvsSMqiDzNbfFkHllaTwJopPk51g+CsrwN3QnOoTmJYfe8vG2DY1/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRotqXTcSsBDHa4PVW0dM7ESdzaavHPVM0yNWb72z8Q=;
 b=fv4zjtbuNvzbIg/HCcykB6xjD4DMZrGNfTxyHZ+ouIx3xIDOB8jJKtyFRuMiJhY4edCBpTK0/ln6rCMrg1Lm5+e3fuu2gD49DZCR8gEj0G3gjaOUXDVw11Ib8bpytdH9c1U7UngT2Ax+fnDAo3cmAWyG0AbhyMpZe38yqyzW+Tw=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=oss.nxp.com;
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com (2603:10a6:10:aa::25)
 by DB8PR04MB5900.eurprd04.prod.outlook.com (2603:10a6:10:a3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Tue, 5 May
 2020 13:40:43 +0000
Received: from DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9]) by DB8PR04MB5643.eurprd04.prod.outlook.com
 ([fe80::4031:5fb3:b908:40e9%7]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 13:40:43 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: Mike Leach <mike.leach@linaro.org>,
	linux.cj@gmail.com
Subject: [PATCH] coresight: cti: remove incorrect NULL return check
Date: Tue,  5 May 2020 19:10:20 +0530
Message-Id: <20200505134020.11148-1-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR02CA0016.apcprd02.prod.outlook.com
 (2603:1096:3:17::28) To DB8PR04MB5643.eurprd04.prod.outlook.com
 (2603:10a6:10:aa::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR02CA0016.apcprd02.prod.outlook.com (2603:1096:3:17::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.30 via Frontend Transport; Tue, 5 May 2020 13:40:40 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fe92431e-80bd-4b74-d245-08d7f0f9e80a
X-MS-TrafficTypeDiagnostic: DB8PR04MB5900:|DB8PR04MB5900:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB590063727AC2E8EAE30EAFF8D2A70@DB8PR04MB5900.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:252;
X-Forefront-PRVS: 0394259C80
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CTNDIrnaURcd03FeS80+Yxu/YH4GTPLSlOyTcZ/iE0B2ZLAq4qnQNBNRmC1ryivvcGQJC2toktYwAU/XAMPu+9yPugIC01tgLkQ4a+Z+aD5KjAOdz0aYyaEIko/Nm/ciWUPySsjSsE8g1YNYJwEdTfe6TxcgFpEwKnFNJnGXWitIVEGbzfNnbYZCbC048KO0OTqSPDQHwSNJP7Sm286ThOT1080Z0VvCyycvblUSFyqSmi4gcUKyK/gG3okWAuimHz22O3JR3qRmaBnvHJxCZMTswRHdng61ifIr0Ve1lvsOuEv1sFhzkLWqAR4pWp431+9JtfuBUfZDus8Jww+PV/Iq6bOPvIi7C/EY6c/Rahtirwuh9WksSirej7z7f+TSSCbKudU8532nJBh59Rlx/tZDBExsf+bjBAKJ5DEMmYXwAA5yO6HfPHU2SHHJwZcRwHfTW/avh0eZWhZbiNIdhb2jR2O8e0ZEMdPc+EJ9FpZGbis9Q6fY54JtNWN0HgTwHMAwEeK3fN0RVgNdIxxoIj3DP6V/GNwwbOuH8Rl3j1DpeQ8ER1b/fKFaS6Mp+hKk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB5643.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(33430700001)(498600001)(86362001)(1006002)(4326008)(6666004)(1076003)(52116002)(54906003)(66556008)(2906002)(66946007)(26005)(66476007)(16526019)(8936002)(2616005)(956004)(55236004)(8676002)(44832011)(186003)(6486002)(6506007)(5660300002)(33440700001)(6512007)(110426005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: GrQXmalPdeSiWv1MZPT6/63IXQBbfPyjiLnfdeBRcLgDkKiPfRAYy7uQ/Quy2UYOIP/h3npgtWJqnGE0HturCZM756cNmnJhLhBOlMAMw+L7dfERKqJyeSBNWR71QLg4MkCncds7zSGtd7SGSksaGGzwSEhSKECMHxkW4zC32xruCAYMzeNYJbsZmUEbLaNp5vvQ2vnDA2xcPwti+l8J9lJPCV3jedNFn5/0ZZw+KWJ/7AwYEOpgspDYYB2I1QY1IVXlSWWLU6z4r98yWvk/fL13RcSCXGBfg+TGEO38hsYUv8JN3A06UMxq/TGF8pd7aHbZKA0OKnZ2KC7aL61j2T4E2U5u28OlkS2ckClU9zr3fEVzNYBco/6rqqXJz6/Q5P4kN7IN+ZAcDn6YJMF85l0JC/ARLwAvboqo2trUO4h+zilom2Vb/kt9ESrEzeT3cJiCB6L5tx/t0VrYlZ5cRnZ7NfLCpsn7LOCAKFUctBk48BUHMGHtReg6DzJuNyMxw5qGcZ1QMxdB9gBm8u7NmuNwjFWVY1z2wKakKr/fsht3a2sTfqrFpJgiefjBTy7i5Z1ZkmtreBOkpasCrX49JjA22Rmi/7hmk3BIaB+zEYekbYNdvwRDDufb63nquzp+29jwMAjl/aekeILRJKguxhBtiVlrIaWKWL/vxdoDTQmwUWUCNaH4r9ruS6egj9j6/LX7MB/O+I+VVbh4c6E3K2zofvfi9+E3sZTl0PK4c/J6VUrhzsfTOOOtHOED7EL0QSW4/9BHkZ7IDU3ZdDdDchEQjCgGBPOftAblryMikzY=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe92431e-80bd-4b74-d245-08d7f0f9e80a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 13:40:43.0168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RI83TUZtBgJQh7iCvJx09Xh6y3yzJJS2Fk66//WRWVj8OEdZAc9gE72d15YS3CwVS0zkV8bn6qswGmocg+IPUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5900
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_064045_987543_712E6856 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.78 listed in wl.mailspike.net]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, Calvin Johnson <calvin.johnson@oss.nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fwnode_find_reference() doesn't return NULL and hence that check
should be avoided.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
---

 drivers/hwtracing/coresight/coresight-cti-platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-platform.c b/drivers/hwtracing/coresight/coresight-cti-platform.c
index b44d83142b62..2fdaeec80ee5 100644
--- a/drivers/hwtracing/coresight/coresight-cti-platform.c
+++ b/drivers/hwtracing/coresight/coresight-cti-platform.c
@@ -120,7 +120,7 @@ static int cti_plat_create_v8_etm_connection(struct device *dev,
 
 	/* Can optionally have an etm node - return if not  */
 	cs_fwnode = fwnode_find_reference(root_fwnode, CTI_DT_CSDEV_ASSOC, 0);
-	if (IS_ERR_OR_NULL(cs_fwnode))
+	if (IS_ERR(cs_fwnode))
 		return 0;
 
 	/* allocate memory */
@@ -393,7 +393,7 @@ static int cti_plat_create_connection(struct device *dev,
 		/* associated device ? */
 		cs_fwnode = fwnode_find_reference(fwnode,
 						  CTI_DT_CSDEV_ASSOC, 0);
-		if (!IS_ERR_OR_NULL(cs_fwnode)) {
+		if (!IS_ERR(cs_fwnode)) {
 			assoc_name = cti_plat_get_csdev_or_node_name(cs_fwnode,
 								     &csdev);
 			fwnode_handle_put(cs_fwnode);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
