Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0763F10C029
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 23:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ABlDYMnof+WJchsI7UeamVJcVUEmfCSI0EA24ZF9OM=; b=SbYpn8J/m4f6St
	VpZLf/GdOMFR8/iywvYJ6RnzRvfUMr5C/yAL2Y6P6DcGrXgGS3YxlSyXD6ymI32NDmeGR9g7eHbjv
	PX2XQTB2sdnUOtpc+uqaiLalC1EhHXp3L/7mOKySVmzEHnbPVr9ySj0EKktDvhOInh3yXwvmTLE9O
	2ql1BpHOQz32lu4GM6vp07dsjxOIqg3y2KizgMBATmHBF1VjKCCKbS9upvokyhz6+YBeU1GzjByhT
	4M6ZHMH0mJMlwbRLYXiQdy14JtfVJN2SOlJewsplPIb8tfHRIP7Y1lbRwuEiMm0rFGxBBPO9Qo0p/
	pII2nHD9oEXy8KBA+8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5jm-0005wC-Ai; Wed, 27 Nov 2019 22:24:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5jc-0005vH-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 22:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1574893467; bh=03v6MvLb4Npw9AjFHB6zyIbUbdm8FNg3ot9ZMiWCnvw=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=SZtJFJb99qPrcwh17WvZ7KCnSMzXBjnAnvHpu7Gn3xSDHVbhUiaRVRhlTirhzYsKX
 FZGf0WqtJx2bGpPWY8QtMbI6X9uvKcrlp5LJzPW9WjyQa/bG20uXYeqqn0Y+6Xqoz1
 BjXvrmC8WC92tmr7mgjROc7CyUWoyPncd+CpV7BY=
Date: Wed, 27 Nov 2019 23:24:27 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
Message-ID: <20191127222427.coyeggbxs5miioxn@core.my.home>
Mail-Followup-To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Frank Lee <tiny.windzz@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
 <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
 <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
 <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_142432_726894_A8D2A1AE 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>, Frank Lee <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 11:48:32AM -0800, Vasily Khoruzhick wrote:
> On Wed, Nov 27, 2019 at 11:44 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > Hello Vasily,
> >
> > Thank you very much for your work on this.
> > This looks good to me.
> 
> Thanks!
> 
> > By the way, I would like to ask comments about adding the following code.
> 
> Can we add it as follow up patch? I don't think that I have a device
> with working suspend to test it and I'm hesitant to add any code that
> I can't test.

I have, but it doesn't use any of the clocks and resets, so it wouldn't
test this fully, and basicaly doesn't need re-calibration at all, probably.

So that may be one feedback. On a83t, I'd made these callbacks a no-op.

regards,
	o.

> >
> > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > index c0ed60782b11..579dde5e0701 100644
> > --- a/drivers/thermal/sun8i_thermal.c
> > +++ b/drivers/thermal/sun8i_thermal.c
> > @@ -629,11 +629,63 @@ static const struct of_device_id of_ths_match[] = {
> >  };
> >  MODULE_DEVICE_TABLE(of, of_ths_match);
> >
> > +static int __maybe_unused sun8i_thermal_suspend(struct device *dev)
> > +{
> > + struct ths_device *tmdev; = dev_get_drvdata(dev);
> > +
> > + clk_disable(tmdev->mod_clk);
> > + clk_disable(tmdev->bus_clk);
> > +
> > + reset_control_assert(tmdev->reset);
> > +
> > + return 0;
> > +}
> > +
> > +static int __maybe_unused sun8i_thermal_resume(struct device *dev)
> > +{
> > + struct ths_device *tmdev; = dev_get_drvdata(dev);
> > + int error;
> > +
> > + error = reset_control_deassert(tmdev->reset);
> > + if (error)
> > + return error;
> > +
> > + error = clk_enable(tmdev->bus_clk);
> > + if (error)
> > + goto assert_reset;
> > +
> > + clk_set_rate(tmdev->mod_clk, 24000000);
> > + error = clk_enable(tmdev->mod_clk);
> > + if (error)
> > + goto bus_disable;
> > +
> > + sun8i_ths_calibrate(tmdev);
> > +
> > + ret = tmdev->chip->init(tmdev);
> > + if (ret)
> > + goto mod_disable;
> > +
> > + return 0;
> > +
> > +mod_disable:
> > + clk_disable(tmdev->mod_clk);
> > +bus_disable:
> > + clk_disable(tmdev->bus_clk);
> > +assert_reset:
> > + reset_control_assert(tmdev->reset);
> > +
> > + return 0;
> > +}
> > +
> > +static SIMPLE_DEV_PM_OPS(sun8i_thermal_pm_ops,
> > + sun8i_thermal_suspend, sun8i_thermal_resume);
> > +
> >  static struct platform_driver ths_driver = {
> >   .probe = sun8i_ths_probe,
> >   .remove = sun8i_ths_remove,
> >   .driver = {
> >   .name = "sun8i-thermal",
> > + .pm = &sun8i_thermal_pm_ops,
> >   .of_match_table = of_ths_match,
> >   },
> >  };
> >
> > Yangtao
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
