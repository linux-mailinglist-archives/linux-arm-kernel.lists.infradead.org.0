Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917EE138E63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91VegTZ+4/H/zP73jexKP+KiPkdCUREO9wmyxCST6G0=; b=WC8l6SFw3y4mfC
	ZAI2WceD6yy1vbumnmH2bAOownbUqV5WVzB8K2tum5dJ21BiAprj/vqBKpKZKNrMIjWf3aMMMoxvS
	kAN78GMYDa/Nauzbnpmx6NnVuFLglYQObnuLVbjPeXM6WGVPZzWu7rQ8ymaMSIjMrArT7isjCW3AR
	uJaDO/j0WLd1M8T0EXPitE22vvCMxZ7GNNjGA4Y7x0QT0c5yEe+PhRn8TakywzMXPfHm2L9dj4F/N
	K4yopuv6+GWxNKt8LdXUvGVKkVoI2gB0YIQcZkh4Vw23BVyoE6DiMzXS46mwOTGyAdx4n9VJm/8ND
	J2Rz9lsgrao4va7C+L3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwVO-0008Gj-Lo; Mon, 13 Jan 2020 09:59:30 +0000
Received: from mail-mw2nam10on2041.outbound.protection.outlook.com
 ([40.107.94.41] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwUo-0007zQ-PJ; Mon, 13 Jan 2020 09:58:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwIO/7w6TCoOBAUvgS/0ZTh4EQmmQrknYkyhX9WM7C9Jm8Lz1QtPniJGaszEMgKfTYlWLZHVLPgoKeNPLv0R3PYlHndRMKiMRWfAeOOMUkLZ2Z3y8EboSu95IqiFV6DePs3AY1yEK2GGCYF/6MSyrhZLbgTuOLdQyhfaKBspdu7wcd3a2QfefAkWgM8TadzYl4dmMCkXpPVm4vUTqilBeEiowd2MPYDkkoKQhReSAIpKNoPESOTck+D6FbNaNmqeAotb3lACA0neacYuisT7/YgDGMrfEWN0EP9MNhsuobXzwHn3Ht2QIdKTx/4BI+4e4Aq/YY+LU0A8mSmmMHZJyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grWyuPCpOJljSa+J1mOgn1wSHuxaPFZw5L1ctw3Q418=;
 b=IlcJnn9NouCMNF1HSbZfMvjuXDsVxesiuwT11j9N9fL+D9VR3p4+M8YQ5a6S1w2NGVpbzBtEdK0vnghhueg5WhGpsOZoie2lie6mJcTJSWa3cCrhcDLOl11qGgyegHY4zSBHKuriWXMv7gB4hq043eZKUOrRU5gj1MO2nSbtF5gl7VRNHAoQwgTmOQ8yhQIol8G0lyThAaJ4DceoNcTlDgrSXeHDFMCL4HbrBt0PLRsuck7W0PC9jgK//CMDGu8HtZq4vh2DZ99DNeE4iKdqhiE+s2RPnASBJARP3li81XQ6ZItYEctW/OV+x1rxbM6q4DFLLo58ksrNQlYXlMj/pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=fail (signature did not verify)
 header.d=kernel.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=grWyuPCpOJljSa+J1mOgn1wSHuxaPFZw5L1ctw3Q418=;
 b=XHWtpYSXAVVXuQmjjXT74gzeMOi0tiXGUYb0CgZxO1QS0SraVvy0IWMyYcSvjeA8x7Nbl1L02Pa3dEIP5uve84VYCdjxiBzBVQ8mSuAHPHxzxv5vln9fT+IhvkdIM6I1UwkK7rwAkBpK/0w6RI0FhXn2vSeFCcmx4wS44WeJrjk=
Received: from BYAPR02CA0028.namprd02.prod.outlook.com (2603:10b6:a02:ee::41)
 by MN2PR02MB5807.namprd02.prod.outlook.com (2603:10b6:208:11d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.13; Mon, 13 Jan
 2020 09:58:50 +0000
Received: from SN1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::203) by BYAPR02CA0028.outlook.office365.com
 (2603:10b6:a02:ee::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9 via Frontend
 Transport; Mon, 13 Jan 2020 09:58:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=fail (signature did not
 verify) header.d=kernel.org;lists.infradead.org; dmarc=bestguesspass
 action=none header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT051.mail.protection.outlook.com (10.152.73.103) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Mon, 13 Jan 2020 09:58:49 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <bharat.kumar.gogada@xilinx.com>)
 id 1iqwUj-0000IA-8H; Mon, 13 Jan 2020 01:58:49 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <bharat.kumar.gogada@xilinx.com>)
 id 1iqwUd-0004Cu-Vy; Mon, 13 Jan 2020 01:58:44 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00D9wdNb014418; 
 Mon, 13 Jan 2020 01:58:39 -0800
