Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A852E130C00
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 03:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2nJ4X/dSpL3W8Xkabvf62Ix+7Lvvgr/u6wSaw7xTDE=; b=Ot48Ssk2h1I1gr
	uVdcPLHkR4GW67uP2H9j+IeZvS0KlBwlOkOXgdsf9yfaP1KAXZm/kmcwbfI+cQa4fdjD/wjj3kjlE
	/+3s3e+HuF5n6COyoN78Z5RvEiNIlvW4i8Qgi2EqDBCJCt9InSQO5BwCREpz92vBuI/ZirbeZctry
	6N1QLAmGDp9/XoUK6UdaeEGAHzJIT+fofdoKs7GSMH8fnjifyKav4+3ZZ/uhdy1ngTPCT1bQZbdIK
	NGxzz04n16ihrDEFhYCwq3uxB1sbq31Ra0WIFPGGR4ul1Kxtchan01O9ad0q/UQrO78W6btSZiQQy
	uMyA2/8iiE2vD5BJcRGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioHrS-000222-PA; Mon, 06 Jan 2020 02:11:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioHrL-00020v-Lc; Mon, 06 Jan 2020 02:11:13 +0000
X-UUID: d3f74d6ed74740bf9d5449013efe43e5-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=IFuraZzF877J9vJnN3oKRmiXLPR+UaYNdb3VQPcAbDo=; 
 b=gdmqaXuKYaoGGuPF3ser2AMo21j8w2Ooty0o/bWUH96XG5skMx24dEOGupWUnViBJDfumpNjgxotmED66lZzu9vStFb+xmbISY1KIy2ynZbyOQ5u8Mi/gb/L0zbT3zLXvDFo4demEG56exgjHGhL4CRPlaJkJdJ/jK8V9557tco=;
X-UUID: d3f74d6ed74740bf9d5449013efe43e5-20200105
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 174229578; Sun, 05 Jan 2020 18:11:00 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:10:59 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 6 Jan 2020 10:10:22 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 Jan 2020 10:09:53 +0800
Message-ID: <1578276653.21256.12.camel@mhfsdcap03>
Subject: Re: [PATCH v2 1/2] phy: mediatek: Fix Kconfig indentation
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 6 Jan 2020 10:10:53 +0800
In-Reply-To: <20200103164710.4829-1-krzk@kernel.org>
References: <20200103164710.4829-1-krzk@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 575598EFCB39BFB786417D543F5955B08556C0148A1349B2183C94FEB2DA7FA32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_181111_714584_138CE448 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-01-03 at 17:47 +0100, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. None
> ---
>  drivers/phy/mediatek/Kconfig | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
> index 376f5d189da0..7d19134c6b7c 100644
> --- a/drivers/phy/mediatek/Kconfig
> +++ b/drivers/phy/mediatek/Kconfig
> @@ -3,12 +3,12 @@
>  # Phy drivers for Mediatek devices
>  #
>  config PHY_MTK_TPHY
> -    tristate "MediaTek T-PHY Driver"
> -    depends on ARCH_MEDIATEK && OF
> -    select GENERIC_PHY
> -    help
> -      Say 'Y' here to add support for MediaTek T-PHY driver,
> -      it supports multiple usb2.0, usb3.0 ports, PCIe and
> +	tristate "MediaTek T-PHY Driver"
> +	depends on ARCH_MEDIATEK && OF
> +	select GENERIC_PHY
> +	help
> +	  Say 'Y' here to add support for MediaTek T-PHY driver,
> +	  it supports multiple usb2.0, usb3.0 ports, PCIe and
>  	  SATA, and meanwhile supports two version T-PHY which have
>  	  different banks layout, the T-PHY with shared banks between
>  	  multi-ports is first version, otherwise is second veriosn,
> @@ -25,10 +25,10 @@ config PHY_MTK_UFS
>  	  specified M-PHYs.
>  
>  config PHY_MTK_XSPHY
> -    tristate "MediaTek XS-PHY Driver"
> -    depends on ARCH_MEDIATEK && OF
> -    select GENERIC_PHY
> -    help
> +	tristate "MediaTek XS-PHY Driver"
> +	depends on ARCH_MEDIATEK && OF
> +	select GENERIC_PHY
> +	help
>  	  Enable this to support the SuperSpeedPlus XS-PHY transceiver for
>  	  USB3.1 GEN2 controllers on MediaTek chips. The driver supports
>  	  multiple USB2.0, USB3.1 GEN2 ports.


Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
