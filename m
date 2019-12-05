Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4078E114944
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 23:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTAamj/mHlMQ594+HkMWJyvFt8l1xzwtTdAH4+MHWoE=; b=b1eD70cBEl5/z+
	4KtEpXseGi38dzv/DyPRYf9JxwBPIhNvtRdmfQBDAdsQcBwgdceAzz233JPfFXxk/g1Scs5pkTdTe
	uuuJCvrALb5vjuJB6rf0PtIvL3qju+Q3wZi4+UkmqO4QyH74XMfPsyYsAWm8In6jY8Pj6lkgNTHx8
	aGanfFrksl6T3tpOQNX7YrLD6b3sk43z0nBWbe9JvR5aKy4ICqyBCUrcNcvwbV16teL51s1Yh6mvx
	tZYQMZBHS6gxAlsYPbLuajpUT2vSWbZwBGA6/95Tzs8pFspJ9VsGCffNZReY14cLnHyatLCCDD53D
	M/d2TCBGTKL8uOSxDKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iczdg-00070L-Ij; Thu, 05 Dec 2019 22:30:24 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iczdX-0006qO-Kk
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 22:30:17 +0000
Received: from [2a01:e35:2fdd:a4e1:fe91:fc89:bc43:b814] (helo=ohm.rr44.fr)
 by hall.aurel32.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <aurelien@aurel32.net>)
 id 1iczdF-0004M3-RF; Thu, 05 Dec 2019 23:29:57 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.92.3)
 (envelope-from <aurelien@aurel32.net>)
 id 1iczdE-00114c-0g; Thu, 05 Dec 2019 23:29:56 +0100
Date: Thu, 5 Dec 2019 23:29:56 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 0/5] USB support on stm32mp157 boards
Message-ID: <20191205222956.GA240447@aurel32.net>
Mail-Followup-To: Amelie Delaunay <amelie.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191121161152.25541-1-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121161152.25541-1-amelie.delaunay@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_143015_681682_6C63CCB1 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:bc8:30d7:100:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Olof Johansson <olof@lixom.net>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-21 17:11, Amelie Delaunay wrote:
> This patchset adds support for USB (Host and OTG) on stm32mp157a-dk1.
> USB OTG HS is forced in Peripheral mode.
> This patchset also fixes USB on stm32mp157c-ev1: USB PHYS supplies were missing
> (CONFIG_REGULATOR_STM32_PWR) and usbotg_hs node requires phy-names property to
> get the phy.
> 
> Amelie Delaunay (5):
>   ARM: multi_v7_defconfig: enable STM32 PWR regulator
>   ARM: dts: stm32: enable USBPHYC on stm32mp157a-dk1
>   ARM: dts: stm32: enable USB Host (USBH) EHCI controller on
>     stm32mp157a-dk1
>   ARM: dts: stm32: enable USB OTG HS on stm32mp157a-dk1
>   ARM: dts: stm32: add phy-names to usbotg_hs on stm32mp157c-ev1
> 
>  arch/arm/boot/dts/stm32mp157a-dk1.dts | 28 +++++++++++++++++++++++++++
>  arch/arm/boot/dts/stm32mp157c-ev1.dts |  1 +
>  arch/arm/configs/multi_v7_defconfig   |  1 +
>  3 files changed, 30 insertions(+)

I tested the series on a stm32mp157c-dk2.

Tested-by: Aurelien Jarno <aurelien@aurel32.net>

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
