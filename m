Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFC4192BBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9GUUvToVIvgOmdpmPHD0Plu6FWeU+Kc2IK2AVAbyco=; b=HIojt0Ddt7pWbv
	ww2d3gRkY1CXIQ9dJBDAb7LWBfq3H8NwYcfBRcev7H+M9rvm/mt/ip9R+B7QjyH797qdW7ChCGrv6
	WkBpjohWdLrcOFzKEzmmjI2xqUEYQrnkRu5SkJPGGRLub1tMKxtwhD85WKzJlgOXS8jn0Gah44iyJ
	UtvhF2jWKcBrQ4Hxz5wfTapXJviijmJnmWhrHVU3RidmqeVXE/P3KL2ZO90ni0EgYNkEAnb5KmAbB
	WxIvm969XnPI0Ne9kYXZD9MFcCFHDqTYj+jgnXnZKRYgKiDaUR2R69UL+pgIBvfbMUpXvE/z6A57m
	vUW71oDfTPWxNnGey1Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH7Zr-0001bz-Gl; Wed, 25 Mar 2020 15:04:19 +0000
Received: from mail-eopbgr40090.outbound.protection.outlook.com ([40.107.4.90]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH7Za-0001R5-GS
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:04:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V6YRUQccHDs5yoSJSGdwpsAHQeEr9OUrJXNkX3pllhu2HMCFGRzF8crfikqbn/an9gNo+crGhZHqAWkLURWsKxRZNfXOXeWegaXEYb+3PBm0nNNZHhdULSz2pb/lVsasksg6kqcPUCnPpo6wZHcD6JCT27XO4iKZKW2WRcf0I4RSW9mEglxkwocchEp/kQjzIfsfO3VDo4uZOlahJHdi2Jd2ZV9vZv6aTXM4EeYIEaQfudDY0zSgFJFPCrKqg20XwsvPAiirQGIT5bav3WnqeBXaoan1VbZu4x4ZitbSYyBh3rZrxMPbEalqjFyvsLgU+7GJhDlObxeAHEmKNtFyjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8caUUiO8lgJRPNXpzkKDk7dJR3pfkPToAl991QP+r2Y=;
 b=UMCA02xwfKBczoSJBlBQqls6YWY0X12NFrCnIUMFigMxrh6m1F2LVfPN7NAfpUO7QU7tj/bR8EtFS6zY9uqxZpf6znx+ReExC1zYUdlqEF6UGQjuCHuUB5QaRebQfQIOSwmEfUwIQh6iZ0dzCqU2OXbmpV/ghR1lgg04rBZTmssZNzWbQSvse74U0kQCVFutXfIeXulaQxX/yBJznsSjnxsdrdlIKdShuovIXH3C/YmWGYLUPEkWQZh4louKb/mG+BT3DTZ4b71fqytC6BC+/O8enLXm4mFSSlo1WCIfxnWVRnTVeE2vq3W4oXc+0zjMrOcAavNZZi+U/1t29HDKnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8caUUiO8lgJRPNXpzkKDk7dJR3pfkPToAl991QP+r2Y=;
 b=ANSfrtEgNx8yIdffzNWNDWs3lpAgo3InHU8z9hSIkqJm8lKzEnGLnrqEYjFAx+f+hNMgp6P8tWf9EJlpZ4HjxHw7sES0epOX1JgCsFXaIfqtp0QwfA7pNGmpRqbM4xyH+jNXIytagkOEwz7P5yHEQjC3aFuzn0ggqClTkFdY+10=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com (20.179.1.217) by
 AM6PR05MB6550.eurprd05.prod.outlook.com (20.179.6.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Wed, 25 Mar 2020 15:03:46 +0000
Received: from AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e]) by AM6PR05MB6120.eurprd05.prod.outlook.com
 ([fe80::dee:ffa2:1d09:30e%4]) with mapi id 15.20.2835.021; Wed, 25 Mar 2020
 15:03:46 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com,
 linux@armlinux.org.uk, netdev@vger.kernel.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, shawnguo@kernel.org, mark.rutland@arm.com