Received: from [10.140.9.2] (helo=xhdbharatku40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <bharat.kumar.gogada@xilinx.com>)
 id 1iqwUY-0003nG-Fy; Mon, 13 Jan 2020 01:58:39 -0800
From: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
To: git-dev@xilinx.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 06/11] PCI: of: Add inbound resource parsing to helpers
Date: Mon, 13 Jan 2020 15:26:47 +0530
Message-Id: <20190924214630.12817-7-robh@kernel.org>
X-Mailer: git-send-email 2.7.4
X-Patchwork-Submitter: Rob Herring <robh@kernel.org>
X-Patchwork-Id: 11159679
X-Patchwork-Delegate: geert@linux-m68k.org
Received: from mail.kernel.org (pdx-korg-mail-1.web.codeaurora.org
 [172.30.200.123]) by pdx-korg-patchwork-2.web.codeaurora.org (Postfix) with
 ESMTP id 4180B14ED for <patchwork-linux-renesas-soc@patchwork.kernel.org>;
 Tue, 24 Sep 2019 21:46:42 +0000 (UTC)
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67]) by
 mail.kernel.org (Postfix) with ESMTP id 0BD7320872 for
 <patchwork-linux-renesas-soc@patchwork.kernel.org>;
 Tue, 24 Sep 2019 21:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org; s=default;
 t=1569361602; bh=0LcT+0PGsHr4ZHhbwt6VvYrA2psYP10+I2+t1la6QIk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:List-ID:From;
 b=y8IhXwVKT/UGz2uXNxChg/Dd/7wnVwMBovQNVb+gx87P3CymADhEDcmhMz6lKqsk7
 CVwQrzBk1WcH11Fr3j1AiadXqduhKI/lREtGhZcpmyvMWGjpsTdB9bRutDKkT0LzP7
 hsdxEv32auOrrtWg4bPqPDly5G5FGxrBcQbL/xwE=
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S2394482AbfIXVql (ORCPT <rfc822;
 patchwork-linux-renesas-soc@patchwork.kernel.org>);
 Tue, 24 Sep 2019 17:46:41 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:43426 "EHLO
 mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with
 ESMTP id S2388524AbfIXVql (ORCPT <rfc822; linux-renesas-soc@vger.kernel.org>);
 Tue, 24 Sep 2019 17:46:41 -0400
Received: by mail-oi1-f194.google.com with SMTP id t84so3042302oih.10;
 Tue, 24 Sep 2019 14:46:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NoeAS779Z7n+6bw4b58c1x/JgogGZV7oOEiXSfojCsM=;
 b=T7ovEIXdVY09AkE2NOvyoystac8CwLrB/zPJodIhOPqTDHWmge7p7GTxqfL8/+NrPP
 Bz+56rLEdq6OIoiDDnyE7uyJr5AdADpNyMqWIgwqhlxlRCeeG8qyZquxbyO0DzkqnGrm
 uHw00UEeIvajisDd5SxPmK/htnACjoyqAg0uzq0DXorJTNUTiQqQ+DUXtzAAr4dCZjPo
 EL85TAeesRO4d45qqmwSdJm1bxMJ1S2rZRMufjFzQp/TnHd1q+ArzCvIhh56pr4+g+o+
 4sX0djL8NFseydwyDVJI2rNpb0SWi6bakgv0Javwg8JjLMuzz1jZNp3CMDl57nnjaTvL 2hjA==
X-Gm-Message-State: APjAAAV/AKWOKnqB7hl4Cd2SAQe0bQCTLV2B4j6iUV21RpHMxuhvlYPY
 D8x7eYNtzvUxE208flt2LhpW0+A=
