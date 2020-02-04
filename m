Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D431151A88
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 13:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaW3+Ws5RjWpgd4FgtV/9LJZ00go23x5dGrxKDhNFwU=; b=J3TxrivOWkBXTk
	mzHlM6c5c4KYnDlLxwKRSXunhPHTWmj6GjH+xBohD6XDRbzKY9072TIhXHjoC2AUjlqDiwfqDX6Et
	NQcrK5TDF1sEj3oP1KYDt9vdJyc0W24QjnyJEK5+RqnMcn6Y9KNPDibtqJ/ap+yhRzy8UumfADIgH
	lzX+8Vnaqjv9OQkAkJMj2tbAZyWQ7n0LejXDlRjLI9P6YTyQNBYgdc1YNYntl2JA79Ii2f4m+qZUm
	rsH9v1tt981xY6cDFK50NiOCDiFTdOkGHvGOY7uQQeE4eowQoyOoM7Sw1avRjgc+NEygqieQLi0NH
	If1yomVyZTcRDDhiUqEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyxN0-0004Sp-Kn; Tue, 04 Feb 2020 12:31:58 +0000
Received: from mail-dm6nam11on20618.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::618]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxMn-0004SF-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 12:31:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bl1lPnJp6q+Z0uheCuVj4KHIxU6G5FcXncPlfGo2JWOGWa/KxVqbbikvL1ct7nyMbPeZnx5w9srBuhyOfH/+wlEEWyR+yBlhPRvVpecwCkljg37Yx3HZaEQfHHz5i/KnhNKYq+iDct/OrMajyvE15r1mIOYnjOot7+VFQEzRLUd6f/g56s/bf4fZzlD4zDNMPWEcNkwPK3GB/iNkuwev5j4trzEDeUME82HSSMF0Qm0zeiizc5ArPlM4vpZm0QlF2AvPAC9HreVSEEwO8Em1bk5eUX8mWw5MlWBtt0vH+HWX2PAlUaTLtAy83Wn68HQXCX+naBL8/e89Mvnv0ZLCNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uq7qUjiZAP+3yo+UE4aGzmYa/lilal1ogWwn8TJfQ4Q=;
 b=HKP2EUIPnhGCaSUIybXivJm3CmvqejG1LofVnY4yTYzb40o/mhPhv7pX7HaaFkN5+CneJPnFLQmva9jlGpmd4KXBSgnE5wi24kA/rrdX5Z0/rlgKK3mE8sW4wnlyYLN+joQ4hLvQTkANGDp839TDbEsXcgN7RZqnYvaTpowvWeciEwi+H715YlGtiZk/xASbp3V/3p9KYeN06wX6TfhElnLRtjDJlwrRs4RTSpT9f42XA9Xn/CkBNTCzTL+8fSBmrrah1Np6I97mLQsIFizE+cUsyOuKW+f//DrYkv5aSmeklPv/K7H/9D2neieJXW72dICTdm70s7IhjXvgOi/mUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uq7qUjiZAP+3yo+UE4aGzmYa/lilal1ogWwn8TJfQ4Q=;
 b=Njvn9X2T+s8wwYpMNyIDKcglkexAKtHLruqA4vJ7ek9qq9Uo4Imnxq/CsA5DoSaW7scjhOtGUKjVuTDPAVvQg2dsr6tm+R+COfuYaOO2AxZgltfH8dWD3LW1HahIEsNCidS2K1BWYqtLnk7xdNoMmTHzhM49liRKMaOhRTV7rqM=
