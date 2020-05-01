Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395A71C2167
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqnS3VPmwwOQWLvV2kQqWg9uLnRJQJRsuVL7dm6SoV0=; b=cObBmmwf/fSA9M
	YJ5BczAvqpV/w2ATB53YnaixxxiB65nRbUySfZob7DS7o9nQC7ISeVgjsQY4RfnwEboclrJ331XqH
	+ou9wOAZhfZoGFuS23peiG//KaNLZXhBokvCOg284dr3a0imWJSTnuTCIDUMHJfAM6NEDaF07K1OA
	0saEGCstrINN3u7ReoEBEDYgwXzJP7iUgUdI5v1uNU2/YR3cRqt0k6Qs8jirB5zeZUZjtcZTYkTyK
	7zstM5v9ee2zdF5MtzOo2JyV6FGiu5JYY+3as1PL6Aw879bapTZTiXOcNgjD3OTKtqby8vLMyT5nf
	8nd7dW7+8om61NYJ7h0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfS9-00085P-BS; Fri, 01 May 2020 23:52:21 +0000
Received: from mail-dm6nam12olkn2055.outbound.protection.outlook.com
 ([40.92.22.55] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfRA-00078z-4q
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xbz/l0cKwHpFcgtYM1oztFT4/l9JyQm+BZS4FsIWD7SX121JEgokfYN040GeLg0kR9KaLwME/uy0h5XcyP3A77CZ/fa+8smnVJNquqLnWr+heZO6TqH3ld3N6Pf0iNjy8E6QMZyVYlXOfTFhp2GFGYRWA70GHViIt0RC8UoDcXgUqs2LXN1CVolaYbrHKUXv0pdowdX3mUXhnHLHz+YnMV2mWl6S7vOKRK1gVetfn/vZ2yvDCBIPxZwbnpc9xTW407BjeMlIjXlux56YQbYjOTFhYixflr+ksD6FyFUKDaCProAVwF4kGuI1/3fzI8X6A5zBr4S7o4L9xTbPyccCxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADm1QCIora5F5xsI9vKan4SPBQw/v8naL7czrKxd8Rw=;
 b=odU+di9dJjrpTvpozQ3XtSr89iWzLqZ3NSCurTnzVxUPYtvNvjCeRKrhc66nAPIsevM5PMaeTHVsVMlyUmX+rk2zHRE9r4E8SreVatP7Yllm29B1sQlMZgDoRtIM4YPUIGJ9PLBl0PqEwaGj+LGW4nyinX0o/IRur5FZgIfm/0Yo37an+S7p+bhtZwjqnX/ajfgbKvt9GfTKCiIQXvETju0ZC2wYLMecwV4cfOvF09MQNWpVYIA7d//y9IPE35LUKY42J0wSdQBkOj1+fLoozJZphWUItg8JsVqLrE31q0cR2g2/HBW/kOIU2GLc1oDoiQ3lLpdgOZYUOU8MNPYo9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::51) by
 DM6NAM12HT049.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::252)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:18 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:18 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:7C092276F65BF9CD53490C2982CDE7786E711CC77745B6221EE7F73A344FDEA5;
 UpperCasedChecksum:E25B7D831C137B11A70E4CD399101ECE7252772C1B6DF128F7D2C0FB495C9D3F;
 SizeAsReceived:7884; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:18 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/18] ARM: dts: s5pv210: Set keep-power-in-suspend for
 SDHCI1 on aries
Date: Fri,  1 May 2020 16:50:05 -0700
Message-ID: <BN6PR04MB06603B45ECF39A32F7B0B75DA3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-5-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:16 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-5-xc-racer2@live.ca>
X-TMN: [nXWGn0tMFxhFtqsLoh9DaeIaqFBy86R1WQ1TV7tw8PDlfJAI+T5jDB+HHlLn4uxQ]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ec4df528-ad89-4a19-d0bc-08d7ee2a8a7f
X-MS-TrafficTypeDiagnostic: DM6NAM12HT049:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D1eJN6+ZrZTUEstC5HqL32BWmGhqgGmWBThCBWvSCTCqYJT76zzEq5Vd8UZNMMnDXuW+ODk3e2LaZAjS4PcuSIwrZdZBoK4rTh0TXX+CQEfBZhw2rSm5Ki7MVk/OpcKiqufnxScazTrw7AyKsEfEHMV/QjD7UbwCr+1qDF8qOxS76vaxcvaGlqy0CypPLRkuRlMioHUuZ4Pic9LHZ9SFTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: 43Exqo6eqGCPUgLTO+G/1pGR3+leTrGQ2qa5Z8d+eJbZVJDG3nMwN0+NnSdZx2zmuwIF5XW+b+KYiVd0hqvWY07QzOvmtOxNrHFhOO2XcisJis9sNSkNFzULo9DE9ABVff8zzqS/yFizjLFg6ooAZEeWQF9UqnmHz0GLIv5aWql0ZMyaEUYKcqKCE3d6AZ5985WROnoZE5LOExsic7u9FQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec4df528-ad89-4a19-d0bc-08d7ee2a8a7f
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:18.0412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165120_191786_E8ED0E13 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.22.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.22.55 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SDHCI1 is connected to a BCM4329 WiFi/BT chip which requires
power to be kept over suspend.  As the surrounding hardware supports
this, mark it as such.  This fixes wifi after a suspend/resume cycle.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 arch/arm/boot/dts/s5pv210-aries.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/s5pv210-aries.dtsi b/arch/arm/boot/dts/s5pv210-aries.dtsi
index 8ff70b856334..d419b77201f7 100644
--- a/arch/arm/boot/dts/s5pv210-aries.dtsi
+++ b/arch/arm/boot/dts/s5pv210-aries.dtsi
@@ -454,6 +454,7 @@
 	pinctrl-names = "default";
 	cap-sd-highspeed;
 	cap-mmc-highspeed;
+	keep-power-in-suspend;
 
 	mmc-pwrseq = <&wifi_pwrseq>;
 	non-removable;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
