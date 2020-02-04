Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA578151954
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:12:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbjANnKiFJGlsb+OAlZ9EJ8+co56HqUu2H8eL/RsdV8=; b=kUsSTtHZ2xs5V+
	3xFIKgo9/dPKc0IkLquFSSH1+AAVtMDeZUxowMbdHIPChDdOJQHiX/v/9yWZprGrYSz6J1TCQx//s
	6jij07iOLpMYGzFgX08Ogw4+4YIBz+9/iHlkIVSKK/qSgX5EC4kYmxUuJVptGt+zojIHgbW0D5eW6
	3nUEOSbA0DIer0lfVZPDuhFqRZt1ifjYWuyGtQhS/Ihb/nnc0P2jqSvrNpu9kJb+QrU2Z0WSNgaCi
	nmvYytMtYDJ1Fq0reUTBV1b2zvVxO98zdDrOI3ibs8CIOynEAFROJCbzC2JjY5VMtTA4z+nqp5feJ
	Z/G441uJSillZIIN9Jew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyw8B-0006xT-EI; Tue, 04 Feb 2020 11:12:35 +0000
Received: from mail-bgr052101128061.outbound.protection.outlook.com
 ([52.101.128.61] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyw7n-0006kl-9N
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:12:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n/H4kMqdNUQdlK9A3V6SQKvo2JFi+ndWG+agEn5ptsitwEUS16hH9QW9Z3K2p0jCShrxq10tmADb7sXCzAXNBs6wfn40QMcBRIdxf5DWYCfrI03JkjS5m0DjjXgFp7Wd+aHI+AI3nLcpDdszS1njTA57jRtnd0HtBS45oW4/dwT9B1/ZKAwxIMLZuJZl6PwsvJm2Io8kctCH3w0f2noXQoTsFJ5VyObFgw1cEeKydqFyWuvvkP/DKZNnPc3m2rAe7Qc2wBop8Byy/8IIb2m/4R3dzfRHLiVbOj/mJJgdgAETH7Pm8hU4Vu+4Md3F+tV7bZok9cE+nwbH0E+nJvkoDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kAV49Hwb3+4rVgEnJL1pEw5uavLoAiHfUSe5tfDXeQQ=;
 b=QdQPRtW4ct4A5PahmeC78HeaP7FdX6c5u6ta8nyYzZQ2ZMl3RtmDWLHpOr1hg5ukTFE2zPyu1kGSx52RbOEihs3r23ltaZgbPQDkGgIKPtFZ5RfzhiDegtzD8pvWlTTkPPd6nIgXFi/RfGMiSKHVFC3lKiKTRSUrXkKutklkZYG6SuzQMOq8+8Qc8YWcuHgqbHBBvK3yPalYsxgY+2lBxIv1OUQWHN5/d/Xjwx4WFAzPn13Ps72qEECTcskt1DhIVTWhuuA0flk7/gn1Xqo8EwOsmYG47/ZuHWkNbhOhtmVddMp8MVbL/wR214JDn0HVkoebKDpLjf5FQZWnvrUo3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kAV49Hwb3+4rVgEnJL1pEw5uavLoAiHfUSe5tfDXeQQ=;
 b=aL94PdYcIkT69OBwdpPIlM3i1jVVmPDALqCZa1u4YBvEbD1lnN+CbiFs1G/4nBXL3jXSjekBEwoaMCCPk8aWtswZ3ts3btzgNetbG+dG7Xl4/7SghYM34QMdNzeCla9QWN6sxZq+mtisPaxrCAF3OESbTT2DqLVfqgpb3OIgv4g=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB7039.eurprd05.prod.outlook.com (20.181.33.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Tue, 4 Feb 2020 11:12:00 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 11:12:00 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/6] ARM: dts: imx7-colibri: add alias for RTC
Date: Tue,  4 Feb 2020 13:11:46 +0200
Message-Id: <20200204111151.3426090-2-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
References: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
X-ClientProxiedBy: PR0P264CA0064.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1d::28) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
Received: from localhost (194.105.145.90) by
 PR0P264CA0064.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29 via Frontend Transport; Tue, 4 Feb 2020 11:12:00 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [194.105.145.90]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 947a4d50-63b4-4596-c67a-08d7a9630e40