Received: from BN7PR02CA0035.namprd02.prod.outlook.com (2603:10b6:408:20::48)
 by BYAPR02MB4280.namprd02.prod.outlook.com (2603:10b6:a03:5a::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.32; Tue, 4 Feb
 2020 12:31:40 +0000
Received: from BL2NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by BN7PR02CA0035.outlook.office365.com
 (2603:10b6:408:20::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.29 via Frontend
 Transport; Tue, 4 Feb 2020 12:31:40 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT023.mail.protection.outlook.com (10.152.77.72) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Tue, 4 Feb 2020 12:31:39 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iyxMg-0001sl-QH; Tue, 04 Feb 2020 04:31:38 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iyxMb-0002fh-M8; Tue, 04 Feb 2020 04:31:33 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iyxMW-0002eU-6U; Tue, 04 Feb 2020 04:31:28 -0800
Subject: Re: [PATCH 4/4] sdhci: arasan: Remove quirk for broken base clock
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Manish Narani <manish.narani@xilinx.com>
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <1579602095-30060-5-git-send-email-manish.narani@xilinx.com>
 <99fd3904-37fa-f070-f7ac-e1dcb5bf43de@intel.com>
 <0d7e7a44-91dc-baef-5dcf-4ff683e98581@xilinx.com>
 <CAPDyKFosDoABbHaoEtyay-uMKpq6QXsoby631gK-1f6iAS0mgg@mail.gmail.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <d07db149-07a0-fef8-7cd5-27a219f30550@xilinx.com>
Date: Tue, 4 Feb 2020 13:31:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAPDyKFosDoABbHaoEtyay-uMKpq6QXsoby631gK-1f6iAS0mgg@mail.gmail.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(199004)(189003)(110136005)(54906003)(5660300002)(316002)(70586007)(31696002)(53546011)(36756003)(70206006)(26005)(186003)(81156014)(6636002)(8676002)(81166006)(31686004)(9786002)(8936002)(426003)(2906002)(2616005)(336012)(44832011)(4326008)(478600001)(356004)(6666004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4280; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6500944-a407-4dc2-f2c6-08d7a96e2f20
X-MS-TrafficTypeDiagnostic: BYAPR02MB4280:
X-Microsoft-Antispam-PRVS: <BYAPR02MB42801B81F78F911566AF1A8FC6030@BYAPR02MB4280.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 03030B9493
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /QlK9r4YPVWtoPBvH2og6Y1u0s5HTLC9uZxAFiVEKyIiZV252jYpDLW7Ju2E3VCWc/viTCLaWeH4xPTFb74qGpwz1XGN8jDZ7Iby/om7MlxrYbMstNhLOFWKeW6ASLv2kfRce0VxU3MXHL0C4xUpY8dOirR9vs4hF98X3dCYZ2Mx6gi05STTXODlFTOJAzO8pmw8/n4JFkf2D+KaCDDMZ/tPBxOsO0nvXdi46ZxYdUjtz/2Imgh3NhRsJrMEqNRzOBKrpJJf8ODb2m1C/D4cccTvMEtjoyswWKPWK/TNkcSKw2FHDx6R262hoAoJTpzCcX2+YR472LNnkJ5QBZVBTLy6CrP07Rh8fTOA6V5xdmtXH8r5jiEJCeH27aAqmnm7yD901a7VpHaldD/Ir6AIC2T324f50M0lls9rjn/U336as50aG/PTVMQ1eUIZAwXK
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 12:31:39.6628 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6500944-a407-4dc2-f2c6-08d7a96e2f20
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4280
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_043145_692432_8DD4395C 
X-CRM114-Status: GOOD (  14.38  )
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
Cc: tejas.patel@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 jolly.shah@xilinx.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04. 02. 20 13:29, Ulf Hansson wrote:
> On Tue, 4 Feb 2020 at 12:42, Michal Simek <michal.simek@xilinx.com> wrote:
>>
>> On 03. 02. 20 12:31, Adrian Hunter wrote:
>>> On 21/01/20 12:21 pm, Manish Narani wrote:
>>>> This patch removes quirk which indicates a broken base clock. This was
>>>> making the kernel report wrong base clock of ~187MHz instead of 200MHz
>>>> even as the measurement on the hardware was showing 200MHz.
>>>>
>>>> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
>>>> State: pending
>>>
>>> Huh?
>>
>> It shouldn't be here. It is internal patch labeling.
>> Manish: Please send v2 with all lines you got and remove this above.
> 
> No need for a resend, I can fix this before applying, which will be
> when rc1 is out.
> 
>>
>>>
>>> Otherwise:
>>>
>>> Acked-by: Adrian Hunter <adrian.hunter@intel.com>
>>
>> These patches requires firmware changes. Feel free to take it directly
>> via your tree. If you want me to take it via arm-soc tree please let me
>> know.
> 
> Thanks, I pick them up via my mmc tree then.

ok. Please let me know if there is any conflict. It should be simple add.

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