Subject: [PATCH 2/2] ARM: dts: apalis-imx6qdl: use rgmii-id instead of rgmii
Date: Wed, 25 Mar 2020 16:03:28 +0100
Message-Id: <20200325150329.228329-2-philippe.schenker@toradex.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325150329.228329-1-philippe.schenker@toradex.com>
References: <20200325150329.228329-1-philippe.schenker@toradex.com>
X-ClientProxiedBy: PR0P264CA0215.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::35) To AM6PR05MB6120.eurprd05.prod.outlook.com
 (2603:10a6:20b:a8::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from philippe-pc.toradex.int (31.10.206.125) by
 PR0P264CA0215.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1f::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.18 via Frontend Transport; Wed, 25 Mar 2020 15:03:44 +0000
X-Mailer: git-send-email 2.26.0
X-Originating-IP: [31.10.206.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b38a5717-81bc-4adc-1b76-08d7d0cdb73e
X-MS-TrafficTypeDiagnostic: AM6PR05MB6550:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB6550B34A8CBAAB9032EB0751F4CE0@AM6PR05MB6550.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0353563E2B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(346002)(39850400004)(396003)(136003)(5660300002)(316002)(66556008)(66476007)(52116002)(8676002)(54906003)(1076003)(86362001)(66946007)(6506007)(6666004)(81156014)(81166006)(36756003)(26005)(6486002)(16526019)(186003)(2616005)(956004)(2906002)(4744005)(7416002)(8936002)(478600001)(44832011)(6512007)(4326008)(16060500001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR05MB6550;
 H:AM6PR05MB6120.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZxmASxFj+/PkeYmhT5MSkvNEcCk7eHENOBfyC7qJaiKzX1mU29Asjm5XoLTopwnfEC2r21Nl070WF1J5EQIUpkAzLzl+LEMeWTjEbayeacKSn3gJp8gwwtIgxkzrsiyLI9HVSEWzXB4geukwPSgyz7oNzW5ygikGVkfay2sAqYxleDHlAus3ZU/AiOkkc7rV4e5udFYY7M3PWFt63vvpiA4l9Jya9cgpDALMzNlUQ4sQgy5q1xIhqE4dAbSpEXv9GHTylLwxYJ/5M13V/1sJYnfN+JPFn+CX0HlJM1busxuOib7izM6/yIDB2HDKW5CbHqbT92XBWHz3opDq1cUTZArYB3+gVDDqI4c8IJaXfTj6PfyBh2qVsLJVZ51D7+1A+2ohWlwlA+zPrzs7QNseX9QgdYZn1f6zkTODnZ02wuwuk6TTl3WAZiySjGd2IwhMoxIwpTvs85Ss5TQ0ASdmi4xmNgH0tSrBz20P0hDmPMsUEsHugLxN/Sbn2bqNE0qL
X-MS-Exchange-AntiSpam-MessageData: qdXPhZteQntn9qgRnT8PDa80+9tAhoU3TQrrkmd9qQYTJylqg5dWWZ3D0l3TrVyjYbHUbYToDowytHpAm9H6zo88rLiLAqxO/RfGs7xhFj8aIDcK/b3mjlIQ6WkT7tfdefJCLlquPdDTwIzW5UAMhg==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b38a5717-81bc-4adc-1b76-08d7d0cdb73e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2020 15:03:45.9067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KrNmBGYc3oR2xER3Se17/g2Lq6b1/nHs/E/LAAqwSgT7r3/LRPB+BLTq1mqmSdl0LHiUHESAQPJVj3GJ5PDXYXR79zmUhVh/IeoNSKeyM54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6550
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_080402_556312_15973F0B 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.90 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: a.fatoum@pengutronix.de, silvan.murer@gmail.com,
 Philippe Schenker <philippe.schenker@toradex.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, o.rempel@pengutronix.de,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Until now a PHY-fixup in mach-imx set our rgmii timing correctly. For
the PHY KSZ9131 there is no PHY-fixup in mach-imx. To support this PHY
too, use rgmii-id.
For the now used KSZ9031 nothing will change, as rgmii-id is only
implemented and supported by the KSZ9131.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

 arch/arm/boot/dts/imx6qdl-apalis.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
index 1b5bc6b5e806..347a5edc6927 100644
--- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
@@ -180,7 +180,7 @@ &ecspi2 {
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy>;
 	phy-reset-duration = <10>;
 	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
