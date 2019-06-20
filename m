Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD48D4CECF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWx85fJyK18jC0dglKFGQmVJULWpTKaP9dYfqk/7ikU=; b=oopGfthMgHyRq0
	VJDbCFpBK9GzLjLMgVcT9hcwNCzVdx0gJGTZAwVwbkh9S7x+2F/DXtPMje02SQuES4FrXNOIcftep
	UflbC51T1+xXx5H1U54zvIZ0AodJe7W0OGtpkdGvYGKT1+RryBHKWN7hEBCUEKFnT3WZbF5oPv1oN
	afDaEf1z8kws6NILyIeVkSwoXKlnWiRiX/0AmKTCR/OBMSaRjaOuqkmPJpF6XtMD4Vnf01FskNk15
	hvQlc13MzwV/MXZdRFYiMh6R2YJg5Nbb7UD2qQVfiQkKPHh5cxPmUMwEs0mPfap7KhXr85tOX/xl0
	aUk9Y55/jJhJzZjA2Z3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxCx-0001oW-0u; Thu, 20 Jun 2019 13:34:31 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxCg-0001nj-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:34:15 +0000
Received: by mail-vs1-xe43.google.com with SMTP id v129so1536435vsb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 06:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lc/q2X+pawBjOcnjA6oAKxvqiYph1jdqY4goob1kTPs=;
 b=tdvbkHw9yUtnvDH/DJ4qWmkXoSxhraltCRvY1X1IFBEL7iCTQy4CP1dWXT+/akyp6q
 JVcDjnV1Zb2+jCu7Z8+abWILa4iswW67/+nL0CtxhU62ToEpO6cshXSsn5K2lqTqKXLe
 yysxyF4XMeEWHl51FGMFhtRL5QaJzYFtKNX2N2aX4eXe79A5KNyH7+CttCOsIC2I5EoJ
 iBe301EIgQtd/7pUFr9efWvPmIqELB2tSqtUyaHsdojov0JtFBfBCUv5RFCWK8AtGL9K
 n2owLAiOq75ICmeuyg+YvAqD57IyxLsFZAQg7BeIGNYjiZn4pRme4hDDuobgtTT8ky0T
 OH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lc/q2X+pawBjOcnjA6oAKxvqiYph1jdqY4goob1kTPs=;
 b=S2o4ZdMuMKi8SjWQALBZq8nQKdCYw/LujZh1cCGp8dB2dovrKjHr2wxGBLnai4BpMA
 1r6xhmEpAff91lCZsEHrcXMITzKgs0sqtV2UWhsEyfJfAV8a6NsVdIz55vxlG6g+WReW
 Iw4CsZi8v4Fwvb3URWct67nMWri31owAlRBkUCDle22ttayOYjWKpl1v7paA+faWdjGb
 3HkOsnvbIJXIE0C+NniFo9DFjxyV3bKHLTPIyh6MNOjAhVcWvrARdPQoNhyA/KWVJ+Az
 n8Hu7ba9aIWMFF2ZG2V16zOffCRLTJQT3YKM+sbFVwNjzHMQTHb4cYH4Kyuh5KlZ59L+
 2p3g==
X-Gm-Message-State: APjAAAVvGr6NeyxL7Rlg7xPbANrg+fqCMQk/ac7ENZi1UkcywOVHcUn+
 XkNYn4mQzL4eAmXWqJLP6BaUPC74zkG9lo57D0B0tZSLwpw=
X-Google-Smtp-Source: APXvYqyVxyq7u8zNpM4Beo3pE18Ytv/hNPQHDG2Iz7I2nebi3e7qnCAQv4cYrfQ+b9EBhFO/oJjbJ1VfrfyqTZOoADI=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr21368556vsp.191.1561037651820; 
 Thu, 20 Jun 2019 06:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <MN2PR02MB6029DB87CEE32655B0F1E794C1E50@MN2PR02MB6029.namprd02.prod.outlook.com>
 <CAPDyKFqb3uRU1XbrioSw6UZ5atZ8WwZNhQ_yq2+3JfxXZCxr7g@mail.gmail.com>
 <MN2PR02MB602935234A2A779B5A05CD63C1E40@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB602935234A2A779B5A05CD63C1E40@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 20 Jun 2019 15:33:34 +0200