X-Google-Smtp-Source: APXvYqxdAPeGtkEzrkp60jWMj/G0sVTCH/6vT1EK9Awn+6rp6xQIJmnnnBtehNhsOnyt3SkFcaTbLg==
X-Received: by 2002:aca:1a16:: with SMTP id a22mr2013528oia.49.1569361599819;
 Tue, 24 Sep 2019 14:46:39 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49]) by smtp.googlemail.com with ESMTPSA id
 s66sm976787otb.65.2019.09.24.14.46.38 (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:39 -0700 (PDT)
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-renesas-soc@vger.kernel.org
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(376002)(396003)(199004)(189003)(316002)(30864003)(81156014)(81166006)(8676002)(478600001)(54906003)(5660300002)(4326008)(110136005)(9686003)(70586007)(70206006)(8936002)(7846003)(336012)(956004)(36756003)(19810500001)(7416002)(2906002)(186003)(1076003)(26005)(356004)(6666004)(1736002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB5807; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bcaa27d7-4382-4f17-ef51-08d7980f305a
X-MS-TrafficTypeDiagnostic: MN2PR02MB5807:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <MN2PR02MB5807704C91619787E808FAB0A5350@MN2PR02MB5807.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 028166BF91
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cdSSpvpLhPLl99QXO3XIFAWbKenjTE14eX1uXNNT3LRXz/osQis2mhM0OLSfpPwWr2mLxAlZ7A8xV3tvfr1hrosqeTI5ibUCRsSEd1hfExOBJ18buJX0zz6LG1owfkMf9BxhOzwBiumU7HI21XHDmak8VSQVXKifqvkCQKK89fDqPkJMm1kngLwzETYHePXPV10un3Dhe5epJdIb4xeFc/jAuvYf3fD+wzpTtPL8yr8h6xsQgotkYEx5wwsUmfzLU8Jmttci507pZYN5oXFkIgMUHWz0KBKIG4+uEqUdNO2s7UdOTCqRlAgP1QZTfdXhKHuz+jkwycNILgd/hw8a+pr/oJEUGEZQZiywV5i2CwsUFyk0xto0tTVbaMs8M3gkfhC8D1105WTGfvRvSbFjBGknqO3COGmtfjuUn43v3XnY9+hFydBAeGSFi8L8dicIDB3u5SR2ITVF8jriz5EDpq8MJCVBXwc06PU3jTgh0UW0MdyEZ8g/UuOXU7avjPjEm+tzar1+aHAItRmyDqxIPg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2020 09:58:49.7200 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bcaa27d7-4382-4f17-ef51-08d7980f305a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB5807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015854_893035_0E1050AF 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 michals@xilinx.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>, rgummal@xilinx.com,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Herring <robh@kernel.org>

Extend devm_of_pci_get_host_bridge_resources() and
pci_parse_request_of_pci_ranges() helpers to also parse the inbound
addresses from DT 'dma-ranges' and populate a resource list with the
translated addresses. This will help ensure 'dma-ranges' is always
parsed in a consistent way.

Cc: Jingoo Han <jingoohan1@gmail.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Will Deacon <will@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Toan Le <toan@os.amperecomputing.com>
Cc: Ley Foon Tan <lftan@altera.com>
Cc: Tom Joseph <tjoseph@cadence.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: Ryder Lee <ryder.lee@mediatek.com>
Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Cc: Simon Horman <horms@verge.net.au>
Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: rfi@lists.rocketboards.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Acked-by: Jingoo Han <jingoohan1@gmail.com>
Acked-by: Jingoo Han <jingoohan1@gmail.com>
---
 .../pci/controller/dwc/pcie-designware-host.c |  3 +-
 drivers/pci/controller/pci-aardvark.c         |  2 +-
 drivers/pci/controller/pci-ftpci100.c         |  3 +-
 drivers/pci/controller/pci-host-common.c      |  2 +-
 drivers/pci/controller/pci-v3-semi.c          |  2 +-
 drivers/pci/controller/pci-versatile.c        |  2 +-
 drivers/pci/controller/pci-xgene.c            |  1 +
 drivers/pci/controller/pcie-altera.c          |  2 +-
 drivers/pci/controller/pcie-cadence-host.c    |  2 +-
 drivers/pci/controller/pcie-iproc-platform.c  |  1 +
 drivers/pci/controller/pcie-mediatek.c        |  2 +-
 drivers/pci/controller/pcie-mobiveil.c        |  4 +-
 drivers/pci/controller/pcie-rcar.c            |  3 +-
 drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
 drivers/pci/controller/pcie-xilinx-nwl.c      |  2 +-
 drivers/pci/controller/pcie-xilinx.c          |  2 +-
 drivers/pci/of.c                              | 44 ++++++++++++++++++-
 drivers/pci/pci.h                             |  8 +++-
 include/linux/pci.h                           |  2 +
 19 files changed, 72 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index f93252d0da5b..0743ae64bb0f 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -342,7 +342,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
 		return -ENOMEM;
 
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-					&bridge->windows, &pp->io_base);
+					&bridge->windows, &bridge->dma_ranges,
+					&pp->io_base);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index ff3af3d34028..c00b391529f3 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -940,7 +940,7 @@ static int advk_pcie_probe(struct platform_device *pdev)
 	}
 
 	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
