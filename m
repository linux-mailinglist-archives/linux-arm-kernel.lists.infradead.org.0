Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC14181313
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sdy1Vra65J6mLy6RhYOgA/P05Lnq+yGlq1VoZNvCDlk=; b=LOU+w1FPW0J32I
	7nk2nQhd0lat8dOYAf+r/WI+1zhc3NE4o4BQVDLL/GAkp6Pf1VgU6Q+t72q+Rlpd+hrwI8KdaQMON
	QZ/ddq0MhhdqVKrUVAJmjl/xLLFBv+VCF0wxOT+YYY07HHTug/QbCqQwEe1wMN8UNpiMUK3ab/Fut
	pwGk/ETfcqaQEF8ld/KSMXyiR4udRoC9avOOYorTwzP8Ah5nVqcGAa2AQvA2iIdcRqoQ88hU+R7Pa
	neVY5Qzz7FnL04CRsUeMPfWv0VQns9o+fiG3qK1wdBPVnOPxmgQOutcIS/DCJG3N6vMmdCgO7VMYO
	plJ6aKCy20RVC+Ghuh4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwqJ-00043G-9R; Wed, 11 Mar 2020 08:35:55 +0000
Received: from mail-eopbgr10058.outbound.protection.outlook.com ([40.107.1.58]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwpp-0003qB-3n
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:35:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VVdWYJUJJvahWHEAGahsL7jhcXJ4Y53Gz3mElKYB1Ob0FtFe7v7Oiv7PouGk0fkdJdcXM8Lx1EIrE195usD5rBvJCVXqBsMyZqfpysUe7xoT0B7xEyUF7jZX6T0FQNJMg/jP7vn+9n7TPj0Ttg5Sdb76vvCFXJHhYT5xj50WRsajDeWdhuY1+UkRM++GHM4c+8ISdPuKSkqvCx/ARDC+ChQp+Ldj9Js1g2YzugHDfiewB7GlT3XiCicv2Wq4N/WBFrkSqZFhtBmIW9yXYmfkc1lOsU1xpRJBstx6XCIeIwESKlOlUVdLMPaVbecxxTWZtJsrEvPb1HOzly3KpsWcpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VwXwfzKL9FQ1R0cO3kICHgDJZimxMXanAXZDmkwuCfQ=;
 b=LxDEkQTVwKlzJjrqY+nd+CNFE5gO1wK/ujJfbgJQDG0NS5LbaPUihsUg3/gwMut1EYcQlh0DFD7HfxA8xqqeMlVZy0wWjvKIjdho4ESjMt4GNg0OwpJ/IeFYEZ/XTKBthHjUrCa/Kbsq7QOcYGDNc0yg0IBv84ifGIE2h443PrrV6SqIOXDDF31wEbJ3IQ70871VoVqGsucBQLWC/20vdyq6OSiPhMQWNZDjI0Tvv6lWBs1mkgyjYhVRD0WQTbvRs41mEg0kT4v7ybNt1wVpR/gzIGtQNr1ktsjkc+KAuDaQcuUq9YGWhuiFWw/V/M1vG4Y3JpMaZNyeG7fMcOPEAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VwXwfzKL9FQ1R0cO3kICHgDJZimxMXanAXZDmkwuCfQ=;
 b=n+UaLE4uRa14jguobhDoXjzGQ1KwkSGN7IQvOZ3yuID42W4RxkePd++XsbGnv+EyF83kNQT8XcGs/7MdwExusGVRkXid/30h055E0eG+60D8ntnm+HldXNa8CTeZ4HgVL/aYHBvK1wkVvNrnOAg90vmptqwleIE4NB/KpUQ6DyE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6702.eurprd04.prod.outlook.com (20.179.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:35:19 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:19 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 01/13] Revert "ARM: dts: imx6q: Use correct SDMA script for
 SPI5 core"
Date: Thu, 12 Mar 2020 00:36:24 +0800
Message-Id: <1583944596-23410-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:14 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 316011ea-ac7b-408b-6868-08d7c59721cc
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:|VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67020BA9F69FF86AC272D11389FC0@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(956004)(6486002)(2616005)(2906002)(6666004)(7416002)(66476007)(66946007)(8676002)(66556008)(316002)(86362001)(52116002)(478600001)(81166006)(6512007)(26005)(81156014)(6506007)(8936002)(36756003)(5660300002)(16526019)(4326008)(186003)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6702;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZlpU3Vs0EcoO/GG2Z/g8u/mlxpTTLXuVw7HTeEmNP+gV0x1MbrFj+1us2/X8D0K2+MC9UfEw91FAc6PQYW1NjSl2VaAdBy+f7EO7CWxvu6oPpQRwSzeythziN9dKruHfqTd6QoP4ev81buwUsskyVF7EV6P8w/wFQtHl77gy66pUwlJAhXs8h29lBauemD8MI/WWe5sHiwc+YSK1DAcXDY2D65gn6eInV+yBXGSnZHBpF1ybzpVJQq3hkF9odY5WUCsnwuICH17S8YfsBGHG+Lol2RSvmgPFnV2A2ubWNAkImkYT3xLKV96szgdhRPEH/zdPfzQ4cgNe/wX8/CUTMu7pzrHHmV3WG7DMRBGmBL7m8veSZ3QFNlJgjnZEZnBhhDoCJgjwGVgza5pYvuVTZV4PvjBwjgQpLSRiXL1rMjLfvGszRw0leEU3tPgSbt/gMGbGayuFavN+1nSqBNbjwcky8aDZKWIUjvFyfDkBJbqsVeejTxihBFFQ2WEZng9OrA3VNRq2OkRr7oVnHHRXHwLGF82v8UDm/LeaCftqo74uBeyn92k19iS2L2RdF+nHIQFYEmr5J/0NU88poOB3+hsqmLto81R+dCC6NIhymog=
X-MS-Exchange-AntiSpam-MessageData: BCqiu8Zby/wRS2o49IJeknuR06UyqvDLyarAEGGZ2zYRYWkiKlXoG5iZFXMkjSN6b6dnf70cfOTezSVfbI1++8PJKUWG3egGAbqbxfjluDoUcOoqZNes5dfll4r4zY/wkgawM6cEZZUy9Fl2p9SDXw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 316011ea-ac7b-408b-6868-08d7c59721cc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:19.7260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3S51yReQXuEcewkFw4Q7h/zdZ7bUHvUxNDsXz72XTc5GeDM4vlInZRWTDXBj+I+rbvSDm3/47rRJ2OGdqRPdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013525_156618_0682C052 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.58 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  There are two ways for SDMA accessing SPBA devices: one is SDMA->AIPS
->SPBA(masterA port), another is SDMA->SPBA(masterC port). Please refer
to the 'Figure 58-1. i.MX 6Dual/6Quad SPBA connectivity' of i.mx6DQ
Reference Manual. SDMA provide the corresponding app_2_mcu/mcu_2_app and
shp_2_mcu/mcu_2_shp script for such two options. So both AIPS and SPBA
scripts should keep the same behaviour, the issue only caught in AIPS
script sounds not solide.
  The issue is more likely as the ecspi errata
ERR009165(http://www.nxp.com/docs/en/errata/IMX6DQCE.pdf):
eCSPI: TXFIFO empty flag glitch can cause the current FIFO transfer to
       be sent twice
So revert commit 'df07101e1c4a' firstly.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx6q.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6q.dtsi b/arch/arm/boot/dts/imx6q.dtsi
index 0fad13f..81f693e 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -175,7 +175,7 @@
 					clocks = <&clks IMX6Q_CLK_ECSPI5>,
 						 <&clks IMX6Q_CLK_ECSPI5>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 11 8 1>, <&sdma 12 8 2>;
+					dmas = <&sdma 11 7 1>, <&sdma 12 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
