Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467101DEC2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aw3oDn8u+poZ97bZsDipPdP2XWZgkGcRDAUYOgbJ8cM=; b=gqrsFfbL3Tiw/T
	nNsVJu7pqvbP4HOCsXg7UK4aS+P6GRawemjiFqdz015myJ+nu3hv18f//8Za70v3xRJUVlonVJJH4
	g8MJwjjREvhQcqGvAjZDDppVIVnIqplbUcXRzu54ZeIq5AhzIr7te8p2sohUrZ9mqPUVV2tfWpIqD
	Wp8VqRNqoZTyVUQeXUI7+2V9gLExDtZgYZuKiyX4E9s0l1JG8wX1CMY9Tci1p0qhtDswqHEG1itYK
	ie7JvA9Au8zu3LwQARoBpEt1qO7YKy9lPpRR4IspE+bqZBt6kGgEXgcAwGRUUB508WfEqX8ReO8pP
	jMdKZ4dQGi5TKLcDgUsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9lL-0008Fg-0P; Fri, 22 May 2020 15:39:07 +0000
Received: from mail-vi1eur05on2043.outbound.protection.outlook.com
 ([40.107.21.43] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9l5-0008Aj-4y
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:38:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QNo6KPnzAMvN7zazUAjYj6PzjceNwOkWiS0Svzveuj5m+nnCTuSP27KDmU0ZfGJtCN/DkQMFw+lL+jcJKEFO3ToWirR5dNTGbiTkXRecjtSfrkTtlnb44C8T9WoALEwEQck3TK88GQvopwTZ1d67XGZeiO/KzUmLzMJBMAhn9Za6aZ94A1c3eEBA3dpdoo0fHjHrSD5PY3tkPbLk7Rp8Z1i2MdJjTS+9CM/vnhYiJCl5ppR3w1aBuuvP7rQpu5kBd/upg8sHe9Z8FqKjhKISl8KmzYnOnxu/RcGxouBwplObJ8eGRouUqTFzYDvjF236COyFB770+8aXztGACkoyMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=++5RDkQGvKFaD7ymimtcrLCqvOJxSh/XBsqCdIiV2vE=;
 b=iPuM/CPZj4pMavVi2J1vpz8ZepQeGPBcF/Impp5Nt+sz2csFqbQWQORqgOzZCo59RudR/KYtpkhbZUkOPmJ+BZ+qHgIWPGtEla5ceo6FWeKXYApxtNc+dTMdLBcfhc/yraSKMz08yIfA3YMzVqOyIL9wb2czqfOFFMbF0/i0cagmepGs95MM8gWlkikAenvjEc8856WrJdFsjGpol7HuaVR8kTJK5T4dNWR8p8+6Gl2z5ytuK4H5Io7CADDichzWdvmajK7TzdJy6VA4pH8WyzaZoEyRx6ukqW2WdyR8lAQrx0DMW68tSLJhuMxWfCcVqkwsVUfiGit4vhPOpuIknA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=++5RDkQGvKFaD7ymimtcrLCqvOJxSh/XBsqCdIiV2vE=;
 b=JV2wlbqAjh8mGd4KX+KmhYvYUSZKZKBkSDZTCxfuAheiGMZ9tguapXkDHpG3YFZZGRsCdyrcN/riSaB47qf/d1Y5PWOIHb6O0TJ4Mp1/tbKwly11PJVPLK1lXeQRmgbL6C+8idy76efD1EO+PrlSFbcujxY6iZ/TsSRabDnTq30=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=nxp.com;
Received: from VI1PR0402MB3405.eurprd04.prod.outlook.com (2603:10a6:803:3::26)
 by VI1PR0402MB3904.eurprd04.prod.outlook.com (2603:10a6:803:17::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Fri, 22 May
 2020 15:38:44 +0000
Received: from VI1PR0402MB3405.eurprd04.prod.outlook.com
 ([fe80::b97a:64f0:3ab5:d7fa]) by VI1PR0402MB3405.eurprd04.prod.outlook.com
 ([fe80::b97a:64f0:3ab5:d7fa%5]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 15:38:44 +0000
Subject: Re: [PATCH 09/12] dt-bindings: arm: fsl: Add msi-map device-tree
 binding for fsl-mc bus
To: Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <20200521130008.8266-1-lorenzo.pieralisi@arm.com>
 <20200521130008.8266-10-lorenzo.pieralisi@arm.com>
 <CAL_Jsq+h18gH2D3B-OZku6ACCgonPUJcUnrN8a5=jApsXHdB5Q@mail.gmail.com>
 <abca6ecb-5d93-832f-ff7c-de53bb6203f3@arm.com>
 <CAL_JsqKVyqc9QZhGD7FeNLpJ=x3oLzmY0zADBa+6ZaE46dN39w@mail.gmail.com>
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Message-ID: <73494357-9fd2-97d5-f139-d2353b14b83d@nxp.com>
Date: Fri, 22 May 2020 18:38:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <CAL_JsqKVyqc9QZhGD7FeNLpJ=x3oLzmY0zADBa+6ZaE46dN39w@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: VI1PR0901CA0089.eurprd09.prod.outlook.com
 (2603:10a6:800:7e::15) To VI1PR0402MB3405.eurprd04.prod.outlook.com
 (2603:10a6:803:3::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.104] (188.25.97.237) by
 VI1PR0901CA0089.eurprd09.prod.outlook.com (2603:10a6:800:7e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23 via Frontend
 Transport; Fri, 22 May 2020 15:38:43 +0000
X-Originating-IP: [188.25.97.237]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 30766822-adb5-49f5-b93e-08d7fe6635af
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3904:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB39045664A9DCDCF312E75605ECB40@VI1PR0402MB3904.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04111BAC64
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bQe9LqykGMF2pPGiLRDOEKO4YD95ynna/A9KqBf4FOC8F6rebf/QHwEyQ/tRX54orSmAbCqF+COyRuy8PLX6FaDW7Hgc7LjhYTtVvU2WhKQIbOzdAkAH4g2Fgu3bpqLSGFu72DukaX5oo8SGXm01t6onf1wtidmVvb5ud4Tdx1/QgH1DF3DDimz2Ctxoy7NRIJV0kKcZJsb/yerbUHeGj+691Lk5t8BHIyVwX2ZzrpoNmINlrS6fIxouGiUi3U+GKDTT9Vnz+Xz0UhNR1OkqH5OhuEIgoTrITQoEvMnWZIarcA8GVMhZDqSArJr1OvmG0Oqf2dGmYDpLT+xCDVORTGV9W3vo+xIdlOPOxKGzChf8HEIROkqb78mY7bsVZld6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3405.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(44832011)(8936002)(26005)(36756003)(16526019)(8676002)(6666004)(66556008)(186003)(5660300002)(52116002)(86362001)(53546011)(66476007)(66946007)(7416002)(6486002)(2616005)(110136005)(2906002)(316002)(956004)(54906003)(31686004)(478600001)(31696002)(16576012)(4326008)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: tg34IxtE9eTVSFcOUNkpKVCY9gYCWEKfgRYLsFB+4OLEhmoIThxdLG69LylFzlVH7SdJXsbMWpIHkS4YlzR+8sMQjS5LFNX1KSaJEJxoZEshjW9/V8FyQjrqa8YUI9WE9qYzxZdVjC3GcCtFl8QgcvcQ4b/rF/Qp6/WL21X+qC1was04Ha+PuaQEvO5V0RuHCHk8bAJKaU4UI3T+5K9D7vmXDlRBpWPSqtmi2pCHtXx7EV2gpTMjeMt+aHoebULCoAT+D/H74SfvSaip0EmUz/OHHHnHEyYy1kT8+IMzZ2fPBPuQWUbBMzk4WguNYNL6brAXirWGNbp9AObLITHCo6IUCv059AhfxLOSPEdf1EyedyNyqQPyH2Pab8Y8/+fI8aDgepx8lCyOEubvrO/mjPLYU50AWRb9Y3KhWmLipw6QZdkmboKD3ds2VhvDVYUZwcECnSG6Os41YGHXgRHV6FPCz4DqT5wrR5oGgljYPVg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30766822-adb5-49f5-b93e-08d7fe6635af
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2020 15:38:43.9221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JjK1jzb5YdvqvSM5fosmGyeHv4N0bsvZ+s2RCnCrxL9d+d1/NW2edR2JctjADBgUwH3vmRedhTVTKQY+tt/KRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3904
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083851_217591_D98F8C2D 
X-CRM114-Status: GOOD (  21.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, linux-acpi@vger.kernel.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Marc Zyngier <maz@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/22/2020 5:02 PM, Rob Herring wrote:
> On Fri, May 22, 2020 at 3:42 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2020-05-22 00:10, Rob Herring wrote:
>>> On Thu, May 21, 2020 at 7:00 AM Lorenzo Pieralisi
>>> <lorenzo.pieralisi@arm.com> wrote:
>>>>
>>>> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>>>>
>>>> The existing bindings cannot be used to specify the relationship
>>>> between fsl-mc devices and GIC ITSes.
>>>>
>>>> Add a generic binding for mapping fsl-mc devices to GIC ITSes, using
>>>> msi-map property.
>>>>
>>>> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>> ---
>>>>   .../devicetree/bindings/misc/fsl,qoriq-mc.txt | 30 +++++++++++++++++--
>>>>   1 file changed, 27 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>>>> index 9134e9bcca56..b0813b2d0493 100644
>>>> --- a/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>>>> +++ b/Documentation/devicetree/bindings/misc/fsl,qoriq-mc.txt
>>>> @@ -18,9 +18,9 @@ same hardware "isolation context" and a 10-bit value called an ICID
>>>>   the requester.
>>>>
>>>>   The generic 'iommus' property is insufficient to describe the relationship
>>>> -between ICIDs and IOMMUs, so an iommu-map property is used to define
>>>> -the set of possible ICIDs under a root DPRC and how they map to
>>>> -an IOMMU.
>>>> +between ICIDs and IOMMUs, so the iommu-map and msi-map properties are used
>>>> +to define the set of possible ICIDs under a root DPRC and how they map to
>>>> +an IOMMU and a GIC ITS respectively.
>>>>
>>>>   For generic IOMMU bindings, see
>>>>   Documentation/devicetree/bindings/iommu/iommu.txt.
>>>> @@ -28,6 +28,9 @@ Documentation/devicetree/bindings/iommu/iommu.txt.
>>>>   For arm-smmu binding, see:
>>>>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml.
>>>>
>>>> +For GICv3 and GIC ITS bindings, see:
>>>> +Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml.
>>>> +
>>>>   Required properties:
>>>>
>>>>       - compatible
>>>> @@ -119,6 +122,15 @@ Optional properties:
>>>>     associated with the listed IOMMU, with the iommu-specifier
>>>>     (i - icid-base + iommu-base).
>>>>
>>>> +- msi-map: Maps an ICID to a GIC ITS and associated iommu-specifier
>>>> +  data.
>>>> +
>>>> +  The property is an arbitrary number of tuples of
>>>> +  (icid-base,iommu,iommu-base,length).
>>>
>>> I'm confused because the example has GIC ITS phandle, not an IOMMU.
>>>
>>> What is an iommu-base?
>>
>> Right, I was already halfway through writing a reply to say that all the
>> copy-pasted "iommu" references here should be using the terminology from
>> the pci-msi.txt binding instead.
>>
>>>> +
>>>> +  Any ICID in the interval [icid-base, icid-base + length) is
>>>> +  associated with the listed GIC ITS, with the iommu-specifier
>>>> +  (i - icid-base + iommu-base).
>>>>   Example:
>>>>
>>>>           smmu: iommu@5000000 {
>>>> @@ -128,6 +140,16 @@ Example:
>>>>                  ...
>>>>           };
>>>>
>>>> +       gic: interrupt-controller@6000000 {
>>>> +               compatible = "arm,gic-v3";
>>>> +               ...
>>>> +               its: gic-its@6020000 {
>>>> +                       compatible = "arm,gic-v3-its";
>>>> +                       msi-controller;
>>>> +                       ...
>>>> +               };
>>>> +       };
>>>> +
>>>>           fsl_mc: fsl-mc@80c000000 {
>>>>                   compatible = "fsl,qoriq-mc";
>>>>                   reg = <0x00000008 0x0c000000 0 0x40>,    /* MC portal base */
>>>> @@ -135,6 +157,8 @@ Example:
>>>>                   msi-parent = <&its>;
>>
>> Side note: is it right to keep msi-parent here? It rather implies that
>> the MC itself has a 'native' Device ID rather than an ICID, which I
>> believe is not strictly true. Plus it's extra-confusing that it doesn't
>> specify an ID either way, since that makes it look like the legacy PCI
>> case that gets treated implicitly as an identity msi-map, which makes no
>> sense at all to combine with an actual msi-map.
> 
> No, it doesn't make sense from a binding perspective.
> 
>>
>>>>                   /* define map for ICIDs 23-64 */
>>>>                   iommu-map = <23 &smmu 23 41>;
>>>> +                /* define msi map for ICIDs 23-64 */
>>>> +                msi-map = <23 &its 23 41>;
>>>
>>> Seeing 23 twice is odd. The numbers to the right of 'its' should be an
>>> ITS number space.
>>
>> On about 99% of systems the values in the SMMU Stream ID and ITS Device
>> ID spaces are going to be the same. Nobody's going to bother carrying
>> *two* sets of sideband data across the interconnect if they don't have to ;)
> 
> I'm referring to the 23 on the left and right, not between the msi and
> iommu. If the left and right are the same, then what are we remapping
> exactly?
> 

I also insisted a lot on keeping things simple and don't do any kind of
translation but Robin convinced me that this is not such a great idea.
The truth is that the hardware can be configured in such a way that the
assumption that icid -> streamid mapping is 1:1 no longer holds.
It just happens that we currently setup the hw to have 1:1 mappings.

P.S. No idea why, but somehow I got dropped from the thread. Weird.

---
Best Regards, Laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
