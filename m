Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4071A2F27
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wV6sZyc0jRBgeYehneiG7soqy6ZAxyHNjPQIzbjzDQA=; b=e1bumLEJt/BKN8
	16Majxc+X6AsZqqCi+ghUx4gRytFPUe5pxeushM7G80yhLTsXC5wmjeE2mq8m8Js6tvb+Vm0q+GOZ
	0jeJVAzJcEJnqqKrrWnGdGnLZO1+Fibaf4r9nT5aA0wRFLrveaG0KXe3f7k9Lxwwb1HY61X91ihDe
	lx1il17ftPyHmoNi+et9Cn67MVsCxMlj1bMJg25a77WSvblEM6P/HI9UtKgdEHh/PsxRazlPmnMRJ
	/bVM+yWd/HNiLIxboRwi4rgeCO8gkkCjzQlgGshBVtaUtjdSND9Bsnp1UcTCb6W6saOZgTzS/O8r/
	NUY0Gx1lafk5V2td1AcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQe1-0002pm-1l; Thu, 09 Apr 2020 06:26:33 +0000
Received: from mail-mw2nam12on2071.outbound.protection.outlook.com
 ([40.107.244.71] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQdu-0002pB-0S
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:26:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eR2xFY1fZXMWycJ5Gwd8lb1a/zsKmTG7vkI+aR5rJDn1xjgImZdNhFMtCZV52MOguzLP5PGiOS1SXVPIYeaTQZKVvKSql8E08eIhw62cdaOllRhYwG2e/DTTkTgSLfTYkXv/T/+ni55tG1vTvwVco7EmS6A3vUrCCoUZmH/qmLSc+bRTmjewi7qkUJJrcPQTSoqUPi6b7LRzOqhzTMrdO7i1qtB+VlbazjMsysmpRX3L+zymM2kvtYiMxWLUAyUrA6VfnOC4AgioxOJItMqDpImnwJT2K+nQ2vROmONqgekBvqYE8/tC4E7OiqmITFFzkEXRTU4v31JwEp9ZEdIbcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fKuKpoe6hh1QX4TgtNYZISjBL0mlRHdI5azSZg5JJ+s=;
 b=XtSQgArLheu0cIcBbNdie1znG4jvbu5mMbyaPcl6z4r6c2ObCH39AOZve89UKeJHac23h8C7gS5HLYOIjyErg164RbdHkfsx9PrMUlUlZVRDmFqwOWjX6pLkJyacAcUpe4gDfki18eUn+KU+ZWuVQj7EkLMJ7DkTvwWRioIXaQsM4MsMpvd2HgfyOhRu3Kj4N/+EOCLFX+rK5y3Vjpej7acUiOib8a+KcriEJUy0ouviiQS4gIPiRpHV8IK9kitueJiHTNxV2yVkGh0TR1DFhmuXrZsCHfY/KGRH5ooy7rFsHcTbJj6aCa3Ae0mkVW8bXFQ6T1jXKE/NKscPGKu1oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fKuKpoe6hh1QX4TgtNYZISjBL0mlRHdI5azSZg5JJ+s=;
 b=fSQJ2aePXRN+WBj6YVBNHIOlOpJvpoJaULKXXTcjxvFu4b7DTn07pcdG+KxZ92QTwBWLBzpJJ1am5XzXPlzdnpU1y52sMPJxng7GcePdtUMLdT112IdrNG/UhTF0JWzPiIBTDemxJflFVEYd1UowGMBsZaR8di2VRb3D1uLW1W4=
Received: from CY4PR22CA0064.namprd22.prod.outlook.com (2603:10b6:903:ae::26)
 by DM6PR02MB5546.namprd02.prod.outlook.com (2603:10b6:5:35::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 9 Apr
 2020 06:26:23 +0000
Received: from CY1NAM02FT024.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:ae:cafe::7e) by CY4PR22CA0064.outlook.office365.com
 (2603:10b6:903:ae::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Thu, 9 Apr 2020 06:26:23 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT024.mail.protection.outlook.com (10.152.74.210) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 06:26:23
 +0000
Received: from [149.199.38.66] (port=46429 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jMQdR-00086K-Sn; Wed, 08 Apr 2020 23:25:57 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jMQdq-0004Wo-QA; Wed, 08 Apr 2020 23:26:22 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0396QCGa027217; 
 Wed, 8 Apr 2020 23:26:13 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <raviteja.narayanam@xilinx.com>)
 id 1jMQdg-00046h-7C; Wed, 08 Apr 2020 23:26:12 -0700
From: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 0/2] serial: uartps: Add tx_empty checks
Date: Thu,  9 Apr 2020 11:56:01 +0530
Message-Id: <1586413563-29125-1-git-send-email-raviteja.narayanam@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(46966005)(7696005)(6916009)(47076004)(8676002)(9786002)(107886003)(356004)(6666004)(26005)(81156014)(5660300002)(81166007)(70586007)(316002)(478600001)(4744005)(2616005)(426003)(82740400003)(70206006)(186003)(2906002)(36756003)(44832011)(8936002)(336012)(4326008);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 567a3e74-a6a2-491c-b491-08d7dc4eec94
X-MS-TrafficTypeDiagnostic: DM6PR02MB5546:
X-Microsoft-Antispam-PRVS: <DM6PR02MB5546B66725C8C23346FB8B84CAC10@DM6PR02MB5546.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MWfAEwZKz9OLl8dSfhr2ALWUXGK9b9BLHRpUUyax/dHqUWp8twUqUd8Rw1ZjJerfmudRMMD/pQdgSsrV45RKWTrWWBVbz4edi/e5whcZ7jpzOGojYgtlePv865cGt2N8ZvXOG9L9ZDiak/94Z1Ks3SbbItiJOmAm1SoScb24sxmCO9ngRopD43IWgbfoCblnENqLZAj01sywIAOCXom+OTlF/3plIab/w2nrSYHo18a76ur/pD5ZuoXhyeFgrP9Kznp8Cez7ABBHR2ztPn2Fm2RA1VIXyf5280QCFa2d1/pduY9QxfTMqP3Zphouov0VFXRGGDdj/uwkV2ya04DY1lBljP6tRBWZvv82kI5DcMbgOVAzT7RaaOYRQ8w5IUCRHo66saQzutMSV8i4w0gnSqJWWSgkZWkpTT4rEf8QmgfayqiU3Y70VoaMQIPX/zAuw9bcP3+pLAaiuL0OepjlHj1P/nKwzYl1CBRgjuL+NQT61XE6WEPD53o+fW6aLzq+IP/vIcRTqinr40h0oJ5fxg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 06:26:23.0862 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 567a3e74-a6a2-491c-b491-08d7dc4eec94
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5546
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_232627_124125_D07BE857 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Raviteja Narayanam <raviteja.narayanam@xilinx.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, git@xilinx.com, jslaby@suse.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
Use cdns_uart_tx_empty function in the driver.
Wait for empty.

v2:
Modified the wait in console setup and used cdns_uart_tx_empty function
in console_write as suggested by Maarten.

Raviteja Narayanam (2):
  serial: uartps: Wait for tx_empty in console setup
  serial: uartps: Use cdns_uart_tx_empty in console_write

 drivers/tty/serial/xilinx_uartps.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
