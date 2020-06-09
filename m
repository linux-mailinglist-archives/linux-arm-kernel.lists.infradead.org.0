Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EBF1F3992
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PWoAa9MLAYSEJlv36AxWn8xT7j6xFayMu/YCdbcxzHw=; b=A2W2sQ01B2BEic
	3Q+TsSjG6w5/DReDLsJmJv/08ALQduLv1RxDJpxhgWkd9Fm16jwfVqdpWtXfe9O3IG6ITvnuxq5ZH
	Pm9Zyc/3kYxOrp2c13trJpbsRNmY73/WHTFSbV28fdkmckm0W0XuskMT7q4VgCHEo3ZiStKA1dA5E
	JT7gjSx8fneMICUZeIer/7aC72EtF+JHDKTdMZWef/5nRGLauLosS1fONUO+i6Gj6DXmj/S2R/Taf
	xWTpEKD4RDAEGP0kBo2dpck2+e5ol4Jv4+RCSOZG3EDwO2sprcqnCaDcXlLq9cgtpzEPXvFLfypLd
	lFjbrXPKTdR3yRxv/vPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicM4-0002CE-81; Tue, 09 Jun 2020 11:23:44 +0000
Received: from mail-eopbgr60059.outbound.protection.outlook.com ([40.107.6.59]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicLw-0002BV-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:23:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RJKAoNPA++pJxi9YS9TNhoI8L9Sx0ezX40eUUz69QHcBUwkBpJFMbvnAKJqURxatjPblhh8v0aJFVagx+ePsGcH6mv6kpduNWZlZPbf9/9IvAX/iftmhGo13uhVvMHuGf5Wyxd/2w/OooP8ZCrzY5j9lAVz7Of4jZSHMvNTVFdPmOO6wwovtKjms3uzfx/bXH4M0qBcybNWI64Zf2qs8C82Mr+TQGvvr0cDmLMpbvNJBttma9Fdh8Hre41OklZ77rcVl8SmvCcCHZTAcXdeej02L51eZCvyQMr9BOYp6zAhQqSvASJjUZkRL/XPRAdM8V7+qdKaLap+dK3vqPmu8hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zv3XB6qa56EONpEJriDStQuzzAVRkNHkwbq3EQLSOrA=;
 b=oClf2DvL1RHr5xOYjIeqoooEqcNkNEL8Pm6+F5OHyQPUz5kmpsuDpKftqq1cFqI3h9DGcUZIzQ7RnwsrrF+9fMiF0+413/4P05Js4pFW0j9acE84tZN4UDdaCGy/Ljg/K1G3wxPIrd7N5IVGT2NN4sf8/y72efdXKy7fUEbhWb8UQAK6OxKznR9wcIZWMgpErQW8Vk6OFv6DvBvy+FDsLZ+ZPygIFJSsy42mxQINo6OYF4xRs30GoSBmZSz8rSK7QjwSCLHMgy74sc60kRa5BCi84/w6Wjn8/7dbBffWvV4MccE+qE4+6LN5m18ghI12d9+1fJx846QE1U9mtmLzRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zv3XB6qa56EONpEJriDStQuzzAVRkNHkwbq3EQLSOrA=;
 b=WlbKWVuI63VZ2hSfqnEk0SICGBuhnRp8O9w1r81ZV4aAu7Lq4TqehTEPnQC5yUnSjDg7p94Cu4NfYjtjMlXCA7bmvveB7d3xl4Z3fl/bWJBLEomC8GVVuM+eWZDIdEiTrjR111bIA/4HFO4M/aVmaiP/UZhYLO78oVzPRKuSZRo=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VE1PR04MB6622.eurprd04.prod.outlook.com (2603:10a6:803:121::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Tue, 9 Jun
 2020 11:23:30 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 11:23:30 +0000
From: Li Jun <jun.li@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH 0/6] add NXP imx8mp usb support
Date: Tue,  9 Jun 2020 19:12:39 +0800
Message-Id: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0069.apcprd02.prod.outlook.com
 (2603:1096:4:54::33) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0069.apcprd02.prod.outlook.com (2603:1096:4:54::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Tue, 9 Jun 2020 11:23:26 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0ffaf8dd-0e9c-49ed-bb5a-08d80c67894a
X-MS-TrafficTypeDiagnostic: VE1PR04MB6622:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB66226179542B87567D4DB34E89820@VE1PR04MB6622.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3fiBR7iHRMoiv/aSxG2Yt1msnLanSIVZzIouLR5on+y9bBtHaSzgLojUk/k3fzuARMrcIkUnocd+JEyanYB/jqiTzmnSVr/Eo5SjTkzOa1CobQ/85OegpzLKQu4kmkdnsAHqLJY8bPGHbTuL7dYABgldF7FyU8omex45Da17TEaLcj1Vkdr14DAWG8egFTQhbeunrwMzJ+wLC1OW0HlrInvrFOqBQOUt1K53UdKHCy+nGQ4rGnPEP6Lrrn17Eggk2NC6m0gDZv7j7kpv8RPeTEFkE/nbltNBUz93Vbv7Df/F9GX0l8SoycPIWUZMFDo9lEpDLEdFmfI/OZN4Ldksqn84rlKY36BLeuzbhI7ryt46Qgo7fSdhqnH5RkDhs8/0O9yXmxcErw+uiZFFMpdyZZ9KrRsZxuew8+FfGRi1gYQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6528.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(6486002)(66946007)(5660300002)(6666004)(66556008)(2616005)(956004)(6512007)(66476007)(6506007)(36756003)(52116002)(2906002)(4326008)(186003)(26005)(16526019)(8936002)(8676002)(498600001)(69590400007)(86362001)(83380400001)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ZLjHyvMqpkFMGhq1VbUycdjOnuwYZXkQ2UxygkoBaXg1/RGO0dTCClSrAD8lr9zb33pSQ9V9zIkNnXUSy7lCJMiHpTOC+zmA2YwCAy2UbeCYx6JOW3VjW/ZSbMRb3PzYoAwmBBQ7STUkRN+DSyjTJ6XGg7aJ+tKeFmZVj0Ztjr5y+jDP/bRjl1Cfd2iApBtY/NDFdTfYY6OmlvSdsYGEDb4JE7Uir6cuKWvDoatp8UCfbtb1lImH6RczrpXITVRLrFP2+cF6PXRjBa+lHOd3bffk6CsGbwqWRMgVEc+gDVUzFUCbfQEjsPBNPDMW5rYkA6xRBCHLYfQ8K321sGB6U1s/2DIQXppzDRYIdEHkjpxxcM+v6wZWEYu9eyvmotc+kiMmByEM6Uel9vLstgAT8XbTAqneHdZxv/O7SAs8fpD1PFqBWHjAQBoGUmx34piuD4xwbTX99Mwjq+wFckRFsdWcls+UvgIX+fkOOCpjq84=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ffaf8dd-0e9c-49ed-bb5a-08d80c67894a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 11:23:30.0674 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G0monRi99rU5z/hg9XkW8GsQ4dc7hOpAiCAhEgYNaV/itOUgqYzK6Qfto7/uJ3IS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_042336_729345_7354DECF 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.59 listed in wl.mailspike.net]
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
Cc: peter.chen@nxp.com, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP imx8MPlus integrates 2 indentical dwc3 3.30b IP with additional wakeup
logic to support low power, this wakeup logic has a separated interrupt
which can generate events with suspend clock(32K), due to SoC integration
limitation, 64bit address can't be supported for host controller, but the
xhci capability register HCCPARAMS1 AC64 bit is 1, so introduce a new
property snps,xhci-dis-64bit-support-quirk to enable existing quirk
XHCI_NO_64BIT_SUPPORT for OF platforms. 

Li Jun (6):
  dt-bindings: usb: dwc3: add property to disable xhci 64bit support
  usb: host: xhci-plat: add quirk for XHCI_NO_64BIT_SUPPORT
  usb: dwc3: add imx8mp dwc3 glue layer driver
  arm64: dtsi: imx8mp: add usb nodes
  arm64: dts: imx8mp-evk: enable usb1 as host mode
  dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3 glue bindings

 Documentation/devicetree/bindings/usb/dwc3.txt     |   3 +
 .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml   |  87 +++++
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts       |  32 ++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi          |  79 +++++
 drivers/usb/dwc3/Kconfig                           |  10 +
 drivers/usb/dwc3/Makefile                          |   1 +
 drivers/usb/dwc3/dwc3-imx8mp.c                     | 352 +++++++++++++++++++++
 drivers/usb/host/xhci-plat.c                       |   4 +
 8 files changed, 568 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
 create mode 100644 drivers/usb/dwc3/dwc3-imx8mp.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
