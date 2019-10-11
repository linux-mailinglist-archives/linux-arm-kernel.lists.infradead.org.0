Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FA8D42DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfKu05ohOS/nOKv7u7XCyr8jDcqsxwhBPbwDundDcY8=; b=IWfAGfFIzOE0i/
	/zGOw0kOXMvPer+7FbfvQ7iETsumP027aGjjo+84dQexZTTMKCinWAAA7AZKAey1SQsbWAzb3Ts9C
	nKTyBwIwoCtWdiyZ1LLjtVDfzG2XZh6tHDv5gwNvMw7PVf/SUEg+L4Q7gRVSB0WtlC17CAHpMrI18
	ZQ2XdvR0F0y9SzH8/E+mI2YDHKFtVh5wb2BEvd/7eFrqqs/u4JNG0WhhQUOP7k1RcSbnP7oSP22l4
	H14sfyc4wlMarBU2mHVA2ArQhoUgljWsOdpIV9hkt1llWyv/zdH8xtXGMdLYcek/dopvRIKL93LVM
	hwTUgFuaw7MwW4W0XPIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvvW-00009s-Qm; Fri, 11 Oct 2019 14:29:54 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvv8-0008Gu-Ik
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:29:32 +0000
Received: by mail-oi1-f193.google.com with SMTP id w144so8141967oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 07:29:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0X1hghAJ29XYm0tUmf8FNz9k1l80AJy3GjZpN1F0pmk=;
 b=rs4oTFB5PPYlbvRc0kKq7aSWYUOyHwxPrsiilmZGuymHI4wRQINnrYuv4yImV+D+88
 WbUOEoBPIiFcLRIkGnewgciyj06PFkXobfj25xDVFTqkCRhbr7ks56n4WiR/5drv0UpV
 Ueb6tzLRwHlXMwdvJM+pkqD2t8GEvdl3CV1nloUYKEsX43VHb/Oc9h9DFDlr9B/lqH3o
 DGxPIRB9ud8XPmEq1GS9DP1bJvbWOMKNKWJzV/sf/Bg+RKm+PEKtGXQ5Dc88x2PPbnk2
 +hqidKmaRXg8eFRqaGE9XcJrYUabHWIfp7spRiIWzIuhkLKHGbZwPcjaB6TekDnSIfi/
 1+bw==
X-Gm-Message-State: APjAAAUnnZ9fonCRQHvuVPeDSn4l0dQ3A0zmo9DWBVg1tvoCZTtfIovm
 rvKL3JGnxI4ZT4qXam4AJA==
X-Google-Smtp-Source: APXvYqwui5azj5/LBQ8YN/5iqD8CTtMpoje9cQuqiYX5Z73OvIq4kjOYrUchjSr9TmslZtEYKMScBw==
X-Received: by 2002:aca:36d5:: with SMTP id d204mr11992336oia.51.1570804168556; 
 Fri, 11 Oct 2019 07:29:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m14sm2629238otl.26.2019.10.11.07.29.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 07:29:27 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:29:27 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191011142927.GA11490@bogus>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011094148.1376430e@aktux>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_072930_636839_F063BAEF 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote:
> On Fri, 11 Oct 2019 08:56:09 +0200
> Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> > Hi Andreas,
> > 
> > On 19-10-10 21:23, Andreas Kemnade wrote:
> > > The Netronix board E60K02 can be found some several Ebook-Readers,
> > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > is equipped with different SoCs requiring different pinmuxes.
> > > 
> > > For now the following peripherals are included:
> > > - LED
> > > - Power Key
> > > - Cover (gpio via hall sensor)
> > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > >   subdevices).
> > > - Backlight via lm3630a
> > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > 
> > > It is based on vendor kernel but heavily reworked due to many
> > > changed bindings.
> > > 
> > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > ---
> > > Changes in v3:
> > > - better led name
> > > - correct memory size
> > > - comments about missing devices
> > > 
> > > Changes in v2:
> > > - reordered, was 1/3
> > > - moved pinmuxes to their actual users, not the parents
> > >   of them
> > > - removed some already-disabled stuff
> > > - minor cleanups  
> > 
> > You won't change the muxing, so a this dtsi can be self contained?
> > 
> So you want me to put a big 
> #if defined(MX6SLL) 

Not sure what the comment meant, but no, don't do this. C defines in dts 
files are for symbolic names for numbers and assembling bitfields and 
that's it.

> [...]
>              pinctrl_i2c1: i2c1grp {
>                         fsl,pins = <
>                                 MX6SLL_PAD_I2C1_SCL__I2C1_SCL    0x4001f8b1
>                                 MX6SLL_PAD_I2C1_SDA__I2C1_SDA    0x4001f8b1
>                         >;
>                 };
> 
> #elif (MX6SL)
> [...]
>                pinctrl_i2c1: i2c1grp {
>                         fsl,pins = <
>                                 MX6SL_PAD_I2C1_SCL__I2C1_SCL     0x4001f8b1
>                                 MX6SL_PAD_I2C1_SDA__I2C1_SDA     0x4001f8b1
>                         >;
>                 };
> 
> #endif
> in the dtsi?
> 
> Regards,
> Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
