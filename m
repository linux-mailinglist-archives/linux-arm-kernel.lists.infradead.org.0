Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9EAAE7F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 12:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcTatb70VOPM3iFUrgSSfFpdm+2FirdMIvqsMPs8DMQ=; b=kH02iVf+Fdwqvp
	KSTzVuMwfFyN1/KpNCIZ6CoBK0S8oB6VwUNMUi4+3u3NNNhYY7HwPOQPFPExUaloVgbTib+t0R1NC
	LKeoP4osBY3561tdpohh1CJoeopkVLn3VRwO7ZQg0WhmXr1TmkC5yU0ZZK+uAZ/HNeUd9cbzctJvO
	KsIpHKg+HZn9/QmSgE6ITBskJPRPlQ3Wfhj17ePQsB+UvhxIHzMTdZZ8zM8JMrfSyhvz2DAI32/il
	Wy6g1gvQR1bA64CcoEaDiezrnD84qJpEfVTlNvf1m3yE1+3y4E8jx7+7CbEoOtx788IFbMG0LI9f7
	eo+iHETSGgnxB0A//Org==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dIU-0007vL-HQ; Tue, 10 Sep 2019 10:22:54 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dIH-0007no-CQ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 10:22:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id j16so15866479ljg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 03:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/RnO7aDpzX5C5EyL4y2IfgyW41OmQo4u8v7lMN7YHKQ=;
 b=vK1D15dW6aK1jvV0nmXA12AyrRJ4vLk03n2a23yq0lZRGq48xLdY0RhJGf/oVx3ddU
 BUAjXvFBI/R3XlUEEH3n9JnN/c8UDxlRqcZ0ljT/0fp2iSi9QNFMbGUQ1uNvvf/pHRBf
 yY68Kq2lxaiYmbOSRv4PDu75QITFpvy/hmgAYMpzQ4dWeFI7almhAIwEc7t5+FspOqdW
 RCKI6Rw+pO36dveGJhF4K3kXhysgPyGbM8rk1Ptjz4PRpFBDezeBWpCpFOHSXJjUnNaQ
 CgVPB0tp5Gh/UsxejI6EgLuWO/WSB1of8qF1yn/BDTBwMYqJmaoxG9DlUKZtw5/EGyMd
 dnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/RnO7aDpzX5C5EyL4y2IfgyW41OmQo4u8v7lMN7YHKQ=;
 b=OncdiNbW7mz6q66q7fMDKNtRceojG5znSb8Ll2CqxzVMitDubPssy9n8GYLsLCTvcc
 8gGg3lbmZ5QEJqM1G8ccDN8hWVAdUn/xbs21Fi+I0VIg6dnxxYDFLezw9izU6zMK7l7k
 9UQx4fsKdVpfmliL3doZCgStW3IZ6cWxg6zGi3H8GISocCfzphKdKrQqYd3+0yBECV0u
 eUh3OvNZlx/o6t9YSCmnzdGfPJfEcJ6KrCBdyS80QfL4iZgzfoHUeUJk9/GdAt18YWuM
 lc1a1egJUC6SBvtMihIwZDClyNutGk31BPasvmADwkJo/J7b6OL9O65LfqfoYyDteqLP
 jTOw==
X-Gm-Message-State: APjAAAUJ2NvJEv9M6dlzLu1XQYo1PAjOtuD0wWovDSOwv8IWXMg9PCOa
 yCuIo39S3+e+bWwI+/7RmVbkMCWJEUD2CdJ5/VQrVA==
X-Google-Smtp-Source: APXvYqxTmNO1MGnu8vYhnE2IUmvw4ev8RpQUmIyLWCAtSHO9mqRjl78UFY8OZp8Ndh+gq+efvNad6aAMm/6X66YLAJ8=
X-Received: by 2002:a2e:8056:: with SMTP id p22mr14060234ljg.69.1568110959123; 
 Tue, 10 Sep 2019 03:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Sep 2019 11:22:27 +0100
Message-ID: <CACRpkdax+KYuB9Gs4V-9wnFu=DPu0MNCmOupeNkUEa-pNdSZig@mail.gmail.com>
Subject: Re: [PATCH 0/4] gpio: API boundary cleanups
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_032241_423569_104ABA81 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 9:45 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> This patch series contains various API boundary cleanups for gpiolib:
>   - The first two patches make two functions private,
>   - The last two patches switch the remaining gpiolib exported functions
>     from EXPORT_SYMBOL() to EXPORT_SYMBOL_GPL().

Good stuff, let's merge for early v5.4 (possibly rebasing if necessary).

> After this there is only a single GPIO driver function exported with
> EXPORT_SYMBOL();
>
>     drivers/gpio/gpio-htc-egpio.c:EXPORT_SYMBOL(htc_egpio_get_wakeup_irq);

Kill it. People using this platform should step up if they need it.
The outoftree code was at handhelds.org and that web site is
even down. There is a copy of their git tree on github
somewhere but it is definately not maintained.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
