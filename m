Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA0911CF94
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:18:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEKk/ua/wt0nQTYlQrbfIW7vcKJmDugGn95hELiDTzc=; b=eRQA9t4hepnx6g
	sGwg+KghEDNh4CnUI/nE8oTHc0kCLUtA1hYpiY/EXoEXQlvfVdhY8S/0EXEi3FfqrT3yW2+CQb4eC
	PM/WaFonvbSAchLb7/t4sO4VWJtXXFclxtfOSKX8W1bsN3rTO+NJX3xf3wnGlCx/vTEBPFvJ7g1Fk
	WCL2nJLlAazWVf7DtTbOJ+GbXTU/Q+UYTvO1SIHmHKd4WNyxLJeq5J6dNlUBTDtze2KDT9Ldu5Opv
	tvB0rDkOdtEamkQViUbKQMvCzuX7v+o63HvvuB4D+//IapQld2ModQiTVqPA3SerGH25UuvTkW2L0
	86Cu+yVFGZqQf1tcVluQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPIR-0006hX-MH; Thu, 12 Dec 2019 14:18:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPIE-0006gT-2m
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sLQKwGit9wLSgboUFNJSj0UuCKgTnkxAwBeCTVETGRM=; b=GhgvB6chdyHnUTDYNs015+Il8
 ODfPi+ysABPUR4KShO40i06LpIl6SBFQORMDqrMTR2tk5o9ZI4455WH50RipoykJ1xN3AByQhnkoY
 dK1yzNt/9Cm8gLK5xHxLNl9YrHfV11g+xYZc5E+Wdvq8tOtiJ95XTSBZjhbWdPWrdT1wAYh7wmQG3
 VPtn/nhGUpV8RfBYROZuyzUlnJqqLnN67O6ObAMclAoC6p/SvxZbtn9G51pm6njYYhfJzBIVFiFfH
 w6nnd0FpE80ItbAT2Lw49ekjdFa7nK5rR0F+0ojdBOAKnMwyMA4etvo75JUcURB7dc/eHzZiMMXCA
 Jyx/ehTkw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:40348)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ifPHr-000791-JH; Thu, 12 Dec 2019 14:17:51 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ifPHn-0006sN-Ar; Thu, 12 Dec 2019 14:17:47 +0000
Date: Thu, 12 Dec 2019 14:17:47 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v1] clk: Convert managed get functions to devm_add_action
 API
Message-ID: <20191212141747.GI25745@shell.armlinux.org.uk>
References: <3d8a58bf-0814-1ec1-038a-10a20b9646ad@free.fr>
 <20191128185630.GK82109@yoga> <20191202014237.GR248138@dtor-ws>
 <f177ef95-ef7e-cab0-1322-6de28f18ecdb@free.fr>
 <c0ccca86-b7b1-b587-60c1-4794376fa789@arm.com>
 <ba630966-5479-c831-d0e2-bc2eb12bc317@free.fr>
 <20191211222829.GV50317@dtor-ws>
 <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70528f77-ca10-01cd-153b-23486ce87d45@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_061814_120496_4364165C 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 02:53:40PM +0100, Marc Gonzalez wrote:
> On 11/12/2019 23:28, Dmitry Torokhov wrote:
> 
> > On Wed, Dec 11, 2019 at 05:17:28PM +0100, Marc Gonzalez wrote:
> >
> >> What is the rationale for the devm_add_action API?
> > 
> > For one-off and maybe complex unwind actions in drivers that wish to use
> > devm API (as mixing devm and manual release is verboten). Also is often
> > used when some core subsystem does not provide enough devm APIs.
> 
> Thanks for the insight, Dmitry. Thanks to Robin too.
> 
> This is what I understand so far:
> 
> devm_add_action() is nice because it hides/factorizes the complexity
> of the devres API, but it incurs a small storage overhead of one
> pointer per call, which makes it unfit for frequently used actions,
> such as clk_get.
> 
> Is that correct?
> 
> My question is: why not design the API without the small overhead?
> 
> Proof of concept below:
> 
> 
> diff --git a/drivers/base/devres.c b/drivers/base/devres.c
> index 0bbb328bd17f..76392dd6273b 100644
> --- a/drivers/base/devres.c
> +++ b/drivers/base/devres.c
> @@ -685,6 +685,20 @@ int devres_release_group(struct device *dev, void *id)
>  }
>  EXPORT_SYMBOL_GPL(devres_release_group);
>  
> +void *devm_add(struct device *dev, dr_release_t func, void *arg, size_t size)
> +{
> +	void *data = devres_alloc(func, size, GFP_KERNEL);
> +
> +	if (data) {
> +		memcpy(data, arg, size);
> +		devres_add(dev, data);
> +	} else
> +		func(dev, arg);
> +
> +	return data;
> +}
> +EXPORT_SYMBOL_GPL(devm_add);
> +
>  /*
>   * Custom devres actions allow inserting a simple function call
>   * into the teadown sequence.
> diff --git a/drivers/clk/clk-devres.c b/drivers/clk/clk-devres.c
> index be160764911b..8db671823126 100644
> --- a/drivers/clk/clk-devres.c
> +++ b/drivers/clk/clk-devres.c
> @@ -4,6 +4,11 @@
>  #include <linux/export.h>
>  #include <linux/gfp.h>
>  
> +static void __clk_put(struct device *dev, void *data)
> +{
> +	clk_put(*(struct clk **)data);
> +}
> +
>  static void devm_clk_release(struct device *dev, void *res)
>  {
>  	clk_put(*(struct clk **)res);
> @@ -11,19 +16,11 @@ static void devm_clk_release(struct device *dev, void *res)
>  
>  struct clk *devm_clk_get(struct device *dev, const char *id)
>  {
> -	struct clk **ptr, *clk;
> -
> -	ptr = devres_alloc(devm_clk_release, sizeof(*ptr), GFP_KERNEL);
> -	if (!ptr)
> -		return ERR_PTR(-ENOMEM);
> +	struct clk *clk = clk_get(dev, id);
>  
> -	clk = clk_get(dev, id);
> -	if (!IS_ERR(clk)) {
> -		*ptr = clk;
> -		devres_add(dev, ptr);
> -	} else {
> -		devres_free(ptr);
> -	}
> +	if (!IS_ERR(clk))
> +		if (!devm_add(dev, __clk_put, &clk, sizeof(clk)))
> +			clk = ERR_PTR(-ENOMEM);

You leak clk here.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
