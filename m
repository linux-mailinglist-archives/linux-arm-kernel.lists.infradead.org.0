Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FD6197FAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 17:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N7o1enAdwc0MvaoSiN7eX8eaYgwG6JaESZLsAie+EGU=; b=Xb4ZF5Dhs5hUaUf4lWfA/EQJI
	eB0xwUqfR5avBcVvesDuomXy/a46WvFCMwcYfztn7CU/orPX4eXR42pcSPRveo8IqXaE4CiDrGWS6
	S0FENGFg6ap6MLj/KaF52+caj2NuWd0msap/8i4/niwK22fp4dd3EqXiDwcvzoId4KKdgCT6Fasgz
	BRhe4R9oQgh7BDUKojbmsu47xyPdC++/vQ5FaRYBWhzCEe5zJlpq7m9h62W9fGPi/m4AI5r+IUr0W
	Q3vF5UxbJ+/GUS+MphHQSUF/4ynB5Jx2u6XHCpVnwkb5x5mmfsxyl38R8Hk9XOPJtyRg2ldMCaubd
	WGw1aqTUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIwPg-00062c-0Y; Mon, 30 Mar 2020 15:33:20 +0000
Received: from mail-am6eur05on2068.outbound.protection.outlook.com
 ([40.107.22.68] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIwPW-0005rd-FG
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 15:33:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GuF1YpIClzBRooLd0w2t5brlvaZY6mp1mp+fDhnuF4A+hC4oRfr/87NOjDmS7cX71QDNrnbGWeWoXG9DC0Gy/dKLpPlNR5Bxl9pL0b0PJVrOcU4vA2ms6VgY0NK1oiO5I6zNF9AbwEuBzUfOHlBtfKfUqCeSQvj/zBGEORNp6n8tSS2DmDwWQTtxiWbC3mTsFYHK3uyO/7JPM7Nwj9asneg6lj6/MUrxDNO53KS+p8jMKws5A6DuKprA4PapX8+QAr3LvQ2JgNcdFVSJYI/GtY1gV1QrOWrBhsN7dFEWdLM19ecb8iy0C6UW+UlxQ/2x6YBoi/ONz2C0iqptFoTYhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoITmax99CDU8wUZqZXrSXofThQs1ZjlzTqxNvmQNng=;
 b=CWjJujsfwv3qbq/xIwlwqwAZro3mGUY8szcOHwU6509nekwymdrLtwKAGgygpgRV2Yx467edrzfc9LQkl8krfwfyIOK9Fek5ItLoea8cBMw1opXjwykyn5NLL6oIwJ+bz4y8mlh592EX3sCNtlbzZUsTXorji7rCMnICQWKzoizf1EI2kuQclKX/mPnLXQloM4TVup2JVSeL4UoL8lfeHCTsWp80ob/vzH3v9giUAn1qjRb6FvFhsn95UKJk9ttLDTlHsIwj4XZFc5/syxJYfzG+9l7dfPKXwsFXSywo1QmIc5a4QbUzBlmlyLj785MkFOx24aborq5tCAdRrD4mng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoITmax99CDU8wUZqZXrSXofThQs1ZjlzTqxNvmQNng=;
 b=KMzUp6mT4QJ3nNWhSDgEwKzR1hMUIkSBpJZojGuWfN4fm77VFpEdEAuaXcyKv+PoRyORb2osbpO5s+Z44CtfNKp8FSMDoAKLSCGIP0DmJikAzQz36FFYF8F2QN/vYdKQtDxNGVtGYTNz2VuU6K/tZNNN7R8eHc4JZqW74+7wR30=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=diana.craciun@oss.nxp.com; 
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com (10.172.255.144) by
 VI1PR0402MB2749.eurprd04.prod.outlook.com (10.175.23.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Mon, 30 Mar 2020 15:33:04 +0000
Received: from VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::24fb:6b3f:f0e6:bd9a]) by VI1PR0402MB2815.eurprd04.prod.outlook.com
 ([fe80::24fb:6b3f:f0e6:bd9a%8]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 15:33:04 +0000
Subject: Re: [PATCH 0/9] vfio/fsl-mc: VFIO support for FSL-MC devices
To: Alex Williamson <alex.williamson@redhat.com>
References: <20200323171911.27178-1-diana.craciun@oss.nxp.com>
 <20200327151142.79dd2554@w520.home>
From: Diana Craciun OSS <diana.craciun@oss.nxp.com>
Message-ID: <6d5c2028-1c6a-05ec-ec71-0de1887eb772@oss.nxp.com>
Date: Mon, 30 Mar 2020 18:32:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <20200327151142.79dd2554@w520.home>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0051.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:e6::28) To VI1PR0402MB2815.eurprd04.prod.outlook.com
 (2603:10a6:800:ae::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.122] (86.127.44.112) by
 AM0PR01CA0051.eurprd01.prod.exchangelabs.com (2603:10a6:208:e6::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Mon, 30 Mar 2020 15:33:02 +0000
X-Originating-IP: [86.127.44.112]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3ab1e5e5-dfe2-4fbe-0c81-08d7d4bfa2eb
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2749:|VI1PR0402MB2749:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB2749332E3C239EF059C242CBBECB0@VI1PR0402MB2749.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0358535363
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB2815.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(316002)(6486002)(81156014)(81166006)(8676002)(6916009)(8936002)(478600001)(16576012)(16526019)(2616005)(956004)(26005)(186003)(52116002)(66476007)(66946007)(66556008)(2906002)(31686004)(5660300002)(86362001)(966005)(31696002)(53546011)(4326008);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QR0BuceKNTKLhZZwjrmSBUIQW3pE6N936Mnz6RcprJ6tZ2J688L05n8mhndFm5jWF67Fw1EQLvvWXHh6UD2ZYYhq/Jw0FZYdlj7dBekVezP3sEdSMiO5GFKXiM8U+SVKqaa0q0X2SNRk+p0Sp41ImV6NmOCsyFWzfpUg+UdLoaz02X+E9thu19MTh253MWhYS9rNB06H/gLY7HFEy+R53v9VPGBxGdl2mNHCGvgMgSWMYdNvBKt105JuRanzbaS9f/AyLfEGKn/dr+KrVfBm7ddQoUxv2Mjg0EEuWzXeJoVv66IRm8SoF/vwJJSX7rFw66or0Pzz7IMfYAFPfiTmGWu5nrElnGaciLCQr/CaF0qqzCNTxtn5g2f3CUHf9t4LKqHU1VaRMLK4OiOU1w4uL+M5ewep2T3PJNrEgMXDlEkSlrRXgvc2FuFIFjwVQqoV3nbZiHITvIsCVVzOlkiMqlloD7NLgcVTnGMI7KECJzNvjgifZwA9aq0F5cwLVb3WvfQ9iFc0lBXA029tGX1/1g==
X-MS-Exchange-AntiSpam-MessageData: wVNFF+inTrAOPbyEPirUatszdxjPmVQpVTzrtWcafDUd8wFXrhkhzhVISB0lvlcUQv3kez4YIFw6sLSe+jqLxesBcDXbT+sxbzvFjL+/1Vp88kYWFMqna4JJqq6+Jav/K/3xsruI9t3GbzsgjOiM7Q==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ab1e5e5-dfe2-4fbe-0c81-08d7d4bfa2eb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 15:33:04.2215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GRn7x8Iy5XrkHZzq8K+c5JFnLzFEnzkuUDdCLNSK/qfWC9Cprtwq9i6rVkWkYBvE8SrbP6BCVfAk0PYTuAy+lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2749
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_083310_574730_3F67E2AA 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.68 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, bharatb.yadav@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 laurentiu.tudor@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for looking into this.

On 3/27/2020 11:11 PM, Alex Williamson wrote:
> On Mon, 23 Mar 2020 19:19:02 +0200
> Diana Craciun <diana.craciun@oss.nxp.com> wrote:
>
>> DPAA2 (Data Path Acceleration Architecture) consists in
>> mechanisms for processing Ethernet packets, queue management,
>> accelerators, etc.
>>
>> The Management Complex (mc) is a hardware entity that manages the DPAA2
>> hardware resources. It provides an object-based abstraction for software
>> drivers to use the DPAA2 hardware. The MC mediates operations such as
>> create, discover, destroy of DPAA2 objects.
>> The MC provides memory-mapped I/O command interfaces (MC portals) which
>> DPAA2 software drivers use to operate on DPAA2 objects.
>>
>> A DPRC is a container object that holds other types of DPAA2 objects.
>> Each object in the DPRC is a Linux device and bound to a driver.
>> The MC-bus driver is a platform driver (different from PCI or platform
>> bus). The DPRC driver does runtime management of a bus instance. It
>> performs the initial scan of the DPRC and handles changes in the DPRC
>> configuration (adding/removing objects).
>>
>> All objects inside a container share the same hardware isolation
>> context, meaning that only an entire DPRC can be assigned to
>> a virtual machine.
>> When a container is assigned to a virtual machine, all the objects
>> within that container are assigned to that virtual machine.
>> The DPRC container assigned to the virtual machine is not allowed
>> to change contents (add/remove objects) by the guest. The restriction
>> is set by the host and enforced by the mc hardware.
>>
>> The DPAA2 objects can be directly assigned to the guest. However
>> the MC portals (the memory mapped command interface to the MC) need
>> to be emulated because there are commands that configure the
>> interrupts and the isolation IDs which are virtual in the guest.
>>
>> Example:
>> echo vfio-fsl-mc > /sys/bus/fsl-mc/devices/dprc.2/driver_override
>> echo dprc.2 > /sys/bus/fsl-mc/drivers/vfio-fsl-mc/bind
>>
>> The dprc.2 is bound to the VFIO driver and all the objects within
>> dprc.2 are going to be bound to the VFIO driver.
> What's the composition of the IOMMU group, does it start with the DPRC
> and each of the objects within the container are added to the same
> group as they're created?

Yes, the IOMMU group starts with the DPRC and the other objects are then 
added to that group.

>
> For an alternative to the driver_override mechanism used in this series
> of passing the override through various scan/create callbacks, you
> might consider something like I did for PCI SR-IOV:
>
> https://lore.kernel.org/lkml/158396395214.5601.11207416598267070486.stgit@gimli.home/
>
> ie. using the bus notifier to setup the driver_override before driver
> matching is done.  Thanks,

Thanks, I like your approach. I will give it a try.

Diana


>
> Alex
>
>> More details about the DPAA2 objects can be found here:
>> Documentation/networking/device_drivers/freescale/dpaa2/overview.rst
>>
>> The patches are dependent on some changes in the mc-bus (bus/fsl-mc)
>> driver. The changes were needed in order to re-use code and to export
>> some more functions that are needed by the VFIO driver.
>> Currenlty the mc-bus patches are under review:
>> https://www.spinics.net/lists/kernel/msg3447567.html
>>
>> Bharat Bhushan (1):
>>    vfio/fsl-mc: Add VFIO framework skeleton for fsl-mc devices
>>
>> Diana Craciun (8):
>>    vfio/fsl-mc: Scan DPRC objects on vfio-fsl-mc driver bind
>>    vfio/fsl-mc: Implement VFIO_DEVICE_GET_INFO ioctl
>>    vfio/fsl-mc: Implement VFIO_DEVICE_GET_REGION_INFO ioctl call
>>    vfio/fsl-mc: Allow userspace to MMAP fsl-mc device MMIO regions
>>    vfio/fsl-mc: Added lock support in preparation for interrupt handling
>>    vfio/fsl-mc: Add irq infrastructure for fsl-mc devices
>>    vfio/fsl-mc: trigger an interrupt via eventfd
>>    vfio/fsl-mc: Add read/write support for fsl-mc devices
>>
>>   MAINTAINERS                               |   6 +
>>   drivers/vfio/Kconfig                      |   1 +
>>   drivers/vfio/Makefile                     |   1 +
>>   drivers/vfio/fsl-mc/Kconfig               |   9 +
>>   drivers/vfio/fsl-mc/Makefile              |   4 +
>>   drivers/vfio/fsl-mc/vfio_fsl_mc.c         | 660 ++++++++++++++++++++++
>>   drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c    | 221 ++++++++
>>   drivers/vfio/fsl-mc/vfio_fsl_mc_private.h |  56 ++
>>   include/uapi/linux/vfio.h                 |   1 +
>>   9 files changed, 959 insertions(+)
>>   create mode 100644 drivers/vfio/fsl-mc/Kconfig
>>   create mode 100644 drivers/vfio/fsl-mc/Makefile
>>   create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc.c
>>   create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_intr.c
>>   create mode 100644 drivers/vfio/fsl-mc/vfio_fsl_mc_private.h
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
