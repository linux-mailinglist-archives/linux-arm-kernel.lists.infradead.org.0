Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E4518C0D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXDE2/4JIlpziHrYXCZk+0Oti5B/jV7ohAWyLSAkh6s=; b=qSEo8K6pnl0UZn
	b98EsPUuVx1TYkAyxo8EKX1UJ5sjtvWW/W1Xoeb8jdGGlErZU63cJ8LjqF6VWNPgUlGVgTHHYRZk/
	vV16icTR9ru9GFZA7m66344333GGGQ9AQ8CLTNT1ms6lMse/Kis4D1Z+ONRYilzUa4AoGMoNCY2py
	wdkfF+mTgOr2MXMFlPUt3a9b/ro0P7+L17vapqw3p4sjp+st0Zj5U/b8dml/4+1K92AEFuUC+3uPZ
	tqzN2Q1jbWi0zA94JlOHZtjCpqQyvW0jrrBRKndfYBCyUvQXhXUERHD4hLeMFcnv8XpvfUee97Nwo
	By0ZaJwaYsMUeW9pU89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1EL-00041f-AG; Thu, 19 Mar 2020 19:53:25 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Cu-0002IB-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:51:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHJlQCqeIskHJSirDvJ7vB8Xi0O4AD1BBBBCj0rSxF21/SfCU86oVB7VwZcrII9UDGoGTGunS8SIWw506G0ohg4hHZ0gYxG49pnHGytYzJEcZMwOpVdMQ3Y2jToyFEYPeIqKSFQjkRoeuTyoGjfAFi0tZpiw3zoVwBjcoxBJ73I/x3w7qBrAqSEyhpIhRlJN9qQE1RT17DxbXr8nxpP0EdpWiyDYc9gyXHPxetyTzJtwHZpNzM1ub06P68M4gmZS4sZiXR2xrk55SDoRz9FmMq3aRPdb1a6vy2g2Y7NbP6wGQaoxWRghjXxMGd8ki0vCbpRrVaskWUgOhGLEtMPxyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MIJvm2uYZN1kvrqVYFKaOn8ftsCDFypCbj2Nd45Sk+w=;
 b=cOAudeVPH3XgYxUYt39EjGo9HQCGMwyfH0eoWuETHxQgwAylFqKZAq4bk4jZRD48IGwBWe+gZgRr+bw7PXpMCWgRKvIEF8CQ3kPRqA3QzhizifKznFlVN+FTiHl9mGa1zRG2nsY5lOa9tagd5v2dmQ6U8id5KqwTR8iMqEBQuDoVhEIqm0O8I+Ogm8dBBnOHgSsQSa/CQ8vcSm/VkU76/ZUotSfrVlgiOxhG/r12A9kmbV8skBX3faLpLr/MIRjy4HHL7LxqEmwiAx0kCGL4uDSTfwI3JXOxjPHlMRxrSDfaotXQ95oWaqM/z9aX4oFvx6sGHQrFkk2ppvUhdOLNow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MIJvm2uYZN1kvrqVYFKaOn8ftsCDFypCbj2Nd45Sk+w=;
 b=iDxp4OoxnvBoeeqgPRab42NJ8jWnbX88Xkn7S5ZxfI1+JMrpH6gh/ejCtiAm/sar0hS8rKIS7LFxifQdDrqmg4ApwgGJ+rYaESn2gtEPV4kfWVD8iYDPyEofumloUXIfKdybBAI93RuOnztJnRcAA4H6LsV7R/tAhDCsKdiZQAc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3486.eurprd04.prod.outlook.com (52.134.4.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 19 Mar 2020 19:51:53 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 19:51:53 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 5/5] dt-bindings: dsp: fsl: Add fsl,imx8mp-dsp entry
Date: Thu, 19 Mar 2020 21:49:57 +0200
Message-Id: <20200319194957.9569-6-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM0PR07CA0031.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM0PR07CA0031.eurprd07.prod.outlook.com (2603:10a6:208:ac::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.12 via Frontend Transport; Thu, 19 Mar 2020 19:51:51 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 26b9327e-5f61-480a-6567-08d7cc3ef8de
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3486:|VI1PR0402MB3486:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB348694A48BB9350AA0CFF7E3B8F40@VI1PR0402MB3486.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(81156014)(4744005)(8676002)(8936002)(1076003)(81166006)(186003)(26005)(956004)(4326008)(16526019)(2616005)(478600001)(6506007)(316002)(2906002)(44832011)(86362001)(66946007)(7416002)(66476007)(6486002)(52116002)(66556008)(6512007)(5660300002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3486;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mdidgtAEs9fHPdsa7BMJZLpizZLS/dxSd2ChpB/WsyChUEmuKzd6X5rJeOVg7DXPWO92MDXVwce5TLTfXVmLlBajhzfYMMBmQgPhX+10rSIAZaToGDPD7+5SDDG2uymZbSymAMbh3BobGLGa3a4zbJoaQvFJbV+UxnIPtSXb6xAmSHmmrCcDyzfo625Ga4tvpiDcQDdkxd0vfEclsG/ztguXqtOpnH8kunMCJAPc2kGf/QRUUhdJ7RsUFxJsuHGyk4A4VuYaKw07Y4JuBM6ziujUH7zbF17kh8kvXHAPmvlpNJt3KSSiPzS4PMw4ryox7a/LLF6UTALWfuR6Dv2ppSts+pvDppTEJ0R3lzNF0uKcmWIYug+pDnUmUQpWAcJOy9B5ViO8MW2kOyVTnQHMQEzMMvHeXbQ+TC//ehLWBZiZEaMcL+Sg+tn0U11wprHBnhtmY1M9mIlw+a2b1KjqX9vUmX+IzSqxhs4EHW7MBUStGHKI9TldtY8BLu0IQTiC
X-MS-Exchange-AntiSpam-MessageData: CpUNsa8i+T5aomKEeLXuqD1Hk93R9fVAPxBLjPSSrBa2HMZDIvs4eaY+U17pMLXTrJrrCikivFBY8sUsikEBBeGFVaqYQqEy6/f22WItSDNmjsLizqperPzYj3TmxiD9NTKvetPM91mkABbarR1kZA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b9327e-5f61-480a-6567-08d7cc3ef8de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 19:51:53.6324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NnqN+ybr78DOTjlsXEgDSVWFUxyrV+3MZb88jJO8xJLINcGxvr/AiD1DNSPOiUFdOH8ZZahGuYHNj5YPydJ02Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125156_579105_5FF8730D 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, festevam@gmail.com, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, pierre-louis.bossart@linux.intel.com, krzk@kernel.org,
 ranjani.sridharan@linux.intel.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, alsa-devel@alsa-project.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

Minimal implementation needs the same DT properties as
existing compatible strings. So, we just add the new
compatible string in the list.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
index f04870d84542..65d4d07e1952 100644
--- a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
+++ b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
@@ -17,6 +17,8 @@ properties:
   compatible:
     enum:
       - fsl,imx8qxp-dsp
+      - fsl,imx8qm-dsp
+      - fsl,imx8mp-dsp
 
   reg:
     description: Should contain register location and length
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
