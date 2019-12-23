Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5291294E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0cPnEST4HbWZy3mYKFVyWW/zG8w/a6ORlB03UzRNvU=; b=baQrJ60AdSYkyb
	NpfaOg8Tc2d6MQ5Xw3dKtP5p13zGz5vNK56lLggQSbZYO3QP2+mto+DA5ylvhAjMzveRnkB087x+q
	gPL4eGPUfTO138Xart9YvCOuAC+MWWBBijFb4OQL4BghbFgrEtZVRDpUuOwr+eu+FBv9B/0JXL5iq
	uQpWJY006JNx5yPWMg925BfNA/tBTTF2sJcLNfjzWkUVAYHgwHhYu3CrLMe64mc+Sslzefo+CACIO
	oSapck5bTJiwXpJ73MBDI5U50Vw32CWE7BY0Ry8NUBYMO5dnpmMlHYmKx0F0/zR1y5smdqEjdly/v
	81KKk6W/i8Yx+Fll7GLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLhi-0001UT-If; Mon, 23 Dec 2019 11:16:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLha-0001U2-Bk
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:16:43 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6736206D3;
 Mon, 23 Dec 2019 11:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577099801;
 bh=xGLGE31Xwh18pncBblQVgK8mlKFPGu9zTopz+g6QchE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wGGbAnN85TdnRe8X5bBQUW1NcJrt9ju9qrIRIrrSR99dAyaSppay1+iMrH3ciW2Bz
 vA/ihWAMcV7tMU8XZujCgsRDibtJNxvgf4zCK/Cr3toa1eFkRiADZZt+bbSZQH8sWj
 uDVfZylf5vJ9p+13u06it86FdW+BzlycytGe3R4Y=
Date: Mon, 23 Dec 2019 11:16:36 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 04/10] rtc: at91rm9200: use of_platform_populate as
 return value
Message-ID: <20191223111636.4698123b@archlinux>
In-Reply-To: <20191219102321.GR695889@piout.net>
References: <1576686157-11939-1-git-send-email-eugen.hristev@microchip.com>
 <1576686157-11939-5-git-send-email-eugen.hristev@microchip.com>
 <20191218164348.GN695889@piout.net>
 <04264cb0-61a9-aba3-82ad-e7d12fd8441e@microchip.com>
 <20191218165831.GO695889@piout.net>
 <91cc67e1-7e14-f7b9-da77-b16d9e158f20@microchip.com>
 <20191219102321.GR695889@piout.net>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_031642_440581_CB7D50E8 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, a.zummo@towertech.it,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org,
 Eugen.Hristev@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 11:23:21 +0100
Alexandre Belloni <alexandre.belloni@bootlin.com> wrote:

> On 19/12/2019 09:15:02+0000, Eugen.Hristev@microchip.com wrote:
> > 
> > 
> > On 18.12.2019 18:58, Alexandre Belloni wrote:  
> > > On 18/12/2019 16:52:21+0000, Eugen.Hristev@microchip.com wrote:  
> > >>
> > >>
> > >> On 18.12.2019 18:43, Alexandre Belloni wrote:
> > >>  
> > >>> Hi,
> > >>>
> > >>> On 18/12/2019 16:24:00+0000, Eugen.Hristev@microchip.com wrote:  
> > >>>> From: Eugen Hristev <eugen.hristev@microchip.com>
> > >>>>
> > >>>> This allows the RTC node to have child nodes in DT.
> > >>>> This allows subnodes to be probed.
> > >>>>
> > >>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> > >>>> ---
> > >>>>    drivers/rtc/rtc-at91rm9200.c | 2 +-
> > >>>>    1 file changed, 1 insertion(+), 1 deletion(-)
> > >>>>
> > >>>> diff --git a/drivers/rtc/rtc-at91rm9200.c b/drivers/rtc/rtc-at91rm9200.c
> > >>>> index 3b833e0..f1b5b3d 100644
> > >>>> --- a/drivers/rtc/rtc-at91rm9200.c
> > >>>> +++ b/drivers/rtc/rtc-at91rm9200.c
> > >>>> @@ -421,7 +421,7 @@ static int __init at91_rtc_probe(struct platform_device *pdev)
> > >>>>         at91_rtc_write_ier(AT91_RTC_SECEV);
> > >>>>
> > >>>>         dev_info(&pdev->dev, "AT91 Real Time Clock driver.\n");
> > >>>> -     return 0;
> > >>>> +     return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
> > >>>>  
> > >>>
> > >>> You can avoid the DT binding change and DT parsing by using
> > >>> platform_add_device here. I don't think there is any point describing
> > >>> the trigger as a child node (a watchdog functionality wouldn't be
> > >>> described for example).
> > >>>  
> > >>
> > >> Hi,
> > >>
> > >> It's needed because the ADC needs a link to the trigger device. This is
> > >> a hardware link inside the SoC, so I thought the best way is to describe
> > >> this hardware is in the Device Tree.
> > >> Otherwise the ADC node is unaware of the RTC triggering possibility.
> > >> If we just assign the RTC trigger device to the ADC through the sysfs,
> > >> the ADC cannot distinguish between the RTC trigger and other various
> > >> triggers which can be attached.
> > >>  
> > > 
> > > I'm not sure this links is required but I will let Jonathan review. Even
> > > if it is needed, you can still use the rtc node to describe that link.  
> > 
> > Actually, the RTC node could potentially have two different ADC 
> > triggers. There is another OUT1 field that can do a second trigger for 
> > the ADC only for the last channel. Future development might add this 
> > trigger, so, with that in mind, I think it's best to link the exact 
> > trigger and not the RTC node.  
> 
> Nothing prevents you from using an index with the phandle (and I would
> add a type in that case then). Having subnodes in the DT is not really a
> good idea. The IP is the RTC, it just happens to have some outputs.
> See what has been done for the PMC.
> 
> 

If it can be done either way, let's avoid adding to the rtc dt binding.

Jonathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
