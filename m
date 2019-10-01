Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D8FC4053
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9VU4f8g47ikq9QZYZKFQrJLBZywG/zc+/9JPkWR1ls=; b=EUdbjO3bBqr92E
	Pzja9IsUuaseiXIy/SMUoj8Sb++g65KYlsz0txjAzvA5X16ASiVf5HcRa0NRvC1bA35+OIxlutZWP
	6SH1HQEzNkhUf0dPfJQ9E599IiIt2yTE4tlbh/ykH7Nv8CnM6dmS4pQF58CK4g8CVGhZF2PiVVmsz
	e9WusVLd3G7tSm1QJ39YsWySN+bK+8MbPgnZBOLBX0QtyWIy4/C+OrHNzd1qLqSrMlICMbk3RLB6e
	PinyrrXwV540/tMZvq29eWH6sIzNhqXMbKYs4mYFPnAy/zXd8zpA5JzxL6kvraIwzufxF7nBkC9rj
	PYp2iAW84OVAuftt4dtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN9m-0002Nu-N3; Tue, 01 Oct 2019 18:45:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN7H-0007Uz-NN
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:43:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so10250981pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wOlYko7NkoTZki/CziEJgME03XS7kkXPkXPHoWO1dek=;
 b=HRefi9sbT2b8lKM1WA3enIvk00lwiNRmnkNkKSSjyabgnBjMrPgZ5KhzSXRskxRsKd
 QPiV6aRNC/atiPa5n4nqYGou7cgzn1B+N2aCxqv4Ffq+jtGGeoZoretuydUH967g8Pj2
 yL5S/SJ34sS0JfgIGx00jUUmcACqxYwQ8nTgE0U6LGDKhGzYfYoFqx+AfKd/seDQZENB
 a6xEN5oxCFehW8GtdPFZwuRF+LDNLGrqfg3C8JSUhM357Kg8XNh9Vl4w2fMZmDZI+i4y
 yQCRbVcp65ztpPn81L6u4KxYTwdenOBjLvmYHG/3tCRwGM3uT9VgEtnrQCo8+3dy0Gpn
 6ASw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wOlYko7NkoTZki/CziEJgME03XS7kkXPkXPHoWO1dek=;
 b=r/Vn5MrCb4yEN6JhQ5NoHnuywrIC+XUiUiPBWD0nlDyF9DN7M4t5CCbUhgJFzMAWT7
 9akoq2XmqmVJU6OSHFDC3kHfsEG53BPyVvdgMisl7vN2J1CCtY+nCLoVVqLLMhGZFUMu
 xsnbtv91yWxfdHq+E8RF1odqZpEV9GUwqcnDK2Kh249qGcC+Cd3JYsVguCffZm9/ON4+
 sHRvo+yKZrW09gngvlmqGZPn8PPlgP0RBHfhI0oViTTvUhsq4pmcLEIjDEg12kTHHpkW
 P/PyTonp8q0h/UVNQQ9E1b6Gvu/lMLa3zTe0nxAc6XYZqUWUIBH/5ceJoOCpMu2R/AP9
 m0Gg==
X-Gm-Message-State: APjAAAX4UWr4neQJLWPdLJjpyeKwsHbptbRIQPXL65OuO5C89i8gi+/0
 S5gVWDtbnOq8yiA9rhpON4qJ
X-Google-Smtp-Source: APXvYqwLF+mpra8npi1MtsuyWuY9HY6bRBWMk0uyodiiNMMhRMbM1EYftY19y+KeALm5cn5na/b0Qg==
X-Received: by 2002:a17:90a:1150:: with SMTP id
 d16mr7411913pje.2.1569955398457; 
 Tue, 01 Oct 2019 11:43:18 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:631a:1d56:6a:8714:31a4:1f8])
 by smtp.gmail.com with ESMTPSA id q33sm13274538pgm.50.2019.10.01.11.43.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 01 Oct 2019 11:43:17 -0700 (PDT)
Date: Wed, 2 Oct 2019 00:13:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v3 3/3] MAINTAINERS: Add entry for IMX290 CMOS image
 sensor driver
Message-ID: <20191001184309.GB7739@Mani-XPS-13-9360>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
 <20190830091943.22646-4-manivannan.sadhasivam@linaro.org>
 <20190923090752.GK5525@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923090752.GK5525@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114319_789329_C8F28ADD 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 12:07:52PM +0300, Sakari Ailus wrote:
> On Fri, Aug 30, 2019 at 02:49:43PM +0530, Manivannan Sadhasivam wrote:
> > Add MAINTAINERS entry for Sony IMX290 CMOS image sensor driver.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  MAINTAINERS | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index f7c84004187d..0ee261fca602 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14962,6 +14962,14 @@ S:	Maintained
> >  F:	drivers/media/i2c/imx274.c
> >  F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
> >  
> > +SONY IMX290 SENSOR DRIVER
> > +M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > +L:	linux-media@vger.kernel.org
> > +T:	git git://linuxtv.org/media_tree.git
> > +S:	Maintained
> > +F:	drivers/media/i2c/imx290.c
> > +F:	Documentation/devicetree/bindings/media/i2c/imx290.txt
> > +
> >  SONY IMX319 SENSOR DRIVER
> >  M:	Bingbu Cao <bingbu.cao@intel.com>
> >  L:	linux-media@vger.kernel.org
> 
> Please squash this change to the first patch.
> 

Oops, looks like you already said this in previous review as well. Will
do.

Thanks,
Mani

> -- 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
