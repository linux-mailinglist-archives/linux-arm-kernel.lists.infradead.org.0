Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414AA31535
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 21:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VLC3M1p2jFBcbdxhBYEWFn5I7BplILQoBV3q1tVo48=; b=of6bnlxNFmoM3K
	RulRZlgLCuxjGwwYsMwiQdFbFgb+UaEICCD/3QQefKNdC9mWDKGA819UCdsUz/kaSe3bvrNeDZzd0
	OV706OKu8H8xIF4l2Amq440d09om5bHRDN6BYcSICrCCy16+m09nyj/QZV+9+MuckX4HTkL0of1LB
	alBLBcy9Blivde532xtoZRxO+70mQY4Ii6dfrHYx+Iek1D/ts1BV2Aq+vz5b0zMs8YFtUzZkRlnXz
	nJlX6xag62zJ/ypHnYOeV0x6qD4k3pHbYCrEpWO6ytM7Z0zZiA3ca0b1lRf1kdRK2N6bKmyHRmCYd
	XAYvirjFdly9e4XgY6xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWn5y-0004kR-Ve; Fri, 31 May 2019 19:21:42 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWn5q-0004if-SB
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 19:21:36 +0000
Received: by mail-qt1-f194.google.com with SMTP id z19so2207410qtz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 12:21:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M/Axm/7nwcI4RwJavi+sPMZhETGsmjoJsyzXG1wGn6A=;
 b=fKjHzZICMyKWIoz8DUAy9DxJWsRQVvU1XL+W/rZ/L6jb9gFSNEvmeeqAPv0lMrmYWT
 hQDylLgoz+QVJLwv+BUFXj0IhB3ImpKtULerQvjBdRtatT869efHVFdEG908fPrXBF+C
 miWAHQwVYRteEA6ycUj3audh/Mhd6M6hfzuxt1yyHUtxcINe+2qUY19jkW5XC5/vlRFx
 s03iFdzDZ4nuXGnryw7yt4jJGGtO2ePPtIbfzDgAb7VHqC9lyvoyUFnfY3G90Xkbd6Yc
 wd+IHRo6BUp1OEaSrZY8vBngvtHz7HG8FYEHS5jKuc9iQrYx0/MRMyxhMl7CJ7wXkmYQ
 pRiw==
X-Gm-Message-State: APjAAAVWW/KA0jq/y85AcKQag3EFUVO+hiSb/ZqmMSZzUWdKE8/gHpKy
 pCziIrzgShz7A30iciciqrEB8lzw8dsiff6U8HQ=
X-Google-Smtp-Source: APXvYqyS23Wu08rwAwTAr7AC8VlLnPp9u0Vb33101ni/Pz03jgR03uZyOBHxcpJpF5Jqjr3IrXxtdoc2pUBXgXv8QRI=
X-Received: by 2002:ac8:2433:: with SMTP id c48mr10515168qtc.18.1559330489729; 
 Fri, 31 May 2019 12:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190528235742.105510-1-natechancellor@gmail.com>
 <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
 <20190531183227.GA34102@archlinux-epyc>
In-Reply-To: <20190531183227.GA34102@archlinux-epyc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 21:21:13 +0200
Message-ID: <CAK8P3a1-_KRvoeK4w0b8775izox8fRm=NGJC=yicDRn7J5UW2Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_122134_917930_A3B495EA 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 8:32 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, May 31, 2019 at 10:05:22AM +0200, Arnd Bergmann wrote:
> > If I remember correctly, we also had the same issue with older versions
> > of clang, possibly even newer ones. Shouldn't we check for a minimum
> > compiler version when building with clang to ensure that the code is
> > really vectorized?
> >
> >        Arnd
>
> Even on tip of tree, it doesn't look like vectorization happens
> properly. With -S -Rpass-missed='.*' added to the xor-neon.c command:
>
> /home/nathan/cbl/linux-next/include/asm-generic/xor.h:15:2: remark: the cost-model indicates that interleaving is not beneficial [-Rpass-missed=loop-vectorize]
> /home/nathan/cbl/linux-next/include/asm-generic/xor.h:11:1: remark: List vectorization was possible but not beneficial with cost 0 >= 0 [-Rpass-missed=slp-vectorizer]
> xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
> ^
>
> So right now, it doesn't look like there is a minimum version for clang
> and I don't think adding a warning for clang is productive (what is a
> user supposed to do?)

I see. If we don't have a vectorized version of the xor module with
clang, I would suggest dropping your patch then, and instead adding
a Kconfig dependency on CC_IS_GCC, until clang is able to do it right.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
