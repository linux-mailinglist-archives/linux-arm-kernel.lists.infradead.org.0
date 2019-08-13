Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3C68B036
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwDrbdOv9UQrsgL5Gd2TFI/CrdljpRyUHwFag1hNcuY=; b=OP4j1jPsMDYuKR
	xjyfQGEfXq5QCpWXdXe84pFWjaXodzLCaH0J2vfvZc4oPzGTiBvEf0mghoRVJGuVRyWSScq6DYe+t
	FZZVvZXjCo8TZl7MUw2d00NqgJKsWmoy4JwQQ1ywKBOCa2f5/VPx0VZs8h2i8VahnlcICHU/l/I31
	dLL7lrS9jyKGwmnuJBVxp5x4PpJUwLrH8mTe0GbNUXhQFvqCPk4b/RnoZA61ocVa8pejr2/n2y4zS
	NVBuDHANq/btpuFPD+zwQe6e/3hJQ28Xu/OnD3bdQ0uqoOzu99Shs2lROThPgQMABs2CK3CKN+TJw
	qCKQ+W67pjqxKtc30Ewg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQhl-0003uv-4t; Tue, 13 Aug 2019 06:54:49 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQhG-0003u1-1x
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:54:19 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: S50QYZScpAZMoH8zbv+WueYONP6hoGpU0ZY5iduS0funkDaq8LbBCBaq3g6xGLAlgaLK0rPbFD
 XGihs5BCXQNENv2UpXkKFEbhC+kvpjbSwtRrCbBrBjLLL5CLZsAdQyUPL2LNsOJ9v3pf4J6RqL
 7cTM/Vka8bhO+uMVEfFaEc3e8E7H7pwThJpgs+XViFAMhccbCau1lUd0pcAF2gbvt0fohEj5aH
 tBDDlAChrQIFzrL57gn7scHL8l+q7ScrlDUbNbuqBhsEP+wO0buWIOIWvnvVvDYJ3LRk2QAViC
 TBM=
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; d="scan'208";a="46314422"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Aug 2019 23:54:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Aug 2019 23:54:15 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 12 Aug 2019 23:54:14 -0700
Date: Tue, 13 Aug 2019 08:53:06 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Message-ID: <20190813065306.tqz57hqeiofofbnz@M43218.corp.atmel.com>
Mail-Followup-To: Eugen.Hristev@microchip.com, adrian.hunter@intel.com,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
 <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
 <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
 <20190809062322.syuieymdqjs4e7lh@M43218.corp.atmel.com>
 <fa0debbb-b84c-1f74-f8b8-8fdd7812aaee@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fa0debbb-b84c-1f74-f8b8-8fdd7812aaee@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_235418_212966_E4EA67EF 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, ulf.hansson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 03:38:34PM +0000, Eugen.Hristev@microchip.com wrote:
> On 09.08.2019 09:23, Ludovic Desroches wrote:
> > On Thu, Aug 08, 2019 at 03:57:30PM +0300, Adrian Hunter wrote:
> >> On 8/08/19 3:42 PM, Ludovic Desroches wrote:
> >>> On Thu, Aug 08, 2019 at 10:35:43AM +0200, Eugen Hristev - M18282 wrote:
> >>>> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>>>
> >>>> Add mmc capabilities for SDMMC0 for this board.
> >>>> With this enabled, eMMC connected card is detected as:
> >>>>
> >>>> mmc0: new DDR MMC card at address 0001
> >>>>
> >>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> >>> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> >>>
> >>> I am interested to have the some insights about the use of sd-uhs-*
> >>> properties.
> >>>
> >>> Our IP can't deal with 1V8 by itself. It has a 1V8SEL signal which can
> >>> be used as the logic control input of a mux. So even if the IP claims
> >>> to support UHS modes, it depends on the board.
> >>>
> >>> Are the sd-uhs-* properties a way to deal with this? I tend to think no
> >>> as sdhci_setup_host() will set the caps depending on the content of the
> >>> capabilities register. Do we have to use the SDHCI_QUIRK_MISSING_CAPS
> >>> quirk or sdhci-caps/sdhci-caps-mask?
> >>
> >> There is "no-1-8-v" which it looks like sdhci-of-at91.c already supports:
> >>
> >>    sdhci_at91_probe() -> sdhci_get_of_property() -> sdhci_get_property()
> >>
> >>      	if (device_property_present(dev, "no-1-8-v"))
> >> 		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;
> >>
> > 
> > Right, I forgot this property. Thanks.
> > 
> > Eugen, do you see cases we can't cover with this property?
> 
> Hi,
> 
> For current requirements and driver support, this should be enough.
> 
> I noticed one thing regarding SD-Cards, if I add property sd-uhs-sdr104 
> the class 10 uhs1 cards are detected as SDR104 . Without this property 
> they are detected as DDR50. Any idea why the difference ? The controller 
> does not claim to have SDR104 support ?  We should add it ?

With the mainline, our tree or both? In our tree, SDR104 is removed from
the capabilities.

Ludovic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
