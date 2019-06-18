Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE574A437
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YBqBuDAEGJ3+CQKWT7wOs9/bxOy08ykHBufXIPie93A=; b=mDrh0/ny96JCgB0mdsZjfmxn+
	XkU69utFtZYkyd92AlnFHSEOyRBD5Okt9uDUH2e8IX6LQa14MAwh1yNZyOyZY+K1HUfeYtzp/9Vuk
	IPMak/SkBWfF/sKKWKbDcg9bRL0YuC0XfCXOueJeoSSMfzzzof0DfVIXO3mrSXecAlwHJYitFLUMr
	prd+77ilOvU26CLO1+Kuru/RiEEHLop29QNohrO3T7zK1+N2OAWzLm65U0Q1VIpwvglQwbIuLJJmw
	J/NEaXI0a+fuy+0LL/1baPwzDT73TFhArZc+CM+nN/ZMgfG26h2Qy7N/e//a3JvVU1AsqK4aPEK53
	uondRYD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFJd-0008J1-PW; Tue, 18 Jun 2019 14:42:29 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFJQ-0008If-73
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:42:17 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEg1QA118051;
 Tue, 18 Jun 2019 09:42:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560868921;
 bh=fHHIeoL6WrP+o42wBxL4d1KUkoVV62hUdcAiyBMH/XQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gLGf7oP07AkblPP3ulwC9txJLKLwro1GDBXcIVluar7oyAlsYELqfH51VIgbo5Ppo
 pO9S5r8OxfbKyjo1O+AUbknfIBdXie09X2HJYSUAUERgI52PzVI/6dGwob19QEGfVX
 AN1BHbhjFQQt+1uphJfMnaKr9+TeuvKRbAVNV83Y=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEg1d2096318
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 09:42:01 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:42:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:42:00 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEfvLs105464;
 Tue, 18 Jun 2019 09:41:57 -0500
Subject: Re: [PATCH 0/6] arm64: Initial support Texas Instrument's J721E
 Platform
To: Nishanth Menon <nm@ti.com>, Arnd Bergmann <arnd@arndb.de>, Olof Johansson
 <olof@lixom.net>, Santosh Shilimkar <ssantosh@kernel.org>, Will Deacon
 <will.deacon@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Mark Rutland
 <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>
References: <20190522161921.20750-1-nm@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <6ae8cfc9-5bf0-14ec-109f-bafbf2cb7eac@ti.com>
Date: Tue, 18 Jun 2019 17:41:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522161921.20750-1-nm@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_074216_338858_CA38188D 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

On 22/05/2019 19:19, Nishanth Menon wrote:
> Hi,
> 
> This series adds support for the latest new SoC, J721E, from Texas Instruments.
> 
> The series is an based off v5.2-rc1 and has the following driver
> dependencies for a successful boot:
> 1.  https://lore.kernel.org/lkml/20190429131533.25122-1-afd@ti.com (for newer firmware)
> 2.  https://lore.kernel.org/linux-arm-kernel/1555093342-428-1-git-send-email-t-kristo@ti.com/
>      - Clock IDs cannot be guarenteed to be sequential, has to be
>        discovered from hardware description in dts
>      - Clock IDs on this massive chip also exceeds 255, so, the support
>        for the same is expected in follow on patches.
> 
> The full series is available here (including dependencies):
> https://github.com/nmenon/linux-2.6-playground/commits/upstream/v5.2-rc1/j7es-base-v1
> 
> Boot Log: https://pastebin.ubuntu.com/p/j3NtfF8FQr/
> 
> NOTE:
>   - If Greg is ok, we can pick up the uart compatibility via the k3 tree,
>     else, I can spawn it off the series.

Assuming here that Greg is ok with me picking up patch #2.

>   - I will resubmit patch 6 (defconfig update) separately once again once
>     patches 1-5 hit the next tree or for 5.3-rc2 which ever is convenient.
> 

Seems it should be possible just to queue up everything, no need to 
repost stuff.

That said, queuing the whole series towards 5.3 with the mentioned fixes.

-Tero

> The J721E SoC belongs to the K3 Multicore SoC architecture platform
> for automotive applications such as infotainment, cluster, premium
> Audio, Gateway, industrial and a range of broad market applications.
> This SoC is designed around reducing the system cost by eliminating
> the need of an external system MCU and is targeted towards ASIL-B/C
> certification/requirements in addition to allowing complex software
> and system use-cases.
> 
> The Linux development follows AM654 in most of the configurations, but
> adds new capabilities (details in follow on patches).
> 
> See J721E Technical Reference Manual (SPRUIL1, May 2019)
> for further details: http://www.ti.com/lit/pdf/spruil1
> 
> Nishanth Menon (6):
>    dt-bindings: arm: ti: Add bindings for J721E SoC
>    dt-bindings: serial: 8250_omap: Add compatible for J721E UART
>      controller
>    arm64: dts: ti: Add Support for J721E SoC
>    soc: ti: Add Support for J721E SoC config option
>    arm64: dts: ti: Add support for J721E Common Processor Board
>    arm64: defconfig: Enable TI's J721E SoC platform
> 
>   .../devicetree/bindings/arm/ti/k3.txt         |   3 +
>   .../bindings/serial/omap_serial.txt           |   1 +
>   arch/arm64/boot/dts/ti/Makefile               |   2 +
>   .../dts/ti/k3-j721e-common-proc-board.dts     |  50 +++++
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 202 ++++++++++++++++++
>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  72 +++++++
>   arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   |  29 +++
>   arch/arm64/boot/dts/ti/k3-j721e.dtsi          | 176 +++++++++++++++
>   arch/arm64/configs/defconfig                  |   1 +
>   drivers/soc/ti/Kconfig                        |   5 +
>   10 files changed, 541 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721e.dtsi
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
