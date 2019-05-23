Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7C027E44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7kJkS1y32YbBSTJWR7Q8+zBZ2v3EJKa3Q3vBmCDpR2A=; b=SdpI8mt6PJP+k4SfMa7xTVpbG
	1hTEUkkVvM9soyH/Oso2PSfBfZ5T3hqFa/ENHAVBgYfvjgppS15Olpkm4rCA0S5/v+2/cZRVwTCW9
	y5bU25I7hp++mTjIB1fFJE5H7h7Iv5f9yF1IoqLcGCVgjxHvGULP1CJATTjDjQ8Hm+FxMmTAQ8qGT
	7N1gaowoFX96ZY93UfYG9lmTZe45uS9hMrIc8tqAOQyPHBtfonYqd1bDXamXlE6wnRIDvj4T0QUXr
	yOmAJyw7NgFTgsrwN1ZC/sgycKbpE05l4hj5pqqORsnD5dCaUdEVDNMaGg9z18xspEFDXxYx7IQRz
	bar5seDvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnv6-0004AQ-O6; Thu, 23 May 2019 13:38:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnv0-00049h-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:38:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1649D80D;
 Thu, 23 May 2019 06:37:58 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C54A3F575;
 Thu, 23 May 2019 06:37:57 -0700 (PDT)
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
To: linux-arm-kernel@lists.infradead.org
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <b45be0f7-5573-23fb-90c1-9a8e4fc6a5e1@arm.com>
Date: Thu, 23 May 2019 14:37:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_063802_226768_FF0BBA86 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 22/05/2019 11:34, Suzuki K Poulose wrote:
> This series adds the support for CoreSight devices on ACPI based
> platforms. The device connections are encoded as _DSD graph property[0],
> with CoreSight specific extensions to indicate the direction of data
> flow as described in [1]. Components attached to CPUs are listed
> as child devices of the corresponding CPU, removing explicit links
> to the CPU like we do in the DT.
> 
> The majority of the series cleans up the driver and prepares the subsystem
> for platform agnostic firwmare probing, naming scheme, searching etc.
> 
> We introduce platform independent helpers to parse the platform supplied
> information. Thus we rename the platform handling code from:
> 	of_coresight.c  => coresight-platform.c
> 
> The CoreSight driver creates shadow devices that appear on the Coresight
> bus, in addition to the real devices (e.g, AMBA bus devices). The name
> of these devices match the real device. This makes the device name
> a bit cryptic for ACPI platform. So this series also introduces a generic
> platform agnostic device naming scheme for the shadow Coresight devices.
> Towards this we also make changes to the way we lookup devices to resolve
> the connections, as we can't use the names to identify the devices. So,
> we use the "fwnode_handle" of the real device for the device lookups.
> Towards that we clean up the drivers to keep track of the "CoreSight"
> device rather than the "real" device. However, all real operations,
> like DMA allocation, Power management etc. must be performed on
> the real device which is the parent of the shadow device.
> 
> Finally we add the support for parsing the ACPI platform data. The power
> management support is missing in the ACPI (and this is not specific to
> CoreSight). The firmware must ensure that the respective power domains
> are turned on.
> 
> Applies on v5.2-rc1
> 
> Tested on a Juno-r0 board with ACPI bindings patch (Patch 31/30) added on
> top of [2]. You would need to make sure that the debug power domain is
> turned on before the Linux kernel boots. (e.g, connect the DS-5 to the
> Juno board while at UEFI). arm32 code is only compile tested.
> 
> [0] ACPI Device Graphs using _DSD (Not available online yet, approved but
>      awaiting publish and eventually should be linked at).
>      https://uefi.org/sites/default/files/resources/_DSD-implementation-guide-toplevel-1_1.htm
> [1] https://developer.arm.com/docs/den0067/latest/acpi-for-coresighttm-10-platform-design-document
> [2] https://github.com/tianocore/edk2-platforms.git

The kernel patches are also available at :

git://linux-arm.org/linux-skp.git coresight-acpi/v4

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
