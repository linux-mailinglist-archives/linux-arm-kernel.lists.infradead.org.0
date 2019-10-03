Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B22CAF76
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Umef+bGG71lXfbl92rph8tYuf9HVpH48Tfz3wVIw4Q8=; b=EXiLaohvI5sU5+
	+bz1gL+dK6VyA1N7Q82tC0Lm5WdUdZE3WI9mRnoeBsj7LUsKrq78Jy46yvd7/39NYefW8SVpQ1Bz4
	ge/Q9H6gdNfCuAUTfhTb8pVyuD8OH8aAjHr8zrwTMcADLWnBcFZnbEw/+l0yEoGGkfXhv2dO7eRcm
	hBzSXqaRlVZ9B94xJjcNBbayEKDkjMKkxxDMXcmoSZb/sb9qzTJZ32STMjoTHWhRyR0J/bUpWnLg9
	O+qC9E78OwnL2DqFXQ3VB7nR0hvnPesaEQVtOwLaoCKJ6WAvETHGzgyBo8dfC7HuFJe+ja2d/ZOPR
	2OCfVEH3HCTa1W57l4fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6zZ-0003Px-1z; Thu, 03 Oct 2019 19:42:25 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6zR-0003Oq-If
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:42:19 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B8B852010D;
 Thu,  3 Oct 2019 19:42:03 +0000 (UTC)
Date: Thu, 3 Oct 2019 21:42:03 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH 2/2] ARM: dts: at91: sama5d27_som1_ek: add mmc
 capabilities for SDMMC0
Message-ID: <20191003194203.GI575@piout.net>
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
 <1565252928-28994-2-git-send-email-eugen.hristev@microchip.com>
 <20190808124217.wrmcxohw5i6ju2qe@M43218.corp.atmel.com>
 <04fd74c3-a828-1064-b77b-f3de07a26190@intel.com>
 <20190809062322.syuieymdqjs4e7lh@M43218.corp.atmel.com>
 <fa0debbb-b84c-1f74-f8b8-8fdd7812aaee@microchip.com>
 <20190813065306.tqz57hqeiofofbnz@M43218.corp.atmel.com>
 <c2c355cd-b798-02de-0606-0f6442f6fdca@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2c355cd-b798-02de-0606-0f6442f6fdca@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_124217_916486_A9D1870C 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 adrian.hunter@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 10:24:52+0000, Eugen.Hristev@microchip.com wrote:
> 
> 
> On 13.08.2019 09:53, Ludovic Desroches wrote:
> > On Mon, Aug 12, 2019 at 03:38:34PM +0000, Eugen.Hristev@microchip.com wrote:
> >> On 09.08.2019 09:23, Ludovic Desroches wrote:
> >>> On Thu, Aug 08, 2019 at 03:57:30PM +0300, Adrian Hunter wrote:
> >>>> On 8/08/19 3:42 PM, Ludovic Desroches wrote:
> >>>>> On Thu, Aug 08, 2019 at 10:35:43AM +0200, Eugen Hristev - M18282 wrote:
> >>>>>> From: Eugen Hristev <eugen.hristev@microchip.com>
> >>>>>>
> >>>>>> Add mmc capabilities for SDMMC0 for this board.
> >>>>>> With this enabled, eMMC connected card is detected as:
> >>>>>>
> >>>>>> mmc0: new DDR MMC card at address 0001
> >>>>>>
> >>>>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> >>>>> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> >>>>>
> >>>>> I am interested to have the some insights about the use of sd-uhs-*
> >>>>> properties.
> >>>>>
> >>>>> Our IP can't deal with 1V8 by itself. It has a 1V8SEL signal which can
> >>>>> be used as the logic control input of a mux. So even if the IP claims
> >>>>> to support UHS modes, it depends on the board.
> >>>>>
> >>>>> Are the sd-uhs-* properties a way to deal with this? I tend to think no
> >>>>> as sdhci_setup_host() will set the caps depending on the content of the
> >>>>> capabilities register. Do we have to use the SDHCI_QUIRK_MISSING_CAPS
> >>>>> quirk or sdhci-caps/sdhci-caps-mask?
> >>>>
> >>>> There is "no-1-8-v" which it looks like sdhci-of-at91.c already supports:
> >>>>
> >>>>     sdhci_at91_probe() -> sdhci_get_of_property() -> sdhci_get_property()
> >>>>
> >>>>       	if (device_property_present(dev, "no-1-8-v"))
> >>>> 		host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;
> >>>>
> >>>
> >>> Right, I forgot this property. Thanks.
> >>>
> >>> Eugen, do you see cases we can't cover with this property?
> >>
> >> Hi,
> >>
> >> For current requirements and driver support, this should be enough.
> >>
> >> I noticed one thing regarding SD-Cards, if I add property sd-uhs-sdr104
> >> the class 10 uhs1 cards are detected as SDR104 . Without this property
> >> they are detected as DDR50. Any idea why the difference ? The controller
> >> does not claim to have SDR104 support ?  We should add it ?
> > 
> > With the mainline, our tree or both? In our tree, SDR104 is removed from
> > the capabilities.
> > 
> > Ludovic
> > 
> 
> 
> Hello Alexandre,
> 
> Anything more needed regarding this patch ?
> 

I was not sure it was applicable, seeing the discussion. I'll apply it
now.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
