Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818A420FE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFo5BXttn4+8nTKWouZORvJKwml2OfdHiAKcC83Y4CY=; b=F8J0RCQNl/18fz
	HHf/oWvaxCb4gaZm0BjtnOs0imqQ7C/U/D0hn1Bib5BtjhscZ1cJ1J6PuE4ebVwtGD6jkMD9mngtK
	wdE/6SiVRiPEMyVhBIDbWw2lniYXSr8bb2GbHEFI2nLEzDPvE9BoE4mgIX0/jXthf3/vI5y7rQfwB
	Mh0yr8NSy3oiszVUkpRbtXPQlSArY850fLfhq798EmS1N7kEWwKKRlpFIVci+mX7GNRjXCYmhSMoG
	Fws8qnTzLQ5Hhp22vLRsQZ6fI0pLjSc0uRcrD6f6D7XXTEWRTgITyR+JNls6I77t+kTBk5VzWK/zD
	E3yzGbnf+jq5tl7QkQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRNfW-0000E1-Ba; Thu, 16 May 2019 21:12:02 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRNfO-0000DZ-LR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 21:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558041111; bh=UWj0YrD5goghSNEmjJRSGrmoJDVqz/hOGHbwFS3q6Qs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E3leZ/bqG3v4DiQd1HKgqnMfkAa7iAxPpIzoIlBCCQj3c66wJJ6OgdrtNC5DtmCNa
 Cp3h0aZBMHwlX3d5eNFGjc6m7TcqfiXv5VMD65SoK/sQmsXpRcKtskw2OjsUYtitVD
 0Im+OWUvLKknjoD+fI/QT1jHkX0x9EXUhozhOCzw=
Date: Thu, 16 May 2019 23:11:51 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190516211151.qwac53shdjhlwj4p@core.my.home>
Mail-Followup-To: Frank Lee <tiny.windzz@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 paulmck@linux.ibm.com, stefan.wahren@i2se.com,
 Linux PM <linux-pm@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>,
 enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 olof@lixom.net, David Miller <davem@davemloft.net>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_141155_209403_D1F5714E 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, marc.w.gonzalez@free.fr,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, Linux PM <linux-pm@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, olof@lixom.net, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Fri, May 17, 2019 at 01:51:56AM +0800, Frank Lee wrote:
> > > +static int tsens_probe(struct platform_device *pdev)
> > > +{
> > > +     struct tsens_device *tmdev;
> > > +     struct device *dev = &pdev->dev;
> > > +     int ret;
> > > +
> > > +     tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> > > +     if (!tmdev)
> > > +             return -ENOMEM;
> > > +
> > > +     tmdev->dev = dev;
> > > +     tmdev->chip = of_device_get_match_data(&pdev->dev);
> > > +     if (!tmdev->chip)
> > > +             return -EINVAL;
> > > +
> > > +     ret = tsens_init(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret = tsens_register(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret = tmdev->chip->enable(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > >
> > > +     platform_set_drvdata(pdev, tmdev);
> >
> > Your registration should be the very last thing you do. Otherwise, you
> > have a small window where the get_temp callback can be called, but the
> > driver will not be functional yet.
> No. Anyway, ths data qcquisition is ms level.

Tz code can change in the future, and call the get_temp callback during
registration, and this would break. It's better to be correct, than make
dangerous assumptions. So platform_set_drvdata should be done somewhere 
prior to init_resource.

Enable should be after register though. Because otherwise you may be calling
tz update on non-registered tz from an interrupt handler.

> > > +     return ret;
> > > +}
> > > +

regards,
	o.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
