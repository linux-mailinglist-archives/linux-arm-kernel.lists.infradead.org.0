Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1B398E51
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 10:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70a5iHrf0j1LmgicdV59j2dmz9m7vP+X7bmZQtFCOR4=; b=q9H8cRJVdHw9ei
	Aj512hU2/VI+p8uEtlifCg481yf5LouJ2+exyW6Kwcc1qzaXbtBBDFy8d/UHfM+bFcY3H1x5Cfy6p
	ebAhMO1P+vTVWmAdDmxw+MFMdAYTOer2DiLYyB4f/obQZhLBNnXPemMwo+ge//wfYVUF7MDXPOvTO
	/Otwg4TGliVHw/aNM/A+zDr+7sk9fakVYIXyuLeCzaAXDe3WKBmY0EwqynqHnCcv/KiWOaqvQ6AQy
	p00MgViiB0T+kCOzAlOM9FNrhHt17zMWX1lP3xuuJHcjny3TVI3bS4G5C/nlC89kqSARXzDBeLN8x
	WCcm7eLks+qJAvtsj9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0imt-0000oN-IV; Thu, 22 Aug 2019 08:49:43 +0000
Received: from mail-eopbgr700077.outbound.protection.outlook.com
 ([40.107.70.77] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0imY-0000o2-9l
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 08:49:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDxToYdmuCVjotsBUw+BWDuOIiBc27pXQZOZRUtRgfDlLs3DDxg0WMHEqYDkFuZa5RAH7cbhirAC/G8wY7cufY9XUIuEl+SAg2/blNOOpgwEOg6U5Cy5i1qn5tKRf/4mBkTic7/lGbDoxiE0yDbi2AQuUX7/BeXnPPilux+y8obO78O14q7Zqwkzr26+YKab/WhXwpo+1M71Puug2qvSdTIEEzBFh9DpHLJxaO5K6R13V788St6ehwTwHVKTxrTQ9/8d82vHScDwT7h8oFS/V5JsSuWSZoa3B7hjfejRebdplTxlAcLWST0jRCo95m4FhTeJARbPq26JwBdaw8ETpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uRIVbmD87mP7lywA6ZM2ve2/SJYR+gHsTHLAgIqJLEc=;
 b=BQUa60gUZL4+QgoNq3bSs3/doInzgWCd0bVtv0Q0P3/VVdk9vv8JpDZb5iI8fmV9I9RnX0zM1d+Yb/aaq77B7eHLFnLTi5I2eY/6OxIWQf+nplW5QX0ZkE4xPqFrShU63wEJmqAjO2g37Dgwu1DX9Pu01DDIoDGcrtD2F6yEAC1ptlQSnKM9Fex6itiCgYWRgOmn0ZuDljupmOJtm822yU5aa2idBRrDlYSEwSpantB/ZKB3WVutd/ogKeF5UH17CEz/gBnXhXIzwuIe78yRW/kT85hYql4+NH35nEiViO0Pe5E0QkcHUn3gOucDq9nltrn7jn9wiz0+TBFh77gc2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=oracle.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uRIVbmD87mP7lywA6ZM2ve2/SJYR+gHsTHLAgIqJLEc=;
 b=NKZs40b0iyQr/KaYgl79uprz9kU6N7g7ekJvR6MahOspi/sChfJR0T8w39FsHTDF8Xn6iK2vFK8WQzNzcXC8gsOgKcZGqmy/IaOiTPZof66usIKr2FE8fnq8qBVLIILMNDkPy06+5XLKJfJbC67WCXAPo2kAqwRo2YnqJHos3qg=
Received: from MWHPR0201CA0046.namprd02.prod.outlook.com
 (2603:10b6:301:73::23) by BN7PR02MB4034.namprd02.prod.outlook.com
 (2603:10b6:406:fe::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Thu, 22 Aug
 2019 08:49:19 +0000
Received: from SN1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by MWHPR0201CA0046.outlook.office365.com
 (2603:10b6:301:73::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.14 via Frontend
 Transport; Thu, 22 Aug 2019 08:49:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT011.mail.protection.outlook.com (10.152.72.82) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2199.13
 via Frontend Transport; Thu, 22 Aug 2019 08:49:18 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i0imU-0005Iz-9f; Thu, 22 Aug 2019 01:49:18 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i0imP-0005wS-6Q; Thu, 22 Aug 2019 01:49:13 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7M8n7bc027385; 
 Thu, 22 Aug 2019 01:49:07 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1i0imJ-0005q3-Ek; Thu, 22 Aug 2019 01:49:07 -0700
Subject: Re: [PATCH 1/4] misc: xilinx_sdfec: Fix a couple small information
 leaks
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <20190821070606.GA26957@mwanda>
 <58e9a151-3d92-c730-eea6-5cfde90934a4@xilinx.com>
 <20190822082831.GH3964@kadam>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <3877ba50-8c3b-bc88-95d3-3aeb3e09fcf1@xilinx.com>
Date: Thu, 22 Aug 2019 10:49:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822082831.GH3964@kadam>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(2980300002)(199004)(189003)(9786002)(4744005)(486006)(476003)(126002)(50466002)(70206006)(70586007)(44832011)(6246003)(31696002)(446003)(336012)(426003)(11346002)(2616005)(305945005)(8676002)(81156014)(81166006)(26005)(5660300002)(8936002)(186003)(110136005)(478600001)(356004)(6666004)(2906002)(4326008)(36386004)(316002)(229853002)(58126008)(54906003)(31686004)(106002)(47776003)(230700001)(14444005)(65956001)(76176011)(23676004)(65806001)(52146003)(2486003)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB4034; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69648e9e-2c2c-4e77-51f8-08d726dd9ec6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BN7PR02MB4034; 
X-MS-TrafficTypeDiagnostic: BN7PR02MB4034:
X-Microsoft-Antispam-PRVS: <BN7PR02MB4034DFBA6D81505FAC474B23C6A50@BN7PR02MB4034.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 01371B902F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: DsRzjuNo/se7hjdVoaDL3MXAJ6Fy4SM8y85AT+wetVM9CZS+bQpDIbrwKRUmYCdm+Mh05KQGS4S6bglBfx5Z4j55cqdLTbQVHvjQSXF4BWvf5/vUjZBrJf2D4KzmAEEsmPiscxYgF+MYsJCklne/aAG7Y7cs9uoEPcXTP+3xA6X+v4OD+1x3p3E9hVJsmhveU/sbFFFa26RRGHMpTMEoPT5hk5mVq3HMHn07EZPz5ghVpxh+MFZo4BV1+ln5U0EuESvlIPYqAP3I8c2I4KZCc5LOZVfRT4Xw+ybMp8bdnrfRHPo8ziibofoST+CvgxHCZI/kIhDVIm3Txe641cttp8FUM4O7oqbH0AVbbuE53Mu2KM67a1cmvHz72eAvYlA3WRWRKlPXau48OGqIL3OzhMXhSvOUBJETzmqtDaiq/Fo=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2019 08:49:18.6897 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69648e9e-2c2c-4e77-51f8-08d726dd9ec6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB4034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014922_345864_B56CE036 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.77 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Derek Kiernan <derek.kiernan@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22. 08. 19 10:28, Dan Carpenter wrote:
> On Thu, Aug 22, 2019 at 10:14:12AM +0200, Michal Simek wrote:
>> Hi Dan,
>>
>> On 21. 08. 19 9:06, Dan Carpenter wrote:
>>> These structs have holes in them so we end up disclosing a few bytes of
>>> uninitialized stack data.
>>>
>>> drivers/misc/xilinx_sdfec.c:305 xsdfec_get_status() warn: check that 'status' doesn't leak information (struct has a hole after 'activity')
>>> drivers/misc/xilinx_sdfec.c:449 xsdfec_get_turbo() warn: check that 'turbo_params' doesn't leak information (struct has a hole after 'scale')
>>
>> Who is generating these warnings? Is this any new GCC or different tool?
>> I see that 3byte padding but never seen these warnings.
> 
> This is a Smatch check.

ok. It looks like I need to update it to latest version. My version is
not showing these.

Anyway thanks for patches,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
