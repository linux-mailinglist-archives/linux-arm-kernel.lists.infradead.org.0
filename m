Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F01CD22E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 09:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdF7u+3MmQ6+8oZXogimfjRsjiz34xlgoaP3HYxQokA=; b=LAG1O+RoTlrC3g
	X1vUbFN75kG1gaUztf++DBWkzALFxDBBLCC58hDFM349SruTBvTn/wJdDKYm6gH4Uipn2psisRnRr
	0TBoPGXE9SE1eyEOQ2hD75rOj56/tIWPFr3+aXgqtP9SSxGK6irF5KX3+qqE+WnaFbhbhKt0+45KW
	uIiTg+qYh8WbSJJXC33snUpsfKYmIopAo6/e4Tevy3b6/8h12AQM64fok14N8jzK/BXmcqNp4WsOK
	1nx16//51GDHfhpZz16Ak0aRAW16bAJAQgcUtFkW9fDIkAGYBfiQ26SJGFA5wu4zHlJ4Py+IfNvNk
	LERvb5gnCxS3lH6h8XNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2R0-0004m6-VQ; Mon, 11 May 2020 07:01:06 +0000
Received: from mail-bn8nam12on2085.outbound.protection.outlook.com
 ([40.107.237.85] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2Qu-0004kd-M4
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 07:01:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GAK8C7PHBa9Xdun5+9K46dCBZvLlZLRumyfXW+Vtvoyxf3ZyneXQ6YzNgnvVy+DuebkFGgjbMS+UIXZhUfieJPoRplMwQehMCtYvHFXH2PzR5QhW0RYaDAcU4+1dsorc4S1k2S+IPVPvOTmKLiEsnHj8wPamqn0Q39xSd9XfBivRO1mFrGU7EoIIM3UeviyIHke5lweGOzKNxac1AsZFZwKMzb2uOFOa5nWFr32SVoAorAJzie7Oy8QxaVl2hjL1Ay/5gO4PLyFZmbJ+SLAMkgLnczzsxFg+tVguhj3zMJZbeEhgLjBhYZtkecGGpEc7NEhsXpM1D3QhqVsMLXnDeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3Ckiqvd9dr8S1u+LbV00oHkDXwHQWOZNVQWYz/w1Eg=;
 b=DORYrJVJhZuKeY4nDEO74GcIeZyhmBagMa1jQgUyFeoFV0R5QjjR4qT9F7zUK/0bjmS8WA1E4VjvPfPuLzRyMnIT5cfl70DwjEMA5PYvz03u+63Fvcz/tSqLCqdJ0zoPvMXuRQn9XVA+nXKZgHpBHmvO4Ku91KC29LOnWwhH59J/uAX8KtxQrr3AwDY2iKWTOrhDqOBxFrCdDu0MsMbQvJGqakgfXcscMEaEBkowilpc3qrVfJXCKn/1Pf9iZJdCIvWRtpGs6+nvjJAV8pTDi8DZltiERaclI2+raoahUlvRBic26/96tsN0iRzQob4nB+pyGe8CBJIXMiT5SSvJ9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3Ckiqvd9dr8S1u+LbV00oHkDXwHQWOZNVQWYz/w1Eg=;
 b=ZDxkmJ7nW9MzTMoETgZNUovDupiAu8eeHcN8yJb6Xm0NzOvDK+wTlMdMzZNwwsOLwmnIUzl8+B272mF8ap1/2Ew6uenQXeQXqF2GKSauBkRFD5aPQk0R0LS5pUm2CLWDfMKJQnm1yfqCFTNAKMcdH0be4Yd7nLqeJeT/tMf4wf0=
Received: from BL0PR02CA0025.namprd02.prod.outlook.com (2603:10b6:207:3c::38)
 by BY5PR02MB6995.namprd02.prod.outlook.com (2603:10b6:a03:238::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.34; Mon, 11 May
 2020 07:00:56 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:3c:cafe::38) by BL0PR02CA0025.outlook.office365.com
 (2603:10b6:207:3c::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27 via Frontend
 Transport; Mon, 11 May 2020 07:00:56 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server id 15.20.2979.29 via Frontend Transport; Mon, 11 May 2020 07:00:55
 +0000
Received: from [149.199.38.66] (port=42995 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jY2Qa-0005lM-QM; Mon, 11 May 2020 00:00:40 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jY2Qp-0002iH-DH; Mon, 11 May 2020 00:00:55 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jY2Qg-0002Yn-Hv; Mon, 11 May 2020 00:00:46 -0700
Subject: Re: [PATCH] docs/devicetree: mailbox: fix trivial typo
To: l4stpr0gr4m@gmail.com, trivial@kernel.org
References: <1589139491-6301-1-git-send-email-l4stpr0gr4m@gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <9b69ccff-fc5f-e19e-90a5-f51816d84ab5@xilinx.com>
Date: Mon, 11 May 2020 09:00:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589139491-6301-1-git-send-email-l4stpr0gr4m@gmail.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(346002)(376002)(39860400002)(46966005)(33430700001)(31686004)(316002)(82740400003)(478600001)(9786002)(5660300002)(47076004)(8936002)(2906002)(44832011)(81166007)(26005)(426003)(70586007)(70206006)(31696002)(33440700001)(2616005)(15650500001)(356005)(8676002)(336012)(4326008)(82310400002)(186003)(36756003)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 719a3049-b034-49ee-4a07-08d7f5790d45
X-MS-TrafficTypeDiagnostic: BY5PR02MB6995:
X-Microsoft-Antispam-PRVS: <BY5PR02MB699578C0D963E7F8C58820FEC6A10@BY5PR02MB6995.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oyeC/y5vJg4yjH1vUqH1KdPpFig+FGmdymoMozlfw/2rBmgZKFY2x4VuZ9QceszsVx2BkG4+8LTidWFQrtAdFCNmNOlULG7EodCyjLTkxXa2r/ny8sUauErixkGmhETQF+dU94kMnTJvZQomixOFVgfkAAOQOuBr4h07inNrEBcj+uD4ffHeOfr1JEGY6cdIRZjQQf7AE9wvPZcBp70tM/ahPdVd2n7TVKt24K0DYZyHFpurxFzTG1RSAC0IlogwmYGb3x6i3CmSWrUjqvutWEjTg85n3QPtDt8zPBnJtiTCITWJRbmQczQsIMc6YsUygnk1pqBZPmTERsP20wgsFFC1Yi1Wn96GVDzo5Yn9fPx6jCzAuJ4NWloRa67HtvqtuGSUomiuV+xvrhm1zZQCPctat1UBu1jQD7kq85Ek++RIHxFKWRRo81gPe705naYENQFWWFTqKOpeD8lyOt0SGID1WhZIUgnrS4gDbYjpV95BlRqKuUytiFOFCCww3zizFqYlMtZSlGj9e9giur6g1ZdAEMfQrSiXuvpgtxEKcH0B0e2S8+9g2p/YAJQPSVzmmHtjegalLSHRhdB8pAbgmwoKszLyfo6uB081DijwrZI=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 07:00:55.8447 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 719a3049-b034-49ee-4a07-08d7f5790d45
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6995
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_000100_724240_17A379C9 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10. 05. 20 21:38, l4stpr0gr4m@gmail.com wrote:
> From: Kangmin Park <l4stpr0gr4m@gmail.com>
> 
> Fix node id typo in example

I think it is more than typo. It is incorrect unit-address which doesn't
match the first address specified in the reg property of the node.

Here is line from dt binding spec.
"The unit-address must match the first address specified in the
reg property of the node."



> 
> Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>

IIRC subject should start with dt-bindings:


> ---
>  Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
> index 4438432..ad76edc 100644
> --- a/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
> +++ b/Documentation/devicetree/bindings/mailbox/xlnx,zynqmp-ipi-mailbox.txt
> @@ -87,7 +87,7 @@ Example:
>  		ranges;
>  
>  		/* APU<->RPU0 IPI mailbox controller */
> -		ipi_mailbox_rpu0: mailbox@ff90400 {
> +		ipi_mailbox_rpu0: mailbox@ff990400 {
>  			reg = <0xff990400 0x20>,
>  			      <0xff990420 0x20>,
>  			      <0xff990080 0x20>,
> 

Change is correct.

With nits above applied please add my
Acked-by: Michal Simek <michal.simek@xilinx.com>

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
