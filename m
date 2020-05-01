Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220111C2165
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf7a0zrKFtHiNtA2h37mTXDcGR/7OPLDE0u07QV5ZJM=; b=m/7+bbWA2516DY
	v6OoVu6Wgw6BtUPlggkGbX3LtXjWCDygODVgqT5783Th7nDPddFQrVo1TMC2/8ibGqPrnnfDvOl4d
	NykWy9JXA92I6g6I27tSgRhUrxTvTJ6K2/ypogl6zLLAWHwPLzsMhhG+5y+fN2RdopYOz43pu7MQP
	GuPENxF+ZsIxXqE7bLT1dPppCNS7KszDsBQqemdZf7SVixAZ7Rx5ds8XeXisw9mijlfldj3CBqxoy
	HMGd0Qz+pNZo8Qpxw6sozrxoV/50cyX4UJw83NtLJBVZqDphlXYoldwtL4bTKK93Zvl5lOhO81Fbf
	CVom8fHuyuCv5XcsMCKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfRa-0007Fp-2L; Fri, 01 May 2020 23:51:46 +0000
Received: from mail-mw2nam12olkn2095.outbound.protection.outlook.com
 ([40.92.23.95] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfR6-00074r-6Y
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:51:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VH/SMyWzr8+vBzeKeHiosFXF5CHVnGZZ/XIrWQrP5GiXWaGZX5uoYwB8QTwwwEPt0onTWEpbUD2WrimfsnwpBRDptjMyuogsU4PDUe6FCEhjdx/gQ3Uv0ZMiArZl09AwwNV2dzbFHATF1XHJ1+gSgzOVFbaGOEbC+Z5DQO4GGi8fcktFha0/aMmjRe9akziIrQIUyxAldRSOl1RSxLMZ8NF8EEUcfv8HzIS3cTnQ/Jl9ymXMqufX5SBdsFFRasqFmB2MkEgYOm0VITv34QZ5zBHB82qjEurN09DGGwdKj9OUD1qJdXhsWR6ak5/+25jaZGXKnGx6Yf57QxtirGUxmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6HuVh4ftOUH8Qv3oSOyDK42rP77UpyHZEX7O2OEBIu4=;
 b=I7nlijNVJZu2oIKOe+bKUji1inwgteuteOEQFy22OMqTOnG/5AxsQlUfc8RAZKFxLY1x6p9hdtMNo91o07HWzIIV0EC8cQFVXxthZVIXCUY6oAK5ZN2J5sJkY7M9s8e64k7DBoS66yWk2OqGZFAUkGz+vIYWz69Ld+04nmRDJ6mSu4eog77/u4qRa+vJaFSzH/DctPb09xta7nbIJCn4ZlNiwOhNo7sJ7Ms3BAPa00foJQq5ItoOwJa9kDDpcQ8zgevv0m/uWykoXJSlr2jOEVYILbgpyih+O65QwibSL93k6Iy5nEmLlP3rPncWauMH/57TcXfdRtCxUg2RTpfbaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM12FT056.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::4e) by
 DM6NAM12HT060.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::330)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12; Fri, 1 May
 2020 23:51:14 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc64::46) by DM6NAM12FT056.mail.protection.outlook.com
 (2a01:111:e400:fc64::460) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.12 via Frontend
 Transport; Fri, 1 May 2020 23:51:14 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:7B50D653D1B06E6415CE5A505CA138A3041DCE1576B50B78C443F23038AF444C;
 UpperCasedChecksum:B6D370DCF5A687E84852DD094360F81508076B4583ED2B3BEE6D11BB42FA1CC1;
 SizeAsReceived:7859; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2958.027; Fri, 1 May 2020
 23:51:14 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kgene@kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/18] ARM: dts: s5pv210: Add sleep GPIO configuration for
 fascinate4g
