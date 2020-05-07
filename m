Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 972D61C8193
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 07:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSMSPjQcj/J8YElAWqd7JycpOTxsflO6mpVyDZXbMP4=; b=tyWfBoD+hWAQB0
	O/Z2IeA8g+yIHWk6KQgaxIDwDiBmL/B72mlNzuSNWi3l9BufoZeMzOiAPqLIFE8zFhVyvu7ryI8fD
	wGdHuol2/IqGkA4UN/gj9q+fE9q6+cT16rvl//LW8ns8e+l4a/fNGNtcJrT875NVE/JNo5xIyZHBt
	RkBTHb+ZO4Rd9TM3EeSSDAkA6HW/hT819Zh79wCtyLN++k6z7uflnjaKS0E905RtlodpFjT/Q+248
	q0dS92KqJcCIE8q5gsKERWQoDN9us3bEm6ZTnyUkKKKEwLRU1VhSWTq/HNufmEWVHs06c8RfEc7A9
	Iycscmct+3NQRYPjQYuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZCo-0000wP-W3; Thu, 07 May 2020 05:36:23 +0000
Received: from mail-eopbgr00078.outbound.protection.outlook.com ([40.107.0.78]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZCh-0000vN-Hc
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 05:36:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=juzuOS9fBqZGhEUUi10UfBn+TwqFmY2/DL2IrZ9XnDIlimhgH2kcpDgVs+e2/+vmEWHb3CGvJk7BO0GTJkYTLQ280h2tXq0x+sJTLGXIhD2lPS8QyYJeSIRNShpXpfdD2JcS+0GU9rW7CqsONvtROkjiCxR1IUuAQw/8ysfh3eyxzLr4NxQVLTTL4tPpKc3h2bTKMI93UHt5CftyXFEOXMjLznmxwvNry3Wx/hUzaKQ5eF0VskSa9GjhgIl/cXX/JIH+0PR4M+X3o/PiK97plJSseZm7/z+mQYkb6swS4sgAnLHwWzsa8wq2Y9jE61uI9Y9fpDNFuuQYtvq7EX/tLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AqCYS3NmskNEmZxZ4yrMbPSblXiHgMB5ksAGQNtVQM=;
 b=Z1oUy6Ii6YtY3WMCSQbfE3r2ucUDuz4EbhjCqmIZNSenOi0V5pakqqRcnYTUYImExwK9sX99F7N0W9Jt1m19EFxJTgqw7OV0fek1Huce9srseqZ8xqxRDEUDDEFHbonj2Ey1Ml4dIhxg1lltSV4adB2o16j7yV2Mw9XzW4dlFLjEwDmang1dmF17RvFqYed9sQvf9OFme8HrSt7IN/XSxSY5fqyg7UAtJgZz6IbxMPpXJQ3HHbYyOvBa87YO8DfxBxijavPPa1dQzVIy8C9IJihMR2/oISve6azMFqMEqM5VddnZ3VbRpwXiqjdlJwzPPoZ3QKQm+n3xtGi03k+qlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6AqCYS3NmskNEmZxZ4yrMbPSblXiHgMB5ksAGQNtVQM=;
 b=N6rzKr/MCBXYHblk5Ar0D+VnGrDUndG3hfpnugFYwrX0Fpd3oJMpD07Q0kJptKmSFNVwLQ7dCXHxQ8lPVVKfs9Wb78YPNu8v64cVMDfJfYxHbiOBXyBxOEJ5qhSrfxs3esf3WupZj/6OsBtnnetSw1VxZ1ge57XYmUMQ2GGxkAs=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=oss.nxp.com;
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB4196.eurprd04.prod.outlook.com (2603:10a6:208:56::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 05:36:10 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 05:36:10 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: Mike Leach <mike.leach@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux.cj@gmail.com
Subject: [PATCH] coresight: cti: remove incorrect NULL return check
Date: Thu,  7 May 2020 11:05:47 +0530
Message-Id: <20200507053547.13707-1-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR02CA0091.apcprd02.prod.outlook.com
 (2603:1096:4:90::31) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR02CA0091.apcprd02.prod.outlook.com (2603:1096:4:90::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.29 via Frontend Transport; Thu, 7 May 2020 05:36:07 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 81348dc1-e014-4b53-dcbb-08d7f2488c35
X-MS-TrafficTypeDiagnostic: AM0PR04MB4196:|AM0PR04MB4196:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4196B3F438B9194DA42CEE4BD2A50@AM0PR04MB4196.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:252;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RD5sRbx3VJrF5OLwBRaf6j2SZ8VZo2WMzqX6YF07y8pIse5amvqabMBV0QclJeZQLSll27fbb/UP2kKu5K4fNCNQow8tpIIkhKsx7PV8nJT6PXG2hz5AHCExfW7V8OfqNzF6K52SUobLNSVwzQASAXbAhjUNbHQ+DpOwa67/oK2l8xUfvuCh2DpuCrcEHg+yLGasm1Ut/VCxatdXv9WB2+h/jfsyfM2YA3Lh4D5TOHGWP2qWS7Iue/fI5htqSNY5G6uWsB+Ax5/JOqc/1FitqmoN06I4zNEZug23q5+yrA6ByRe0BpPUZ87HV6UVQZNqK3VYyxTYvS2Vv273XcbrBsahOiPl/PsuJkDMlowgJ1y82KFama6tk0RJwb5alZfqhoPn8g75KJ3tS4DwnTKavl34vbkXYr9CqTIXCzbsdKEsY0/1Wgl2HCnB4csyPGL0kBx0F7AZnhOAH7HSS9hd/gVRmL024vkO3pfjrVmsnzZ6YRXpU3wzT+h7HXwJ/tHvGhx2JLltPN207Oflryekq9Wnaaoa09/ZvHYfmp4+0klRpYKT9YKdyqFAHzyBqjRT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(33430700001)(110136005)(5660300002)(83280400001)(83320400001)(83290400001)(83310400001)(83300400001)(4326008)(54906003)(6506007)(1076003)(86362001)(316002)(52116002)(2906002)(33440700001)(6666004)(55236004)(8936002)(44832011)(2616005)(8676002)(66556008)(1006002)(6512007)(956004)(478600001)(16526019)(66946007)(6486002)(66476007)(26005)(186003)(110426005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ocNCnL1jVsnELSd9LOHmavvMFpKUt5+ZNiitmZVJq6KTb20lydAstHywGch1EoA51/Z7ehPDgBzYsSjYQ9l0w42touMihrbZ+rQLKGTE8yAl1k8PY1dByRiqFVJSClJZnPnPZepsPF7OXOKZc3PtXG5PERE9F6DKyxrr4odhwWK5PQ4V5GXhJCSxdHGSIaqYAllzRDixWaK19lLOriUtOcE2raX4ZsVPk5paD7Ww/I+WQvt8sQcFY/IEXj4IERsx1yjNvya6671QdNiJR/Msu+axp1OtOU5dBPXbtO0FlhDrq7IQEJiGZ1tdaHQCtDIOF0z4DA/2F709KQQGZ9AewfklulMLKH9G32VVudCEROFKQWIoGFdpUrdt4AP6lcVcrGsxJyifjQHph5OxXj2++sy/uq/ZuaW8l9LPPi6tUmxFhF8qCYwIq3RvLAJ1H1AfWP0uZlluo9A9QKhAEgP3YsWN8fADyXq8lVspLeVQZB9xAqMJsap+S0e1/D49jiVyM5jCdn2hzUEmuRE9k4b6/IGTP/F7E0VCI4AvsN2plOa0l4NtftBP++mbd/CnyKbZpINSZiKkkxum80U54t6zwIyz2RAjrH9WULYEgTmfVhWBahsxFFdY2M3NC44Y5AxhEtljNbO90um62ernqqnjrnIrayS7xsyzNrYIsV3N+z5c36dXgzI+e+SBOP9QYX5G1CpcJxIKL30CkgHIFMd0Vdl9Ohdg6S2Ard0QBMu29SemFJRG2v3GoM1fyG2HNQRkrG8GCJk5NCZ10esIZHw7cY2JAwEe6lWke4P8Xokq2bI=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81348dc1-e014-4b53-dcbb-08d7f2488c35
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 05:36:10.3989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /XxOXf54RaJ6IBh6JxD+XkVgVUPeUQfhrDknzTKXWXJ6y5nNZwv9gfO0RlJYYPxdj4O6RHnoQtCAzj48CtpQZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_223615_609049_7EDE718E 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.78 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fwnode_find_reference() doesn't return NULL and hence that check
should be avoided.

Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
