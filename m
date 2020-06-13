Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2C01F84B3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 20:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YGgfwS0N16x+fdJh1AedAE7q4OC7gNAK/S0V0r5YL+0=; b=RJhRHJ1NBvWUkD
	/6m9BPIUvUCveojevGieQurBKJGBkUtwqw2vfoZL3GbEp3E+HrEXtqA2XiG68c+osaKCFb64/MyrN
	pBt3H5rfQ8/LOO1FJAFr8rJt4amUAZ2B5BPwwfXnYE82F87wx5LZQ1J8gKAi6nLolHJprmc5x6Add
	IIh1jXPW6Jpvk7GkzSDoip09U4YjzDa9ivNk0BepLaO0DUOqBqhWESrB+fSpGxDHr4uxkQFdDYBhZ
	W5FkaL/k8RHw5SIFt2hd8WFkNvs/FmizqnHfD5ZXdP1Ty67kQlbTUFoA/Y4gR/76SwY1mP28zXOkl
	C2VM45kwCP46xWl3IjBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkB9e-0005dT-Hv; Sat, 13 Jun 2020 18:45:22 +0000
Received: from mail-oln040092004013.outbound.protection.outlook.com
 ([40.92.4.13] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkB9S-0004YK-6L
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 18:45:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mf5M2UphQE0ZQ9FYFQXrrBOBvxG+U+ZKCokTRa1pKt8dBZkW46k9Uu7qNUYZdGYurrQwQkSAttz9PQ+iyK466Jgxm76xqrlEUfuS2KOMykoD0Nfh2sfVFIHOOkugMkKw/OMqsLKfRNOflKXKsVmTrKEYrUba5zh6BWinSxbFWP1f3ixe9IOhwb0Ghlbd1/6Ca6eRzekjX44chMoIFmtXi3mrKc6OQmAlCqlVhKwFgmBstuke/oXOyEA7PtGHRfneSUF6yAu5rUOwWF7OqCCgOjx2B/Tus+QXofeunLybEm9gqLNScXWU57niIil2yCyuvLMJyUQPQxVhzadrMeTSVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CYTahL2jMwRCksVY8UcLQ3wvb9NY/xCM8WvhbK1A2AU=;
 b=AW9cTqkhrBWeROWzGa6/wSie4uRp1W3KFKkjI+2fGmJWk8Ud9h6ufkXJuXHmZU8xuCJxfB+YuTZ4Ck9HkviJvneJL9Tvy+uN2GlRMTCKHtCZjS/gjLBGXMCOOoIa/sFamFlW28cAP8ypans2DdoD3ti7FAzvGIUFtpx/n48AyXb6y35/aUiafxYZqM+NNX3nE/H37pYvUB9nnGclGh+oRXLKXv/yJjN0ry5yorviXhkBuapS1laqiV2t5BvDvHDlFGBT2122aOCOzeOdWcFOW0SVoRIE2XSMJUnCAJXQChQhwW/63+A1u07MmS1Muwio/RNbdQO8aOeWiqeeqFnStw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BL2NAM02FT048.eop-nam02.prod.protection.outlook.com
 (10.152.76.54) by BL2NAM02HT059.eop-nam02.prod.protection.outlook.com
 (10.152.76.211) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Sat, 13 Jun
 2020 18:45:06 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:7e46::4a) by BL2NAM02FT048.mail.protection.outlook.com
 (2a01:111:e400:7e46::109) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:06 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:9BA1354240F8A7182780AAED1235D5697C636BB2075F896CE049DC9275FD93D1;
 UpperCasedChecksum:80DEF31A8F7157FA928DEB766E86D5E42919D83FB768F3DFF3612B76BDCF1B88;
 SizeAsReceived:7657; Count:47
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::b9c3:9bff:541d:f383%9]) with mapi id 15.20.3088.026; Sat, 13 Jun 2020
 18:45:06 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] ARM: dts: s5pv210: Improvements for Aries boards
Date: Sat, 13 Jun 2020 11:44:22 -0700
Message-ID: <BN6PR04MB0660787FD651F80CD0C22C2BA39E0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: MWHPR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:300:116::32) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200613184427.23394-1-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR07CA0022.namprd07.prod.outlook.com (2603:10b6:300:116::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Sat, 13 Jun 2020 18:45:04 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200613184427.23394-1-xc-racer2@live.ca>
X-TMN: [dTSGaNHextpa+M8IcfaXs8MkgS7i4q1wmVa3srMNVRsCeG6lT12QraK26x7BronK]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 85a1dd37-e8fb-4155-8ff2-08d80fc9e3ac
X-MS-TrafficTypeDiagnostic: BL2NAM02HT059:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2Jfu9KN6RCYhA0TMRIgUsNorxHYIhHBiUrxBq/Xsr0zVSFUAmBO6CFSnt81lIYxUtQZq1H0sIBH3YgNhREZwdLY6SWojCp1aMLQbmnp3pCaVNKKbD7dLvXYRi1sHC6/jZrCRY9TH5C4o9ljY2tN87bm8KqEax1v05RvMaoC+hH4+4v1RhuX0gUEZuF0j8c6MyYYoxb3zi7EtVwgZvJTd8Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: j4qwSlhBO8SIwAeJctjXvxvWppQbIj5Jn4NcJ3UtxSCLqUb1mLf0c0P7W08oBiZVn9stG9245pwy4KC3CeMm90hx2QXFkzTogufF5D304wAsgUSXLyxxbssZEiih8W243ghXNdDB8jQYjk5VSkspjiD3HU1IBaDFKurLeq6zViUZJHogSRIqFhuPfL2oHoMtL3yRhK6nycynDMyokAexdQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a1dd37-e8fb-4155-8ff2-08d80fc9e3ac
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2020 18:45:06.2412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_114510_250229_D587E51F 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.4.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.4.13 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
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

A couple of new drivers have now been added, so we can add support for
them in the device tree for Aries.  These are the accelerometer (bma023)
and the light/proximity sensor (gp2a).

Additionally, the fuelgauge definition was wrong as there is no interrupt
support on the galaxys.  The bluetooth definition also had some issues
with it.

There is one change to the common s5pv210 dtsi and that is that the gph3
bank was missing the interrupt-controller property.

Jonathan Bakker (5):
  ARM: dts: s5pv210: Add interrupt-controller property to gph3
  ARM: dts: s5pv210: Correct fuelgauge definition on Aries
  ARM: dts: s5pv210: Add support for GP2A light sensor on Aries
  ARM: dts: s5pv210: Add BMA023 accelerometer support to Aries
  ARM: dts: s5pv210: Correct BCM4329 bluetooth node

 arch/arm/boot/dts/s5pv210-aries.dtsi      | 90 ++++++++++++++++++++---
 arch/arm/boot/dts/s5pv210-fascinate4g.dts | 17 +++++
 arch/arm/boot/dts/s5pv210-pinctrl.dtsi    |  2 +
 3 files changed, 98 insertions(+), 11 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
