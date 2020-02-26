Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974C516F41A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3IteUAbStpkCa6bvCjIfkrGUKo9ea/9WrvVWFolSDbk=; b=I13SMfVUt5DrW6rpCXROVTgpT
	DKTijIoHd3pM5PSeTOiFcui+cVUaKTKN70wD4juM/1LFKUbnrEaB91GwLXR0oAIrvxuW5Z5IrKRrE
	w09CqdSswpDqYiTmPHORoITjIgDbEyPebNHkZGjHnYGYosS3kGosP2LdXCKJrRWEb5s5VIHF+3EqN
	jrbIK4yt0VyR5CmsuppUomrHL08wi+sQRZDAJUgBHH1Uywe2FY2X183o80i3BOi91SR+PzvnBWJle
	b/pJpa2C5dSaGk4xfF74uuffAyBB7o3/fgW3m6pCiL2peJkAtNeYaaIoGkXRQkgFgYzIMHXWDQSb1
	GDzfva+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kJc-0004t0-Nz; Wed, 26 Feb 2020 00:12:40 +0000
Received: from mail-eopbgr760047.outbound.protection.outlook.com
 ([40.107.76.47] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kJT-0004sU-JK
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:12:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hVtCNw26Bse1Q1W8qmcw222gRjR63FLCJ62sROGqFa9gK1Y2V/u3+IwbErFAhKu0I7QXlgI8whEvbRMs9TosEwjGgK8Iso/2+50d/hWtFp6RHK1lUC1C3v+gvkNudqNtk9rIibCNGL+dbtAIYd9Q9bR6DuTwu6zEvUsVuAkWlOPB0a+sQtFgjmaPUMM5/dRVvKgdd2J1/n8WNz1o2Vs+ENr0aUo1goez5gcfP4teirqwzhRDbdWfREGJfvK9epQ0AIPEKtJjHKlCRJ9NV1LzTl8Ee45N1yLylOqDhtlLeRf+YmuAe/t5UPc1exvf488eUiqB8LQqD0VrYqeDAXATDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=icbRTNAp9DBiFSezTuNNcnMOmlLe7vU/rmyNXWIP9rg=;
 b=cnGnxHeW4XoPQk15+puoDZ0ydT5yL7iP2l2AlepyGQ9Fe7yxqI4Y/mQP/wY8T+RfzgmLNsUxLf/tClNqZneMd/Vsfaz1Ytw9DyIe3+tVG1gCmJ+ODUlNynyDx6BRC6j01Qnf9gqUu20Oa9mj5Ki8ZVYUzNRVNQt6wDNxgBn2Ro/kMYU0vutcmNRgSfKZsbY2Z9nvSANegBj3wSQl8QyE3lvsObIf2ODFT9drqhVNXCoMWgzElJs2Dh1QvSQCZApbF5i2z7lvMpi2U6EtCMvvmSuNbcRSLVUxTwRQIOFtuaEpixBlu6iMkR3/qz5ed5FyRxli/7UzXQWgM34JJ3Vu3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=icbRTNAp9DBiFSezTuNNcnMOmlLe7vU/rmyNXWIP9rg=;
 b=oMxFH6mkBDZrY+7/+H2rYzjsPAY95w56NU3ZPyE485bu+sjZC8AyvdjnyTqdvk16u/b0wBmH/1uYBSAVGiH/sRnUKzMxXfIoiOcStItiF6mdtI+FxlK94Iw389m+xcoqksB7oG7izNF4p4kYLqDG7kHtDqGPG7k1WXX3qje8J1w=
Received: from MN2PR16CA0026.namprd16.prod.outlook.com (2603:10b6:208:134::39)
 by BN7PR02MB5204.namprd02.prod.outlook.com (2603:10b6:408:2a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.22; Wed, 26 Feb
 2020 00:12:25 +0000
Received: from BL2NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:134:cafe::c7) by MN2PR16CA0026.outlook.office365.com
 (2603:10b6:208:134::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Wed, 26 Feb 2020 00:12:25 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT030.mail.protection.outlook.com (10.152.77.172) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Wed, 26 Feb 2020 00:12:24 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j6kJM-0006Jv-DQ; Tue, 25 Feb 2020 16:12:24 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j6kJH-0006af-AH; Tue, 25 Feb 2020 16:12:19 -0800
Received: from [172.19.0.52] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jollys@xilinx.com>)
 id 1j6kJB-0006a4-Cy; Tue, 25 Feb 2020 16:12:13 -0800
Subject: Re: [PATCH 2/2] arch: arm64: xilinx: Make zynqmp_firmware driver
 optional
To: Michal Simek <michal.simek@xilinx.com>, Jolly Shah
 <jolly.shah@xilinx.com>, ard.biesheuvel@linaro.org, mingo@kernel.org,
 gregkh@linuxfoundation.org, matt@codeblueprint.co.uk, sudeep.holla@arm.com,
 hkallweit1@gmail.com, keescook@chromium.org, dmitry.torokhov@gmail.com
References: <1578596764-29351-1-git-send-email-jolly.shah@xilinx.com>
 <1578596764-29351-3-git-send-email-jolly.shah@xilinx.com>
 <e17afc7e-c070-6134-29cb-9fa7b855bf96@xilinx.com>
From: Jolly Shah <jolly.shah@xilinx.com>
Message-ID: <5a48a2f1-e723-62b7-36b2-1cf847f7fc2e@xilinx.com>
Date: Tue, 25 Feb 2020 16:12:13 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <e17afc7e-c070-6134-29cb-9fa7b855bf96@xilinx.com>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(5660300002)(70586007)(2616005)(8936002)(81156014)(8676002)(4326008)(70206006)(107886003)(81166006)(44832011)(426003)(9786002)(7416002)(356004)(31696002)(31686004)(2906002)(186003)(53546011)(336012)(110136005)(36756003)(316002)(478600001)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB5204; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4497a66-d041-4877-c281-08d7ba508ec6
X-MS-TrafficTypeDiagnostic: BN7PR02MB5204:
X-Microsoft-Antispam-PRVS: <BN7PR02MB5204825D8D9233083967BBDDB8EA0@BN7PR02MB5204.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0325F6C77B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: baghoHELcgUTPFir3lOt5h155KjSitE8ddMICi2ynz3xF/005r1Cmf9kqMmUzr1AfOJFW0+7+kQ4lqu0VmOPkkEg3n1ug4WtB1W7Q3MnR3NlP38XNS3hZUPVcM/qo3WRi6k2eMAaN3EPlG8JaikoadCPt4StEXJGKTjFxjdw/fSi37+F32cO7LbwMuLNRgoRMZVqZH7ktDoNQRW7tkwhXAxHALGlYN2K9CJq7pc89DwgSy2cWOFDM+5e13UynhOzI65wUvV0NEWeQR/GWILwhcg2phhRITFZDtXVOzIOttyFuoX2pNalOskgfPjyg+DrHBN5JeFAEdUpP2KGdEMt+6zBGSNHyrRQLiIU7Mf2Qsn/a9PZkU0ZC0NB8k5ir2oO2Eb5Wi+C9z33XvutFna3P1tVB8jc48YlKdffU+/cBBEvWHDn0PyYjCVmmg7uGkkK35u1ovWLI/lL3Tariw8BZGXTN8Sk4y/zFs/thdTANAnwOAR1ed7wK3DH6q8FpwMi
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 00:12:24.9932 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d4497a66-d041-4877-c281-08d7ba508ec6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB5204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_161231_638861_B4C4C2FD 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.47 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal,

 > ------Original Message------
 > From: Michal Simek <michal.simek@xilinx.com>
 > Sent:  Monday, February 24, 2020 2:43AM
 > To: Jolly Shah <jolly.shah@xilinx.com>, Ard.biesheuvel@linaro.org 
<ard.biesheuvel@linaro.org>, Mingo@kernel.org <mingo@kernel.org>, 'Greg 
Kh' <gregkh@linuxfoundation.org>, Matt@codeblueprint.co.uk 
<matt@codeblueprint.co.uk>, Sudeep.holla@arm.com <sudeep.holla@arm.com>, 
Hkallweit1@gmail.com <hkallweit1@gmail.com>, Keescook@chromium.org 
<keescook@chromium.org>, Dmitry.torokhov@gmail.com 
<dmitry.torokhov@gmail.com>, Michal Simek <michal.simek@xilinx.com>
 > Cc: Rajan Vaja <rajanv@xilinx.com>, 
Linux-arm-kernel@lists.infradead.org 
<linux-arm-kernel@lists.infradead.org>, Linux-kernel@vger.kernel.org 
<linux-kernel@vger.kernel.org>, Tejas Patel <tejas.patel@xilinx.com>
 > Subject: Re: [PATCH 2/2] arch: arm64: xilinx: Make zynqmp_firmware 
driver optional
 >
> On 09. 01. 20 20:06, Jolly Shah wrote:
>> From: Tejas Patel <tejas.patel@xilinx.com>
>>
>> Zynqmp firmware driver requires firmware to be present in system.
>> Zynqmp firmware driver will crash if firmware is not present in system.
>> For example single arch QEMU, may not have firmware, with such setup
>> Linux booting fails.
> 
> 
> I think that moving it to firmware Kconfig is good solution. What it is
> wrong is that description above where I agree with Sudeep.
> It means.
> 1. User should have option to disable zynqmp firmware driver which is
> what this patch allows. It means if someone decides to use different
> firmware mechanism it can do it directly by simply y/n option.
> 
> 2. Autodetection of PMUFW presence is another feature which could be
> implemented to have this driver enabled but different mechanism can be
> used.
> 
> 3. Doing this because of missing feature in QEMU is IMHO wrong. QEMU
> should be fixed and then you don't have any issue if this should be used
> or not.
> 
> Just a summary. Remove that QEMU example from commit message and talk to
> Edgar to fix single QEMU solution to have that regs mapped all the time.

Pushed another patch as suggested. Will sync up with Edgar.

Thanks,
Jolly Shah

> 
> Thanks,
> Michal
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
