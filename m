Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2711DB376
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7K8qrkFDPQvmgVvjm0Onkw4m4RfPzYWh4/eu5zvaow=; b=kID5gw0CrYjX/s
	ud3haiJhXgF2c5er2si2ECyoX9rTCa+in0SLtJXbE3YFSc4UwkQlJBIxsOb7LQ5BHIR2Llm+eSwTp
	L2s9kWqjNwL/wBOPavVpOvu8I1Pxtd06AU9cQccX4mHH1Rl2rnA3UXShbs3z3PrPIGXgCjuXaSigc
	KrDd3vVeZsGib65VEEgf75kdkr50ENb8SvM/cDH1PNus6F3ZGuH7XXT9oKpL3I6yclH70keHw6Jo7
	Jy9NxPN9kz9958RleoLULZQ3DVKZ9s86IWIYN++R7lyEWoeTE+Fi8nWnaY/pqkfIZMp9/aC+AJWbP
	t8CViQ7kJ5L272cm+c6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNvi-0008SM-Tr; Wed, 20 May 2020 12:34:38 +0000
Received: from mail-eopbgr50073.outbound.protection.outlook.com ([40.107.5.73]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNvA-0008GZ-UH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:34:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qx3zmNevBUMiKKXnRhJ+iqnRFCfAmPT4pO4qf4jlFaCa9mNNicbuHdpT5efVtrJo27BVlWzKb95XJyrdX8s0dc1abqruGKcuLNDkfbbhI0UOV2RWIs5lEo2E9sm7T64aZQFneL6sQVENwonrxmHnSFadPK65SogeMk0RmXKgI28hLCn18OvW6Ikav3efzJp876W0mpczmd7FLZaWS6SDQkWCWW77WD4P7FsDbGbcJS9V4nbCOOvStcYZq+a0xWN0W6N/9BPUUTjiWBMUnPkFQZFhxWTc0Y0/qiu+upQCJtne9BiNZtk2mXbEJsd+peVy1GJc3NheC5fIYNgTx+m/zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wl64sj8Lt5Fs5c04EiCMqJ8wORSQcVqx7AMW+mwbu+s=;
 b=IyJbNAyGBs1zM7KTI+eu5EDlqBFVhJlHUSHkoSrYiAMgn4ND8xi2IoklQ7rOKa+v7MPaLKKFiMtCCmy3KRer16DUFZ6T8op+a8K7oIeXezbf8k3/xm0G8TJapdisrMuucxL6YctOZ5yNT/ZWXNHjTim+deQyHCzDeGRNc2YfdkL4piziIPupw4r666bsw/iasZatl6qp3gVJ4+L+mf+IMViZf+fK+E0fonlDcMqMhX1mFbIMFD+PoK/fTQrr+uNUBeUaFkcPvW96yd/9mzhDPL8sw6dY1TSPNclCwxYbFSKtLH8C1HPq8sZhXITe+GvCaDB+LVD2u7deanJ0E5MOGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wl64sj8Lt5Fs5c04EiCMqJ8wORSQcVqx7AMW+mwbu+s=;
 b=fD5qbU4PzPHtrELwZv1NyfMjNcmhTDDsYJ5s/kMi5qmgkMi9GUK1cSW+smVUwTPApmebe/7XRpt8DEPaRpzZo9fB0jmwSZcrserpE9ORFZbaXQPK5fj6PcIcOUJOLwGfeMPlbARmcLyzJHPZumZUgx1LSkj4rx/Jc0DLrkL7YIY=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (2603:10a6:20b:f4::33)
 by AM6PR04MB4279.eurprd04.prod.outlook.com (2603:10a6:209:4a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 12:34:01 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:01 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com
Subject: [PATCH v8 01/13] Revert "ARM: dts: imx6q: Use correct SDMA script for
 SPI5 core"
Date: Thu, 21 May 2020 04:34:13 +0800
Message-Id: <1590006865-20900-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
References: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR03CA0103.apcprd03.prod.outlook.com
 (2603:1096:4:7c::31) To AM6PR04MB6630.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0103.apcprd03.prod.outlook.com (2603:1096:4:7c::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Wed, 20 May 2020 12:33:56 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ed16b479-a6f5-4395-4b4d-08d7fcba1316
X-MS-TrafficTypeDiagnostic: AM6PR04MB4279:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB42792B853D66E6B57C7AA89D89B60@AM6PR04MB4279.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JL0rZA0jzVZam04KdTJgjVqlWsRP4hsrQ1o9dsV+VyIHmck0NUsrqx1XQPPqA9VjvI9tVMqb+sHRYaKcsJycQcDto4zsnO49vOL0Ut0Yiqd4wVMpsI+f6p9WA1+/j2PAz9MtKiNYKuZdmZQY2VX/lRc0K6GKedoMNTrp8MpeVl22WtUggkXk9oidSlKHgROtg1x8ZGqjRMsgdEJXE5g89nnEM1SwbNFa6qeFUJTZI1t941BewMEX79Uu8qo5gDzA8v2YEXamdnAxOVoe2DsuFm2BhPSE32XRJKG13LhWUsoWl96usQcpvxGyzcyFd1QLxPug3ZIrQmuFqxRZWWA310ePUF9hGt0+Ge8awXCYygeZXrX7yrw+SQGhGRo9QYE3URaGd/o+GRESXW1VbnH4Cz7jA8oF96e9AbLe1FChDjgTgQx0227OWo1kF3yc7xGfwKeDhIWpXFoOcgxszXofirazoow3isPSE4ltKuUzrkvPqMFlhnDa9ka7RH3dYCRa62gqjukcE/GKEwXzRNs30HilkA6qiXijt/OCl2pR3POVfVFUsMPR7AxUV1LsDhaO7erM+1+5SvTj6kTp33mB5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6630.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(6512007)(36756003)(8676002)(6666004)(52116002)(66946007)(66556008)(7416002)(8936002)(66476007)(86362001)(5660300002)(186003)(478600001)(316002)(26005)(6506007)(6486002)(956004)(2616005)(4326008)(2906002)(16526019)(921003)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: x3r51D89q9eLEJSask0fIBbmzZLz4F+k9Um6frFoE/SnUkgEl/pvcw12QWyEWAQN8+3I1rg8OB2pf1vGF7YurmZ48Jdga78inw6ADlowTiTwHyIk70hbten0LqDHwT7ZGaRLGBRlwQZdNFN9t003zPECZiS/8zaLWefw6R9HDzHbEaltZc5Tiq61tDLUXfCT7hEYMLwiPubCXtwdZKB+EH0oCXNQgzgWETUoScOjbIrvQvn0hXJZtA/rKLkb0J2WMvn2DI5NHZzSCxpIhJAU/+IQNlXwWjhp2zuG3aa6BQHSnYUbNKCy3r+YBMrb0AIu5l+GbRePrE9z/IweHJXs/Y9/735zT8Z//wgpDehUKuFS1ouzrFiecedAIn/bNnz8fKCIbaabOsF0RAwYmNxG36g/5zPwBxJKZycAOnrPjGhA+uos2QAYMxIh8L52oxiTdEj00hq2xWhifrmg0pRgaAkQZspQ4N02cSW5cvkmZ4Q=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed16b479-a6f5-4395-4b4d-08d7fcba1316
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:01.4706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9hb/jAV2CDTy4RPznvbTpM1h+LEQ3HN/7sGYoMabPf8/s9FotusHQM5PtqZWcs3UcTjxqag8nrc+oMajegREVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053404_982515_BE137525 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.73 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
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
index 78a4d64..afdd9eb 100644
--- a/arch/arm/boot/dts/imx6q.dtsi
+++ b/arch/arm/boot/dts/imx6q.dtsi
@@ -177,7 +177,7 @@
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
