Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D253F12051C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:11:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bruDW9zkDH1VdGsRkW2jtAn8oKdfFJvJu67VDCaZVMk=; b=Q+is8VvghRHWQn
	Sgt8xgB8Zc+b3puA3C5NM/LZ7UWbA+X3E61mHB9/dkd+aYlpynYAgXU0wMb74sXPRnTWlrZJbx3U/
	IHtH1KQK4npp79QSdJH0veg5cXyDe1G3lML60G7R30z8rTXd+WPwVe93xWvG5JF7QlMumzb5WxnVV
	gFcSqelZL+D4xnhxvxGdB9JYDgrDDymCqo1RPoHZpkJXRkSpYOLXjsTx5rHLU2pu+PSzCyBHTA1K2
	4z+cJ801sxz3gKyPBlI7EAI3ZEWpKvGNkPvFKEVI8b/mecXhMeNAdjcwBrmtZETL5PL7HjElymYUv
	qFBeLa4OZDtQKzR6jlBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpDI-0007pO-Sr; Mon, 16 Dec 2019 12:11:00 +0000
Received: from mail-eopbgr700083.outbound.protection.outlook.com
 ([40.107.70.83] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpCV-0006qi-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:10:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHtvJSN3/VfEHk7WlZCBC+eANh9gIet4hTa6k9q3fi3p3A8qNK/gNZpoXn/7G38Ra0Z+6kq45MU53BCrfPMmDgflqlkpKV3PxKPhtrGEhOYn19lkKuSbFkIUx7xXAV/rlX+l96oXie4TPYnl5e52FZhhGvrBbDxmyhOkLldfjtxF6qZXux8CMWu+3FvwGZHtDKy3Fi6lj+uSLmw6JjIbBNRQdlzhvYYHpUmtjNuz3epNSvz4mDKMz8Mon8FG1pdo1iqzpMnWUNWFpX0OADhkvUCl1AFVeraPWKsqGdvQT+FsFHSXfqzsFtX7hz60hkZaeBsoDQKcr+gGGB+D3s3vvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=THSOwZz+AjXm7AgygKqx0NIurkneReTIi34/h6fE9/k=;
 b=Mzux5/4nESmUCxYhv6WmL0GG0EsncJrqB2IXeAL+VzfqXJtYvldddP0WqoLsri0gg78RSnrJhPGoK81CJx8qkC92vBm+KRodOxJqq/XvUCiCUb1n3JEHgbLbtpecQTVbuuZk+jdqudAHLaDWVfnR9y/SQh687sgcFlOCrtaMuOdJt/PlhoGnGr75Z5b6PsgECntkwh5jO5lgOb84MrehlxIfzzCFQ31MAwfnbAB1Pa7RBN6sCjNZgsfwvKmbLe2A4xkuZuTz7PIRYAPl5Fnk5X5Od9aDm67UTK37LTAEL0LXssAiVm3BjtF6EqPqCSbzJmEtjaK1GVyPnyreZ/e8sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=THSOwZz+AjXm7AgygKqx0NIurkneReTIi34/h6fE9/k=;
 b=fMuuuO7lWI0WTnE+0UDVVg8QW8NkDYjcev52MZe0eehYVuDO1xrgJv3FFRA4FlHc5/bIdIm5BMM1LL7tCghUAtBq+h257gvGKvn7sgrDEtcmXfNRiaApoTY/VPRboVGLyYCj/eFFztniD6IQdYjGEbFiNmFRLse0hZOsZWzKYmg=
Received: from SN1PR12CA0097.namprd12.prod.outlook.com (2603:10b6:802:21::32)
 by DM6PR02MB7051.namprd02.prod.outlook.com (2603:10b6:5:22d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15; Mon, 16 Dec
 2019 12:10:09 +0000
Received: from SN1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2603:10b6:802:21:cafe::ce) by SN1PR12CA0097.outlook.office365.com
 (2603:10b6:802:21::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.17 via Frontend
 Transport; Mon, 16 Dec 2019 12:10:09 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT063.mail.protection.outlook.com (10.152.72.213) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Mon, 16 Dec 2019 12:10:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAz-0001lA-F2; Mon, 16 Dec 2019 04:08:37 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAt-0000wd-KA; Mon, 16 Dec 2019 04:08:31 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBGC8Ugu024876; 
 Mon, 16 Dec 2019 04:08:30 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAs-0000wK-A7; Mon, 16 Dec 2019 04:08:30 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 7FF7C1053CC; Mon, 16 Dec 2019 17:38:29 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next 0/3] net: emaclite: support arm64 platform
Date: Mon, 16 Dec 2019 17:38:07 +0530
Message-Id: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--1.472-7.0-31-1
X-imss-scan-details: No--1.472-7.0-31-1;No--1.472-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(428003)(249900001)(189003)(199004)(2616005)(107886003)(81166006)(6666004)(36756003)(81156014)(356004)(26005)(42882007)(316002)(336012)(8936002)(2906002)(4744005)(5660300002)(42186006)(4326008)(70586007)(70206006)(8676002)(498600001)(6266002)(6636002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB7051; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; MX:0; A:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fbc7b455-f5fe-4cc1-7506-08d78220e53e
X-MS-TrafficTypeDiagnostic: DM6PR02MB7051:
X-Microsoft-Antispam-PRVS: <DM6PR02MB7051EB834F48B8E269DBC5D4D5510@DM6PR02MB7051.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 02530BD3AA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nJwB3wtq9qYL+eF6vmWDDvqFu6Cz66jKtzFOrY9TVfuQDzOz2AX3TqyRnnEJ0CEwQND8fZdQbLmaYcM+hodzZVc8lymOQmfyCRmYY64q8xzfaGLIIWJdtuG/7xzL7V+P8KgRby6iq/K5B2UKRfiqTCZm26qF1eU2CdTQqdfQIACdtWDfBeT6G/4RzGBYPszYnKM+mrv2qwwFSvXCnW14C/0JK/xBCXuQ5P0HvlY0EgEpT2vVOAmwlWILARW1irWREeuY+JbDUC6gEOb1ow4ZHmIdnL6Orw4bYbqWnABqKN2Wk34ca4x0oGnNR0IHeYmioaxBIL8RIM5ca/sQNS4giP0ffzjpsJlXrduM9yCLRG580epoQZEo9jN2ThwRERHyeH1K6rb23S+NaUmkLVpuaukNzClV7kxSFmMCHtvX18y6H5cQaA4B8cUYMw81p5Y8xX5mPQLPNH7wUSpIn6sj27qtELvgdjjURfnk4M2vNxE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2019 12:10:09.1733 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc7b455-f5fe-4cc1-7506-08d78220e53e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB7051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_041011_673271_D3865591 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.2 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset fixes the checkpatch warning reported in xilinx emaclite
driver. It also remove obsolete arch dependency in kconfig to support
aarch64 platform and fixes related gcc warnings. 

Michal Simek (1):
  net: emaclite: Fix arm64 compilation warnings

Radhey Shyam Pandey (2):
  net: emaclite: Fix coding style
  net: emaclite: In kconfig remove arch dependency

 drivers/net/ethernet/xilinx/Kconfig           |  2 +-
 drivers/net/ethernet/xilinx/xilinx_emaclite.c | 45 ++++++++++++---------------
 2 files changed, 21 insertions(+), 26 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
