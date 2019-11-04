Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4F3EE421
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xE2omh0pyVonfTppHH194PGi2WBB999bOD9kMsNX62c=; b=gPJBYV+PoFzA4d
	n34w9Rd0e0Vzeeht8mcm29+nsApZ+FDgkb3J4seB7nQbL3qm1VzEHfrauxhpGWgNq88STEuhJL2o2
	QfieLtsbDUOuHXWcyQIr7iGifxtX+4mJo2rn3wlIYX8IqB2IBjAnYb+jHK9n/YuIdT5T2EbAj4m0V
	n92k8jD/6wV80ez1qQ4FQywuVVyChWdjV9noHyKjmLL1Wb6Zjh8kJOTkasAV1sR+zJ0cE1QP9DN0r
	jSAFIzA5xOFa47haHADqQIl9CYVA4IVYiKq65M/jGBwDBCqLnOB01yTQoeIiHFHjOxyEqqet7lhrq
	UoaVpFBoyaD0PiDr8yuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReYM-0002vH-4Q; Mon, 04 Nov 2019 15:46:02 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReYG-0002ut-0s
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:45:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id v8so12568682lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DwOQqfkML6mZVQQJ0E1pEMWKtqr2r31eZ85PaIGMmgU=;
 b=IQqhJBlgWadnxdyu6cfIUzn+zx293WrU0J+vvVeex9J89EKwEta3C+qpkGchecJNst
 94ZcUnB59g0NBqIFhuspeGj+nDwA5WvzUg44Idu5OAztaNmUdRQR2UAAwYBCHjgOjYxZ
 3jip6PFRtj1srZaUJ0ller1NjpZwW6IXAyS8f4/TKPJo4R0+MzH7pVU6m5AefC0T853K
 BWYv7Qo+U2WWHKmjH+VFGTtcLgtu42ZVpYOkG5bhQkMx82LEjUVeElNVi02LiLcTSqIu
 +JFf18NG48PeCeIH3j0oao+twWgoUcO+mQzVHiGK28OzkMxw/Aihuyx8xgOlItbFJggv
 aHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DwOQqfkML6mZVQQJ0E1pEMWKtqr2r31eZ85PaIGMmgU=;
 b=gr0N+LI/fE/oZZPa9YjA0WmW0d9sFHLihap/XZSAKdNt4WMtOpo6MK2IPpknjxJ54r
 rMe5s3ZQ/HymJe10hbPEfdo/JFrRqYVPpDG5wQqEK3/aexSA2kbSUueAB0zyXjjcfVgK
 0nWo8WNW6qta19pQUNN0TNvjXGYogEYqPWC+fQPKFZ5z+y5Ud1k87rFveoAa5kWjB1LJ
 6ItA1rc0SoQU7BO+xb6fDcvlgUn2Er9TKBH7LmDCymWFCzciICaaR+KLwXRfS9KlrV2G
 dMkKLXncTrsAJNgJ5D4DwTyrYCHMck1nYr6wF/MN9GuP12Gm9Fz0EOtjWpvlUO7h5Fed
 L99A==
X-Gm-Message-State: APjAAAWJr9SaWpy51WIoOrX72WzxSLflu7Euze1pu88rMlKsePO77OxN
 PUllfQEy56JbzYQyLmoSXzvrArtSiiSKs1y9okxRouwyq74=
X-Google-Smtp-Source: APXvYqwttKRdVsyVJcuL188wpW/OsgZ62RtyOb5/f6UDc4Kan+iShKlu2eMEBGHO+HNXoRn8M2t5FVfJxN4hDx/+sU0=
X-Received: by 2002:a19:651b:: with SMTP id z27mr17005776lfb.117.1572882354242; 
 Mon, 04 Nov 2019 07:45:54 -0800 (PST)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-15-arnd@arndb.de>
In-Reply-To: <20191018154201.1276638-15-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:45:41 +0100
Message-ID: <CACRpkdbb9xy7EFGZ1f3DumM46UDZ3wzQ8Ubc9rz4MGNo84E6Jw@mail.gmail.com>
Subject: Re: [PATCH 15/46] ARM: pxa: maybe fix gpio lookup tables
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_074556_068767_34F2C96C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:42 PM Arnd Bergmann <arnd@arndb.de> wrote:

> From inspection I found a couple of GPIO lookups that are
> listed with device "gpio-pxa", but actually have a number
> from a different gpio controller.
>
> Try to rectify that here, with a guess of what the actual
> device name is.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

OOps my mistakes:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose this tells us a bit about how much these platforms
are getting tested in real life though :/

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