Date: Fri,  1 May 2020 16:50:03 -0700
Message-ID: <BN6PR04MB06609B7979D7F4004DE5462EA3AB0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501235019.24022-1-xc-racer2@live.ca>
References: <20200426183604.28494-1-xc-racer2@live.ca>
 <20200501235019.24022-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0058.namprd17.prod.outlook.com
 (2603:10b6:300:93::20) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200501235019.24022-3-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb68:9c00:8067:f823:1e15:7520) by
 MWHPR17CA0058.namprd17.prod.outlook.com (2603:10b6:300:93::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Fri, 1 May 2020 23:51:13 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200501235019.24022-3-xc-racer2@live.ca>
X-TMN: [XWLipUdwkq6ryhc6rA4WhMS7S0L8IEgL1QrvJhQFzSFrdpmh8p5e4Om8RsvSPwAV]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 1ef1eee1-16e7-46fd-fb4b-08d7ee2a889d
X-MS-TrafficTypeDiagnostic: DM6NAM12HT060:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: deU7fOavgfWbw5tQpsHyjs9bPAj4opjB/3j+Tf9uWvtl3yhEI+0Q5SdDMheHg40M8hjrLx2OmaMbKJgLKN13XNuL1Y9lYldNG1PoYXUacAOu9ou/Eh+DRxsqvixc6rI8pzEHDMrbmWvsr57C6uSH6bSpG5lAnxP/AaaP5kJ7uuLckAcjktJvW3x+WfkQYrOiHErucnttLW3ktZQJrK+1bQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: sAA5CIuEkDGqcpKZbqm+7FiGNWZXYe+W7MP3wQhCn3iK0Cj7pP/f3zG8aQcKN3VnJUtBXhBpfs7tIalxFUOaklQYJP1+kdr2cGiSIOvQ+xoxZhLhUVeNNAPJOmWkQd/wkmqu/drxwPQpwGrvexVFnw4rHA0RER+7nGk+HPLsubJ8cgleAUtCbdd/pVkwjMiLqJscgCietVBsrVwhn3daxQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ef1eee1-16e7-46fd-fb4b-08d7ee2a889d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:51:14.8434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_165116_239541_7B031176 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.23.95 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.23.95 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

In order to minimize leakage current during sleep, set a config
for sleep GPIOs.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

---
Changes from v1
- Note where sleep GPIOs came from
---
 arch/arm/boot/dts/s5pv210-fascinate4g.dts | 243 ++++++++++++++++++++++
 1 file changed, 243 insertions(+)

diff --git a/arch/arm/boot/dts/s5pv210-fascinate4g.dts b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
index 07a8d9bbe5b8..65f589e2b72a 100644
--- a/arch/arm/boot/dts/s5pv210-fascinate4g.dts
+++ b/arch/arm/boot/dts/s5pv210-fascinate4g.dts
@@ -36,3 +36,246 @@
 		};
 	};
 };
