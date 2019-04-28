Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1CEB6B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WE11+Upfkakrzk7fx5xf7oApcxOpSa+mrLRNhvQApd4=; b=Pr9uMycOdrEV38
	e4x2q2sOdFNVlWhZSmRxNCSU1SWy7L5Hp8WFzMQCR3CcE0NsC04lrP9eeywdyZzvGZ/FMoWb8xjEq
	eCq8VP8rgpYHmQNcH5LraWLX35s+GO7QeQv8ROC2GAQRKRFCn3QQp6oZQzk7BRyOgOWTy+txNixTl
	X1d1aHuYpbaJiSnhdIJHiDH+EswT2D1cq22qJUHSxSyumhLieRwcqv7XWB7tEGw+j60SLq8nDYajR
	dz4Lj8pAytDgJa+32JWdD682EwCIrwHt5z5iLNckgSdovQIuZ563NkHgP85IcW+VKyqLRwWVMvsKa
	vy3K8S4R6fpnUz4bACNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqTw-00067q-9o; Sun, 28 Apr 2019 20:33:04 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqP5-0001xb-4w
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:28:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id k18so6198423lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RIaMMY9rAQfhfnKN6fMil/tWD0WOH26kRfKwwI0+ChQ=;
 b=nNZgXY8bNXe6l82vIcES/qAAzOQqioXxaS6rQsqxDvVOhZ8lYnCoeLzDJfOJ7MmBDV
 vBHMLdESFxAnDH1Ov1XtBWipbzzOrlpeGZZ3I7aJMla7DJBMWQIEMQiIM2Jx31eGA1Fd
 ULNKYQfzpAPQO8vP39MxXJbD5PhiQeNS8SJ8TQ8OdMXLqJuo3AwxU1csTc2gVqOqvjLM
 e/VGBQn2rlaA3YLBx2SJ3CZiopfzsTkF6lSm+URUPoQ/fUG8oH+DE+pZlY6QtHcOqFJZ
 0lvX/f+BgmvuX3gLYZbwbfrKtYkriVV9HxQdbF5KoD49IhK1LMNfdjGRt513+3o/WDQh
 L0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RIaMMY9rAQfhfnKN6fMil/tWD0WOH26kRfKwwI0+ChQ=;
 b=UWYdEFTgyBV3/7sblR1DbsATYYnjjA5YcmubG/tU0lvGzV35YqOArzFJepji+KVK4k
 bZlQnBExiONlzyLvxTHDG8hn3cD0B3aBrBpjGRTB5RUAr2lJSZcUPwwLX7DqKOSgini4
 k8zSdVaum6g8Sa3Jj5iU2hKQCEQtoaIUaZdaNOgWa+ngCOLGd+bRcHIdPdgm0yzu+lVC
 p1VKlSQFBEHwzJY586u6Nso25zMmhFvcPMRx6RhBUeJtSe7tw1+AiO2xnd89kyzn/Iab
 9X8eNKuhLZIJAOeuxSadbpq0UlxkR1U7VmBmH1j2uHmGxdE0QoQWkpu2zDCsK0tmnKgt
 e5JA==
X-Gm-Message-State: APjAAAWPdRrdRpy0GJOUsf3VrfB0hLJhMATyPghOIZTYVhGX7X00sd2S
 XbhQb+urWQwEeCs+4nooyL5ZsFfVYd9Ddw==
X-Google-Smtp-Source: APXvYqwcO0S/c2VKF8+CPzmn0219B9KLAm/pXZ+HDOEv/7L+68iSj4aRnHrLkGehgnhMAtYBSdDnUQ==
X-Received: by 2002:a19:3f09:: with SMTP id m9mr29935044lfa.36.1556483281583; 
 Sun, 28 Apr 2019 13:28:01 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m14sm3793813ljj.75.2019.04.28.13.27.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:28:00 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:25:44 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner fixes for 5.1
Message-ID: <20190428202544.rh6fguzhf6uhns4l@localhost>
References: <20190419110942.oeepdbr5j7dgq32x@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419110942.oeepdbr5j7dgq32x@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132803_188392_1101F24B 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 01:09:42PM +0200, Maxime Ripard wrote:
> Hi Arnd, Olof,
> 
> Please pull the following fixes for 5.1
> 
> Thanks!
> Maxime
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-fixes-for-5.1
> 
> for you to fetch changes up to fa44328f4eb0b762a1fcb148809068e9646e7156:
> 
>   ARM: dts: sun8i: a33: Reintroduce default pinctrl muxing (2019-03-25 11:10:50 +0100)
> 
> ----------------------------------------------------------------
> Allwinner fixes for 5.1
> 
>  - Pinctrl related fixes for the A33 NAND controller
>  - Fix the refcounting of DT nodes in our core code
>  - Fix for a typo'd DT property

merged, thanks.


-olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
