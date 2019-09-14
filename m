Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E55EB2CB2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 21:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xmlgyFIN1FGxU7tdhZAOvYwyBRgopQcb4rjh34YveI=; b=B0lh7zWGLlpQi8
	C/XDDZzDCX75h4i8tfSScWwPAUVeMVrPDcpVmk0QV5r10i77A4U+HryJlOZ5CbIYPCz/8BI6HAerm
	LvJjp01kFJ+QO849YmUDNmDi5U0gj+yX/810vePHMrmsrDOtg0TLmDfSv6XGdvd5/+CZqk5+pXrRw
	SDAGLKvGw6WMtt295yo5hMhvK85pfqfQS1ddGe2ro9GyUWIg6js76SL50qHla+mhC+EURCErKxeyG
	KDN1YduLRDI9iEMBAqYS3nSmInvTK+abkhK7Bo7LfODuEhjqHsd5JKElymrKAJ+QHAv76UArT75O8
	+6pARc3xoLUIk0w4EzVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9DmU-00064a-Ap; Sat, 14 Sep 2019 19:32:26 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9DmG-000644-CB
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 19:32:13 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oW5LYTzx9aHQrEJoXyCr+VTZ7OWOhkV996jUWnEAAKCHr/jTdKs2BEWrZ/PAZFK5bmuV2i//PJ
 x62mB0xMCV1T03Mdv3IA3IfJjZ6HAY0LDSYzrMJCMBB4i7fYt4Dk8vcGsYga4IP82Ri4eNaW9/
 oPevkgVK4m3pSkw8lYavj9KllDwbRFjLbA+24wiAyrl6tiTglvu/saZqQFiIVa9XrDUGPuYpju
 vDsHjQjg82qk43hd6NgdB5O9EMDOFAK/WDNG4PDgAQ8qJOxtnxl2Xqi61Ng/WbyICRgxbBg3DZ
 y9w=
X-IronPort-AV: E=Sophos;i="5.64,506,1559545200"; d="scan'208";a="48928776"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Sep 2019 12:32:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 14 Sep 2019 12:32:09 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sat, 14 Sep 2019 12:32:09 -0700
Date: Sat, 14 Sep 2019 21:32:08 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Message-ID: <20190914193208.ranoecmdcstvbapl@sekiro>
Mail-Followup-To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "peda@axentia.se" <peda@axentia.se>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_123212_449580_4AF01056 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 10:24:14AM +0200, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Hello,
> 
> This series adds support for analog and digital filters for i2c controllers
> 
> This series is based on the series:
> [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
> and later
> [PATCH v4 0/9] i2c: add support for filters
> and enhanced to add the bindings for all controllers plus an extra bindings
> for the width of the spikes in nanoseconds (digital filters) and cut-off
> frequency (analog filters)
> 
> First, bindings are created for
> 'i2c-analog-filter'
> 'i2c-digital-filter'
> 'i2c-digital-filter-width-ns'
> 'i2c-analog-filter-cutoff-frequency'
> 
> The support is added in the i2c core to retrieve filter width/cutoff frequency
> and add it to the timings structure.
> Next, the at91 driver is enhanced for supporting digital filter, advanced
> digital filter (with selectable spike width) and the analog filter.
> 
> Finally the device tree for two boards are modified to make use of the
> new properties.
> 
> This series is the result of the comments on the ML in the direction
> requested: to make the bindings globally available for i2c drivers.
> 
> Changes in v5:
> - renamed i2c-filter-width-ns to i2c-digital-filter-width-ns as this
> is applicable only to digital filter
> - created new binding i2c-digital-filter-width-ns for analog filters.

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

for at91 stuff. You can keep it for the future if needed as long as
changes mainly concerned the generic binding.

Regards

Ludovic

> 
> Changes in v4:
> - renamed i2c-ana-filter to i2c-analog-filter
> - renamed i2c-dig-filter to i2c-digital-filter
> 
> Changes in v3:
> - made bindings global for i2c controllers and modified accordingly
> - gave up PADFCDF bit because it's a lack in datasheet
> - the computation on the width of the spike is based on periph clock as it
> is done for hold time.
> 
> Changes in v2:
> - added device tree bindings and support for enable-ana-filt and
> enable-dig-filt
> - added the new properties to the DT for sama5d4_xplained/sama5d2_xplained
> 
> Eugen Hristev (9):
>   dt-bindings: i2c: at91: add new compatible
>   dt-bindings: i2c: add bindings for i2c analog and digital filter
>   i2c: add support for filters optional properties
>   i2c: at91: add new platform support for sam9x60
>   i2c: at91: add support for digital filtering
>   i2c: at91: add support for advanced digital filtering
>   i2c: at91: add support for analog filtering
>   ARM: dts: at91: sama5d2_xplained: add analog and digital filter for
>     i2c
>   ARM: dts: at91: sama5d4_xplained: add digital filter for i2c
> 
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt |  3 +-
>  Documentation/devicetree/bindings/i2c/i2c.txt      | 18 ++++++++
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts        |  6 +++
>  arch/arm/boot/dts/at91-sama5d4_xplained.dts        |  1 +
>  drivers/i2c/busses/i2c-at91-core.c                 | 38 +++++++++++++++++
>  drivers/i2c/busses/i2c-at91-master.c               | 49 ++++++++++++++++++++--
>  drivers/i2c/busses/i2c-at91.h                      | 13 ++++++
>  drivers/i2c/i2c-core-base.c                        |  6 +++
>  include/linux/i2c.h                                |  6 +++
>  9 files changed, 136 insertions(+), 4 deletions(-)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
