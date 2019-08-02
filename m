Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A118028B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kg2ZGPbt2T21ruONXkOx3wOtyyd0ElOd7EwWxEOMYyI=; b=rMsvt9hkFwZ0DY
	ypcOAZ9b2Zj8vI+kz5y6wK+GEmYf/0aO3f4KItQHOh7szf0M829iKcNLIbCimqKURP95/09FxTiVx
	TCExm9VwrDTvuDxcEbEwQc7tNTbAPCad9Z/Y9v/QzxPBM2Vfx8Wq5YDNCbEIGt3ojsk2jemIDytzJ
	n5iJ6lcG+ODXMeXRZKYfJBJUToMvYHOdCl13zE5jHQt+G0jE947R7Fwt/MNxEPFgo5jF3fqjmPXL8
	O7FgpwY76B5H2eY6SIWv1QNwxRP2Qq3CcGAdNkp5iCNGkZmenm9UnZum4jcN694Nuk5EGGzr/EaED
	0dN5hkZFDOUd5eD0opDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htfjk-0005SB-Cj; Fri, 02 Aug 2019 22:09:20 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htfjZ-0005RY-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:09:10 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so53959548lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U4ianmj7i1/tWbCmjNVaa5mHj+uB1/4qtFOlZhSeJ00=;
 b=HmUw9WzKdhBR5id68EtON5ombydXm0NhW9mTSp37CvzXF2xrAMaYkSthMcQAl1l0yI
 KAnrmamST+hQbEQtx7H/jlQDnNIo75488EF9fnY62TtcxTuH5hOTdSVKttlR8QLHJyk8
 U31zrG4fW1MzgfKO9Cykwm7+H6Jg/r8AQOrBlIKwg/3GO9olasx7AXEIzhTm6Ty5B0Yt
 He9Vs6xa5esDYC4e93xf51+1bs5mBGbLQ22EEUmePbkffedZVkB1xPHy2P5iVgADyC8h
 9ftu/lkU9Yv6K+wtUpbS3Zafgv+dJn0fxx2iHSV0irQORJjQtfMwdyeKWtThOQYiPAt4
 JqHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U4ianmj7i1/tWbCmjNVaa5mHj+uB1/4qtFOlZhSeJ00=;
 b=melAJ1Jhv6XGRJdnBEA86yMRx4QeAOqp75bU9C8qKRpZnM11KYAT62c7nXvaE2lh6s
 fRt1JBWHi7ZsmM5YQVoEiRYqVlZUR1Sr5QnGwV6ihuVx2Iv21SKZFN9b1AdUYV6ujfFg
 CMBnPgFlmGY1ndWpYI23BsSoInTDzel0OzOo+jpTAX5zmWSXdY0daTpiBU958Tul0uk/
 C+NFe+FXRUq7vKIXCWeAoq7MA1P/rwktRgTyvWYL5lxXxEhMcrboKSOkG7OXlboC8Wm0
 e6u0ynuZGk32lW8X5QZwLF/0qov0CbEQOML0fVR47gdnjZLSiPD4T+YdHcE3UH6LIykl
 HcZg==
X-Gm-Message-State: APjAAAWQNnG+f4Np1NgMwGLuOvNj9RwuRfL7grkHaURIf8s0xXSMGN3I
 PIIJIT/D1kBdSajzrqWovVuqOxqyWpxfDIoIEFLyHg==
X-Google-Smtp-Source: APXvYqxfgd/lg7iR4Gq9vcQrDZTpgZvZPw1fec/B65FChiPimDdlUdCJINHAGG8expv+HBfF5QeKTIJ7S/UnBlBnRTk=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr63551548lfh.92.1564783748322; 
 Fri, 02 Aug 2019 15:09:08 -0700 (PDT)
MIME-Version: 1.0
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
 <1563393026-17118-14-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563393026-17118-14-git-send-email-wahrenst@gmx.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 00:08:56 +0200
Message-ID: <CACRpkdbJRae6Bw1-zpq8iAo+rA_buEu0ezO9fcJ31BzjcE7cfA@mail.gmail.com>
Subject: Re: [PATCH RFC 13/18] pinctrl: bcm2835: Add BCM2838 support
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_150909_706354_982648AF 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Mark Brown <broonie@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 9:52 PM Stefan Wahren <wahrenst@gmx.net> wrote:

> The pinctrl on the BCM2711 is not backward compatible to the BCM2835.
> So use the compatible ops of the BCM7211.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

I suspect the data should contain an enum or something for the SoC instead
so the code can adapt.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
