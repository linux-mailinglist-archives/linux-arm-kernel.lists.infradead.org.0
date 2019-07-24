Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386B672ED6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IhlKPf/qUwRC/26N4jc7VhyzYjVp84iy5WNckVfVK4=; b=NxFoHEByccZtXb
	Yp/CILloa8AfTzrjDjRCD+jbk/I2LgrHi4jU4rDMHy7zUMDN5J9pm7k4xXrEnZl6yVE78lHSb2x22
	ca+b9s0sjZffwfMa4tVzM0Jvj0on4Er1QvxKqjDejFt01lLrIauN75vNGy6SLRsj8QFnJVjrjzbj4
	b/sOh4hlcM2C3frsOuqMaDrGZ9qobH1UN1codgTi8VdTav0XaOflfkFHL/m9lG+uLGjCrrUEPUYSQ
	X8d4jGE7/8WRhzpJHbUxmOtM9PlMBix6sbGM5T4JoLHTSiVWpifAMFDXcVard+NgKG/HGxiSLMHHl
	KB6zrm8QUauhMenSA1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGNh-0006Ne-2k; Wed, 24 Jul 2019 12:28:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGNY-0006Mo-R5
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:28:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so44320772lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 05:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tnFRrjn0TKFSO53Z4vw5L2TAuqXiorYRBuE8sMRWfRc=;
 b=TQPjESYCo3MbNGijnGd1b5vdpAmQQmfLi3tbmCpwa9zhVfWhyFq71XIjmX5jSIJniL
 r7TO4O442i4tvsLiQGE35z29/+CbwtrIufkXlo+Jtuppi7gb5T3zpizpGGWFn5+IWHkD
 NYPNsrigYSRfc+CQsneh0OlcrFWuoTZcnm3wPp94Uk0nvfeE0IXJv5kxRAxNJVrafLDp
 XxUoCRbL8/8XqfgMNXYUNVBklshm+RuaA3/ygIxN9q1HxJBn7lRfg0cS03yXZilovLjO
 ruZLAwdSRt7SuOZQu7yn2aVFJ4gWHjta6GlzOWSON47Mvpd2uGXKE8RQl4APQhIaiCBs
 pnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tnFRrjn0TKFSO53Z4vw5L2TAuqXiorYRBuE8sMRWfRc=;
 b=DHlAOUryTI8NyyBk9oX1fXuKubRAeuVyFfJ/z6K703YuviIrfaxFquYR6+499WiGMF
 bYY5neRKsdV2kwHSqCC/HqYs+bJOWQU7wPcrenkqBQN9v8R1SW+3avJDjzPZ4a9CCPWy
 vUYZPKQ0iZ/DZHyF/Ox5EChrvprZlTeVw44xtd59ZTqN4dCELWTYRExT2EETkUe1gVM2
 TaOzRfDYTc/x9Tn3RidSfm5Iqv776NrhB8lTBjCCeDzat2xYZ9VPbfywOS1BTrZ2Jmp9
 1AcHU8rJDYG0UALjzJiZ0QT1jFPBHnOjO3MOgJEkvfCOYVjubud07OxQb+1xDmjN/QqB
 XTWg==
X-Gm-Message-State: APjAAAVYZH6iPdDfsua0gv2/pJQe+Cgi7OfpENjRMFphgClmgEU+p3/9
 f0s/+4WXF+dQwZnMsDmyAeag/iTOvL8mCAe/NMJRXg==
X-Google-Smtp-Source: APXvYqwgYv0otgZCIbaqMZFgnB3JNi+nA7vgHZwlC7+GD84dSkFGvlOnFbX3ZXcy9cs9mHfTo/Z6ts0cyasDYsiH7Dg=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr27443493ljh.69.1563971297717; 
 Wed, 24 Jul 2019 05:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723181000.GA24663@ravnborg.org>
In-Reply-To: <20190723181000.GA24663@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 24 Jul 2019 14:28:06 +0200
Message-ID: <CACRpkdZhYy6o9xMD42pQm-MCZUi0EpXs1uwQg6D-B4NXpyMHWw@mail.gmail.com>
Subject: Re: [PATCH 0/3] RFT: PL111 DRM conversion of nspire
To: Sam Ravnborg <sam@ravnborg.org>, Pawel Moll <pawel.moll@arm.com>, 
 Liviu Dudau <Liviu.Dudau@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_052820_897108_036053D9 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 8:10 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> On Tue, Jul 23, 2019 at 03:37:52PM +0200, Linus Walleij wrote:
> > So this is a cold-coded attempt to move the TI nspire over to
> > using DRM. It is more or less the last user of the old fbdev
> > driver so it is a noble cause and interesting usecase.
>
> Do we need to support arm,pl11x,tft-r0g0b0-pads before
> we can obsolete fbdev stuff?

No I don't think so, the only in-tree platform that was using it was
the Nomadik and all it did was to switch RGB to BGR and
I already handle that in the driver using the hardware
feature to switch RGB and BGR around instead.

Right now I just check that the pads are there, I might just
remove the check.

However Pawel added this binding and might be able to tell
something about if there are platforms out there that really
needs this. Possibly Liviu knows more.

> Looked through the patches.
> 1 and 3 are:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
