Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683AE4A427
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hNj/VuSJgqVM7xPkLx5+3kNo8FnA2UntS5bF5ZiQvGk=; b=lJvRaFDMr0lnizo0cgeeaHW/r
	P2+jonm5fqGmMBxPQVlRXHPDRmDsofwkPsaztgYPSlB4ETquA/JuR1Di8eyUE208TVuSjjtVeHMDO
	7xcMRqvdFZZ4/xkLO/LpEYZWMMqp+qhChelHj5iTrMG9xycVn64WHa09p67ZqE448MEptGHdl0kBA
	pZ+4q3ibciNwZa/I9ytRRPI5XQ9xkYVz9ediEuNjl/uGpJBJYM/cdbsgiO9usC78FdXWCGHu36ABo
	NLxnN02uBoRoAfk8uXxl6HSi2d4qPgr6G8fK0cBcj1m87M0BAKFWQaxtyYtqrCGvi3BgI3WyYRDnf
	4SHOPSLrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFGo-00040C-Tl; Tue, 18 Jun 2019 14:39:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFGU-0003zN-1p
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:39:15 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEcuUj069345;
 Tue, 18 Jun 2019 09:38:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560868736;
 bh=rqfVhjWQ4OgEtWX4zDB2QW7U3AsflGprPp13jexG7N4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZCfZMXr6Od2g99jn6oGDr5zopNHEBfvdmb3+GnM2cuVGHOQ8UOE8Xf8Wx02TImJL8
 WSiUZ1YwwQikEITAubpxm07Ntgar4RMGQr0kxJOhQ5VIw1F9FEYnlt/Hc3LEUVZbpH
 ydGOIkOuNIAePONHW1XZass1EX8gfoCCnRYYJJkg=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEcugd014086
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 09:38:56 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:38:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:38:55 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEcpcb101103;
 Tue, 18 Jun 2019 09:38:52 -0500
Subject: Re: [PATCH 3/6] arm64: dts: ti: Add Support for J721E SoC
To: Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>, Arnd Bergmann
 <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Santosh Shilimkar
 <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>
References: <20190522161921.20750-1-nm@ti.com>
 <20190522161921.20750-4-nm@ti.com>
 <a786a889-7414-8cb9-7618-67fa1adf705d@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <665a246b-53ec-b10d-5fbb-840e950977a7@ti.com>
Date: Tue, 18 Jun 2019 17:38:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a786a889-7414-8cb9-7618-67fa1adf705d@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_073914_177373_7D6EBB58 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/06/2019 23:58, Suman Anna wrote:
> Hi Nishanth, Tero,
> 
> On 5/22/19 11:19 AM, Nishanth Menon wrote:
>> The J721E SoC belongs to the K3 Multicore SoC architecture platform,
>> providing advanced system integration to enable lower system costs
>> of automotive applications such as infotainment, cluster, premium
>> Audio, Gateway, industrial and a range of broad market applications.
>> This SoC is designed around reducing the system cost by eliminating
>> the need of an external system MCU and is targeted towards ASIL-B/C
>> certification/requirements in addition to allowing complex software
>> and system use-cases.
>>
>> Some highlights of this SoC are:
>> * Dual Cortex-A72s in a single cluster, three clusters of lockstep
>>    capable dual Cortex-R5F MCUs, Deep-learning Matrix Multiply Accelerator(MMA),
>>    C7x floating point Vector DSP, Two C66x floating point DSPs.
>> * 3D GPU PowerVR Rogue 8XE GE8430
>> * Vision Processing Accelerator (VPAC) with image signal processor and Depth
>>    and Motion Processing Accelerator (DMPAC)
>> * Two Gigabit Industrial Communication Subsystems (ICSSG), each with dual
>>    PRUs and dual RTUs
>> * Two CSI2.0 4L RX plus one CSI2.0 4L TX, one eDP/DP, One DSI Tx, and
>>    up to two DPI interfaces.
>> * Integrated Ethernet switch supporting up to a total of 8 external ports in
>>    addition to legacy Ethernet switch of up to 2 ports.
>> * System MMU (SMMU) Version 3.0 and advanced virtualisation
>>    capabilities.
>> * Upto 4 PCIe-GEN3 controllers, 2 USB3.0 Dual-role device subsystems,
>>    16 MCANs, 12 McASP, eMMC and SD, UFS, OSPI/HyperBus memory controller, QSPI,
>>    I3C and I2C, eCAP/eQEP, eHRPWM, MLB among other peripherals.
>> * Two hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
>>    management.
>> * Configurable L3 Cache and IO-coherent architecture with high data throughput
>>    capable distributed DMA architecture under NAVSS
>> * Centralized System Controller for Security, Power, and Resource
>>    Management (DMSC)
>>
>> See J721E Technical Reference Manual (SPRUIL1, May 2019)
>> for further details: http://www.ti.com/lit/pdf/spruil1
>>
>> Signed-off-by: Nishanth Menon <nm@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 202 ++++++++++++++++++
>>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  72 +++++++
>>   arch/arm64/boot/dts/ti/k3-j721e.dtsi          | 176 +++++++++++++++
>>   3 files changed, 450 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
>>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e.dtsi
>>

<snip>

>> +			 /* MCUSS_WKUP Range */
>> +			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
>> +			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
>> +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
>> +			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
>> +			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
>> +			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
>> +			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
>> +			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
>> +			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
>> +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
>> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>,
>> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>,
> 
> minor nit, can we have this MSMC RAM range line moved to before the
> MCUSS_WKUP comment since it doesn't belong to the MCUSS range. Perhaps
> can be fixed up while applying the patch.
> 
> Other than that, everything looks good.
> 
> Reviewed-by: Suman Anna <s-anna@ti.com>

Fixed this issue also locally, thanks.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
