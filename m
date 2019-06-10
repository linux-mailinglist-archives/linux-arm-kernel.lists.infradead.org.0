Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C393B809
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5OpNQ4utXSIfRERiHAaz7ypSH/lCOIUklrlkXQ1GUI=; b=NubTn2+9ljx5hD
	V8jYbgY7ty7N4zYjXOf1a8aLSC07T1SwaatAMvAQLf2BYf8b/boC5jxv732knQDlvJrut+tevSfPF
	FZlUU/4O3KO47YAaLGMDiDwW/rNxPbN56YeYnt4HEwlaiBOoJ0fTMIwjWYCSFS/w8gjHCqms7q+Vk
	QWOu9W270kTBPLLui/4jJbILpMP3Jp7JWr3acvCb+vO3pxJ2KgQEKFmJPEgDhs9ySvsYG6eTi5syt
	lDc2QIFwXr0QMOXdmNED4D1cDIKdWiIkDJ5FeFOV8pJggWSSSZNLlrThKHGi4D8dhE/gfjRLHuFi7
	745SrqsBOUFxhKFPLaXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLtO-0001a9-GA; Mon, 10 Jun 2019 15:07:26 +0000
Received: from mail-co1nam04on061b.outbound.protection.outlook.com
 ([2a01:111:f400:fe4d::61b]
 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLtD-0001Zh-I1
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LlGbTDK0vCLS7MgntYsuF/kp19ce2eRMINisNYYRO6E=;
 b=hYhK3OgVmpN6LoXdxxZNXDxZmEcp1MUz9TsT/u6uH4cjJ8Kor00/gtFsWBrbpI2HULiglAN9aSj8FxOvSS/M+CWU/JjcMf6kfuV5kYngWJJ4v4Ntd7T06tDV9xMf9YtYY1Yz0aVIhioO65YRDnncfbqdTh3JpwWYoxuJqDcyROQ=
Received: from BL0PR02CA0082.namprd02.prod.outlook.com (2603:10b6:208:51::23)
 by DM6PR02MB6233.namprd02.prod.outlook.com (2603:10b6:5:1d1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12; Mon, 10 Jun
 2019 15:07:12 +0000
Received: from CY1NAM02FT063.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by BL0PR02CA0082.outlook.office365.com
 (2603:10b6:208:51::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12 via Frontend
 Transport; Mon, 10 Jun 2019 15:07:11 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 CY1NAM02FT063.mail.protection.outlook.com (10.152.75.161) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1965.12
 via Frontend Transport; Mon, 10 Jun 2019 15:07:11 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:51802
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1haLt8-0006nT-MQ; Mon, 10 Jun 2019 08:07:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1haLt3-0007JQ-KN; Mon, 10 Jun 2019 08:07:05 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x5AF70ek027439; 
 Mon, 10 Jun 2019 08:07:00 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1haLsy-0007HS-Io; Mon, 10 Jun 2019 08:07:00 -0700
Subject: Re: [PATCH 1/2] serial: xilinx_uartps: Fix warnings in the driver
To: Greg KH <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <c6753260caf8b20cc002b15fcbf22b759c91d760.1560156294.git.michal.simek@xilinx.com>
 <20190610144425.GC31086@kroah.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <888c7d0a-28dc-978c-662a-e96ee3863c41@xilinx.com>
Date: Mon, 10 Jun 2019 17:06:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610144425.GC31086@kroah.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(376002)(39860400002)(2980300002)(199004)(189003)(426003)(9786002)(65826007)(486006)(54906003)(26005)(70206006)(76176011)(186003)(70586007)(4326008)(478600001)(230700001)(305945005)(446003)(36386004)(44832011)(2906002)(476003)(336012)(11346002)(126002)(2616005)(50466002)(47776003)(6246003)(106002)(8676002)(229853002)(81156014)(31686004)(31696002)(81166006)(5660300002)(65806001)(63266004)(14444005)(2486003)(52146003)(23676004)(77096007)(316002)(6666004)(356004)(65956001)(8936002)(4744005)(64126003)(36756003)(58126008)(110136005)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6233; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; A:1; MX:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd0c7092-6051-4d85-cc11-08d6edb55094
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM6PR02MB6233; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB6233:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB62332E6009940D3ECE150114C6130@DM6PR02MB6233.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-Forefront-PRVS: 0064B3273C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: UDPpF2P9o2aYYqT9NtViTB4m4sUyOp1dNh+hSgBQyemya+F/gOVmWnLyNslU/uPmarkLIrG2MuTfAiI9WdKHYbbVp6fA35fl1kCzObKSlukGl5h47/vUPNEsL0W5phFF+VA6E4kvrqeajTLcXWqWaeSOPRBad+LbhhNWjSod82h2SFfqCqk3GwuwPb3Gujp2JvEFk0uYBV0jtEXZA7FyqjR6fIEaB2DxSxQU6uj8TJ1G001tZ6ddE/s0M5EaF19m2Re4xwf3NmxrRMbQzmtR26SJ27SsRi5TraUKp5IrRi5cvar3Yv7SsqoIm/CoWRkyFQU5pFKYpBImCVHorz/bCP5w0zNXDzyWcJNwDZfrmQfrusg6h8vdOoM+j4erBskNhFHsWwyD4BxTIsIh2OaiFbwDQ5qjug1hgZcTz3IR5ao=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2019 15:07:11.1819 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0c7092-6051-4d85-cc11-08d6edb55094
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_080715_610211_E346C9B3 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: monstr@monstr.eu, Nava kishore Manne <nava.manne@xilinx.com>,
 linux-kernel@vger.kernel.org, johan@kernel.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10. 06. 19 16:44, Greg KH wrote:
> On Mon, Jun 10, 2019 at 10:44:55AM +0200, Michal Simek wrote:
>> From: Nava kishore Manne <nava.manne@xilinx.com>
>>
>> This patch fixes the below warning
>>
>>         -->Symbolic permissions 'S_IRUGO' are not preferred.
>>            Consider using octal permissions '0444'.
>>         -->macros should not use a trailing semicolon.
>>         -->line over 80 characters.
>>         -->void function return statements are not generally useful.
>>         -->Prefer 'unsigned int' to bare use of 'unsigned'.
>>
>> Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
>> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
>> ---
>>
>> Happy to split it if needed.
> 
> Please split.  Do not do more than one "logical thing" per patch.
> 
> And the subject is not correct, there are no general "warnings", these
> are all checkpatch warnings, not a build issue.

ok. Will do. Any issue with second patch?

Thanks,
Michal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
