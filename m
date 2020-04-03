Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5C219D3DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hpNnFZWdVHi21jRVHuSVO4sF4nmQzNzp6JdgTR4b+4=; b=E5eUODZ2g8UIMv
	RvErtLMJnZH+msjXFnP+PG20ewrLgHY49n/UvqSfd/YB39EQfy3ewOxNqhSWHFDSkt5AiK9GNxes9
	J2ezQNKB9otRJz+0Kd6iVfELrBeeObYfiHYN3/Xtf4iwsuOo7lNLe2l6SH/LHtbUUXSWL8ZPBPAha
	usd+0rsn5kNJJkj3tz8ClOQDfyALpnC0jh64oNqNA+cD1LVXEovtM8O29LeXle9m2Z/9KAWWsCcJF
	ghOdd2DFz6M0y57ta8D1NeEuF6OGd9xQRnavpk0QjHrSFXlMyBmGRXNZOS3uYp2ONUnhQbNNnbK9U
	Hje5oPB0FiwINhNQIEnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIm6-0005gB-SM; Fri, 03 Apr 2020 09:38:06 +0000
Received: from mail-bn8nam12on2040.outbound.protection.outlook.com
 ([40.107.237.40] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIlz-0005fe-H0
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:38:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rj2LfMQY7YCji7wq0psd0gpxZwW78A1aKOj/a7mHlh7OV/Yj0svF1JWewiTiMSckUWXcFgSjN4L13mW/s7Qjc4JK6EAqVWAP89jNPrQ773lOO55N8xBarJ+HRNF2TlwyThsQRqVyt29kOaVDUMibmd35OjX7lN6i6bS5qsELVsG8/YhHxhPUkgZX8GhfNMonObBtKqmTcI9FTNJ5Xbd0OdzK3WWw7lWhaGgV+QwrGD7tGYGvzSujUo9E9Aa5Ek14Hp/0r+ASBDecJ4X2gOTAoHTKrTkn5edREslCe7ucTFURoDGndupEG6BCRXfXatZKxD4eB5mPlTY3GYr2c0saPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuZ+3XK6s5VxjGccosAPOIstUPYkg5LiBkNqsVH9vgU=;
 b=VCbk92PCpRxiskZ711U5qGW31lQiF/waTqkXhx/sHPRis+HG0R+46rGjvUW7kdegWuQgzAUuDvrOUKP8d4dpjvVAZMX45Vh9e2C/71G6SWNQl05A8IRAwb8Z57iwr998NiqBGz/1V7+CK1WrBUqSMwEWKZBxQQUHKl5o0A51U10htwUd0WdidX9SN0u141hVRYOR8a5v6LWyKPQZ4aFRqVog0nthT8PRjm2MeVxDYHVM0siNZJhCtKneSW9QsU4qhsJ6Y/qAc9+pznvtzuTNcHayZ8irprmVoTwwwKLVrDR0XmqDmrCs11VgfhnL01iP+RrjUnRHlnWDUXA7774U3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuZ+3XK6s5VxjGccosAPOIstUPYkg5LiBkNqsVH9vgU=;
 b=S89xbj3EjMK9GoZ6nAiRtqRyA/oN80wywAD/SV+CoQRV9XmtYMErhAvv5LxpDVpJmJWOWoPI4opkJ4KOcNA4A9snruFSEbvc4XpOI2iHyiOs0CRHVfpLBCWfOhTfZYNScYerbEXT8tNVS4waoiottKY+DGPyf4gLh1MKdA+F3aY=
Received: from SN4PR0501CA0105.namprd05.prod.outlook.com
 (2603:10b6:803:42::22) by DM5PR0201MB3528.namprd02.prod.outlook.com
 (2603:10b6:4:7e::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Fri, 3 Apr
 2020 09:37:57 +0000
Received: from SN1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:42:cafe::aa) by SN4PR0501CA0105.outlook.office365.com
 (2603:10b6:803:42::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.5 via Frontend
 Transport; Fri, 3 Apr 2020 09:37:56 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT036.mail.protection.outlook.com (10.152.72.149) with Microsoft SMTP
 Server id 15.20.2878.15 via Frontend Transport; Fri, 3 Apr 2020 09:37:56
 +0000
Received: from [149.199.38.66] (port=57376 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jKIlo-0005Ec-Gp; Fri, 03 Apr 2020 02:37:48 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jKIlw-00065T-Fr; Fri, 03 Apr 2020 02:37:56 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0339bnFe012510; 
 Fri, 3 Apr 2020 02:37:49 -0700
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jKIlo-00064W-P1; Fri, 03 Apr 2020 02:37:48 -0700
Subject: Re: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
To: Greg KH <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
 <20200403093216.GA3746303@kroah.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <d9598635-a8ef-eff2-22e8-4fa37f8390b3@xilinx.com>
Date: Fri, 3 Apr 2020 11:37:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200403093216.GA3746303@kroah.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(46966005)(8936002)(336012)(110136005)(31686004)(31696002)(9786002)(36756003)(2616005)(426003)(82740400003)(8676002)(5660300002)(2906002)(47076004)(70206006)(478600001)(26005)(44832011)(4326008)(70586007)(316002)(356004)(81166006)(81156014)(966005)(4744005)(186003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8146496c-1f80-46e9-7300-08d7d7b2b0e2
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3528:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR0201MB3528C6B78BFE934DEA28DF76C6C70@DM5PR0201MB3528.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0362BF9FDB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fh2SokYNmhk32TmFNu42CO+EwOyLk/kvRa2uiP0t6bc17XEOn2eAaym7HYtnyHCfYpBb8m3QrQHhRzdCrfTDsGmIvzoU6T6D7o9jnn0/zjDsBst8mCpGn9pHvu85N6P9IApF5FeBT9TC2SnDhlFTmVVUoV3dzKvbn+6fuNDj1zY1c5kT+gMurAs01+WXBf6MmjgVNVt5j5btaM0wG/TPa4uw7MeK6pe81awBCnWzSbgdze1ml7dli+D4Yi1BgPeYWF7JCMAjLkroSa2CLE/UamgxUguQz2DXKqzO/rTrREuDk9o8LylbArEbutzWPwUxOFYIRXXU27teHM2OA1GqjOsQz5wdW45nhr0yE7M60FF+9ttFNjSTVpZyGiRY890uqEOCYp1Xa4yZGQLl2X7DcM/Db/RPd3sPecjs6TMmjFKuzjUllcR9v16aDlfxNj+d5zWH+5B6ph/x/yyYM6hfE9nolg55LH8iSHtDOxEgIgV4e/YcG9likhCjQNT1RR4J3Usbfcz1cJ28SyJbBDgfOyBM6zoahpAOdlTfIUmPaoO43Py6tCpKySGFGsLWjvTHBvWkqqxAWgJ/D6QHQn6IIQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2020 09:37:56.7885 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8146496c-1f80-46e9-7300-08d7d7b2b0e2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_023759_561265_04A0923A 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.40 listed in list.dnswl.org]
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
Cc: monstr@monstr.eu, johan@kernel.org, linux-kernel@vger.kernel.org,
 git@xilinx.com, linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03. 04. 20 11:32, Greg KH wrote:
> On Fri, Apr 03, 2020 at 11:24:29AM +0200, Michal Simek wrote:
>> Hi,
>>
>> there were several changes done in past in uartps drivers which have been
>> also done in uartlite driver.
>> Here is the thread about it
>> https://lore.kernel.org/linux-serial/20191203152738.GF10631@localhost/
>>
>> This series reverts all patches which enabled dynamic port allocation and
>> returning driver to the previous state. There were added some features in
>> meantime which are not affected by this series.
> 
> Should this go into 5.7-final as it's causing problems now, and
> backported as well?  Or can it wait until 5.8-rc1?

These patches have been added to v4.20. It means all version from that
are affected.

The issue I am aware of is when you setup stdout-path =
"serialX:115200n8" where X is not 0.

But as was discussed the concept is based on Johan wrong that's why it
can be consider as bug fix.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
