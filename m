Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB7519BEE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmSiFJdMHzWXbz0L+lTBNo4zzDR6lXUce6ihsZtV5Hs=; b=U9L02bZ+hKpFtC
	TgE2ps7jFMQQj0fvajodtY7vAPDcQFb3XKYZw8lhxe4e/5XrUoUH93NaQcVoL+rPOBMstozQzUlFf
	mzLN37jj6aLj4g46Liu2Bf6J4o/KrRnUA1uBbsCVAxr2nNDRLltopR/9uA7cJ/aYDTWPLnqbcVwP8
	KTk4p2uVgKmv59KjM4DsPz6xxpiUQ/zZeqxMW2FZ72aL00Q2IN3hVVEWHln5/FDJM28ShA7l3chX0
	xX9uhMv28ttiY2Cxla+j9hiNXczU3SbYRBMDowcvwYc+NO4ar4VEx4JZ0TFIxv9mzOA6xCm43JxGc
	5GAIjQPFdcgHJKmvIOGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwST-0005Xe-5K; Thu, 02 Apr 2020 09:48:21 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwSM-0005WM-Dh
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:48:15 +0000
Received: by mail-ed1-f65.google.com with SMTP id z65so3387756ede.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 02:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EebgA10aQonHAdiMTRoJOB7z11b/IU502qlsS+rdf6o=;
 b=T9pw5amkK+1BtLAeW01A0cN+Avu8qRPBGFm0NPSZX+zwwNQNC8Ouy/YV75ArzfjC4i
 c7hclc+mhISFK1vjBm6webT1m6SMwBdsKNvAAjISz3eXSTAFAmwENQF1ARXyIudC0Qmw
 b+SRjCQrpRMSChHh52JyLNTb8ny1oGHIZSWvHj82ZvN/K8/KR76l0uk/fY+21QO5sFI+
 cD5zpLd6UYO+RCc4owj0orx5Q56zaeWSUId9kGP+1frUREZ3lM1YaNA5Ksss+sO+5zdt
 Zg2Km0s/YvMqJgklLtDFZINd0NzsyON73vSokSz7C7D8G2LWg8MF3qrwtMviPSHeUnLw
 gfZQ==
X-Gm-Message-State: AGi0PuYKcfOLeY7M9WObaMGQ71NlQsiHD9skWXN1qGUBidG1/osDpy6x
 JNo/kLLmDl1KIjMcB9Vz0ks=
X-Google-Smtp-Source: APiQypIF74oGksjMDueJN1n5kxiy+DMCIipIZolflLnnlWIJFFfGO84ldJuhdl2ALOj87wiqKoQ0fQ==
X-Received: by 2002:a17:906:9ca:: with SMTP id
 r10mr2262131eje.151.1585820891869; 
 Thu, 02 Apr 2020 02:48:11 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id qk2sm1008399ejb.80.2020.04.02.02.48.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 02 Apr 2020 02:48:11 -0700 (PDT)
Date: Thu, 2 Apr 2020 11:48:08 +0200
From: 'Krzysztof Kozlowski' <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH] tty: samsung_tty: 32-bit access for TX/RX hold registers
Message-ID: <20200402094808.GA21903@kozik-lap>
References: <CGME20200401082749epcas2p2a774da515805bc3f761b6b5a8dc9e3d2@epcas2p2.samsung.com>
 <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <20200401085548.GC2026666@kroah.com>
 <20200401091952.GA14425@kozik-lap>
 <000001d608d3$5faa8260$1eff8720$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001d608d3$5faa8260$1eff8720$@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_024814_461440_8136E5F2 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, hyunki00.koo@gmail.com,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 06:44:58PM +0900, Hyunki Koo wrote:
> On Wed, Apr 01, 2020 at 6:20:20PM +0900, Krzysztof Kozlowski
> wrote:
> > On Wed, Apr 01, 2020 at 10:55:48AM +0200, Greg Kroah-Hartman
> > wrote:
> > > On Wed, Apr 01, 2020 at 05:27:20PM +0900, Hyunki Koo wrote:
> > > > -	if (np)
> > > > +	if (np) {
> > > >  		of_property_read_u32(np,
> > > >  			"samsung,uart-fifosize", &ourport->port.fifosize);
> > > >
> > > > +		if (of_property_read_u32(np, "reg-io-width", &prop) ==
> > 0) {
> > > > +			switch (prop) {
> > > > +			case 1:
> > > > +				ourport->port.iotype = UPIO_MEM;
> > > > +				break;
> > > > +			case 4:
> > > > +				ourport->port.iotype = UPIO_MEM32;
> > > > +				break;
> > > > +			default:
> > > > +				dev_warn(&pdev->dev, "unsupported
> > reg-io-width (%d)\n",
> > > > +						prop);
> > > > +				ret = -EINVAL;
> > > > +				break;
> > > > +			}
> > > > +		}
> > > > +	}
> > > > +
> > >
> > > Does this mean that reg-io-width is now a required property for all
> > > samsung uarts?  Does this break older dts files?  Or should you
> > > fall-back to the previous operation if the attribute is not there?
> > 
> > Yes, it looks like silently breaking all boards.  Since
> > of_property_read_u32() will return errno, the warning message won't be
> > printed and all register reads will fail (return 0).
> > 
> > This looks like not tested on real HW.
> > 
> > Best regards,
> > Krzysztof
> 
> [Hyunki Koo] 
> reg-io-width =4 is required for Samsung uart
> To do not break older dts files, I will set default value in else of of_property_read_u32 like below.
> +		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
> + ...
> +		} else {
> +			ourport->port.iotype = UPIO_MEM;
> +		}

Thanks. Also, please test your patch on available Exynos boards, e.g.
Odroid XU4 or HC1.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
