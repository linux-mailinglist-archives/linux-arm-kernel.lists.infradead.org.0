Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260961F885E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 12:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YMRq+dXbHA2OFE+SbV0LwTwrBVTbqIfdUhq20D38Ut4=; b=UhkgatxMDl7aO1L6e7vJfdmMY
	auBTyKyFEfI/92z/eNZlxIn9CEaoXBsD6eIofkebSpggs8i9eEZMFfnl4lal8nas/pyn00usofYhu
	VVzhAAydJwM+oaB+VR1OJD2vSqFZW2y/JT7SW10X1kd3QwBhXfC+nugoo61zrOw+hZvfSbcUPNlqj
	WpebGnUuoq4Nov7LHAAAvwOqBxLgcXU0/0aooKZoaK5mAkz7Tyz4LIwd0dGudW7pn7HS5O2Xxi3CI
	kUeYhoMyNlf35OCGQ2xTSX546euVwExSnegcE//YXzMGllrethPiJRvBO+eeYA26iES7ie5QQhCZ9
	sGNAf5YBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkPqs-00018B-V6; Sun, 14 Jun 2020 10:26:58 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkPqj-000176-Dh
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 10:26:51 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 0729722F99;
 Sun, 14 Jun 2020 12:26:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1592130396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gJxvGjLG+zCr4pQZGoAns/cjbZC5rD9SgUiVfLcsZLU=;
 b=BlnySnM1M9f1ZLAY/nIMAW9bAmVM+K1Bf0A3llGF/CTB6QOnLrIBj40JijOMu1qlQSjljA
 ZtMT+RwKwVKn+uGRrfs5xtJu6Q8SxuYPJCt9FvQTRBheTbAujw+6glWcKcLZOU7A3BmMWG
 pvRuQ/8ZNiI21iavo62b6Q0nAC/+PSc=
MIME-Version: 1.0
Date: Sun, 14 Jun 2020 12:26:30 +0200
From: Michael Walle <michael@walle.cc>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [RFC] MFD's relationship with Device Tree (OF)
In-Reply-To: <CAL_JsqK1BfYa2WfHFUwm9MB+aZVF5zehDSTZj0MhjuhJyYXdTA@mail.gmail.com>
References: <20200609110136.GJ4106@dell>
 <CAL_JsqK1BfYa2WfHFUwm9MB+aZVF5zehDSTZj0MhjuhJyYXdTA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <0709f20bc61afb6656bc57312eb69f56@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_032649_776182_C66B5742 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Mark Brown <broonie@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 GregKroah-Hartman <gregkh@linuxfoundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Am 2020-06-10 00:03, schrieb Rob Herring:
[..]
> Yes, we should use 'reg' whenever possible. If we don't have 'reg',
> then you shouldn't have a unit-address either and you can simply match
> on the node name (standard DT driver matching is with compatible,
> device_type, and node name (w/o unit-address)). We've generally been
> doing 'classname-N' when there's no 'reg' to do 'classname@N'.
> Matching on 'classname-N' would work with node name matching as only
> unit-addresses are stripped.

This still keeps me thinking. Shouldn't we allow the (MFD!) device
driver creator to choose between "classname@N" and "classname-N".
In most cases N might not be made up, but it is arbitrarily chosen;
for example you've chosen the bank for the ab8500 reg. It is not
a defined entity, like an I2C address if your parent is an I2C bus,
or a SPI chip select, or the memory address in case of MMIO. Instead
the device driver creator just chooses some "random" property from
the datasheet; another device creator might have chosen another
property. Wouldn't it make more sense, to just say this MFD provides
N pwm devices and the subnodes are matching based on pwm-{0,1..N-1}?
That would also be the logical consequence of the current MFD sub
device to OF node matching code, which just supports N=1.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
