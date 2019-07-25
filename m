Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A2E751F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4nAMxClFvavAeq9FL1iB+zCr7qiYwiUnKHaMjIeMfo=; b=Tw6B4sNpuOfWGp
	7ReER2VnEm48Y6ls4ujR98PuYfTZqvnUExNtkvAsomdJwwJC7kxzJr0sTM76XmpQDTcw8+yEgMwiQ
	DCrOkyYIUTpdpXDxJZo8XGu6UPlp7eKDrH63cy+ns9KjtsrrLX/Uc2NJYfiZhmag2Z8bCOs/52rWx
	F1WetNjDoRCAiOOHKKOGrDa/blmEkJPDujc7jByRho7O/iTV3DmwzxVimYo+41vOGeBMk1wskIR7B
	RSE8Mp1y5lvcO1eeZO2YCCy9QeSCBfgTtKkjMYJcO6olLvzbQJkGyJ5uuos9S+ZnRLm2g2Yiw206X
	/rxNcUH0gC6CHZegEB2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfBq-0003Sp-Fy; Thu, 25 Jul 2019 14:57:54 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfBZ-0003SO-SM
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:57:39 +0000
Received: by mail-qk1-f194.google.com with SMTP id s145so36637134qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:57:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/sZ3dfUSQ6KnBW/7AX8FrL1hyAhE5ay1aT0trt9B7DQ=;
 b=UHiLr6ibv8/ELreUYA6kAGlWh3z9ahTTM+Zorhg5EAOrrErB6aWbbXjC1+lcrtTUU2
 EXk1SLhgHzNdKngknFZanbRwii949r3apt9CfjSViJQ/I4ieRceeJ5EC1bnJzOlQt/oj
 J59hZ4pkp/DoGKxqhRSGc9QhokC/ebsibm5HuMIsv2C0XIBxQT4mO3ropp3+YMP6Do7m
 uUBe8tQLjFlvDeIgkNWMmrDBPPawVuA0pRPNMiSWqyziDL36YWlLIaOR2SfGQ6R9rNyB
 7CCPpWLDRDL5L3+oEJ/DMWXBwGFXulDkL67EuqFcHgHJMOSXrFEKLcJmqKgI92Xzc3dJ
 bbCA==
X-Gm-Message-State: APjAAAW+fTJYO88ciLjjod8hf6LtwiHUi/8FR8tJO/9fY/1CBL61EXy3
 Lgt25LbcDhNm1VDqEoiBh/C3ofnQVP/iZbmnpiQ=
X-Google-Smtp-Source: APXvYqz+NXd6vVM9HrUlkLjGG9pqAy+X64YcVWOLrp5ORl3jhLSD3n/NzhHjZFyzH8nnubMnpOYx6hSeDedJ4OqRXBw=
X-Received: by 2002:a37:5f45:: with SMTP id t66mr59680105qkb.286.1564066656770; 
 Thu, 25 Jul 2019 07:57:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190725131257.6142-1-brgl@bgdev.pl>
In-Reply-To: <20190725131257.6142-1-brgl@bgdev.pl>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 25 Jul 2019 16:57:20 +0200
Message-ID: <CAK8P3a1FXyRRi5q48h-=egFjgoRJvy6_zuO9MQaAOMA-bsJKRA@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: make DaVinci part of the ARM v5 multiplatform
 build
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_075737_915951_3750EA98 
X-CRM114-Status: GOOD (  17.84  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 3:13 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> This series makes DaVinci part of the multiplatform build for ARM v5.
>
> First three patches fix build errors spotted and fixed by Arnd with v1.
>
> The fourth patch adds necessary bits and pieces for davinci to support
> multiplatform build and the last one actually adds all davinci boards
> to multi_v5_defconfig.
>
> Tested on da850-lcdk with both multi_v5 as well as davinci_all defconfigs.
>
> v1 -> v2:
> - added patches from Arnd that fix build errors spotted when building
>   random configurations (much appreciated)
> - rebased on top of v5.3-rc1

> Arnd Bergmann (3):
> staging: media/davinci_vpfe: fix pinmux setup compilation
>  media: davinci-vpbe: remove obsolete includes
>  davinci: fix sleep.S build error on ARMv4
>
> Bartosz Golaszewski (2):
>  ARM: davinci: support multiplatform build for ARM v5
>  ARM: multi_v5_defconfig: make DaVinci part of the ARM v5 multiplatform build


Thanks a lot for reposting the series!

I wonder how we shoud deal with the dependencies now that the two media
patches got merged in the linux-media tree.

It would be tempting to just merge the arch/arm/ changes, but that creates
a bisection problem when the vpbe driver is enabled. I don't care
about the staging driver really as that one is broken anyway, but including
the "media: davinci-vpbe: remove obsolete includes" fix would be better
here.

Mauro, any idea for how to handle that? Should we apply an identical
patch to the davinci tree, or maybe only have it the ARM tree and you
drop it from your tree (I don't know if you have a rule against rebasing).
Sorry for not coordinating with Bartosz before I sent the patch again
earlier this week.


      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