Message-ID: <CAPDyKFqwe7ss6r99Dxg_OFjKUmCYK_k3pyfYAe62BM7H=a4A7w@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_063414_056381_FCB929C1 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 10:14, Manish Narani <MNARANI@xilinx.com> wrote:
>
> Hi Uffe,
>
>
> > -----Original Message-----
> > From: Ulf Hansson <ulf.hansson@linaro.org>
> > Sent: Wednesday, June 19, 2019 7:09 PM
> > To: Manish Narani <MNARANI@xilinx.com>
> > Cc: Michal Simek <michals@xilinx.com>; Rob Herring <robh+dt@kernel.org>;
> > Mark Rutland <mark.rutland@arm.com>; Adrian Hunter
> > <adrian.hunter@intel.com>; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> > <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Olof
> > Johansson <olof@lixom.net>; linux-mmc@vger.kernel.org; DTML
> > <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>
> > Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
> > Platform Tap Delays Setup
> >
> > On Wed, 19 Jun 2019 at 10:40, Manish Narani <MNARANI@xilinx.com> wrote:
> > >
> > > Hi Uffe,
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ulf Hansson <ulf.hansson@linaro.org>
> > > > Sent: Monday, June 17, 2019 5:51 PM
> > > [...]
> > > >
> > > > The "const struct zynqmp_eemi_ops *eemi_ops; should then be moved into
> > > > a clock provider specific struct, which is assigned when calling
> > > > sdhci_arasan_register_sdclk. I understand that all the clock data is
> > > > folded into struct sdhci_arasan_data today, but I think that should be
> > > > moved into a "sub-struct" for the clock specifics.
> > > >
> > > > Moreover, when registering the clock, we should convert from using
> > > > devm_clk_register() into devm_clk_hw_register() as the first one is
> > > > now deprecated.
> > >
> > > Just a query here:
> > > When we switch to using devm_clk_hw_register() here, it will register the
> > clk_hw and return int.
> > > Is there a way we can get the clk (related to the clk_hw registered) from the
> > > clock framework?
> > > I am asking this because we will need that clk pointer while calling
> > clk_set_phase() function.
> >
> > I assume devm_clk_get() should work fine?
>
> This clock does not come through ZynqMP Clock framework. We are initializing it in this 'sdhci-of-arasan' driver and getting only the clock name from "clock_output_names" property. So I think devm_clk_get() will not work here for our case.

Well, I guess you need to register an OF clock provider to allow the
clock lookup to work. Apologize, but I don't have the time, currently
to point you in the exact direction.

However, in principle, my point is, there should be no difference
whether the clock is registered via the "ZynqMP Clock framework" or
via the mmc driver. The *clk_get() thing need to work, otherwise I
consider the clock registration in the mmc driver to be a hack. If you
see what I mean.

> I have gone through the clock framework and I found one function which may be used to create clock from clock hw, that is ' clk_hw_create_clk()' which can be used from our driver, however this needs change in the clock framework as below :
>
> ---
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index aa51756..4dc69ff 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -3420,6 +3420,7 @@ struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
>
>         return clk;
>  }
> +EXPORT_SYMBOL_GPL(clk_hw_create_clk);
>
>  static int clk_cpy_name(const char **dst_p, const char *src, bool must_exist)
>  {
> diff --git a/drivers/clk/clk.h b/drivers/clk/clk.h
> index d8400d6..2319899 100644
> --- a/drivers/clk/clk.h
> +++ b/drivers/clk/clk.h
> @@ -22,17 +22,9 @@ static inline struct clk_hw *of_clk_get_hw(struct device_node *np,
>  struct clk_hw *clk_find_hw(const char *dev_id, const char *con_id);
>
>  #ifdef CONFIG_COMMON_CLK
> -struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
> -                             const char *dev_id, const char *con_id);
>  void __clk_put(struct clk *clk);
>  #else
>  /* All these casts to avoid ifdefs in clkdev... */
> -static inline struct clk *
> -clk_hw_create_clk(struct device *dev, struct clk_hw *hw, const char *dev_id,
> -                 const char *con_id)
> -{
> -       return (struct clk *)hw;
> -}
>  static struct clk_hw *__clk_get_hw(struct clk *clk)
>  {
>         return (struct clk_hw *)clk;
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index f689fc5..d3f60fe 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -18,6 +18,7 @@
>
>  struct device;
>  struct clk;
> +struct clk_hw;
>  struct device_node;
>  struct of_phandle_args;
>
> @@ -934,4 +935,15 @@ static inline struct clk *of_clk_get_from_provider(struct of_phandle_args *clksp
>  }
>  #endif
>
> +#ifdef CONFIG_COMMON_CLK
> +struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
> +                             const char *dev_id, const char *con_id);
> +#else
> +static inline struct clk *
> +clk_hw_create_clk(struct device *dev, struct clk_hw *hw, const char *dev_id,
> +                 const char *con_id)
> +{
> +       return (struct clk *)hw;
> +}
> +#endif
>  #endif
> ---
>
> This change should help other drivers (outside 'drivers/clk/') as well for getting the clock created from clk_hw.
> Is this fine to do?

I think this is the wrong approach, see why further above.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
