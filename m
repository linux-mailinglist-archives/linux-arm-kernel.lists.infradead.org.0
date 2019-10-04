Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E0ECBB30
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPrO8ZnrE1A/DhJQwVDJmvIGzY97vo9PYqg9StYrO3Y=; b=hWFHaizj74XlF5
	41WpDy3tjHoaFTHGSkRlCXitMf/Gd3DhIS4JhTFV9TI6kYADqktch9/uaTxSQKTq/o4E13gbxAmBJ
	4zjHHckA6QiwMAMeBgKFwLqo59lKkZ/U7FYS/DE1UGKgsFDYfGKemrWzTRKxHnM0A7mGvT4s81aNM
	Kb2XP8iihucA/l7pN8caBMHl4z4wV5n+JRh1kpYnbLbK5Zss5SLz9K5tUkwteuSTvIbIA6PsVO15w
	fsiTwgYJ/05OLFB/ZeACN5w7kOhASEX3cysFZ4vkGHZru1zBB6VY5/iSquctb/YebBVVZoXBLY8D1
	FVEHsPi1d2S54bNz5IXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNGV-0001ua-W9; Fri, 04 Oct 2019 13:05:00 +0000
Received: from mail-eopbgr780055.outbound.protection.outlook.com
 ([40.107.78.55] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNGM-0001u4-6a
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:04:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjB8B7/lKpLXqmdXwNFtzg7VtCplw1P1a2oO0xMhnrhMuRqqZCA8HJ6WdgPFfJgPcAmfZ/LKlayP1mR7hkIPEyaBnfv85F2saAwefdFaDriF6HaaYUfOpskO/RLPpLevQFTn1Vyqi980hXP6E+kdIKrdju3+1Ugslm7Kir2M5+NLkuIr6He1REd61uUxx2ONnd0GahXQTlm04OI57OKc3yZ5fbRur1CCHfpsBaNu1C3bny+TL93th6zmmimG/zr5fUEEPCZqNK5uEi9fRrD0K1cqBFFrvgp8fxLFob1ntPDDsIQgV/+Bw4m0xfg+IshGDBcQmspTnCMkc4ld5usXkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3ydWf3WnhbAozKQX4tMOe3X6oRNSgHSqdWY20QEbRY=;
 b=gTKeHF16b1x516yoHG5DvMLT8zwyUGLXWQjDq8EEPnA/2uA0sWoC3b38ZqdWMnn3izmqnePFbldk4Rx7i3g+LXZuGKRgNbCR/DPv8yc/gG8beGYwW+zs4dw6F/ItSIUbLMoTHkV2Hj+qpj83R1aVCTelFa+ZuCaez6E+IgINo6nUFxqxF0kqdJlYyGU0r0mtnmhNebSjF7x3LulyBlhIFabkytpdsIV4nhuc/luwuOGIktI6G/shXnJsPRlwsI0DGDCajqKvScpD2UGT3XdVw07LzcAK7XO+j2z5fQQCouhQvqlRHtHFxK0Tqvt0SPprQhDGtCxlUkruIV2vc5IRAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3ydWf3WnhbAozKQX4tMOe3X6oRNSgHSqdWY20QEbRY=;
 b=OhfwT2KkPm3KRzCQX28cMz3HWjiCyRv3BR9enLyo0j/nT/lcS6BJovVcybnr5hTM2/LU4GrihjSTxxKCvfVC/5Yfk1qj0MXvWy27Y/tf9gQTeN2UEp7uDe+zFF/RwfHko3lWxI9ykHms9rcc5r6Lsl9rfgVYF05jW1Hr8p/VEJQ=
Received: from MWHPR0201CA0048.namprd02.prod.outlook.com
 (2603:10b6:301:73::25) by SN6PR02MB5343.namprd02.prod.outlook.com
 (2603:10b6:805:71::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.23; Fri, 4 Oct
 2019 13:04:48 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by MWHPR0201CA0048.outlook.office365.com
 (2603:10b6:301:73::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2263.20 via Frontend
 Transport; Fri, 4 Oct 2019 13:04:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Fri, 4 Oct 2019 13:04:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iGNGI-0007Pz-PE; Fri, 04 Oct 2019 06:04:46 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iGNGD-0006P8-Kw; Fri, 04 Oct 2019 06:04:41 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x94D4TL2027467; 
 Fri, 4 Oct 2019 06:04:29 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iGNG1-0006NB-0E; Fri, 04 Oct 2019 06:04:29 -0700
Subject: Re: [PATCH] serial: uartps: Fix uartps_major handling
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <00a269bc15c4f8c0a73c14958c5d7a5d37ff70ce.1568359707.git.michal.simek@xilinx.com>
 <20191004125203.GA583048@kroah.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <bcc281df-0fcc-f870-842b-213d1539dbca@xilinx.com>
Date: Fri, 4 Oct 2019 15:04:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191004125203.GA583048@kroah.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(76176011)(31696002)(356004)(336012)(229853002)(47776003)(2486003)(6246003)(6666004)(65956001)(31686004)(65806001)(2616005)(4326008)(81156014)(8676002)(81166006)(476003)(126002)(486006)(8936002)(23676004)(9786002)(110136005)(36386004)(11346002)(2906002)(4744005)(478600001)(426003)(50466002)(70586007)(5660300002)(36756003)(446003)(305945005)(70206006)(26005)(54906003)(58126008)(230700001)(316002)(106002)(186003)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5343; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3387fd84-9e05-481a-53a2-08d748cb6efc
X-MS-TrafficTypeDiagnostic: SN6PR02MB5343:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR02MB5343BB62668D75D173BC9164C69E0@SN6PR02MB5343.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 018093A9B5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W706tP76a99NMCkIkLmTFJL0CAhtuWRrFGMP0kPEwI5jpzaEo/oxj6J1zyHv2LfTkCeIXuJrKx9VrZTJ1R7jFca0/b37ZGAhwZubosRL6M7A1ZvMl30/UbkuR7KyMVc9ggLfmqvFwC9CC1LaogBvGoO76gj7DpLY1v118r76BR4g/rfLA2itzuzS21RxE15JYwdNUw21A5Nx6L7ZRMYhD6zZh2hDxe4xM+Rzqd8JCdAL6+Ei2PSexf9BAfTjcSka1ds2BMNTjojKJhGh0Em4rodK2iO1fD47YstLKo11zkOB7uhF/UnhoFQ/MlJyQsIf509+i28Xmzeo1fcucsD1BhiMCKtZUIJ7dbCjtWMDfEiQBChNRwTA4m8SiWQcs+irx3axl47htlEWmqR8q1ZK+vaVvM+YhI1fehpOR+M6IUA=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2019 13:04:47.2274 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3387fd84-9e05-481a-53a2-08d748cb6efc
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_060450_240716_A4753E58 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.55 listed in list.dnswl.org]
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
Cc: monstr@monstr.eu, Paul Thomas <pthomas8589@gmail.com>,
 linux-kernel@vger.kernel.org, git@xilinx.com, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04. 10. 19 14:52, Greg Kroah-Hartman wrote:
> On Fri, Sep 13, 2019 at 09:28:29AM +0200, Michal Simek wrote:
>> There are two parts which should be fixed. The first one is to assigned
>> uartps_major at the end of probe() to avoid complicated logic when
>> something fails.
>> The second part is initialized uartps_major number to 0 when last device is
>> removed. This will ensure that on next probe driver will ask for new
>> dynamic major number.
>>
>> Fixes: c9712e333809 ("serial: uartps: Use the same dynamic major number for all ports")
> 
> This is not a valid sha1 in Linus's tree :(
> 
> Please fix up and resend.

grr. It is sha1 from stable tree. Will resend.

Thanks,
Michal



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
