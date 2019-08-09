Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBE687236
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 08:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78Ha3m43YnjW6rTv+9vrNWasGmLzZqmc8yr4Or+C6Cg=; b=sTFO95r4cudZzG
	fSDK3EnOSQRbJeFhk68xS+BYJuwEvYLciU/3pDklR+4Pr6qripBNSH9BtAsGygOTdsPlx17PoYt2x
	7zzzJ3wLFgILleS0/+ZJG1zXsXd2J4rpK7onJzTB2zLA/zKBcqfQgJYA341r9LpA7r06c3kpAX+x1
	XWMo3jWMOyka1ppUeU0tMdu66GtjqC0RcZQKt/B1kMlmvpI9+6RRcjB1zeiaZ1k5OGrQIvjPmIkQf
	bb32WBzeUMQNqiuUxlNZgey6fTGae7rHvEghVRrhA0UkJpFTVeTaBJ+4LOuFL9QuYBOotNg6pnwzb
	j7O8ZGjXBnpQQjsp1qrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvyKV-0000Px-0a; Fri, 09 Aug 2019 06:24:47 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvyKH-0000OY-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 06:24:36 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 4WJWT/wn23UaX1GruXfR9JWONyV8gpdACAqNbsaU56BfyDoKB9oqw0TBvKTRWDSJtM45HNXvmR
 PCny3sTrieA/QzIbhiw9MNXvBxe+Q3d6fZ9F9ztirfIQNviUe2I8d+9+zwFdZqiWwqzUZTvgVO
 SOunDtl8u4x9hkFsVFCpplWx/2NHJqeigh8IaT0yHgODbEkhJ7dQHglbndmI9BcsoLP/equ0+t
 ZCbCvESXz5Pb6xcRGdrbuxWk8mqpkmBvWCOVGS0MjunxqdHRfA4q/himzCT8vJtHhl/2XoKovZ
 HMw=
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="43015337"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Aug 2019 23:24:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Aug 2019 23:24:27 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 8 Aug 2019 23:24:27 -0700
Date: Fri, 9 Aug 2019 08:23:22 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Message-ID: <20190809062322.syuieymdqjs4e7lh@M43218.corp.atmel.com>
Mail-Followup-To: Adrian Hunter <adrian.hunter@intel.com>,
 Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
 <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
 <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_232433_635987_2DD4DDB6 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 03:57:30PM +0300, Adrian Hunter wrote:
> On 8/08/19 3:42 PM, Ludovic Desroches wrote:
> > On Thu, Aug 08, 2019 at 10:35:43AM +0200, Eugen Hristev - M18282 wrote:
> >> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>
> >> Add mmc capabilities for SDMMC0 for this board.
> >> With this enabled, eMMC connected card is detected as:
> >>
> >> mmc0: new DDR MMC card at address 0001
> >>
> >> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> > Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> > 
> > I am interested to have the some insights about the use of sd-uhs-*
> > properties.
> > 
> > Our IP can't deal with 1V8 by itself. It has a 1V8SEL signal which can
> > be used as the logic control input of a mux. So even if the IP claims
> > to support UHS modes, it depends on the board.
> > 
> > Are the sd-uhs-* properties a way to deal with this? I tend to think no
> > as sdhci_setup_host() will set the caps depending on the content of the
> > capabilities register. Do we have to use the SDHCI_QUIRK_MISSING_CAPS
> > quirk or sdhci-caps/sdhci-caps-mask?
> 
> There is "no-1-8-v" which it looks like sdhci-of-at91.c already supports:
> 
>   sdhci_at91_probe() -> sdhci_get_of_property() -> sdhci_get_property()
> 
>     	if (device_property_present(dev, "no-1-8-v"))
> 		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;
> 

Right, I forgot this property. Thanks.

Eugen, do you see cases we can't cover with this property?

Regards

Ludovic

> 
> > 
> > Regards
> > 
> > Ludovic
> > 
> >> ---
> >>  arch/arm/boot/dts/at91-sama5d27_som1_ek.dts | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
> >> index 149e539..194b3a3 100644
> >> --- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
> >> +++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
> >> @@ -54,6 +54,7 @@
> >>  
> >>  		sdmmc0: sdio-host@a0000000 {
> >>  			bus-width = <8>;
> >> +			mmc-ddr-3_3v;
> >>  			pinctrl-names = "default";
> >>  			pinctrl-0 = <&pinctrl_sdmmc0_default>;
> >>  			status = "okay";
> >> -- 
> >> 2.7.4
> >>
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
