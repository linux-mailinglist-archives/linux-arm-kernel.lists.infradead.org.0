Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382B86690E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 10:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlrdhRfHPjaoQ51fmSsHYuIgETqjHi0bGlMAofrM67w=; b=cFrAcawANDQB21
	NUWFdkb/My539oa8TKWeTQQJC0TGjvAAIyCzTW6MnI1sELLVcn8PHohHagtInY1WftObfxs+yVrEU
	SjvVlVWLPkP0ahXpCre50y7h+o3ZYf0Qrnd0AHLt5z6QeX2sl2V4/OUiM7AIF4n6VqtYaQv/PUsY7
	fqQFLgUoeYIzDU1YtJde2anAOzR+xZj4Ehp4oXb+8SAUZTRrGOWDNLEIqXHt11Bl58DOGCNYfgroT
	zdyWXnhL61VQCvAJjyMjFjRK0gsw+CvU8gE/kuRx+igOzeuftJwJTMkrTpmuBHGVf5q9E+sXvHed7
	3BLQPB2h1ljq2uVI4y+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqoa-00088N-S8; Fri, 12 Jul 2019 08:22:00 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqoM-000872-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 08:21:50 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 0nKJFzhFvuZ347cB/1iiOa0gusRvfdBglhNi2o0z9N/fIyHAPcTdgecYmTmIkYUI0QIejHKQnG
 +f+1HheYLXKArKACJuXk7O2Uhe86jslFjq2mI57IY0bNjUxlg1tw2eCrM5ZmUUcF5ccyiU5giF
 gmrGI4Ne4wsOcSl9iMxQ9cRI+UaJ7jEMD+4oxeIVy+JBNiGrVxRQSwpBrRpKH6To1dDo9+3TFP
 ehkXFDSs9lCGlYq9Tf260yBnuier1zs8uLlkU4Z/LtPRITUYb3LuxVU0QLiupiyuj27Vkfr6wz
 tf8=
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="41053477"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jul 2019 01:21:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex04.mchp-main.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 12 Jul 2019 01:21:33 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 12 Jul 2019 01:21:31 -0700
Date: Fri, 12 Jul 2019 10:20:44 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v3 0/9] i2c: add support for filters
Message-ID: <20190712082044.6eteunzehyptsibk@M43218.corp.atmel.com>
Mail-Followup-To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "peda@axentia.se" <peda@axentia.se>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "pierre-yves.mordret@st.com" <pierre-yves.mordret@st.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_012146_575036_325E255D 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "pierre-yves.mordret@st.com" <pierre-yves.mordret@st.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 03:19:26PM +0200, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Hello,
> 
> This series adds support for analog and digital filters for i2c controllers
> 
> This series is based on the series:
> [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
> and enhanced to add the bindings for all controllers plus an extra binding
> for the width of the spikes in nanoseconds.
> 
> First, bindings are created for
> 'i2c-ana-filter'
> 'i2c-dig-filter'
> 'i2c-filter-width-ns'
> 
> The support is added in the i2c core to retrieve filter width and add it
> to the timings structure.
> Next, the at91 driver is enhanced for supporting digital filter, advanced
> digital filter (with selectable spike width) and the analog filter.
> 
> Finally the device tree for two boards are modified to make use of the
> new properties.
> 
> This series is the result of the comments on the ML in the direction
> requested: to make the bindings globally available for i2c drivers.
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
>   i2c: add support for filter-width-ns optional property
>   i2c: at91: add new platform support for sam9x60
>   i2c: at91: add support for digital filtering
>   i2c: at91: add support for advanced digital filtering
>   i2c: at91: add support for analog filtering
>   ARM: dts: at91: sama5d2_xplained: add analog and digital filter for
>     i2c
>   ARM: dts: at91: sama5d4_xplained: add analog filter for i2c
> 
>  Documentation/devicetree/bindings/i2c/i2c-at91.txt |  3 +-
>  Documentation/devicetree/bindings/i2c/i2c.txt      | 11 +++++
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts        |  6 +++
>  arch/arm/boot/dts/at91-sama5d4_xplained.dts        |  1 +
>  drivers/i2c/busses/i2c-at91-core.c                 | 38 +++++++++++++++++
>  drivers/i2c/busses/i2c-at91-master.c               | 49 ++++++++++++++++++++--
>  drivers/i2c/busses/i2c-at91.h                      | 13 ++++++
>  drivers/i2c/i2c-core-base.c                        |  2 +
>  include/linux/i2c.h                                |  2 +
>  9 files changed, 121 insertions(+), 4 deletions(-)

Hi,

I don't know if it will fit other vendors need concerning the binding
but for Microchip it sounds good.

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
for the whole serie.

Regards

Ludovic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
