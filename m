Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA67887C8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EU13J1is7pJextXdAffux4mNNhRjmULqkUka2CNa6c=; b=pGCb1LD/NdjRC1
	4AOM5WDquvfumg3VT4lkkiEBpNGna6G+2u6qknqvE6gjhwhQy2gRv+k24bJUBeorlVB3hVHubDYyt
	TdD9OtHbhRhIWPnicQ2bwyClRJjlWodaRRuJxs86pcqf8CqbBRnUts4BqSS7h/8bgl4bUA3WtznfX
	RCISnKrehohk1IGYNpS3nxdt2OyEPTPzq+4LNq9JrjRbfrHVnXkc0FCIHD9SkQtVfU3EYpy+6Uib8
	7vzuhATuQv5IPA8GpHuoJ9F6eZsvjQg8l/dm25cP55ase7/mGn1M9IPEBW9vRTxqNBocplhZlxsi6
	ZF0AKgiQo2hIHoSj0Afw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5nD-0005IV-Ag; Fri, 09 Aug 2019 14:22:55 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5n3-0005I9-9p
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:22:46 +0000
Received: by mail-qk1-f195.google.com with SMTP id 201so71683277qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 07:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gNiYgi5D62/pVf3+hWy+UCMiQH/DBTRltIHEyZhxhiY=;
 b=bNzdMHy2tXynbkKp7EK7fKPALZRbBIRX2atYJr4VmkcoRB/xOlKPGpEvhRYSwaKKAl
 AVVaGUS+SD61dNnKRiBCeQiBX1ngoKDSJcRz0lXapTRsB8dArkIB1LjBmLMjwXMMLfs2
 QgyxCMIjRBiQWbSQ0KVX1RAvxSIUJCbFpEr4Y/ADA1YAbQyw7oQt/9qkIhlwk7BJD6mt
 DfkjUh2GQrZYxe22nYyfaf64ETz+2rvWUvN5WgJt8SbihFU0/fZ8lfyvrzLB0kmczksy
 858XdAWxmN9hAQ2Hn0q124MXiRElX5kPbt++8+QhBr14oy2WWKHZ/gdztUwFPO8ZqxA7
 ZFgQ==
X-Gm-Message-State: APjAAAU5+UXKj3+owmljUAD1CM0ff+G/OgOSXjRGAazNltteHqR3pwx5
 aKrR7zY68v3JyVTL+RZ4Jo8X5svVn8qqPvDUJH0=
X-Google-Smtp-Source: APXvYqxWBBhFLw7koQsaQC+BSQB+8OIHhk5s4HY58mx0yru1ot7jzp47qiBDbFvu82TB+xZIsg9DrkoZYHOnDOKqLr8=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr18578192qki.352.1565360562907; 
 Fri, 09 Aug 2019 07:22:42 -0700 (PDT)
MIME-Version: 1.0
References: <1565186675-1856-1-git-send-email-slemieux.tyco@gmail.com>
 <CAK8P3a0BiOoCg4y-buu=vpPGp56w7HKUVu8gA2jyeOph11U-Kg@mail.gmail.com>
 <6913a446-9500-c1cd-a8d6-70eb143fdda0@gmail.com>
In-Reply-To: <6913a446-9500-c1cd-a8d6-70eb143fdda0@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 16:22:26 +0200
Message-ID: <CAK8P3a2U5LepCk14j2vp+K7caed0zfrKF-k-KOrECMv1SgDJpQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: defconfig: lpc32xx: enable lpc32xx GPIO driver
To: Sylvain Lemieux <slemieux.tyco@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_072245_344209_AC515B32 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Sylvain Lemieux <slemieux@tycoint.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Vladimir Zapolskiy <vz@mleia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 6:19 PM Sylvain Lemieux <slemieux.tyco@gmail.com> wrote:
> On 8/8/19 11:06 AM, Arnd Bergmann wrote:
> > On Wed, Aug 7, 2019 at 4:06 PM Sylvain Lemieux <slemieux.tyco@gmail.com> wrote:
> >>
> >> From: Sylvain Lemieux <slemieux@tycoint.com>
> >>
> >> The change that allow the multiplatform build for the lpc32xx
> >> platform add a new kernel config for the LPC32XX GPIO driver.
> >>
> >> Cc: Arnd Bergmann <arnd@arndb.de>
> >> Signed-off-by: Sylvain Lemieux <slemieux@tycoint.com>
> >> ---
> >> Note:
> >> * This patch depend on the following patchset:
> >>    ARM: move lpc32xx and dove to multiplatform
> >>    https://www.spinics.net/lists/linux-usb/msg183095.html
> >
> > I did not think this was needed, as I added
> >
> > config GPIO_LPC32XX
> >          tristate "NXP LPC32XX GPIO support"
> >          default ARCH_LPC32XX
> >          depends on OF_GPIO && (ARCH_LPC32XX || COMPILE_TEST)
> >
> > so when running 'make lpc32xx_defconfig', I expected the
> > driver to already be enabled. Did I miss something?
> >
> The GPIO driver is enable. This change is optional.
>
> I added this new config to the default LPC32xx defconfig
> to keep in sync with what is done for the other LPC32xx drivers.
>
> All the LPC32xx drivers config option are listed in the defconfig.

Ok, I just removed the 'default ARCH_LPC32XX' now, and added your
line to the gpio driver patch. That way it behaves like all other
lpc32xx drivers and the defconfig line won't disappear after one
runs 'make savedefconfig'.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
