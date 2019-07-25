Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0A3751AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvmxexO+2+2bEVv+nd58PnNZL2mrfCDkltEb63MgpZ0=; b=LEBccwTqzmUI9U
	GW6yNfMgR60iKWbHdGUoziAyaU3GBMqXlC6TMDTR28Lhh0ajj52Xf35ovqHaB3qPwtR0GrfR9zJ6H
	EQ4m9JMAnAB3eskbtIVZjTRb/dwzSQbQyvxgzw3IzZpSTtKC3I84xFgQxc4SgfL1OMWD5nHKlFwqF
	jdvN0M/rp/5HmNnnz+XlsLMtFYkFKKoci9wF358ntBshoWISY9ii8pJcioO0Tlzr0Yi8Prinvf4VO
	uIpvgrRr7zFcTc99Jlcuz6xGqVxGsogb/8uzhb9B3/n8gfCwQHE+TvcSh1YLZa9TlnOGlWw7qsiwH
	mAcobhtsVd/1mkFC7f7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqf0E-0006V1-RN; Thu, 25 Jul 2019 14:45:55 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqezi-0006Hu-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:45:24 +0000
Received: by mail-qt1-f195.google.com with SMTP id a15so49282974qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:45:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s58lJV1QkfWsNI9KTGkJmeyYTCi2hAqk7cXt5LhcdQ4=;
 b=Nm6vnfPVE50hnymvH6kSIcEHxYU24zHUmsBB8R4I8bq18n27CuR52EOyuIHcF0EtcY
 LsxgBsmVZ9aIXjTlls60h60IRNFGaLzaz+/q3xKcG27OJu5upXmjrNNwCVlb7UelDp5H
 jirSkzkOkT+Jj5n+VYXcouIFOXhq5Erqx2N8fuxhq9pw2UguAfReQZbLognNbCkJ/rCk
 TdZLrGk4RdVxNZdKbRold85eY+GTpuG2PAlw+byzL7Wi4YMzh7OWnzBGR/G/k8QFVdmP
 VP5cickQl+djD1MKJRrySzpQmBw70NxNiHZi0qgHq+Ft9krkAlZPddApXkJOsMnTSyhB
 NCkQ==
X-Gm-Message-State: APjAAAXT2AOJUWxpuC54OPrwJ6to16W3jIjWFnYdFeC50BCR8M8+QpDZ
 k4Qtew2p3sh93basHSzLjGl27AAvjFvTZvW1UPs=
X-Google-Smtp-Source: APXvYqzopbEH7l8AXdfxl91N/j9wg/J7FxiwQcwJHq3kHZYrLTO2Q9mjcvkt9bV3lwwWwLcc60dj/ru9WPRReNC2VqE=
X-Received: by 2002:a0c:b758:: with SMTP id q24mr63523651qve.45.1564065921146; 
 Thu, 25 Jul 2019 07:45:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
 <20190725131257.6142-2-brgl@bgdev.pl>
In-Reply-To: <20190725131257.6142-2-brgl@bgdev.pl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 25 Jul 2019 16:45:05 +0200
Message-ID: <CAK8P3a32tvPkYEiZMWxg+7weoAmZFPF31t2jw132f963ZeB_gQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] staging: media/davinci_vpfe: fix pinmux setup
 compilation
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074522_584534_5F763C35 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 3:13 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> This fixes the following build error in davinci_vpfe.
>
> /git/arm-soc/drivers/staging/media/davinci_vpfe/dm365_isif.c: In function 'vpfe_isif_init':
> /git/arm-soc/drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:2: error: implicit declaration of function 'davinci_cfg_reg'; did you mean 'omap_cfg_reg'? [-Werror=implicit-function-declaration]
>   davinci_cfg_reg(DM365_VIN_CAM_WEN);
>   ^~~~~~~~~~~~~~~
>   omap_cfg_reg
> /git/arm-soc/drivers/staging/media/davinci_vpfe/dm365_isif.c:2031:18: error: 'DM365_VIN_CAM_WEN' undeclared (first use in this function); did you mean 'DM365_ISIF_MAX_CLDC'?
>   davinci_cfg_reg(DM365_VIN_CAM_WEN);
>                   ^~~~~~~~~~~~~~~~~
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---
>  drivers/staging/media/davinci_vpfe/Makefile     | 5 -----
>  drivers/staging/media/davinci_vpfe/dm365_isif.c | 8 +++-----
>  drivers/staging/media/davinci_vpfe/dm365_isif.h | 2 --
>  drivers/staging/media/davinci_vpfe/vpfe.h       | 2 ++
>  4 files changed, 5 insertions(+), 12 deletions(-)

The driver has just been removed, so you can drop the patch now.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
