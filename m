Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010D93D599
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEGGupQ2gAOMhe913h0OK1IXeFVeufY49kvtLhlbuWw=; b=EL+W9XOZPm9ukD
	kElp/YjtH2ALVS89+SRyBOmZAsJaqBcm2PAGvTKs4kuBdgSYXPYzSnyUSMjIeZHGiLIwT9PiOtv0m
	m1eyoldpmH5AJDeeoHh54+47+yfAvoRSltQnaycm6+ElkrSuF9V2FNSqSvjAJTkqlcoW5rXkz+w7M
	gukdlDetdhRnjMHDxOWFTdHk/nPL1XE/VSraygTdD2e2eWVmdUo4EBN++A2Sc/XcyFomTCTMXsKP/
	lig5kpCFRS15/KCLW4E3sQTXnPFtyEkGnHt9Eg6V+gSCB/brM5DWHgEhW4m8AzWVCCgJfqXYBUSwr
	avQXrr8I91XJKg/CAV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halgd-0002md-8o; Tue, 11 Jun 2019 18:39:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halgU-0002m8-GL
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:39:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id d126so7987757pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 11:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zW6AynUQeh/d1MGikSw6rg9037amHgOpXgjZc/bYyo0=;
 b=gtHTXVgSsCW+WzGSqP5jD5k72gd1VwNjkRGZ6kyTYVbl9OaWD2braqloLb++ZYFoaW
 dbCaH+n3AgU4PKdA57lePWtbt4HHHDl1ElnATdqGqXSF9yVrYo76JPhNKS088vzV7GDN
 1CJ9ag9coDwUukCnp8mQHRFG78or4KyQfmzxd4kqOkRAl4hT/CRoKK6A3i6xzLoNwdvE
 62v61Cz/xHioGQvUIEttFjfCFwI47zsJvlj8yjxAo4u0cGbHPDcxEQxUy941mb/k5jTG
 8Joplh3e5y46cHQeocodgZMMxMEeFdefwVPuwtV3pGGphvTDuMsWt0xAmXTH9035qn7M
 KyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zW6AynUQeh/d1MGikSw6rg9037amHgOpXgjZc/bYyo0=;
 b=qjcgtNZbBNxX5lB8LKwqhM+wSARSy80z+iEof9hZx+bCse/k541yFaaN9OTukOfQbb
 uJe447gOcGuuNlZXj/7WgLuD0JwQT9Wv9VphK3tu+0f+G+ja+mwVuCi/4DPhg9+beE5E
 nPf3u4vWbRsV7kliRt2Rc9m4HFihiPu9Wkwmel0ewx2c+z1M/zBxZZcjkRsbMX9CLjJB
 wyugu/ONhKYIkDablMh0XSWSFpPrZpR+q470l0qHm8nmqlqdqP3NmUSQJRDs6gR90bfL
 kzgz1OqCA75PVznXKhqRkePbAqmjZ7E5scs1cgVbWz/Vf8BToXORB0s/AZaQkI1BGn7i
 2Ipw==
X-Gm-Message-State: APjAAAW7AAoOye26kypI8MMcA+J2VR7L1TSSEf/IO7bzW2eEEEsyBb1l
 L29BQGO1DP/JNoCOwJlAGzVzeA==
X-Google-Smtp-Source: APXvYqy9pS4xgDWNZze0LOrbLEksodwMGCOdwtad24aELFBqknW6/q8wGUEyNWy9Ls67LZYFBEhhgw==
X-Received: by 2002:a62:e511:: with SMTP id n17mr73761345pff.181.1560278388728; 
 Tue, 11 Jun 2019 11:39:48 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y22sm23485517pfo.39.2019.06.11.11.39.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 11:39:48 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:39:45 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190611183945.GP4814@minitux>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
 <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
 <20190610085542.GL4797@dell>
 <CAKv+Gu8rhxciy1cOG3B3pda9+p4R_COGrrqa7S_Rj9y2HeBxYw@mail.gmail.com>
 <20190610092245.GN4797@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610092245.GN4797@dell>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_113950_573683_0505C4B7 
