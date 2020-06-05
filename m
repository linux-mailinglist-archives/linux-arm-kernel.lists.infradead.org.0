Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B5B1EF888
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA3fulpcvltN0mtH/1xz6MTEQnzqyvB/vP2ghAeq/9k=; b=Y62ZF9Tr/KkiD+
	Zjod6mM+eNcjvgyGYMn5nuytPZjQA9Oy2QHu2hMuiFXw4djU4mSvrfoKUjLb2DyVG5oaURZWNXxuP
	XDxBbzv8Tpt7sekokoQ9OPVuzGgjwHHg0nCot2zES2Z1ewKULiXX0watF3SwsOOv4JEYP61HVkcuL
	pw3qFlje4xK461euGj8hNJPpu+4215kY2mUAqOejlZ0+1lbhY3rWmV31OI7ZMNB8P3IY/TahNeTi7
	zl0FWWioImnVGsLvyc2A96E+B6SUJLPJVMAGMzmSFf3Y7ZqbHpnnSa8GA16l8QSCW/oKlwuoIKUHj
	vF9Wb6TPUzY3iwDSaCbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBzP-0007K4-9L; Fri, 05 Jun 2020 13:02:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBzE-0007Ih-I4
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:02:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so9698201wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 06:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=y3GLNe1uiEEyqomGYmE3fIeULXusz66pcaCDflcIBb4=;
 b=i5o+dER1J+4I9KjApGJUl5j8vc3AgLlhglvEfXsfp9xNaKskTKEJLqxNDa11iCBswD
 lHjCEBND3KFJe13zffeJZSFvRRMjnmD1xDuFAStUns7l00Mhdzdv/n2dDXwdUGNLjoMR
 Q8UajpX7oLNc+ArM8+h2A4JIYy6XJYGovy2B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y3GLNe1uiEEyqomGYmE3fIeULXusz66pcaCDflcIBb4=;
 b=IG4bAL32yPBT84FIcb5P9ovOsD2xOisCqfiqB1JU1J+dLh38V/urYE1F+CRTbAgwRd
 y0UOSjXAHXSEMWhtKa7g93UjN4w1HkraxOzFt8XmcQl2LSd0xVZyjCbM91V9xRqoP3iY
 8elT10XskQ8bTBW4sMxBvKV5WQUIwjdLufgHsMYwypsMGCJJLBheL8z8LFkEcERlZdJn
 4DKtYUUFvvwfSJpeiGKzgleVHHWYMwXU1CVzJPYwv7IpDJNqIMz95srLSzR/EKZSHm5O
 K5p7x9a6tj/Y3rQiWTjG1+zzWbJSYqTk/lO+IbeLNbFZT4OSXWKrTxWUgIBawsV7x3CE
 SMfA==
X-Gm-Message-State: AOAM530m+Yaf6fkDDxQcK7eVXOLg11Jxg3jPGXwbtgVYE/IZ8/frXw5z
 BxGOfalQanzeitkJYIMbW4y5Kw==
X-Google-Smtp-Source: ABdhPJzbEgAdOn5Dla25twrnFWibCM+By/CY94AZjk2Mnb7Wp+Gcych9tY+BqMoYs3yiFXxox2M6aQ==
X-Received: by 2002:a05:6000:12c8:: with SMTP id
 l8mr9792905wrx.148.1591362134700; 
 Fri, 05 Jun 2020 06:02:14 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id d5sm12890866wrb.14.2020.06.05.06.02.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 06:02:14 -0700 (PDT)
Date: Fri, 5 Jun 2020 13:02:12 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200605130212.GA6303@chromium.org>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605121459.GS16711@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605121459.GS16711@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_060216_618587_67F50832 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, bgolaszewski@baylibre.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, louis.kuo@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 03:14:59PM +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> Thank you for the update.
> 
> On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > control to set the desired focus via IIC serial interface.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/media/i2c/Kconfig  |  13 ++
> >  drivers/media/i2c/Makefile |   1 +
> >  drivers/media/i2c/dw9768.c | 566 +++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 581 insertions(+)
> >  create mode 100644 drivers/media/i2c/dw9768.c
[snip]
> > +static int dw9768_runtime_suspend(struct device *dev)
> > +{
> > +	struct i2c_client *client = to_i2c_client(dev);
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +
> > +	dw9768_release(dw9768);
> > +	regulator_bulk_disable(ARRAY_SIZE(dw9768_supply_names),
> > +			       dw9768->supplies);
> > +
> > +	return 0;
> > +}
> > +
> > +static int dw9768_runtime_resume(struct device *dev)
> 
> __maybe_unused for this and the suspend callback.
>

These are always used. If runtime PM is disabled, they are called
explicitly in probe and remove.

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
