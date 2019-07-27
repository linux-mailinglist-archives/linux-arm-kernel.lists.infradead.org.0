Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFA0777B1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 10:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrSu2ffKA+vSFON9+5KUeyGml0nf5A36ONTBoOhmvhw=; b=R5cxbTj310KH8g
	PC37yZexqw8iudpWk9DtV54N5wx1uwUvPvQuyu065n7Sab8Mnd6/vEuEuqI9RcJbTXJSDGWko9dKZ
	EMUBKuHHWBzTsqfHArBck7pjRLlfhhPPH/4Y2yDmxK5pQDzF4wgYMwTT6TxCRfW5PrYqAMprdTKtu
	5Xx7Nlj3XYPl3KWP75rAhiXIWvlDdTLLNQGQvqy+JV/l7+ZfdVyxPxU1YVKqXY7AsIGsr4Qkyn+83
	CBXgpTYS4UM6wAYwSBStCWnX7xVDN1QRw9N9aZsGuvTeOcbLtwK+joLXjWLGWLYLn4JcoCFdA/uxJ
	DYekwXHNC4mVR1GSyzPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrICj-00005L-Ij; Sat, 27 Jul 2019 08:37:25 +0000
Received: from mail-eopbgr780070.outbound.protection.outlook.com
 ([40.107.78.70] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrI9X-0005Yt-6I
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 08:34:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a0yDUVZ0J+RtNCwgBAj8EziPm5JpUg+CnctAvRV+LzhGDMf5S9iu+LFyIWrTMhngrJ7musYygwzDSXBAEPdTlv7wuL1Sm2t1SbYo80OPdaLBSca6B4zx/xNKofoRg+wosRlOqfk8tlT2ZRm9TIfFhe+Zcqa7wQia4hY2IjGhW6dlUWLbsBo/9bPQ2cx8i3j4zYPSgTcUdo9aRc0bXAph71biOswDsKaQJWRybckGVJqTW4jZpWxhZ8hCSw658WFg0TAeVDzjGqXhYjGZDlbRTuFKdjrw2S7fD3OojlivwXg1Ixs0mbUYA4c57Qg7JZAwmX4/IqqkBEwuqCJeKMxOew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jwbDJkzilP7DmymYO/JI/NbOe5Mi309nAY5nqBncFYA=;
 b=Cs9FfY2tYH8TdDJLIKZuzcS0PopsD/lcZaLiMCpHqafr5Lv0sULggdf9vhvTk37ASdv8ZeHxyeokm01fcKc0gF9wrewS0P3NelgBGVkuaiCBs3/Cqi1pTyTku4Tkz7wSawxrkh0Ic6ohHkPhT+zYq7Eyuds8ItL81rpzLIK8NgmqkPKHReB3c5lbRDVNzJ2E4RB8o3KN1CzV2aIAd64QqJZ5j9rQWT0SI/8uXodUKsV00CDU6WJtItycA1e8zOcydZ9RsM+TYAST/wXX07wgmX0S4ExgDlcqNM+fW6FQiGaDwDzA2mqxq5bX3Lsx12P7R2t9YIceooEQm0hF8iah+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.80.198) smtp.rcpttodomain=arndb.de
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jwbDJkzilP7DmymYO/JI/NbOe5Mi309nAY5nqBncFYA=;
 b=ajaTNfaRn8toiZyL0CTv5+U8GiW3Ioeb/OyuHaD8mvmOjcCcH2SIu8Vy+Y5QmpTdAcq+ltBPEyTzA2PAjJ0pyTsS2i02FSuSRn2GOtCl5FVnGbap9tdDScC4TW+ykpjCK6lpmqOTA+/B7Oby0bTKVXCAyYG0UHuP729W/gu5G/Y=
Received: from DM6PR02CA0047.namprd02.prod.outlook.com (2603:10b6:5:177::24)
 by BY5PR02MB6740.namprd02.prod.outlook.com (2603:10b6:a03:202::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Sat, 27 Jul
 2019 08:34:05 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::204) by DM6PR02CA0047.outlook.office365.com
 (2603:10b6:5:177::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2115.10 via Frontend
 Transport; Sat, 27 Jul 2019 08:34:05 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2115.10 via Frontend Transport; Sat, 27 Jul 2019 08:34:04 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Jul 2019 09:34:00 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Jul 2019 09:33:59 +0100
Received: from [149.199.110.15] (port=40508 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hrI9Q-00027X-09; Sat, 27 Jul 2019 09:34:00 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V9 7/8] Docs: misc: xilinx_sdfec: Add documentation
Date: Sat, 27 Jul 2019 09:33:57 +0100
Message-ID: <1564216438-322406-8-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1564216438-322406-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:IE; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(396003)(2980300002)(189003)(199004)(2201001)(336012)(44832011)(446003)(2616005)(476003)(126002)(956004)(426003)(486006)(11346002)(50226002)(9786002)(51416003)(28376004)(7696005)(76176011)(60926002)(71366001)(110136005)(16586007)(54906003)(36906005)(316002)(106002)(26005)(186003)(47776003)(4326008)(107886003)(2906002)(305945005)(36756003)(7636002)(50466002)(48376002)(76130400001)(70586007)(478600001)(5660300002)(26826003)(4744005)(246002)(8676002)(356004)(70206006)(6666004)(8936002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6740; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5b8f0595-fa74-48a7-4a6d-08d7126d2f47
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BY5PR02MB6740; 
X-MS-TrafficTypeDiagnostic: BY5PR02MB6740:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6740961BAD20C819A5FC16B8CBC30@BY5PR02MB6740.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-Forefront-PRVS: 01110342A5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: OrXA50F1SiHfk2zfEAurS1UhT85Yin0lhc9GZ/rt/7Nd0kfZA/6vcvi6hZuJvcYQBQ23YvbrpxeQD0LnTgEJ6mK07uHjCFx7vWMzbNOeOemXjUkYpQtcXU1BhONnGDecJAFtdt0vu+7sw/vE2U1M1xgsQLJ1A3wUvcbGhXCqAov64JioEA8T39856Kmvz6G3imSSEX3gWqWhm0ASU0HVBHIVTz3DkCYGZUZlfn+YyG+P5D3ATH0XvbU9boY/mtI6fbK++ZYNIMyWbg0IBraE1ZvM4zGEUngo0KoMtDmE+FYiJes/c3HAIAy0FxdAfBANpSTqAnM0zw/0rh3+dAJVlk0MavJYUk4xMHFyfnbA8LdFPWFr4145LoeSYncPRO028Wqo+Kt2+5x2o6wkWZZDFOHh7RaFtiVBc97u/bJbWXk=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2019 08:34:04.8519 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b8f0595-fa74-48a7-4a6d-08d7126d2f47
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6740
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_013407_246501_67006AE3 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SD-FEC driver documentation.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 Documentation/misc-devices/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/misc-devices/index.rst b/Documentation/misc-devices/index.rst
index a57f92d..f11c5da 100644
--- a/Documentation/misc-devices/index.rst
+++ b/Documentation/misc-devices/index.rst
@@ -20,3 +20,4 @@ fit into other categories.
    isl29003
    lis3lv02d
    max6875
+   xilinx_sdfec
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