-					      &bus);
+					      &bridge->dma_ranges, &bus);
 	if (ret) {
 		dev_err(dev, "Failed to parse resources\n");
 		return ret;
diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
index bf5ece5d9291..3e07a8203736 100644
--- a/drivers/pci/controller/pci-ftpci100.c
+++ b/drivers/pci/controller/pci-ftpci100.c
@@ -481,7 +481,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
 		return PTR_ERR(p->base);
 
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &res, &io_base);
+						    &res, &host->dma_ranges,
+						    &io_base);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index c742881b5061..183381c19ee8 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -27,7 +27,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 	struct pci_config_window *cfg;
 
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
 	if (err)
 		return ERR_PTR(err);
 
diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index d219404bad92..090df766faf9 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -794,7 +794,7 @@ static int v3_pci_probe(struct platform_device *pdev)
 		return PTR_ERR(v3->config_base);
 
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
-						    &io_base);
+						    &host->dma_ranges, &io_base);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index 237b1abb26f2..211159f54b4a 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -93,7 +93,7 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(versatile_cfg_base[1]))
 		return PTR_ERR(versatile_cfg_base[1]);
 
-	ret = pci_parse_request_of_pci_ranges(dev, &pci_res, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &pci_res, NULL, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index ffda3e8b4742..11f27c42c06a 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -635,6 +635,7 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 		return ret;
 
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
+						    &bridge->dma_ranges,
 						    &iobase);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index 2ed00babff5a..fde6a3b16fb9 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -801,7 +801,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
 	}
 
 	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
-					      NULL);
+					      &bridge->dma_ranges, NULL);
 	if (ret) {
 		dev_err(dev, "Failed add resources\n");
 		return ret;
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 97e251090b4f..a8f7a6284c3e 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -211,7 +211,7 @@ static int cdns_pcie_host_init(struct device *dev,
 	int err;
 
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
 	if (err)
 		return err;
 
diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
index 5a3550b6bb29..62eee2d17f43 100644
--- a/drivers/pci/controller/pcie-iproc-platform.c
+++ b/drivers/pci/controller/pcie-iproc-platform.c
@@ -101,6 +101,7 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 	}
 
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
+						    &bridge->dma_ranges,
 						    &iobase);
 	if (ret) {
 		dev_err(dev, "unable to get PCI host bridge resources\n");
diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index cea4112b5309..f3996eed152d 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -1032,7 +1032,7 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
 	int err;
 
 	err = pci_parse_request_of_pci_ranges(dev, windows,
-					      &bus);
+					      &host->dma_ranges, &bus);
 	if (err)
 		return err;
 
diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 672e633601c7..93064faaa656 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -875,7 +875,9 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 
 	/* parse the host bridge base addresses from the device tree file */
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, &iobase);
+						    &pcie->resources,
+						    &bridge->dma_ranges,
+						    &iobase);
 	if (ret) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return ret;
diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index f6a669a9af41..b8d6e86a5539 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -1138,7 +1138,8 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 	pcie->dev = dev;
 	platform_set_drvdata(pdev, pcie);
 
-	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources, NULL);
+	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
+					      &bridge->dma_ranges, NULL);
 	if (err)
 		goto err_free_bridge;
 
diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 8d20f1793a61..093b816b9dc9 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -996,7 +996,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		goto err_deinit_port;
 
 	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &res, &io_base);
+						    &res, &bridge->dma_ranges,
+						    &io_base);
 	if (err)
 		goto err_remove_irq_domain;
 
diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
index 45c0f344ccd1..5c9132a02d15 100644
--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -846,7 +846,7 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 	}
 
 	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
-						    &iobase);
+						    &bridge->dma_ranges, &iobase);
 	if (err) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return err;
diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
index 5bf3af3b28e6..a95faca30291 100644
--- a/drivers/pci/controller/pcie-xilinx.c
+++ b/drivers/pci/controller/pcie-xilinx.c
@@ -648,7 +648,7 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
 	}
 
 	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
-						    &iobase);
+						    &bridge->dma_ranges, &iobase);
 	if (err) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return err;
diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index bc7b27a28795..8d31e078461f 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -257,7 +257,9 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
  */
 int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources, resource_size_t *io_base)
+			struct list_head *resources,
+			struct list_head *ib_resources,
+			resource_size_t *io_base)
 {
 	struct device_node *dev_node = dev->of_node;
 	struct resource *res, tmp_res;
@@ -340,6 +342,42 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
 		pci_add_resource_offset(resources, res,	res->start - range.pci_addr);
 	}
 
+	/* Check for dma-ranges property */
+	if (!ib_resources)
+		return 0;
+	err = of_pci_dma_range_parser_init(&parser, dev_node);
+	if (err)
+		return 0;
+
+	dev_dbg(dev, "Parsing dma-ranges property...\n");
+	for_each_of_pci_range(&parser, &range) {
+		/*
+		 * If we failed translation or got a zero-sized region
+		 * then skip this range
+		 */
+		if (((range.flags & IORESOURCE_TYPE_BITS) != IORESOURCE_MEM) ||
+		    range.cpu_addr == OF_BAD_ADDR || range.size == 0)
+			continue;
+
+		dev_info(dev, "IB MEM %#010llx..%#010llx -> %#010llx\n",
+			 range.cpu_addr,
+			 range.cpu_addr + range.size - 1, range.pci_addr);
+
+
+		err = of_pci_range_to_resource(&range, dev_node, &tmp_res);
+		if (err)
+			continue;
+
+		res = devm_kmemdup(dev, &tmp_res, sizeof(tmp_res), GFP_KERNEL);
+		if (!res) {
+			err = -ENOMEM;
+			goto failed;
+		}
+
+		pci_add_resource_offset(ib_resources, res,
+					res->start - range.pci_addr);
+	}
+
 	return 0;
 
 failed:
@@ -482,6 +520,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_and_map_pci);
 
 int pci_parse_request_of_pci_ranges(struct device *dev,
 				    struct list_head *resources,
+				    struct list_head *ib_resources,
 				    struct resource **bus_range)
 {
 	int err, res_valid = 0;
@@ -489,8 +528,9 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
 	struct resource_entry *win, *tmp;
 
 	INIT_LIST_HEAD(resources);
+	INIT_LIST_HEAD(ib_resources);
 	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, resources,
-						    &iobase);
+						    ib_resources, &iobase);
 	if (err)
 		return err;
 
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index d22d1b807701..790458953c54 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -582,11 +582,15 @@ of_pci_get_max_link_speed(struct device_node *node)
 #if defined(CONFIG_OF_ADDRESS)
 int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources, resource_size_t *io_base);
+			struct list_head *resources,
+			struct list_head *ib_resources,
+			resource_size_t *io_base);
 #else
 static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources, resource_size_t *io_base)
+			struct list_head *resources,
+			struct list_head *ib_resources,
+			resource_size_t *io_base);
 {
 	return -EINVAL;
 }
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 82e4cd1b7ac3..d57389b86f92 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -2312,6 +2312,7 @@ void pci_release_bus_of_node(struct pci_bus *bus);
 struct irq_domain *pci_host_bridge_of_msi_domain(struct pci_bus *bus);
 int pci_parse_request_of_pci_ranges(struct device *dev,
 				    struct list_head *resources,
+				    struct list_head *ib_resources,
 				    struct resource **bus_range);
 
 /* Arch may override this (weak) */
@@ -2326,6 +2327,7 @@ static inline struct irq_domain *
 pci_host_bridge_of_msi_domain(struct pci_bus *bus) { return NULL; }
 static inline int pci_parse_request_of_pci_ranges(struct device *dev,
 						  struct list_head *resources,
+						  struct list_head *ib_resources,
 						  struct resource **bus_range)
 {
 	return -EINVAL;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
