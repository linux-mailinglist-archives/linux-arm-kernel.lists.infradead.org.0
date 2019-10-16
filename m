Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEDCD919D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gReFZPGA7fJMNNDV3wOtxsmh8LSWCcgwSwXzb/HAbII=; b=dg46YAn5zLp5+j
	VlOr0sOM7G4PuwKmEPNo4MCTO6q/7bj8E3tkwaN77fIl36JMYXLxpTFWsTBIO7cP+1nBOikZfhB6Y
	ek7cj/mnZkudERNIp10k7UblhoNoRu9/YLcuPhrb3w+jchbph/JtlTVt0FQD7JaH+jaaCzRxU/QWa
	SXb91y4vxPdsMZtP7ZOt8fkfDD/AUiJNBbt5FYqp3t1GBek9IeeMiTDGqe3CzwjwE5Nz7uoEsQtsf
	KM1NIYIJR4BDrR2E1yB4FYh46c9OGb9z0xTBPj3N+xt6KbINWykCZCnhQg7FydaX5L+2uJUDbRlgX
	NcGiqgjArzDcfs07kZjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKioW-0000ra-1i; Wed, 16 Oct 2019 12:54:04 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKioK-0000qe-9E
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:53:53 +0000
Received: by mail-qt1-x844.google.com with SMTP id u22so35871028qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 05:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P/sRs2+kPjcvwd2trmOBWPVdM0AxawvVsZ+s8sAO7/4=;
 b=TsPMzUgWcdtdkasHhYq577HFiCkshIqaxslChEP+do1RFpTIxW2jQRhCLSPwbd5x8i
 U7niU6BZWK/agFFkyA+6MFgZbwkW60EosnfY+llAQGBocfTcp4KRF8J/zJn8tfy+Xn4R
 ND/tIJ4q5KZ7QKtwldwq2k59a5s7at2G3Hi8BXC6iZm33w3oVf21uxvJWvsoT6eTs4Vn
 WDL+yMSxQwFiUsYSJ7A7I+v43eHl0YHYHoIzhjWanzIpiZ7RpplDgnbKGyR9Qf/+l5dt
 /jBMTe3E/dc+CJIqaHslN4E+fQmzn4yXKprR+7pYhIDJP/ZUFpJZXfCOGoH5zVOCAejO
 Ui3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P/sRs2+kPjcvwd2trmOBWPVdM0AxawvVsZ+s8sAO7/4=;
 b=Is3JhfqPR0v4Qlaz6zJx003//2dsmB0SCv0kat/dJAQIpn7X0oqytTFsQ3oAx+PnHC
 QDO5thbmWaCtEYIglYBjofzm64z8Lfb5aK2igLV9BVX4qjAqnKVpYW+FB1ICYoWLGv4S
 Zu3ng//NTg35E5WEbNdFKkGYO6CTCQmdAnXAYC6kWkVuJ+s3cqbId9EFlRIdfNXgRDil
 nCsFWooaGokZx5Jc5QWTpeGoynVrM2gnSm4m8DEkvQqz8n3xH8zmxQsuGgDvjVzqgfHN
 xFnBSB0gxkOdnois8rij1KEo/XgAsm+go+5EwLg/f1rzGXaqQVjwVQvf+MisGKo7aIUv
 E+Gg==
X-Gm-Message-State: APjAAAUXrHgCe6EQa0RZ6aGq/SBa2lTVeVWG2Ai2B4/6i8oiK8tAjwKA
 8j+Nhamagaocx3aRUSt2wAGzrM/YQZ1t3PtbRWDgmQ==
X-Google-Smtp-Source: APXvYqxRmpmcyaCxmLmkEi0JWpxgYlv/RpJs/yNT3A1lP3hXCkiugyGea31zdLuV3cm9n/Bm5GfFph4HfEVVYNrBVag=
X-Received: by 2002:ac8:3ac6:: with SMTP id x64mr33736244qte.51.1571230430797; 
 Wed, 16 Oct 2019 05:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191004012525.26647-1-chris.packham@alliedtelesis.co.nz>
 <20191004012525.26647-3-chris.packham@alliedtelesis.co.nz>
 <CACRpkdYWLTjiSQo_VTeReL1CfEO3h_8ONbdCk=PD1x+oc2ggCg@mail.gmail.com>
 <628c495994a0648d956bc663ea8fdcfa6f439802.camel@alliedtelesis.co.nz>
In-Reply-To: <628c495994a0648d956bc663ea8fdcfa6f439802.camel@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:53:39 +0200
Message-ID: <CACRpkdb8o9UU0W1FJ4=KYiV3CUEUkXbR4CFY7XKdJG2O8sSJFA@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: Add xgs-iproc driver
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055352_328439_029B7922 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Richard Laing <Richard.Laing@alliedtelesis.co.nz>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:08 AM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
Me:

> > I think this should be a chained interrupt handler (see below how to
> > register it).
> >
> > See e.g. drivers/gpio/gpio-ftgpio010.c for an example:
> > change function prototype, no return value, use
> > chained_irq_enter/exit(irqchip, desc); etc.
> >
>
> I don't think a chained interrupt handler can work. The problem is that
> the parent irq on the SoC is shared between the gpio and uart0 (why
> it's this way with two IP blocks in the same SoC I'll never know). When
> a chained interrupt handler is registered I lose the serial interrupts.
> Please correct me if there is some way to make the chained handlers
> deal with sharing interrupts.

Aha I see. Look at:
drivers/gpio/gpio-mt7621.c

And how that driver sets the parent handler to NULL in order
to still exploit the core helpers.

I will refactor this to some more elegant API at some point when
I get there, for now follow the example of mt7621.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
