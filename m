Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D270B16C447
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9qRzrG/nLDSVtebH2Ryh1Fcb8R/JyQcTHXJckEg+ts=; b=OYSgGHiAOaBMt2
	SijyyTLbwIrQ2/WNleTbZLEZ+qXYjf+IQXlYOcM98QAYH5g/2cSdcGFs2zLH+CPYMDG6/qn5pNN9x
	cp6XmvZ1TI8kgPenSv7aJxLsZXKnayLMbojBzPc2AlHCQcVuASmpcvS7nSc7oxEr8ggbTX87dD5qM
	gYXL7u/L5msoaSvoC2Mmu1TC+M59Cv9XW1lQBo+MEA9+oF0kcJ9E7x5gmKAqyI8CRSW3hUvPkEpKd
	rF4RncND2S5W/Nev7BWeCvLlYJcaKXxlvfNO+yUZsbSzxuQ2IJDcj+Ap2HAmOZmbgF153/aSQJRJH
	nIjrUD6Da2H6aC+qsfHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bS0-0006AL-7S; Tue, 25 Feb 2020 14:44:44 +0000
Received: from mail-bn7nam10on20609.outbound.protection.outlook.com
 ([2a01:111:f400:7e8a::609]
 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bRq-0006A2-Lz
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:44:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cu55n5BpLDhOd9kbfV2GRd+hzBMqymGUSSr+p17Is0VQwugGRmYiYPRsH6eNahEx9ay35j6qGvxPlLoUhEVL4P0ffHk+l91i0e/vWW3Jw6G3BcZLvo+rM/cZtka5lFpUqii8jxPhVP20FMUAx5advUbjWrRAorrAq+vtDexw9edsw4IQPrI/Trvp8Z/9bMDEoNYoRh1RnSfePyk5JBl1UDE1MfUHOzX4WaZwsXAu6E+9r0lSwwzLTotPgVSuNLcwb1Cme99wtyrgHwTE7QJE037nBYtPfD5CRNjBxCdVgIplvZiSEgwsI6OdDoDicAazvd209o5ffP9jex/nSimrgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tG6P+jXjkwKNnI7ulVmKjLv+MP/Y1T6M1Gytf5eosxg=;
 b=GX1txtu+1us3ppierQ39gnyMm1zGuZjJQv79zaWbOvdAH3W/QVfCZhbuozOz5pUaQ1ULrZb7NraQOTojZUqF/wQIv3wPqXAzEu+AvfRgv0tDoHphfAGAEzNjewRsqXYKkpPzb9gHmS9fyhoKzVjRbvRbMN8VUDYfhtQunHj9A5eAKpuSV1QSgB6AGUg3PnsfGz3xIw+uKdDhbOdr9Ue5w6SVKnmGrNBpGGVA15vAKNKnTjlzKpEyV3Sp5ROo72JXk85NUyDOmolKsF33fq7MFWbQFUpTjUV/edx9xzRO1BTnY8uCil1dSYt//JXYvZPRfWPrA3v6t46S2h2qHTsJ2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tG6P+jXjkwKNnI7ulVmKjLv+MP/Y1T6M1Gytf5eosxg=;
 b=EUgGpgygvJnpM8HvR4wQsgfYkyOilusMbRRZL5lasXs8De1MLzhJ/1X/pgUGcxmC+si9R2HxPjchWmJ3g4A2XHIoWlSLvT+S5/0r8RV3Fn6UREzfz98cLEaD1rAe8IqjaCsxQXfZN/Dqe+oue94g8iQyN3+BfaojoeU2wRPffP8=
Received: from CY4PR01CA0020.prod.exchangelabs.com (2603:10b6:903:1f::30) by
 MN2PR02MB6893.namprd02.prod.outlook.com (2603:10b6:208:200::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Tue, 25 Feb
 2020 14:44:32 +0000
Received: from CY1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:1f:cafe::8) by CY4PR01CA0020.outlook.office365.com
 (2603:10b6:903:1f::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Tue, 25 Feb 2020 14:44:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT041.mail.protection.outlook.com (10.152.74.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Tue, 25 Feb 2020 14:44:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6bRm-0004H3-Qd; Tue, 25 Feb 2020 06:44:30 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1j6bRh-0006IJ-NS; Tue, 25 Feb 2020 06:44:25 -0800
Received: from [172.30.17.108] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1j6bRc-0006H7-31; Tue, 25 Feb 2020 06:44:20 -0800
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
To: Wolfram Sang <wsa@the-dreams.de>, Michal Simek <michal.simek@xilinx.com>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
 <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225141357.GE3677@ninjato>
 <AM0PR06MB5185341478B6919A9CC22271D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225143245.GF3677@ninjato>
 <431d520b-24a1-687c-1f4b-4ebe95181a2b@xilinx.com>
 <20200225144146.GG3677@ninjato>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <4557a127-833d-d829-1490-e76912f099dd@xilinx.com>
Date: Tue, 25 Feb 2020 15:44:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225144146.GG3677@ninjato>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39860400002)(346002)(189003)(199004)(186003)(4744005)(9786002)(54906003)(110136005)(316002)(31686004)(26005)(70206006)(107886003)(336012)(478600001)(44832011)(81156014)(356004)(426003)(31696002)(2906002)(8936002)(8676002)(81166006)(70586007)(5660300002)(4326008)(2616005)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6893; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8786cab0-ebf6-4d15-81c1-08d7ba013933
X-MS-TrafficTypeDiagnostic: MN2PR02MB6893:
X-Microsoft-Antispam-PRVS: <MN2PR02MB68930527E17966E91513F476C6ED0@MN2PR02MB6893.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0324C2C0E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KqNa4OLCWBOFTUexA4zpnYamLuaxmxJ+SQCNekvjnpYII3AdcH64EMWmkKlT9AZTtGGRXBPC+TOp9pkr/OsMnY2PIrSIyS/XYVGgD5Gth4VGBHAXFLKnvZoA0Y809evoxo2SzC4qo6y/vtg/xFVEyQVGzgLwVuGZPXRhiRr8w+igbPXwMgLCuy3tpGyAD3VbfTysDKGLzWCZQu63y9BufiZQC3TENIeA8b27zOdY/BotUaApyu2+1A9d8RC7KZZlhOJs9csUQusRi0bysAGWacYp4U+SgvNk4rS5lrjfe4EwbGD+8xadEiemCPZYyHnYIBSFqIV3gJU2TI2haEbmbbQ3e8mBLUyk/6Dj0MS6N/8yZdLc+D8V/8Sfg6Y/Rs2NA8cZDR+Wz0sKk8/0cXem7xi8989gk+ddnedO101drD1IqwdXjDgcA7vux/c3w31D
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 14:44:31.2333 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8786cab0-ebf6-4d15-81c1-08d7ba013933
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6893
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_064434_721451_F49C2E48 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25. 02. 20 15:41, Wolfram Sang wrote:
> On Tue, Feb 25, 2020 at 03:37:21PM +0100, Michal Simek wrote:
>> On 25. 02. 20 15:32, Wolfram Sang wrote:
>>>
>>>>> My favourite is to change alignment to be just one space. Then, we have
>>>>> a bit of overhead now, but never again in the future.
>>>>
>>>> Ok, I will add that change as separate patch to V2 patch series.
>>>
>>> Perfect, thanks!
>>>
>>
>> Wolfram: Any option about that multi-master property?
> 
> Not yet.

What does that mean? Do you need time to dig into it or you don't mind?

Thanks,
Michal



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
