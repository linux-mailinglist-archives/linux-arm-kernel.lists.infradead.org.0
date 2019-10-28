Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1144E7D51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 00:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3yCtcThKH4AHs2NrYJsk+G4SNvWZeF/EVnnT5/g+Yk=; b=cHXYH/CqCZaMSk
	sJ+zRU5YDkDs60oAu85XeZPdZ9p86nsvTTM/4XHJ4cA6P+SJnTvPhP4F2bI4IQZ9bcerSNvSm9CHl
	Nxxdnhj2Su8OKWgUB5p+GEDZ+PpHnRr8pn1qhVQW83rRhs676HsVVADssIJA1b9Gyx1Me0FfZrg7O
	T68Zz0BSInW2vYWjs6IYRNXhxenF0E/PVdnw2ED/FQlPBWZehYL3ZtR2wPX4vLcsB+mcJTj+RHe0l
	1Bt7qfkqSz2cIhxf3yluI747TnjVQ1+3cdzWuAIc8q4mWVcvqeelBD88wTMLIg+tWogsrKGUd+VQ6
	nUIBed1pbrFruW/UWRwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPEsJ-0004hL-Qu; Mon, 28 Oct 2019 23:56:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPEs9-0004gp-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 23:56:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572306987; bh=VBiEzOAOkY+HDeeyqrk83KEuJjLXMJSGG+CM5QrE39g=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=YufQZxInPttFYT6kzs3T5+jAucMqqOWMW/BQdx8nH+P1aKOpk54J+TJTZCy5axAgP
 aB3T2T6Et0qFkkNERhYiJSCfK6LYbfnyVbP8svit4mwtQiSAcK8UTI7BW639zK7Efp
 JL4dB+NkMq9L5KuxC0cywXAqiUAYULDboPx7Qz8M=
Date: Tue, 29 Oct 2019 00:56:26 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH] input: sun4i-lradc-keys: Add wakup support
Message-ID: <20191028235626.5afvszxtppsieywi@core.my.home>
Mail-Followup-To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-sunxi@googlegroups.com, Hans de Goede <hdegoede@redhat.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191028221502.3503543-1-megous@megous.com>
 <20191028233828.GA57214@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028233828.GA57214@dtor-ws>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_165629_731902_F857C130 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 linux-sunxi@googlegroups.com,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Dmitry,

On Mon, Oct 28, 2019 at 04:38:28PM -0700, Dmitry Torokhov wrote:
> Hi Ondrej,
> 
> On Mon, Oct 28, 2019 at 11:15:02PM +0100, Ondrej Jirman wrote:
> > Allow the driver to wakeup the system on key press.
> > 
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  drivers/input/keyboard/sun4i-lradc-keys.c | 22 ++++++++++++++++++----
> >  1 file changed, 18 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/input/keyboard/sun4i-lradc-keys.c b/drivers/input/keyboard/sun4i-lradc-keys.c
> > index 4a796bed48ac..bba679d7b54b 100644
> > --- a/drivers/input/keyboard/sun4i-lradc-keys.c
> > +++ b/drivers/input/keyboard/sun4i-lradc-keys.c
> > @@ -22,6 +22,8 @@
> >  #include <linux/module.h>
> >  #include <linux/of_platform.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/pm_wakeirq.h>
> > +#include <linux/pm_wakeup.h>
> >  #include <linux/regulator/consumer.h>
> >  #include <linux/slab.h>
> >  
> > @@ -226,8 +228,7 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
> >  {
> >  	struct sun4i_lradc_data *lradc;
> >  	struct device *dev = &pdev->dev;
> > -	int i;
> > -	int error;
> > +	int i, error, irq;
> >  
> >  	lradc = devm_kzalloc(dev, sizeof(struct sun4i_lradc_data), GFP_KERNEL);
> >  	if (!lradc)
> > @@ -272,8 +273,13 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
> >  	if (IS_ERR(lradc->base))
> >  		return PTR_ERR(lradc->base);
> >  
> > -	error = devm_request_irq(dev, platform_get_irq(pdev, 0),
> > -				 sun4i_lradc_irq, 0,
> > +	irq = platform_get_irq(pdev, 0);
> > +	if (irq < 0) {
> > +		dev_err(&pdev->dev, "Failed to get IRQ\n");
> > +		return irq;
> > +	}
> > +
> > +	error = devm_request_irq(dev, irq, sun4i_lradc_irq, 0,
> >  				 "sun4i-a10-lradc-keys", lradc);
> >  	if (error)
> >  		return error;
> > @@ -282,6 +288,14 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
> >  	if (error)
> >  		return error;
> >  
> > +	device_init_wakeup(dev, true);
> 
> I do not think we want to do this unconditionally. Can we maybe key off
> "wakeup-source" device property.

Sure thing.

> > +
> > +	error = dev_pm_set_wake_irq(dev, irq);
> > +	if (error) {
> > +		dev_err(dev, "Could not set wake IRQ\n");
> > +		return error;
> > +	}
> > +
> 
> I wonder if we could teach platform driver core to handle this for us.

Not sure, some drivers do enable/disable wake_irq by hand in suspend/resume
callbacks, so it would probably need to be opt-in somehow. I guess calling the
function like this is one way to make it opt-in.

The other way may be by passing a flag somewhere, like to
request_threaded_irq. Did you have something more concrete in mind?

regards,
	o.

> Thanks.
> 
> -- 
> Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
