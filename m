Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C257A4BBDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z/5+TZLKcLLMJlFYV88Zc8WzhzO+bsAAmSmKjL4yww=; b=CMDwtAJdKE2NOa
	FMpYiYdzu+rvi6rUUBE3zAyDNx9IumUvDEcazJo7ZreT+ufIq1XAtzw3inQ3hBQ1sMOdMIk/LaK+P
	ePHbRWq0VJ4jcfASuy3qPS7W3xsHMTLWSkF79XWI8Ci9bkKMUUOa9hfNrdn56bV1A/BQhf3LO2/6N
	/Q7uhZPiVXJmAqw+Ncuo8E0XgkGSfKFaINdrSMAIGh/Gmcs5E4kqw+WI4UUWbxg92TSe4kAGIJfok
	wyWI2msLwfd5cEhLN+/8KLdkdCW86dDs3FQBetPB+Cx3bp6zTsaiE8oUkY65kRbU0L4+fDBvYRzn/
	U23gZ0UerGqe2wioRMcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbm8-0007gC-21; Wed, 19 Jun 2019 14:41:24 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbly-0007et-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:41:16 +0000
Received: by mail-ua1-x941.google.com with SMTP id 8so10042935uaz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OuL65TuVUonkfDYC+yc+qXGA89Xa2MqrM+C9nMr53yk=;
 b=z50UkcJ9gf1Qmb0DTS3m0F60LXoKl9Uj4ZE8Y69bTITcVx9kxGwD+yUakZDgenUpMM
 MiLeZcvrSH41/V/cUogSecHNER0CvlIhvkiHNy5EJfw26PP0BzvukiV/lUlbZwUKN1In
 ueCcx0vPNC99LiCjH2KzgxVVXbor3azuonwTyx42gSTn7BQS+ALSzjZln+iIwctYArf4
 3PRJSa5Dp8WSlmBfV833+QccgrJMI9y5SZ8VmxWswoUCIlYbonz8KYJeQkUn6dxgz9Fl
 CYuWXwN2IGOrGGpCkJQIqsLEV/9T5TYERWJuRM5ICOL/hkav+FCiKs++ovFs8Mxev8Qs
 /U0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OuL65TuVUonkfDYC+yc+qXGA89Xa2MqrM+C9nMr53yk=;
 b=PqnKvAwzak8gea1x+5TekB0m8nHrTqwsd8TPnakl9QJWPq+KIuBpF/C3m5Y//PtLS4
 MjWmLW3znTaueEVr1zK/vhQ+SS+vIipHDTwylqoWLWAjqIce//4jmqYjf/iIeDpbDz6Q
 ezVYkMwv9BwDGCeeBro7CxAm7j0gEaN5e3tHjfadZM+I4tnvbscYdnUizibmAmBF2YBT
 UZBJ/RNzSmc4h7XSRqVt0EmEDPYZ+N/1D0yeV+oFR4OMoPOOTUsE/ekok8EjrjGhAbiU
 JfQL+TVsT7bW1Q0cQyIjavya/FaYn6JuNN8JFgdnkeJFUTAASU7JVJ5Dz973OYGUmQh1
 u67A==
X-Gm-Message-State: APjAAAX+42ClYfK2Sp2K4+0d5y7NGN+2pHewkibylm/5fpSGEyC4SMgp
 HquzOgKp7BheVwvjHZC3MlTQpomY26hi+AUD4LlMkw==
X-Google-Smtp-Source: APXvYqxiOhYGOm5J4KhiAdkkQECEzQdtrbEE+lhxjuEjI6r6F96s8L3Sc7YMCWr6KJmrx0p+YMydPuX3sCUGg9bvjMI=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr14379202uad.15.1560955272797; 
 Wed, 19 Jun 2019 07:41:12 -0700 (PDT)
MIME-Version: 1.0
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
 <CAPDyKFrJwpwUUX_q2kcR9QY_fv9Lgos+ixPmU6JMeJVqJAiFpg@mail.gmail.com>
 <5feac3fb-bef3-b7d1-57d6-81e115e1f555@xilinx.com>
 <CAPDyKFp_ZvSjFp2FGonzGsnc9xPyZ7qOCaRnX1SimBxLpfz9-Q@mail.gmail.com>
 <948514a0-e310-75fd-e8a8-6ef8bb14e41f@xilinx.com>
 <CAPDyKFp6O8rPZDZS4iKJam2+tXeen_ZMOXKw=WVzJNpBXcSc9g@mail.gmail.com>
 <MN2PR02MB60296837F9D1B3088667BE59C1EA0@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB60296837F9D1B3088667BE59C1EA0@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Jun 2019 16:40:36 +0200
Message-ID: <CAPDyKFqC7aGX+BSP7U162Viq8qoL_df+N=zP_6P9xbzSZseipw@mail.gmail.com>
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_074114_259051_8CB1E891 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, 18 Jun 2019 at 06:59, Manish Narani <MNARANI@xilinx.com> wrote:
>
> Hi Uffe,
>
> Thanks for the review. Please find my comments below.
>
> > -----Original Message-----
> > From: Ulf Hansson <ulf.hansson@linaro.org>
> > Sent: Monday, June 17, 2019 8:29 PM
> > To: Michal Simek <michals@xilinx.com>
> > Cc: Manish Narani <MNARANI@xilinx.com>; Rob Herring
> > <robh+dt@kernel.org>; Mark Rutland <mark.rutland@arm.com>; Adrian
> > Hunter <adrian.hunter@intel.com>; Rajan Vaja <RAJANV@xilinx.com>; Jolly
> > Shah <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Olof
> > Johansson <olof@lixom.net>; linux-mmc@vger.kernel.org; DTML
> > <devicetree@vger.kernel.org>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>
> > Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP
> > Platform Tap Delays Setup
> >
> > [...]
> >
> > > >>
> > > >>
> > > >>> In regards to the mmc data part, I suggest to drop the
> > > >>> ->set_tap_delay() callback, but rather use a boolean flag to indicate
> > > >>> whether clock phases needs to be changed for the variant. Potentially
> > > >>> that could even be skipped and instead call clk_set_phase()
> > > >>> unconditionally, as the clock core deals fine with clock providers
> > > >>> that doesn't support the ->set_phase() callback.
>
> In the current implementation, I am taking care of both the input and
> output clock delays with the single clock (which is output clock) registration
> and differentiating these tap delays based on their values
> (<256 then input delay and  >= 256 then output delay), because that is
> zynqmp specific. If we want to make this generic, we may need to
> register 'another' clock which will be there as an input (sampling) clock
> and then we can make this 'clk_set_phase()' be called unconditionally
> each for both the clocks and let the platforms handle their clock part.
> What's your take on this?

Not sure exactly what you are suggesting, but my gut feeling says it
sounds good.

How is tap delays managed for both the input clock and the output
clock? Is some managed by the clock provider (which is probably
firmware in your case) and some managed by the MMC controller?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
