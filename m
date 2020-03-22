Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BE518E874
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpYUGwAmAgQwuhc3G3WqEOyI9Kwe1C2xtJufEQtPwBQ=; b=ocPZ8rWIIrvx5N
	2HfYEaPzk/+pQsZLIX8VQ7ZKP7Ewtp6yjS8oxp2JY2wfHqI+ruzQZubfhoCy7r6BJ3oWs9x3YGPKR
	nU+U2szEpBjeyMBRRGwNW8C6uWidEoVA4z5HUybEBb4qmMGKSfeRMt45tZoql0Y6ErspDB0icU0k2
	YK0fGTERYch/VKtoH4XG+aW5wF+4+KH2s2BaVcIcg43v6I+cBNJc09ycSwTXrA0/+GwZvhBb0PXi0
	r5A3gXzUgBs3+SKcMJFZHRBki/XFHaDb1J6Nu57rDkfxNtjZqmlj+Ihf8CMWfhChTD+aiEF1U8ET0
	m/T68ee/De2RmpFC7VgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFz38-0006lI-JQ; Sun, 22 Mar 2020 11:45:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFz2z-0006ky-Og
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:45:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id r24so11405447ljd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 04:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wvkwniGOgLV8mB9CWYJP/ZbTdJL82BLIEY1BcTY1Qto=;
 b=YEBV9C++ndScMxatDthA+7c/f8KKuvfqHltiGzT/Jc2ZHPU1tE227G0/kAb2z60WP+
 tCkZtG0LYyh89fSCUGOCOuSHrushC6Kuo1nBUPKiHVbwgog5bDAnMkK1DDXTzqLbbkao
 uC2xZTER+EwG7GN0qOrBq9pX2sFNst9ayS+K9GtKWWY4BSlZ8srH1+HnmajSF0ikQDG8
 xJKMCr/0rDN486nzu53ft/63SkVj4DkAKkblD88kmaUoP/BofYCVVgREFD13eXHBH9jf
 iILEc0VBhXKw8zus2J2RFO+uZi8GDlj2bZHAHqbeDCEuJKQi0Qu1qkIHkQZqZRFoN9UK
 TRoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wvkwniGOgLV8mB9CWYJP/ZbTdJL82BLIEY1BcTY1Qto=;
 b=kpswnThMzJOQKFs2o2uH18GsMY71YZpfYH6znYMvpT7mmknDDLEu5eGWyESRclD5r8
 sGo9kpP+tbPEgNNpSMVqZZX3KAXt/8gUuGZJ9X+jUdx9poCyKtiLAok2pnO98J/I2ywY
 LGMsmfnBXL1Nmdi15BhxNcfLqAhDXjw/t9mPxCrS3FZHRYqei8doi4Jwu/6Zz9AzU1iJ
 cV+YW7RO4Wll6ub40TiHO6Oap3ebKSjaWqqguMBqlbX+ZNrgej0Iqouho8YUC+4YRiTM
 4gwSZXqRq16vo1ZA16Q5bf5Kk+13Pnh9Wt7mLQWq25I3OaCcjmita5XvK0uyaGRt5/AW
 qfaQ==
X-Gm-Message-State: ANhLgQ0j7UkTk25TFHVvQX6KBJYnA1EgOm3mxiv0GnUXWuNN9VZuNenJ
 vfX3V3ufaLaM0SBbuoTamJqDg9VKiT8qcnOsrGg4Lyuc
X-Google-Smtp-Source: ADFU+vtz8JnRQjucKNvAZ8vvh9L8MfwrXSOVPk5erRyANVzjEGlUnxBNNGaucWacBWN8eUzf6lDDsJ8zv+51Z7tWzlw=
X-Received: by 2002:a2e:8ecf:: with SMTP id e15mr11158856ljl.223.1584877540117; 
 Sun, 22 Mar 2020 04:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200321133842.2408823-1-mans0n@gorani.run>
In-Reply-To: <20200321133842.2408823-1-mans0n@gorani.run>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 22 Mar 2020 12:45:29 +0100
Message-ID: <CACRpkdYvoVF_q1Re_v_sJCYVDOhte0NpdU91UtYB2SpHH60-jg@mail.gmail.com>
Subject: Re: [PATCH] irqchip/versatile-fpga: Apply clear-mask earlier
To: Sungbo Eo <mans0n@gorani.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_044541_945380_BF9E757E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Golle <daniel@makrotopia.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-oxnas@groups.io, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 21, 2020 at 2:40 PM Sungbo Eo <mans0n@gorani.run> wrote:

> Clear its own IRQs before the parent IRQ get enabled, so that the
> remaining IRQs do not accidentally interrupt the parent IRQ controller.
>
> This patch also fixes a reboot bug on OX820 SoC, where the remaining
> rps-timer IRQ raises a GIC interrupt that is left pending. After that,
> the rps-timer IRQ is cleared during driver initialization, and there's
> no IRQ left in rps-irq when local_irq_enable() is called, which evokes
> an error message "unexpected IRQ trap".
>
> Fixes: bdd272cbb97a ("irqchip: versatile FPGA: support cascaded interrupts from DT")
> Signed-off-by: Sungbo Eo <mans0n@gorani.run>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Daniel Golle <daniel@makrotopia.org>

Good catch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Marc: Cc stable?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
