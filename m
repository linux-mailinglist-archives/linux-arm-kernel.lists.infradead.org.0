Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37CDADBCC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 17:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9GuzH8zUOj3Ch6RyuN/oAaW0Dhdh4YT/lmmvsQywV4=; b=tRICGz+accCRFK
	21IyuSmdBA1nqgC5gV9zxBF2pQQ8+pk4hnbCA48U1AMUrWMefpWZKXcVFGhVzxrIZVA7VaCjDyAt3
	vgsFiazJu/9m7PuFQKVyIjWGXeGG5Q2pDObl7mrQ19euzVzipHjloBB9dNcLXuo1ETniDG+38XKDy
	TTUMb2jNO3dsaXkuGw5us4dLLsf6e4g6nL3zXoKxKVc9ZSvu9vHDxy6RhthqaHVbgLNzcZ+nt7loz
	CJSLRKhV5m+iAmTo4CQZLo3Zb5ibMlVkgRtkDMCVbokX8t1l2lHnNrlz93rs6fTwrkC19sL2bNFZz
	Pj0MHky7oB8typiyU8DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7LI6-0004Ye-90; Mon, 09 Sep 2019 15:09:18 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7LHv-0004YA-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 15:09:08 +0000
Received: by mail-qk1-f195.google.com with SMTP id x134so13430648qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 08:09:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BRd75HfAMA/RM+2IUVcveN8rNVBoGEbq4cpvizDx7NM=;
 b=uMoGP+6agxsMTuIRKbnfm9ubVYy6HLIWv31A3c4aA6RDleXwX8cmDVZBna6SFJR4GP
 OnBEzZKWv4vgofQIzAZptwoWYQcf+4hAThusIlyQYc+E2GtWWpCTYsLEA7GWJFtZIZA4
 kRSLNbKUeYwUjqUGzjOuZGAMPNdQ9XuXWS1PObURMrS4a+gCuNnNSWirRMNqgdfbrcKv
 HB5LLxuJLGVOlabDRLLe5Ri65/ieJYcWy4EENl3B+7Oj1wwE0SQK5tTjLEBbT1uCQjzZ
 xGhTa6cgx/MkqLne7oSv1cYl6B+64oLd1BPstte/XO+V2o1p6xmU6mFNSsd4ENX6nM+6
 RovQ==
X-Gm-Message-State: APjAAAXIlH0YrtlZekrFUnllWuA4HKf6IQVCF/Z4UEYPGIkc6SVYdC7S
 k8zZmFUp/eJU5uugKYuE+RYr475UxhyG/DeQshEmW3tM
X-Google-Smtp-Source: APXvYqyixTPG+CFUK1hDkQTl3ReqfwNBD/A6zafQDgbntwdHXHwkh+RNO8Na4ISyGRsSqSCfU/vXAgp7FItNdTdN170=
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr3208112qkg.3.1568041746371;
 Mon, 09 Sep 2019 08:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <1568020220-7758-1-git-send-email-talel@amazon.com>
 <1568020220-7758-4-git-send-email-talel@amazon.com>
 <CAK8P3a0DEMeFWK+RuAdSLyDYduWWwj9DxP_Beipays-d_6ixnA@mail.gmail.com>
 <ab512ced-d989-5c10-a550-2a4723d38e7e@amazon.com>
 <CAK8P3a34eKFXoAPOfkFN5+H4kxOhRjXgws_0wy+d-186LFxcTw@mail.gmail.com>
 <0d36f94d-596f-0ec7-6951-b097b5ee0d2d@amazon.com>
In-Reply-To: <0d36f94d-596f-0ec7-6951-b097b5ee0d2d@amazon.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 9 Sep 2019 17:08:50 +0200
Message-ID: <CAK8P3a0RUHxcpyUJU5bpd8nqpm0Sqhy4aJaoh7K9jVn8zJC6aQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: alpine: select AL_POS
To: "Shenhar, Talel" <talel@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_080907_626219_9E0DA09B 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, mjourdan@baylibre.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 jonnyc@amazon.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 ronenk@amazon.com, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 DTML <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, hanochu@amazon.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, barakw@amazon.com,
 hhhawa@amazon.com, gregkh <gregkh@linuxfoundation.org>,
 paul.kocialkowski@bootlin.com, Patrick Venture <venture@google.com>,
 Olof Johansson <olof@lixom.net>, David Miller <davem@davemloft.net>,
 David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 3:59 PM Shenhar, Talel <talel@amazon.com> wrote:
> On 9/9/2019 4:45 PM, Arnd Bergmann wrote:
>
> Its not that something will get broken. its error event detector for POS
> events which allows seeing bad accesses to registers.
>
> What is the general rule of which configs to put under select and which
> under defconfig?
>
> I was thinking that "general" SoC support is good under select - those
> things that we always want.

I generally want as little as possible to be selected, basically only
things that are required for linking the kernel and booting it without
potentially destroying the hardware.

In particular, I want most drivers to be enabled as loadable modules
if possible. When you have general-purpose distributions support
your platform, there is no need to have this module built-in while
running on a different chip, even if you always want to load the
module when it's running on yours.

> And specific features, e.g. RAID support or features that supported only
> on specific HW shall go under defconfig.
>
> Similar, I see ARCH_LAYERSCAPE selecting EDAC_SUPPORT.

I think this was done to avoid a link failure. It's also possible that this
is a mistake and just did not get caught in review.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