X-CRM114-Status: GOOD (  28.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, linux-usb <linux-usb@vger.kernel.org>,
 wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Jun 02:22 PDT 2019, Lee Jones wrote:

> On Mon, 10 Jun 2019, Ard Biesheuvel wrote:
> 
> > On Mon, 10 Jun 2019 at 10:55, Lee Jones <lee.jones@linaro.org> wrote:
> > >
> > > On Mon, 10 Jun 2019, Ard Biesheuvel wrote:
> > >
> > > > On Mon, 10 Jun 2019 at 10:42, Lee Jones <lee.jones@linaro.org> wrote:
> > > > >
> > > > > This patch provides basic support for booting with ACPI instead
> > > > > of the currently supported Device Tree.  When doing so there are a
> > > > > couple of differences which we need to taken into consideration.
> > > > >
> > > > > Firstly, the SDM850 ACPI tables omit information pertaining to the
> > > > > 4 reserved GPIOs on the platform.  If Linux attempts to touch/
> > > > > initialise any of these lines, the firmware will restart the
> > > > > platform.
> > > > >
> > > > > Secondly, when booting with ACPI, it is expected that the firmware
> > > > > will set-up things like; Regulators, Clocks, Pin Functions, etc in
> > > > > their ideal configuration.  Thus, the possible Pin Functions
> > > > > available to this platform are not advertised when providing the
> > > > > higher GPIOD/Pinctrl APIs with pin information.
> > > > >
> > > > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > > >
> > > > For the ACPI probing boilerplate:
> > > > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > >
> > > > *However*, I really don't like hardcoding reserved GPIOs like this.
> > > > What guarantee do we have that each and every ACPI system
> > > > incorporating the QCOM0217 device has the exact same list of reserved
> > > > GPIOs?
> > >
> > > This is SDM845 specific, so the chances are reduced.
> > 
> > You don't know that.
> 
> All the evidence I have to hand tells me that this is the case.  Even
> on very closely related variants Qualcomm uses different H/W blocks
> for GPIO.
> 

I presume with this you mean that e.g. the 835 laptops doesn't sport a
QCOM0217?

> > > However, if another SDM845 variant does crop up, also lacking the
> > > "gpios" property, we will have to find another differentiating factor
> > > between them and conduct some matching.  What else can you do with
> > > platforms supporting non-complete/non-forthcoming ACPI tables?
> > >
> > 
> > Either we don't touch any pins at all if they are not referenced
> > explicitly anywhere
> 
> I guess this would require an API change, which is out of scope of
> this patch-set.  Happy to change this implementation later if the
> subsystem allows for it though.
> 

Last time we discussed this the _only_ offender was the loop issuing a
get_direction() on all descs towards the end of
gpiochip_add_data_with_key()

> > or we parse the PEP tables, which seem to cover
> > some of this information (if Bjorn's analysis is correct)
> 
> Maybe someone can conduct some further work on this when we start to
> enable or write a driver for the PEP (Windows-compatible System Power
> Management Controller).  The tables for the PEP look pretty complex,
> so this task would be extremely difficult if not impossible without
> Qualcomm's help.  I wouldn't even know how to extrapolate this
> information from the tables.
> 

Yeah that looks quite different, so I'm not sure how to tie that into
the current driver. But I'm fine with adding this for now, if PEP brings
a different approach we can always rip this out later.

Regards,
Bjorn

> > (if Bjorn's analysis is correct)
> 
> Bjorn is about to provide his Reviewed-by for this implementation.
> 
> -- 
> Lee Jones [?????????]
> Linaro Services Technical Lead
> Linaro.org ??? Open source software for ARM SoCs
> Follow Linaro: Facebook | Twitter | Blog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
