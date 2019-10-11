Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2F1D39D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnWOmo/QkR2nhwB/pACMc2OMw/aGq81pY//X/p9cXrg=; b=jMrpjW7SJovykZ
	T0VgYkA+S9XFyh4iPJ/gVHQRhTxXoytvAgOtooINYheMyB0zQcK2bzn47wyqYRjuFnDU3TqSjfxid
	IS7CC8kcVt056ULwH7w4cRowEzA31pLmKc2C2ak9SsE+cSmb9I7WlUzQ4X2EyTjOUF7+lKQkXrmTf
	WURLGvXuxoM1pT0fm5/2oGiVNa7LB5ds/DmnkbD+BjYdXHW2LENTao8HD9M4ZOrEpfMIkfUlL0aw5
	5CdRPDOcWi+plD5ZDAr7TS7OMOFEEtN4mK9bJ7cu7OF1ty8XqP2yN3TN2H/ZgYUiQdzhSi1guY+74
	6ba3/o2qYBNgqW+BzhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIp4h-00021q-Ps; Fri, 11 Oct 2019 07:10:55 +0000
Received: from mail-eopbgr780085.outbound.protection.outlook.com
 ([40.107.78.85] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIp4Z-00021I-L5
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:10:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HooJ6QOQrFToxxHPx/kVAdIHiCjPhztO1xBJUuaaBCTGLLj2lkRb3voIleOMfmIFo8RSWqk+hy+C2dYCmZREVT0Eh+9uUnuadi+k0Io7F1XcNU+dvateeJx5jHV7QpCpVnTHCMoS7JbNrLJRRlyy3eqCWnNtnbvu3+Cu9Da6nBNB7eJXm5FeXF77+QTLLmoqJwasXWBN+9GSFOkbBN8TYpj6iNxediWmrjcVXqh1MOWK50NzT+B5ceRQh8INPh66LPzog6qfI/BU6BYP/R5xVEDlPYg/g8pvTFAgqCer55l6R95KV3ENxwaTHC5JliX3o54UENAW0GCBUmo4SMD4ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DHtnbO5/y6uxrzj/vDghbmPaTUnSC7YAq3PVgaE5y5o=;
 b=BWHFPJM5q5j+1dncC8xbBTFIX3HGhLi4If/XqYmBewScWLEXGl4yKFftWV8H0O7qdFJRowOPvGwnC8e885dI/SumTzCI0dbvFczRvUCYgzvgy9MyLgUOX6aLIwts/AYV2QC0tgS8oYIreLbHsB/Lt+HPX8vElvBirZ8H78ppWc0K5vBm7meGm9oQCEGiwEm+m7WUDUpu1MC25PVNAe6SGNQiJDweII/2vYxO+yOnFcUH+ElNw7ENvoKZK3bH5JysrB5p4YY8exMf3ZXwI4qTWnwRtZCU3pBgrfL0FQ5wqxCga5SpysXjNTnSldyjKW9+M64LGzSvpW0svDPFEVYYZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=bootlin.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DHtnbO5/y6uxrzj/vDghbmPaTUnSC7YAq3PVgaE5y5o=;
 b=DRXxquEG3i/heJN0DlDzLbx3bsCbai84ekVNM04LjUrV3Y5IwjrePetG4NcquxxzZTH+guWq4qEXQHQqSY/RtanXLGEpIO/5fi7NP7tjtxPdyBN39+Jt9NlNf6VLdECvfLTEmhLEfJQdlrnP9HiWRJcbGEUNMOi7lXJm3sCQeMU=
Received: from BN6PR02CA0085.namprd02.prod.outlook.com (2603:10b6:405:60::26)
 by BYAPR02MB5813.namprd02.prod.outlook.com (2603:10b6:a03:11d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.21; Fri, 11 Oct
 2019 07:10:41 +0000
Received: from CY1NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by BN6PR02CA0085.outlook.office365.com
 (2603:10b6:405:60::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Fri, 11 Oct 2019 07:10:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT050.mail.protection.outlook.com (10.152.75.65) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Fri, 11 Oct 2019 07:10:40 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iIp4S-0003UL-14; Fri, 11 Oct 2019 00:10:40 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iIp4M-0004uC-UG; Fri, 11 Oct 2019 00:10:34 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x9B7AMxt006862; 
 Fri, 11 Oct 2019 00:10:22 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iIp4A-0004dj-0i; Fri, 11 Oct 2019 00:10:22 -0700
Subject: Re: [PATCH] rtc: xilinx: Fix calibval variable type
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <20765c4c27aa92c75426b82fd2815ebef6471492.1570544738.git.michal.simek@xilinx.com>
 <20191008143121.GX4254@piout.net>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <7db2fe90-915e-8b6b-e43d-b16487937f5d@xilinx.com>
Date: Fri, 11 Oct 2019 09:10:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008143121.GX4254@piout.net>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(189003)(199004)(31696002)(230700001)(486006)(36386004)(14444005)(47776003)(44832011)(126002)(65956001)(65806001)(2486003)(23676004)(8676002)(426003)(9786002)(76176011)(81166006)(81156014)(186003)(336012)(6666004)(356004)(8936002)(305945005)(26005)(54906003)(110136005)(36756003)(4326008)(58126008)(106002)(316002)(5660300002)(478600001)(70586007)(31686004)(2906002)(446003)(11346002)(229853002)(2616005)(476003)(6246003)(50466002)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5813; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b9006990-eefc-4723-c99a-08d74e1a1fd8
X-MS-TrafficTypeDiagnostic: BYAPR02MB5813:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR02MB5813DAEB69EDF0C765C2EEE7C6970@BYAPR02MB5813.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0187F3EA14
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q5EmxbM273WuqMhUCJMeU3RtQ8JOTmCNaRXCWDkJA0kxzaW6nO4tkY11RQ+xbdAHipTz1HMZ8vdbxX95ssPCnXIU/gRR1dnYUeejOfkxBT2pmd0QrgOBCGuwGzMamb0IYaLagHs35R/BUyh38P6gWImvrNP6ZcciYZoSLxSpiXaPWO+PrxbecmEO6F4oq704kwl06+5qsn3ojfCsdDZ5VXcgBMZI6yKFHXaN8RH+l4/BPMQDQSwtHiz2jdh7FHEnA829MZ9hBtg1A8g+H3/Ty+3+nPLD2LD1Ywj4PpHJ90oEttQRlL3xD2GiXUFWo3/NWAiawBxRynr56ucwMPf4P3VcpOlTOvT3MLDdFqhdZ2CcQ6yHpfodSpJRisXq67rnv0vdSmP7QZCg92SjBwIyQwpT9hTRN/SKY78uRWqOGWg=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2019 07:10:40.5232 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b9006990-eefc-4723-c99a-08d74e1a1fd8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5813
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_001047_694328_9BB4362D 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.85 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Srinivas Goud <srinivas.goud@xilinx.com>,
 monstr@monstr.eu, Alessandro Zummo <a.zummo@towertech.it>,
 linux-kernel@vger.kernel.org, git@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08. 10. 19 16:31, Alexandre Belloni wrote:
> Hi,
> 
> On 08/10/2019 16:25:41+0200, Michal Simek wrote:
>> From: Srinivas Goud <srinivas.goud@xilinx.com>
>>
>> This patch fixes the warnings reported by static code analysis.
>> Updated calibval variable type to unsigned type from signed.
>>
>> Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> ---
>>
>>  drivers/rtc/rtc-zynqmp.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/rtc/rtc-zynqmp.c b/drivers/rtc/rtc-zynqmp.c
>> index 2c762757fb54..da0dbea8def3 100644
>> --- a/drivers/rtc/rtc-zynqmp.c
>> +++ b/drivers/rtc/rtc-zynqmp.c
>> @@ -44,7 +44,7 @@ struct xlnx_rtc_dev {
>>  	void __iomem		*reg_base;
>>  	int			alarm_irq;
>>  	int			sec_irq;
>> -	int			calibval;
>> +	unsigned int		calibval;
> 
> Note that ideally, this varialbe should be removed and replaced by
> .read_offset and .set_offset callbacks so userspace can properly
> recalibrate the crystal instead of relying on a static value inside the
> device tree.

Thanks for letting me know. We will look at it. It should be patch on
the top anyway.

Thanks,
Michal



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
