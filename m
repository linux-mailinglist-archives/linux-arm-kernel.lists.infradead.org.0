Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7886188D50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wj/38B2lCP5WK9wikE585JqprxJaXjQjVB7wYmIYYZk=; b=jdymCpqg94q7KarqDcqN0jakr
	QcNvo+d2hEiwEeiNBBps+7BKSfq82psC0g8Gq/n0eNsFZI2JHzBIAPujQDk5qmsyn0+qpdVJt3JI0
	rjuzBWgye6fZ9Qy5cDHY7y7Nqw9z17LRFvQN9A1D5YqpbH8+p0lFv+eTZUWLjE6/4DfzuJg0Z0G5w
	2P9OM4iBHCfoY6krsXXsf0aWqVtemDnaquoC0wFFD0sLoyOxQTI3Th2BSCWPEgpYMx0rLumprHvbf
	EnxEiwOnaZMk/IQ/VCDeZG4sMmXgZtJZ1I3Eu1vlWcb3Ifkjxufi2hwEma8IjDzkRWrogw8b3JL1X
	bn9IOt5Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEH5g-0001Ja-8P; Tue, 17 Mar 2020 18:37:24 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEH5S-0001Hq-Td
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 18:37:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fc/FoSMQLxaXfx5ZASer9KmTeu5IdZIZIXl0IEmiYnmskeTl692m0O4gVgBD91QuitWW82ug3ail9N6trwOoKPzlwCu206vhFIrhC4T/C55U8lsaBw/219BGkA7H26ZUc8VvoQAhglxVUFLTP19Q+0XLMG6Sz2502JE3OvLwfJsX3m+mYBr4vPAuvuZrVh/hC3y5XzGV+xHZVKWY7fTDXJvQ0P3gkPYewL4rE2lF/xTOBPleJF9bJf3PNJf5+78M/76iDB9Q2RfT1GUFGO2zThrpmY2HbKdmyJj0KCxwui2qoM+TXQY4JAM6+EcfoxJv6hT2fygHmvNscorOvL8+YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=btcDLCg8h51+Yj0fjqlj82d/5ky6whjLGUpz7T4eyF8=;
 b=a/AAIa+caJoOazlkn6QNPdsjwgiMqKS72UkgtZx19z5IsvtWfwb7hVMSAZJLS17RO1Uu1ETbvWNalxCOWuSfxgL4NDqnX40HB5vCH7/dR8a/5brj6PF+C8CpqVU0x/CqpUcsjFfVJIaCRKg5XTm8OE+DqecJrKhZNRBlGmZPOAZJmZaMAllXZHvTEZHO7eJkyE148DR/r4nc3FcYbf/zWnCWnfEtS700GfYgRNbPKIWjhS/1wOMgx9zAFDVWsgV7MmC+Vwikmz6Wk6C+CwKeGRRKo7z3ZLQSavNsw/pxgn89lwiqfOgX3sw4ADFnYxQOi2MhKNoMLdeX1Y5ncmqrCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=btcDLCg8h51+Yj0fjqlj82d/5ky6whjLGUpz7T4eyF8=;
 b=k7iWj4IM0UjdGFMPawftXO+vGw9YtcUJnrEsFp4+z3ChFvXxjzUMbpSdjj/SMYVprlcucve73UAhn6df1wBffbHHX4gtPH0i91YGb+hgFvvEuRcqjcvg0tyV5T6gk4ZpqhoY+r3fmquJcyXfAysltcU09rdYQ98Hq9X/Y5Az8xs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4935.eurprd04.prod.outlook.com (20.177.33.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Tue, 17 Mar 2020 18:37:06 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 18:37:06 +0000
Subject: Re: [RFC PATCH v2 0/2] iommu: arm-smmu: Add support for early direct
 mappings
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: thierry.reding@gmail.com, robin.murphy@arm.com, will@kernel.org,
 iommu@lists.linux-foundation.org
References: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
Message-ID: <a7abd8fd-52a1-6bb8-43d7-c8711af8ef74@nxp.com>
Date: Tue, 17 Mar 2020 20:35:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
Content-Language: en-GB
X-ClientProxiedBy: BY5PR20CA0027.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::40) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.213.174.235] (192.88.158.246) by
 BY5PR20CA0027.namprd20.prod.outlook.com (2603:10b6:a03:1f4::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21 via Frontend
 Transport; Tue, 17 Mar 2020 18:36:57 +0000
X-Originating-IP: [192.88.158.246]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 80e3eee5-0b3f-42eb-8e2b-08d7caa2318c
X-MS-TrafficTypeDiagnostic: AM6PR04MB4935:|AM6PR04MB4935:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB493555038022359837144056ECF60@AM6PR04MB4935.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(136003)(376002)(366004)(199004)(5660300002)(31686004)(66946007)(66556008)(66476007)(2906002)(4326008)(6486002)(478600001)(45080400002)(966005)(52116002)(36756003)(53546011)(316002)(16576012)(956004)(31696002)(86362001)(2616005)(16526019)(81166006)(8676002)(26005)(8936002)(186003)(44832011)(7416002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4935;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PoaUBJ7cbH/yAPAZYgYn1YPpUe6nqEWDFDFFjAt99BJ95lINzZrUt0DiawrSytshoQ2h8qDE3d8JRvGtY46WuxNb9M1YHB0203nrYRErH0YiqH+nuuZ4aIroMx6nyeYggEMxekXFrvMcK11zip4dE8zr5MMqdCcDIK8TmfW+ik2i6+HGav6Z51TGWf2uN0A8K0QlwRGyJqcBni+b1OtowK+JQcxdgdsHIVYUyMkacu5Vy5lbnMQ2Id2RKC52/Z0bwzyj23n0rskQ9QInJ4KJmn0PiCcKZEANXEtSNtcDh8hgrKqsMjZMKgVWjDvUMRJ1Yc4rdu7SXZcrl12WTy//ekSBLN0pTYL9onLnh5o9eiPBEKmN6mIbLeDww/o4EzLxSnuW1FOx75UZHzA5tvBQX2ICtkINZTesE9B2FjoSzF2pmjuPPytu6KsUzWgQoqVUTfprd5yVylGWu6m8eQNUBdAqMMSFOmy4wUhFTuYVSCu7fYa3EQfJ4uWFE5GaQ7aBQrrlBkIN9dZrUVij7Bm4Kw==
X-MS-Exchange-AntiSpam-MessageData: rAZNhaUvx+JW+a3vugH9sOEqF5f0zb/Ft09cXhjJTkNB6sGYj/FyHH6SfN1Tl7SxZl8gGlSMM9NDFALUOsIm85G/EjRIzm7FRhi+IjhfziC1esHzQt49naMI6s5nsieCy26VXB9JYu9pgn9cV12Xdw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e3eee5-0b3f-42eb-8e2b-08d7caa2318c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 18:37:06.4000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7dzF2ShNCoHIL/2Vi2S+TZymHBXfULRmIDoxdsib/36wHX/SZ1P2Vnh+l3Lt9LWf7n3XSaj/32BipeAILHSKKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_113710_960653_45A378FB 
X-CRM114-Status: GOOD (  27.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: saravanak@google.com, pdaly@codeaurora.org, pratikp@codeaurora.org,
 linux@armlinux.org.uk, diana.craciun@nxp.com, linux-tegra@vger.kernel.org,
 Thierry Reding <treding@nvidia.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ +Russell ]

Forgot to Cc: you Russell, sorry about that. This patch series could be 
an important step towards fixing the MC firmware over smmu issue on nxp 
layerscape chips.

---

Best Regards, Laurentiu

On 3/17/2020 4:21 PM, laurentiu.tudor@nxp.com wrote:
> From: Thierry Reding <treding@nvidia.com>
>
> On some platforms, the firmware will setup hardware to read from a given
> region of memory. One such example is a display controller that is
> scanning out a splash screen from physical memory.
>
> During Linux' boot process, the ARM SMMU will configure all contexts to
> fault by default. This means that memory accesses that happen by an SMMU
> master before its driver has had a chance to properly set up the IOMMU
> will cause a fault. This is especially annoying for something like the
> display controller scanning out a splash screen because the faults will
> result in the display controller getting bogus data (all-ones on Tegra)
> and since it repeatedly scans that framebuffer, it will keep triggering
> such faults and spam the boot log with them.
>
> In order to work around such problems, scan the device tree for IOMMU
> masters and set up a special identity domain that will map 1:1 all of
> the reserved regions associated with them. This happens before the SMMU
> is enabled, so that the mappings are already set up before translations
> begin.
>
> One thing that was pointed out earlier, and which I don't have a good
> idea on how to solve it, is that the early identity domain is not
> discarded. The assumption is that the standard direct mappings code of
> the IOMMU framework will replace the early identity domain once devices
> are properly attached to domains, but we don't have a good point in time
> when it would be safe to remove the early identity domain.
>
> One option that I can think of would be to create an early identity
> domain for each master and inherit it when that master is attached to
> the domain later on, but that seems rather complicated from an book-
> keeping point of view and tricky because we need to be careful not to
> map regions twice, etc.
>
> Any good ideas on how to solve this? It'd also be interesting to see if
> there's a more generic way of doing this. I know that something like
> this isn't necessary on earlier Tegra SoCs with the custom Tegra SMMU
> because translations are only enabled when the devices are attached to a
> domain. I'm not sure about other IOMMUs, but in the absence of a struct
> device, I suspect that we can't really do anything really generic that
> would work across drivers.
>
> Previous version: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11279577%2F&amp;data=02%7C01%7Claurentiu.tudor%40nxp.com%7Cb40c3ee306224a2fc8fe08d7ca7e8007%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637200517038451677&amp;sdata=rq8Ojkh1fovakZ2jTGHjSUaYROtvjY8ZDItEiqCTuI4%3D&amp;reserved=0
>
> Changes in v2:
>   - recreate identity mappings when the device is placed in its rightful domain
>   - delete its original identity mappings from the identity domain
>   - added a counter to keep track of number of devices with identity mappings
>   - free identity domain when the counter reaches 0
>   - this should help fix our firmware issue, mentioned here [1]
>
> [1] https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcomment%2F23200041%2F&amp;data=02%7C01%7Claurentiu.tudor%40nxp.com%7Cb40c3ee306224a2fc8fe08d7ca7e8007%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637200517038451677&amp;sdata=Q0T326D1QMz5EtWY%2BzVUxdd01AbKySe8Ota66H2rkiI%3D&amp;reserved=0
>
> Thierry Reding (2):
>    iommu: arm-smmu: Extract arm_smmu_of_parse()
>    iommu: arm-smmu: Add support for early direct mappings
>
>   drivers/iommu/arm-smmu.c | 280 +++++++++++++++++++++++++++++++++++++--
>   drivers/iommu/arm-smmu.h |   3 +
>   2 files changed, 275 insertions(+), 8 deletions(-)
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