+
+&pinctrl0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sleep_cfg>;
+
+	/* Based on vendor kernel v2.6.35.7 */
+	sleep_cfg: sleep-cfg {
+		PIN_SLP(gpa0-0, PREV, NONE);
+		PIN_SLP(gpa0-1, PREV, NONE);
+		PIN_SLP(gpa0-2, PREV, NONE);
+		PIN_SLP(gpa0-3, OUT1, NONE);
+		PIN_SLP(gpa0-4, PREV, NONE);
+		PIN_SLP(gpa0-5, PREV, NONE);
+		PIN_SLP(gpa0-6, PREV, NONE);
+		PIN_SLP(gpa0-7, PREV, NONE);
+
+		PIN_SLP(gpa1-0, INPUT, DOWN);
+		PIN_SLP(gpa1-1, OUT0, NONE);
+		PIN_SLP(gpa1-2, INPUT, DOWN);
+		PIN_SLP(gpa1-3, OUT0, NONE);
+
+		PIN_SLP(gpb-0, OUT0, NONE);
+		PIN_SLP(gpb-1, OUT1, NONE);
+		PIN_SLP(gpb-2, OUT0, NONE);
+		PIN_SLP(gpb-3, PREV, NONE);
+		PIN_SLP(gpb-4, INPUT, NONE);
+		PIN_SLP(gpb-5, PREV, NONE);
+		PIN_SLP(gpb-6, INPUT, DOWN);
+		PIN_SLP(gpb-7, OUT0, NONE);
+
+		PIN_SLP(gpc0-0, OUT0, NONE);
+		PIN_SLP(gpc0-1, INPUT, DOWN);
+		PIN_SLP(gpc0-2, OUT0, NONE);
+		PIN_SLP(gpc0-3, INPUT, DOWN);
+		PIN_SLP(gpc0-4, OUT0, NONE);
+
+		PIN_SLP(gpc1-0, INPUT, DOWN);
+		PIN_SLP(gpc1-1, INPUT, DOWN);
+		PIN_SLP(gpc1-2, INPUT, DOWN);
+		PIN_SLP(gpc1-3, INPUT, DOWN);
+		PIN_SLP(gpc1-4, INPUT, DOWN);
+
+		PIN_SLP(gpd0-0, INPUT, DOWN);
+		PIN_SLP(gpd0-1, OUT0, NONE);
+		PIN_SLP(gpd0-2, INPUT, DOWN);
+		PIN_SLP(gpd0-3, INPUT, DOWN);
+
+		PIN_SLP(gpd1-0, INPUT, NONE);
+		PIN_SLP(gpd1-1, INPUT, NONE);
+		PIN_SLP(gpd1-2, INPUT, DOWN);
+		PIN_SLP(gpd1-3, INPUT, DOWN);
+		PIN_SLP(gpd1-4, INPUT, DOWN);
+		PIN_SLP(gpd1-5, INPUT, DOWN);
+
+		PIN_SLP(gpe0-0, INPUT, DOWN);
+		PIN_SLP(gpe0-1, INPUT, DOWN);
+		PIN_SLP(gpe0-2, INPUT, DOWN);
+		PIN_SLP(gpe0-3, INPUT, DOWN);
+		PIN_SLP(gpe0-4, INPUT, DOWN);
+		PIN_SLP(gpe0-5, INPUT, DOWN);
+		PIN_SLP(gpe0-6, INPUT, DOWN);
+		PIN_SLP(gpe0-7, INPUT, DOWN);
+
+		PIN_SLP(gpe1-0, INPUT, DOWN);
+		PIN_SLP(gpe1-1, INPUT, DOWN);
+		PIN_SLP(gpe1-2, INPUT, DOWN);
+		PIN_SLP(gpe1-3, OUT0, NONE);
+		PIN_SLP(gpe1-4, INPUT, DOWN);
+
+		PIN_SLP(gpf0-0, OUT0, NONE);
+		PIN_SLP(gpf0-1, OUT0, NONE);
+		PIN_SLP(gpf0-2, OUT0, NONE);
+		PIN_SLP(gpf0-3, OUT0, NONE);
+		PIN_SLP(gpf0-4, OUT0, NONE);
+		PIN_SLP(gpf0-5, OUT0, NONE);
+		PIN_SLP(gpf0-6, OUT0, NONE);
+		PIN_SLP(gpf0-7, OUT0, NONE);
+
+		PIN_SLP(gpf1-0, OUT0, NONE);
+		PIN_SLP(gpf1-1, OUT0, NONE);
+		PIN_SLP(gpf1-2, OUT0, NONE);
+		PIN_SLP(gpf1-3, OUT0, NONE);
+		PIN_SLP(gpf1-4, OUT0, NONE);
+		PIN_SLP(gpf1-5, OUT0, NONE);
+		PIN_SLP(gpf1-6, OUT0, NONE);
+		PIN_SLP(gpf1-7, OUT0, NONE);
+
+		PIN_SLP(gpf2-0, OUT0, NONE);
+		PIN_SLP(gpf2-1, OUT0, NONE);
+		PIN_SLP(gpf2-2, OUT0, NONE);
+		PIN_SLP(gpf2-3, OUT0, NONE);
+		PIN_SLP(gpf2-4, OUT0, NONE);
+		PIN_SLP(gpf2-5, OUT0, NONE);
+		PIN_SLP(gpf2-6, OUT0, NONE);
+		PIN_SLP(gpf2-7, OUT0, NONE);
+
+		PIN_SLP(gpf3-0, OUT0, NONE);
+		PIN_SLP(gpf3-1, OUT0, NONE);
+		PIN_SLP(gpf3-2, OUT0, NONE);
+		PIN_SLP(gpf3-3, OUT0, NONE);
+		PIN_SLP(gpf3-4, PREV, NONE);
+		PIN_SLP(gpf3-5, INPUT, DOWN);
+
+		PIN_SLP(gpg0-0, INPUT, DOWN);
+		PIN_SLP(gpg0-1, INPUT, DOWN);
+		PIN_SLP(gpg0-2, INPUT, NONE);
+		PIN_SLP(gpg0-3, INPUT, DOWN);
+		PIN_SLP(gpg0-4, INPUT, DOWN);
+		PIN_SLP(gpg0-5, INPUT, DOWN);
+		PIN_SLP(gpg0-6, INPUT, DOWN);
+
+		PIN_SLP(gpg1-0, OUT0, NONE);
+		PIN_SLP(gpg1-1, OUT1, NONE);
+		PIN_SLP(gpg1-2, PREV, NONE);
+		PIN_SLP(gpg1-3, OUT1, NONE);
+		PIN_SLP(gpg1-4, OUT1, NONE);
+		PIN_SLP(gpg1-5, OUT1, NONE);
+		PIN_SLP(gpg1-6, OUT1, NONE);
+
+		PIN_SLP(gpg2-0, OUT0, NONE);
+		PIN_SLP(gpg2-1, OUT0, NONE);
+		PIN_SLP(gpg2-2, INPUT, NONE);
+		PIN_SLP(gpg2-3, OUT0, NONE);
+		PIN_SLP(gpg2-4, OUT0, NONE);
+		PIN_SLP(gpg2-5, OUT0, NONE);
+		PIN_SLP(gpg2-6, OUT0, NONE);
+
+		PIN_SLP(gpg3-0, PREV, UP);
+		PIN_SLP(gpg3-1, PREV, UP);
+		PIN_SLP(gpg3-2, INPUT, NONE);
+		PIN_SLP(gpg3-3, INPUT, DOWN);
+		PIN_SLP(gpg3-4, OUT0, NONE);
+		PIN_SLP(gpg3-5, OUT0, NONE);
+		PIN_SLP(gpg3-6, INPUT, DOWN);
+
+		PIN_SLP(gpi-0, PREV, NONE);
+		PIN_SLP(gpi-1, INPUT, DOWN);
+		PIN_SLP(gpi-2, PREV, NONE);
+		PIN_SLP(gpi-3, PREV, NONE);
+		PIN_SLP(gpi-4, PREV, NONE);
+		PIN_SLP(gpi-5, INPUT, DOWN);
+		PIN_SLP(gpi-6, INPUT, DOWN);
+
+		PIN_SLP(gpj0-0, INPUT, NONE);
+		PIN_SLP(gpj0-1, INPUT, NONE);
+		PIN_SLP(gpj0-2, INPUT, NONE);
+		PIN_SLP(gpj0-3, INPUT, NONE);
+		PIN_SLP(gpj0-4, INPUT, NONE);
+		PIN_SLP(gpj0-5, INPUT, DOWN);
+		PIN_SLP(gpj0-6, OUT0, NONE);
+		PIN_SLP(gpj0-7, INPUT, NONE);
+
+		PIN_SLP(gpj1-0, OUT1, NONE);
+		PIN_SLP(gpj1-1, OUT0, NONE);
+		PIN_SLP(gpj1-2, INPUT, DOWN);
+		PIN_SLP(gpj1-3, PREV, NONE);
+		PIN_SLP(gpj1-4, PREV, NONE);
+		PIN_SLP(gpj1-5, OUT0, NONE);
+
+		PIN_SLP(gpj2-0, INPUT, DOWN);
+		PIN_SLP(gpj2-1, INPUT, DOWN);
+		PIN_SLP(gpj2-2, OUT0, NONE);
+		PIN_SLP(gpj2-3, INPUT, DOWN);
+		PIN_SLP(gpj2-4, INPUT, DOWN);
+		PIN_SLP(gpj2-5, PREV, NONE);
+		PIN_SLP(gpj2-6, PREV, NONE);
+		PIN_SLP(gpj2-7, INPUT, DOWN);
+
+		PIN_SLP(gpj3-0, INPUT, NONE);
+		PIN_SLP(gpj3-1, INPUT, NONE);
+		PIN_SLP(gpj3-2, OUT0, NONE);
+		PIN_SLP(gpj3-3, INPUT, DOWN);
+		PIN_SLP(gpj3-4, INPUT, NONE);
+		PIN_SLP(gpj3-5, INPUT, NONE);
+		PIN_SLP(gpj3-6, INPUT, NONE);
+		PIN_SLP(gpj3-7, INPUT, NONE);
+
+		PIN_SLP(gpj4-0, INPUT, NONE);
+		PIN_SLP(gpj4-1, INPUT, DOWN);
+		PIN_SLP(gpj4-2, PREV, NONE);
+		PIN_SLP(gpj4-3, INPUT, NONE);
+		PIN_SLP(gpj4-4, INPUT, DOWN);
+
+		PIN_SLP(mp01-0, OUT1, NONE);
+		PIN_SLP(mp01-1, OUT0, NONE);
+		PIN_SLP(mp01-2, INPUT, DOWN);
+		PIN_SLP(mp01-3, INPUT, DOWN);
+		PIN_SLP(mp01-4, OUT1, NONE);
+		PIN_SLP(mp01-5, INPUT, DOWN);
+		PIN_SLP(mp01-6, INPUT, DOWN);
+		PIN_SLP(mp01-7, INPUT, DOWN);
+
+		PIN_SLP(mp02-0, INPUT, DOWN);
+		PIN_SLP(mp02-1, INPUT, DOWN);
+		PIN_SLP(mp02-2, INPUT, NONE);
+		PIN_SLP(mp02-3, INPUT, DOWN);
+
+		PIN_SLP(mp03-0, INPUT, DOWN);
+		PIN_SLP(mp03-1, INPUT, DOWN);
+		PIN_SLP(mp03-2, OUT1, NONE);
+		PIN_SLP(mp03-3, OUT0, NONE);
+		PIN_SLP(mp03-4, INPUT, NONE);
+		PIN_SLP(mp03-5, OUT0, NONE);
+		PIN_SLP(mp03-6, INPUT, DOWN);
+		PIN_SLP(mp03-7, INPUT, DOWN);
+
+		PIN_SLP(mp04-0, INPUT, DOWN);
+		PIN_SLP(mp04-1, OUT0, NONE);
+		PIN_SLP(mp04-2, INPUT, DOWN);
+		PIN_SLP(mp04-3, OUT0, NONE);
+		PIN_SLP(mp04-4, INPUT, DOWN);
+		PIN_SLP(mp04-5, INPUT, DOWN);
+		PIN_SLP(mp04-6, OUT0, NONE);
+		PIN_SLP(mp04-7, INPUT, DOWN);
+
+		PIN_SLP(mp05-0, INPUT, NONE);
+		PIN_SLP(mp05-1, INPUT, NONE);
+		PIN_SLP(mp05-2, INPUT, NONE);
+		PIN_SLP(mp05-3, INPUT, NONE);
+		PIN_SLP(mp05-4, INPUT, DOWN);
+		PIN_SLP(mp05-5, OUT0, NONE);
+		PIN_SLP(mp05-6, INPUT, DOWN);
+		PIN_SLP(mp05-7, PREV, NONE);
+
+		PIN_SLP(mp06-0, INPUT, DOWN);
+		PIN_SLP(mp06-1, INPUT, DOWN);
+		PIN_SLP(mp06-2, INPUT, DOWN);
+		PIN_SLP(mp06-3, INPUT, DOWN);
+		PIN_SLP(mp06-4, INPUT, DOWN);
+		PIN_SLP(mp06-5, INPUT, DOWN);
+		PIN_SLP(mp06-6, INPUT, DOWN);
+		PIN_SLP(mp06-7, INPUT, DOWN);
+
+		PIN_SLP(mp07-0, INPUT, DOWN);
+		PIN_SLP(mp07-1, INPUT, DOWN);
+		PIN_SLP(mp07-2, INPUT, DOWN);
+		PIN_SLP(mp07-3, INPUT, DOWN);
+		PIN_SLP(mp07-4, INPUT, DOWN);
+		PIN_SLP(mp07-5, INPUT, DOWN);
+		PIN_SLP(mp07-6, INPUT, DOWN);
+		PIN_SLP(mp07-7, INPUT, DOWN);
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
