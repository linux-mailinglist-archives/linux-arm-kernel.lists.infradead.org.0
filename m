Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ED11EA1C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/FeaqYkBMCFGxYr0QDWhbAsxtWGVdANmlVtJHcq57o=; b=gsgcz93F5u3LnQ
	g4DCvrEcaaol8g+G8AgLtv4vCJe9eXnMvb3X6JyB9UOc+VPQdcQ71YjLXYswhrspmXF/I8eUtSnfH
	Az1BR3rY2hPXz2MTEVx9H4xDvtCOdSf+DV3deusOu+wMS3xcw3jYONF3PwO5aXPhxcFzkXQm9C/wg
	QGPTXUU5wP0ZkzGTshM30ysaivU5Lid6JwkOrSTnKDK6XJJjG6noHKgAsse1top8sVCRRZAFQ6/kK
	31duLDmJ6eyqkNyqmBphECL/fs6TWa40vnzPJAv6oIJVHIUc6zTWXneq3q9x/WJTRX2KwLvOjI0YT
	jnp87J4WY+Q9KNU84a8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhbV-0000wR-JR; Mon, 01 Jun 2020 10:23:37 +0000
Received: from mail-dm6nam10on2085.outbound.protection.outlook.com
 ([40.107.93.85] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhbP-0000vd-OP
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 10:23:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QyZ31v6kXJl1aPqmdkCqA8YxicLVt0uDpSIFa6fCmDhJUHeMi0wCWNfKUKS2fBxQqDlV4MSYgnXgL8GGhSxHo7djphMCjHm/bO031r8v2HWZ6KCPCUHRcYh15jiwX9shgb0N06v0wPMZHstkT4hbzj7r+kqN/P+kqlwZQPQRl3uxCOC8fOmQisLm9rtgvfI/xNP1+AhgnpmPOF9Fnc4s1+DbU37MzsbkHJkQwL93HenlrlIi7XkjeY0YtnhZmyCoXcQCaGQ5YcKmPs6BWeQ9iSfb2YsUFylyZpsGLjP+adSD+wBjlwXW5+Il2ubZN8n8ZPpLSqgCmuifWTrNsotagA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jSt8IX7JyjmOEN3eg5+5LtnC7T7yOuQejgm90Y0fyE=;
 b=J2J8tzof5uv3gxP/zPxfCvdU/gxqpNHI0dUO/ckf9EfebaSt3nWe+YQtB5nv0COZDatZsK8uTzoB4PtfCTDm6EiNiJD3o6bLsneodLpFtz+rI0i1KCg4pNzxDm5Nfi7OOyRwrL9Fnk6yYpXsNnG5El7IjAZypUAV1SG8PTOs4XN0v7aLu8MaL1wV0zrDVWocCoi6nc1e3aPVEppc1z5Oz4HP550E3bVZgAsUj05A5gjaoAJ3xLTIjYTHm9+EmUx1o0mvX+ZbpfU1OZeWAqogD7X1OiAJyFQGDkgIbi6k3RpWdsxJO1Nn9uDk7pCFNmc8+Oc81Bwix/JNXcx39paCPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=web.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jSt8IX7JyjmOEN3eg5+5LtnC7T7yOuQejgm90Y0fyE=;
 b=WlxGuug0vwlD/XnicsSJPAtwvgketkpf4PihzfSP93y8eSnRoevpRII60g0eVFCJcHor6WL+D03oI0VU09kKS8W8+A8PK8GjhRYMBNZkAk9fvgL3Ex0Kbt2PdyZCPd8vv43mpJ45CSoHd4PcFvkODtCIpSgZ7hUXsC83JsvKlV8=
Received: from MN2PR19CA0023.namprd19.prod.outlook.com (2603:10b6:208:178::36)
 by BN6PR02MB2833.namprd02.prod.outlook.com (2603:10b6:404:103::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Mon, 1 Jun
 2020 10:23:29 +0000
Received: from BL2NAM02FT044.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::6c) by MN2PR19CA0023.outlook.office365.com
 (2603:10b6:208:178::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19 via Frontend
 Transport; Mon, 1 Jun 2020 10:23:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; web.de; dkim=none (message not signed)
 header.d=none; web.de; dmarc=bestguesspass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT044.mail.protection.outlook.com (10.152.77.35) with Microsoft SMTP
 Server id 15.20.3045.17 via Frontend Transport; Mon, 1 Jun 2020 10:23:28
 +0000
Received: from [149.199.38.66] (port=47237 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jfhaf-0003cz-Ky; Mon, 01 Jun 2020 03:22:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1jfhbM-0008Jm-Fu; Mon, 01 Jun 2020 03:23:28 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 051ANNSg023083; 
 Mon, 1 Jun 2020 03:23:23 -0700
Received: from [172.30.17.109] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1jfhbH-0008IW-7s; Mon, 01 Jun 2020 03:23:23 -0700
Subject: Re: [PATCH v2] tty: xilinx_uartps: Fix missing id assignment to the
 console
To: Jan Kiszka <jan.kiszka@web.de>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, monstr@monstr.eu, git@xilinx.com,
 stable@vger.kernel.org
References: <ed3111533ef5bd342ee5ec504812240b870f0853.1588602446.git.michal.simek@xilinx.com>
 <170a896f-42d3-345b-7b93-c964d33fe71c@web.de>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <fb68cf8c-8b89-b7d1-ed7d-f21c327a0c75@xilinx.com>
Date: Mon, 1 Jun 2020 12:23:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <170a896f-42d3-345b-7b93-c964d33fe71c@web.de>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(46966005)(82310400002)(82740400003)(81166007)(31686004)(110136005)(31696002)(2906002)(83380400001)(356005)(478600001)(26005)(54906003)(5660300002)(4326008)(186003)(53546011)(316002)(70586007)(70206006)(47076004)(2616005)(44832011)(426003)(36756003)(8676002)(336012)(8936002)(9786002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db0aa51c-3295-4acb-1261-08d80615d3b3
X-MS-TrafficTypeDiagnostic: BN6PR02MB2833:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR02MB2833F4987B96679E419F635DC68A0@BN6PR02MB2833.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w/7pryUCVt6O+Snj+9adshrU7VtZnoDE4FWp6KWbphbSPFfLqj7CRq4cOhlafgRt/9dnGrTpIX0xx6HZsQ5x4knboLqjee7s/mtVVb+yzlnHiUsIGDzgY8k4hzOquGU7VZr1WSLNW4Zgi4xx0gSEBLi6LvMndLEpRxHfgRYhvI63OgVdUovV+UDBXSDl5dzCgEYKdNypsSHLn/r76ziCmQFVhvQGpsjCqT4+mxsnxASsfKpA9rhnXT+Amu4YzLHUZ87rZ4V6jJtkysMxGfuO+hOEZ8qBgjPR9q+x0vRIFZt3zHHdkWu1Gd8Uy+OC7HfoYqbCwd2cIU0jpgTId2OVyaAUKn+GHOMGQajseU58cs5kD3mu8sNka04cSR+USjx7W2Rt4qkfj3I0mtWW6CmO0s3cWORRKWWn2oAlqOJnwP7Q8HaNiCfliTjtsP91IIbI
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 10:23:28.8613 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: db0aa51c-3295-4acb-1261-08d80615d3b3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_032331_871111_C23AD8DC 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.85 listed in wl.mailspike.net]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30. 05. 20 14:06, Jan Kiszka wrote:
> On 04.05.20 16:27, Michal Simek wrote:
>> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
>>
>> When serial console has been assigned to ttyPS1 (which is serial1 alias)
>> console index is not updated property and pointing to index -1 (statically
>> initialized) which ends up in situation where nothing has been printed on
>> the port.
>>
>> The commit 18cc7ac8a28e ("Revert "serial: uartps: Register own uart console
>> and driver structures"") didn't contain this line which was removed by
>> accident.
>>
>> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
>> Cc: stable <stable@vger.kernel.org>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> ---
>>
>> Changes in v2:
>> - Do better commit description
>> - Origin subject was "tty: xilinx_uartps: Add the id to the console"
>>
>> Greg: Would be good if you can take this patch to 5.7 and also to stable
>> trees.
>>
>> ---
>>  drivers/tty/serial/xilinx_uartps.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
>> index 672cfa075e28..b9d672af8b65 100644
>> --- a/drivers/tty/serial/xilinx_uartps.c
>> +++ b/drivers/tty/serial/xilinx_uartps.c
>> @@ -1465,6 +1465,7 @@ static int cdns_uart_probe(struct platform_device *pdev)
>>  		cdns_uart_uart_driver.nr = CDNS_UART_NR_PORTS;
>>  #ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
>>  		cdns_uart_uart_driver.cons = &cdns_uart_console;
>> +		cdns_uart_console.index = id;
>>  #endif
>>
>>  		rc = uart_register_driver(&cdns_uart_uart_driver);
>>
> 
> This breaks the ultra96-rev1 which uses uart1 as serial0 (and
> stdout-path = "serial0:115200n8"). Reverting this commit gives
> 
> [    0.024344] Serial: AMBA PL011 UART driver
> [    0.028010] ff000000.serial: ttyPS1 at MMIO 0xff000000 (irq = 19, base_baud = 6250000) is a xuartps
> [    0.028172] serial serial0: tty port ttyPS1 registered
> [    0.028579] ff010000.serial: ttyPS0 at MMIO 0xff010000 (irq = 20, base_baud = 6250000) is a xuartps
> [    0.557477] printk: console [ttyPS0] enabled
> 
> again. Affects stable as well (seen first in 5.4).

Will take a look at this. Just give me some time.

M


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
