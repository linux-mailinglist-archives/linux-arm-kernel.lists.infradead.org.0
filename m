Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307ED430C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/+cQIrZA6xe1bCVH3lmy2nOszJv7bK3RF6px3a+aTw=; b=caS0VJwZneLDQp
	w3WHD1iOdPjVzc6lH8D/ASwbUQqjRbY+tkpbxNxAO9d4ORB07Y4ZLO+yaqqil6bT4jaC5S4JfjCiL
	2zXX6gEf2M/xUAFnUBdZbA1g0djkYi1PIOYvMSn+180Myoz/+iULc2Hmtxio4BKnShTGlMja9IQmd
	lMdPOrns6OZEZEMdy1f9y/1ARiedQ07fz8WJAAO0D4ZJIRec4llU2uEpcWnT8uokRXsOGipj2aDO5
	SCfBoWkp/xoR4HqRnEjF1Mg7fnfhnDh/Sag3gTq++CaBOQHiAGns8aqJtsK4ZBZRDbai/okKjpopx
	RH2KK3WgUQI2SkhfyE0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9Uv-0004bG-Ce; Wed, 12 Jun 2019 20:05:29 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9RH-00086i-Kc
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 20:01:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id z23so16652046ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 13:01:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0O8kud1OZKkvtHeAHVJbfPeAphq/Q2FLAtf0UYYJ3/U=;
 b=CuTYyz1tv3GkkpP/JIm+7eyZRfhliCPTgi6/jA5NOoATxulP8E2zepMh267OvWU7z/
 tXGUafJIuPN7/qdNP7p7Xajf/BRWlb+NoD/vYLxphFbAn5MCdQDJXGKSJ/ATrwmj0Bc3
 X82+ghMiUgI0sdU8U8RqWUh0cEqjpdCSNCkHpYob95AA/MtGIxy4JpTl2QpTnq4gxZN3
 Sd12+WE+Zr5HPro0YlwqHgFF5IhlqVewxkuAYHfdWS5gpzMGjhlvTNTHh3BBCpEocA/C
 zCi4Y1qbNZlhSo+2O9R3DVKvw8IkGr7EMLOz8Ud10UXhmA0IMWx6GfnJ6wUDATggCC0W
 czkA==
X-Gm-Message-State: APjAAAUK/npEC56DpwTvqp4y2asvr6tZ+bTE6NK93vqlZFdp1voQqdwL
 Rh2fVgEN2hK0euiw/yiCYrgJpq/T
X-Google-Smtp-Source: APXvYqyJopF/Mwue13Wkv18GOSojXzZm8OWM+7GCB+URpFFXDZawqhJsUY2T+P5s2PlOUvNR8jIEAA==
X-Received: by 2002:a9d:d22:: with SMTP id 31mr23700396oti.304.1560369701739; 
 Wed, 12 Jun 2019 13:01:41 -0700 (PDT)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id z91sm204483ota.38.2019.06.12.13.01.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 13:01:41 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id l15so16647448otn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 13:01:40 -0700 (PDT)
X-Received: by 2002:a05:6830:1192:: with SMTP id
 u18mr35659756otq.74.1560369700348; 
 Wed, 12 Jun 2019 13:01:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190422183056.16375-1-leoyang.li@nxp.com>
 <20190510030525.GC15856@dragon>
In-Reply-To: <20190510030525.GC15856@dragon>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 12 Jun 2019 15:01:29 -0500
X-Gmail-Original-Message-ID: <CADRPPNT2G20j2pvSEyqX=_WNDPrcNR+xCR_XZukbnSW19wFLNA@mail.gmail.com>
Message-ID: <CADRPPNT2G20j2pvSEyqX=_WNDPrcNR+xCR_XZukbnSW19wFLNA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable FSL_EDMA driver
To: Shawn Guo <shawnguo@kernel.org>, madalin.bucur@nxp.com, 
 Rob Herring <robh+dt@kernel.org>, aisheng.dong@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_130143_810678_948C8ACB 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Vinod Koul <vkoul@kernel.org>, Grant Likely <grant.likely@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 10:15 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Apr 22, 2019 at 01:30:56PM -0500, Li Yang wrote:
> > Enables the FSL EDMA driver by default.  This also works around an issue
> > that imx-i2c driver keeps deferring the probe because of the DMA is not
> > ready.  And currently the DMA engine framework can not correctly tell
> > if the DMA channels will truly become available later (it will never be
> > available if the DMA driver is not enabled).
> >
> > This will cause indefinite messages like below:
> > [    3.335829] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> > [    3.344455] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000 uOhm)
> > [    3.350917] lm90 0-004c: 0-004c supply vcc not found, using dummy regulator
> > [    3.362089] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> > [    3.370741] ina2xx 0-0040: power monitor ina220 (Rshunt = 1000 uOhm)
> > [    3.377205] lm90 0-004c: 0-004c supply vcc not found, using dummy regulator
> > [    3.388455] imx-i2c 2180000.i2c: can't get pinctrl, bus recovery not supported
> > .....
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
>
> Applied, thanks.

Hi Shawn,

Is it possible to move this patch to the -fix series so that it can
reach the mainline earlier?  It is having a boot failure in mainline
for platforms using this device without this workaround.

I see Rob added a new API driver_deferred_probe_check_state() last
year.  Probably we should update the imx-i2c driver to use the new API
for optional dependencies to avoid this kind of situation completely?

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