X-MS-TrafficTypeDiagnostic: VI1PR05MB7039:|VI1PR05MB7039:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB703982E7FADFF7CE47173937F9030@VI1PR05MB7039.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1060;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:SPM;
 SFS:(10019020)(4636009)(346002)(136003)(39840400004)(366004)(376002)(396003)(189003)(199004)(186003)(66946007)(36756003)(478600001)(8676002)(81156014)(2906002)(81166006)(66476007)(6486002)(8936002)(5660300002)(66556008)(4744005)(16526019)(1076003)(6666004)(956004)(44832011)(7416002)(4326008)(2616005)(54906003)(86362001)(6916009)(316002)(26005)(6496006)(52116002)(23200700001);
 DIR:OUT; SFP:1501; SCL:5; SRVR:VI1PR05MB7039;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; CAT:OSPM; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DM0Cb4zYPK3OzBH4EShGhLVHJTdasKSAbRmXueA7FMwaBhQtVik3YbBPhdGCHsSSuIvC+r+AtNK+ZWCgKtiUjfWPU4hEnJEOGO0m81ImD/W6ChNjLMJSrM9bF8aVYKWD2f1nuWUXFP0X/0l371AacNQrttbfys1m2ynSyeLLe2cIoRlbN9FQ3Jz4mgoHZ5nOdqO/u1Rw+CP0WoZ8HMKFo/A+CYu8odBlc+MgXWudorHYQf1TNc4+JIfrvQFxbFo0dmrHct6bEw///N/2kwQkQVuixO+Sq/0+rSLT8IM9cbIdClmc6/q2ax5kav6QU+477HpiELKlWpiaD4kk/3g9vmG367G4l8bxHYUC+v45IXd5lMTXkd/97pyMe/MeZ30jrv3pXeeyxo+p6ivLZ3tcqJhFfz5Bz/IA89lik6EQIMd2HllglQnHYVgPJMNL2aIK+ztzkEaFecAbHTs2gpYCoy62P/ni+fpwcCSklApacCLJkF9l+fapI5lBwnajPN9Pdyqr8oJxr9uoDZm1ydx2I32lpCHIt6NBJ+26HVg0SKT+gwECJauqpSMXRPFZlSVr+17AlC2r7uStxBIbdPrhkjzmZaWoGDkqtZCVrogwjZ6CEDK1TbyokJWOG5oqlDWeEJjnPR6yE3HPQ7OKyZuhCiBHc1jGJvswee3m4nlb0M4gXI10Sx9YsVpva6+ELYlqWGqT0gyurXEPTqfCWBlez8UPg00+KuehYTA/fTGAlqz2WMS55nf7v0SSG2EpIs3QyPESSYMgbgqJ+qJo9R9VXw==
X-MS-Exchange-AntiSpam-MessageData: NPCJwXNwcNhZAYb4RT6BG3k4De4f6XHl9VwB8Ikb/6BMiHymTeb2SvIL7ln68xvI3W0MxwI7EOJlIKYmqsSIbeBOU7ZjpWsx4EMsvukwbhf8HFXBduqmRHizoOZ/tdCs+la2TmQJxjweGk6/kygE8w==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 947a4d50-63b4-4596-c67a-08d7a9630e40
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:12:00.3936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KWbLWGV82oVZdkr8Z1M2FlgbE1OYAbeVnre8KFAs/WarQ3DYMV0LQmDUkKc3uiGeaWmaO19S8zto6sKmrQdNS5E1yXrimL1tnvHXMluwCRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB7039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_031211_326958_80ABD5AD 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.128.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure that the priority of the RTCs is defined.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 6aa123cbdadb..9e9e85c10acb 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -41,6 +41,11 @@
  */
 
 / {
+	aliases {
+		rtc0 = &rtc;
+		rtc1 = &snvs_rtc;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
