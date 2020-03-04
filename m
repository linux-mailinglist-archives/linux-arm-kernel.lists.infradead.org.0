Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5641791B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 14:49:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GirAORA9Y8oEEosFYCce4pw/phqZNkTv1MJEqVv7o0w=; b=U7a3xUnSw2t4ORa2vUBenPT4g
	kAZfaNzOsqWunRJMBC9XuN/GE0EguvkrzJXloBK49bEnHYxvlNRq4rfgn5UMNpFC7MrsCc0dmCLKW
	aavlq8EZErQgWomJLmLD5B5A94Tel9R/jwTesyvLY8NtUlrbw52dUX3r/PTLZ2x7Ouyx2yK03WHBz
	tWrdOhD/ImMx1HShOmHpSHPO18k76DLaz50J3AoN4qhbq+zZkswfcCDCOZipfdTS+G7nyqUSZ3n3k
	M4fedUM6eGZY5Mr1RG4PQohw/a9/22a8aznzgPJT3+ZaPPOOMXg7dsoh8ABPIPl20kopmK2weopfi
	u4YDIbkXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9UOZ-0006gt-HP; Wed, 04 Mar 2020 13:49:07 +0000
Received: from mail-am6eur05on2062.outbound.protection.outlook.com
 ([40.107.22.62] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9UOR-0006W4-Ov
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 13:49:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0HdQrFD2kQes4f2G+AwCAl041xym184+mIl+oKQ45KdT+bmGKXFO9XMzfSd/SNLm6UQIkSbHqauYrylOa9pjWNdrlXdLzR5yCSWOrzWLiuOlbvVJJZ/kyeHTx3gdJvaKfF0qdjo6XPPUQK7pQGaJo8xzMJSx84vFZro7au1ESVOSNcfb0RFEtSV8xgT5diL9pJ7osrCl68nQpLwwGYKqtn/PE/RLB/jF3txixy+th+afgZWnt7WcXl5izSEy8/IfDCrT0OzhCMFa8ddfwdeDkMeIOfjg6fJqgpW1FWN0+k6R+w7IfYwPd2IUuSWkOG6tkjTsPk5ie9z240LHgDpEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkGDt2KYEWJsYwssRf20u/bu1+9jzLR9C/u3Rj2FFxc=;
 b=D+8bWpSCrDuCrHbOo3E+3fQDaghY5x2JhsUE0GSRO3cgpZ1mkJ82Sv1ToZVuqXt+0kKGWcoDDj6VNZXaZ7e0xBoOrMal0x/uL3Zwco4n57X/Wjp5tFVt6v62hdzsewtnDke8QIx5K/Fo/BX6nz0JdgkN+HQwnqDHQaxoytWErpYdX6Wo1Uti/JxT+CzyHChIQjWAg8BIDG+NYWnS0rc9f0kXOOrbHl5tJQ/T96l5rup3L5hmU3DnWj2rs5dAXV5rIlMLEC6lueWrh0gbja0fHH7r55QDxT808XJRFbSI/ldpe/kB1BIjyQXCDy9iAYv9Z1xRYBu/Q8yPnQND7k7GEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkGDt2KYEWJsYwssRf20u/bu1+9jzLR9C/u3Rj2FFxc=;
 b=Whd0Acjsof9fnFYRRfFfi7UnZvVMLouomSxynfsHWQbsjP0gOBNL546XDGtMWc/zQG+TBOOxHSZrY6HFVO3C4FQX+7Ugn2E/Xfp4o5+tbEGYO1brYO3+q+J2+7y49iXsFXvXxnItJA+3+7fmsGwdCmOHNJ9c6DAYOuvHSI6Og0A=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM0PR04MB6897.eurprd04.prod.outlook.com (52.132.213.205) by
 AM0PR04MB5715.eurprd04.prod.outlook.com (20.178.117.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Wed, 4 Mar 2020 13:48:55 +0000
Received: from AM0PR04MB6897.eurprd04.prod.outlook.com
 ([fe80::86e:9e66:998f:9528]) by AM0PR04MB6897.eurprd04.prod.outlook.com
 ([fe80::86e:9e66:998f:9528%7]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 13:48:55 +0000
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
 <20200228025700.GA856087@builder>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <fb4d4ab5-0b9f-5912-a4c1-2f18bf273e11@nxp.com>
Date: Wed, 4 Mar 2020 15:48:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200228025700.GA856087@builder>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0063.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:e6::40) To AM0PR04MB6897.eurprd04.prod.outlook.com
 (2603:10a6:208:184::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.171.82.13] (89.37.124.34) by
 AM0PR01CA0063.eurprd01.prod.exchangelabs.com (2603:10a6:208:e6::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15 via Frontend
 Transport; Wed, 4 Mar 2020 13:48:54 +0000
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f696aef0-0226-4d24-ed3d-08d7c042c7f6
X-MS-TrafficTypeDiagnostic: AM0PR04MB5715:|AM0PR04MB5715:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB57155C774D213E95B7641380ECE50@AM0PR04MB5715.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0332AACBC3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(366004)(189003)(199004)(66476007)(66556008)(86362001)(4326008)(66946007)(2906002)(36756003)(478600001)(6486002)(16576012)(53546011)(186003)(5660300002)(81166006)(8936002)(44832011)(81156014)(52116002)(26005)(110136005)(31696002)(2616005)(316002)(8676002)(16526019)(956004)(31686004)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5715;
 H:AM0PR04MB6897.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: agHQlVp4Q+A+VMeMZQKYPToCK4elPBChTNWJDd7/lxEI8I9Jr8Z93wcCeYVPz+6bq2RXFFpYRX41kDVgRfyv6OebYN+vLGydjKsOcDcHDe+aF+BSkMHFtI+kHQM/XJrZb6dUn2Ybtgj0x0WbiMUjbPyGpCNYIpv0BUtXehrLSiPX7BCroioBWHpF2n77VGvu4NRZ2WcgsIsE063Wh+ANUco9kp3Y5FcxukS1CVHe1Wt2Cslj0MXgvefDmneRL3oAxnGp/nPH9/Cw2Bd5oA8lsO6hSMSVLg2cYhZyBXVeIB3ThbZSPxwJwJePLNyXH+aORwCLyS8yerQBRwoVv6bk4S5ysBXL8JgtECkEuijY7swVbLEs1kggeEdlKtmTeuMAiI1clNS32+B8KBQ0KjnfxPy7Z5r9hI04rPQhPJKIxQmTdWSklPprBdFsIqYiVPFB
X-MS-Exchange-AntiSpam-MessageData: STnzftKrn1Qjo6IzYSmqymcbNd5v5I8bXjvrFvuDnsWl+KU2sG8pjPVpkIJiWXpXAVKgq8edxpBrweBXs7FDvX7vWf+0TUwC8lPfwXRlyCh7UIJwqqHbjuz+au9ThH5EHYLp5R8T/mtCfWkfKpN1ng==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f696aef0-0226-4d24-ed3d-08d7c042c7f6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2020 13:48:55.3140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8l+41/BDU3I1f5BS1ln2sIb1Z2YMfF/+qb1HdJjVQ6OBiYX07nUYPSIz2xP/1JBk/wMIs68BNdMMblUFx7LU4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5715
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_054859_812479_E438976A 
X-CRM114-Status: GOOD (  29.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 iommu@lists.linux-foundation.org, Diana Craciun <diana.craciun@oss.nxp.com>,
 linux-tegra@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On 28.02.2020 04:57, Bjorn Andersson wrote:
> On Mon 09 Dec 07:07 PST 2019, Thierry Reding wrote:
> 
>> From: Thierry Reding <treding@nvidia.com>
>>
> 
> Sorry for the slow response on this, finally got the time to go through
> this in detail and try it out on some Qualcomm boards.
> 
>> On some platforms, the firmware will setup hardware to read from a given
>> region of memory. One such example is a display controller that is
>> scanning out a splash screen from physical memory.
>>
> 
> This particular use case is the one that we need to figure out for
> Qualcomm devices as well; on some devices it's a simple splash screen
> (that on many devices can be disabled), but for others we have EFIFB
> on the display and no (sane) means to disable this.
> 
>> During Linux' boot process, the ARM SMMU will configure all contexts to
>> fault by default. This means that memory accesses that happen by an SMMU
>> master before its driver has had a chance to properly set up the IOMMU
>> will cause a fault. This is especially annoying for something like the
>> display controller scanning out a splash screen because the faults will
>> result in the display controller getting bogus data (all-ones on Tegra)
>> and since it repeatedly scans that framebuffer, it will keep triggering
>> such faults and spam the boot log with them.
>>
> 
> As my proposed patches indicated, the Qualcomm platform boots with
> stream mapping setup for the hardware used by the bootloader, but
> relying on the associated context banks not being enabled.
> 
> USFCFG in SCR0 is set and any faults resulting of this will trap into
> secure world and the device will be reset.
> 
>> In order to work around such problems, scan the device tree for IOMMU
>> masters and set up a special identity domain that will map 1:1 all of
>> the reserved regions associated with them. This happens before the SMMU
>> is enabled, so that the mappings are already set up before translations
>> begin.
>>
>> One thing that was pointed out earlier, and which I don't have a good
>> idea on how to solve it, is that the early identity domain is not
>> discarded. The assumption is that the standard direct mappings code of
>> the IOMMU framework will replace the early identity domain once devices
>> are properly attached to domains, but we don't have a good point in time
>> when it would be safe to remove the early identity domain.
>>
>> One option that I can think of would be to create an early identity
>> domain for each master and inherit it when that master is attached to
>> the domain later on, but that seems rather complicated from an book-
>> keeping point of view and tricky because we need to be careful not to
>> map regions twice, etc.
>>
> 
> The one concern I ran into with this approach (after resolving below
> issues) is that when the display driver probes a new domain will be
> created automatically and I get a stream of "Unhandled context fault" in
> the log until the driver has mapped the framebuffer in the newly
> allocated context.
> 
> This is normally not a problem, as we seem to be able to do this
> initialization in a few frames, but for the cases where the display
> driver probe defer this is a problem.

Also gave this a go on one of NXP's layerscape platforms, and 
encountered the same issue. However, given that in our case it's not 
about a framebuffer device but a firmware, it cause it to crash. :-(

Another apparent problem is that in the current implementation only one 
memory-region per device is supported. Actually it appears that this is 
a limitation of the DT reservation binding - it doesn't seem to allow 
specifying multiple regions per device. In our firmware case we would 
need support for multiple reserved regions (FW memory, FW i/o registers 
a.s.o).

---
Best Regards, Laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
