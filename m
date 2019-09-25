Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC08BDFD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 16:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cxRjQ6TM30y9S1Zba7eCbukw9ZE9hz6xqv860ef3XU=; b=eucPjMh++X885h
	/o54XzeCHcebWCk2dRrPHOLpuNufDzj9/uxkd7c7HFHE517BIRLnSgHbjropAMybpcCSEGpYtWoND
	b1x7IN5GuP4hXi8wOslsvsyVmRwQqp5vD5ekwWnzGkdp0oj/vMuXpeEN/H2CY4TdnUqMh7iFM2Gz7
	k7R9awyX7MGv6DxQe94HuFNjuJJ/MaOnAm7v/7sNvzXnHleRHsrqfUDxhK3cN5/uUIqy8oePufF8L
	PFBCNK/rOoAJSX+Gq7Ao91PBXI2r6NIVxWrLphbjFoIb8B5PGV7la64H6l2KwZIoWNDw51mh995b2
	/k2eoVuYHITRqYEHscPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD85p-0001KJ-Oa; Wed, 25 Sep 2019 14:16:34 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD84i-0001J0-TP
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 14:15:33 +0000
Received: by mail-lj1-x231.google.com with SMTP id n14so5807859ljj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 07:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7XtbzG/PDHB0nH5tZZmEfWG24IcMxbyIbMNZVj9/BKQ=;
 b=dkyOATx9lmLDnncl4zJtlo91Zp1bUtwDHjOBbv+9Jc7LYTOR8Hkjbqp50+n1wBonB5
 ClhTg+OdoJIJx9VdXt/7VqNmmlYCx6QtqyfdTNik7dNQWKUG6FSLcpMO4yKBK590HxjA
 reoI/EKWfyj90vAwRPeHcQXpLWf8PbwrCiY2Ba5l0TFx755VvOTVm77s1nT3pPxaBntj
 jVieeyMvQajnZc1yOum7bJWAoChkF4UKjkXKF+Ag9A1gze2n6fD5JMFAU9w5DZLXPkHB
 7suYRia+8rXVe9n5ovdTt8ikQh2Qlz9UW0ak8CJyLlCeMqFIg+KseoisDnkO4Yy2qRPx
 yPGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7XtbzG/PDHB0nH5tZZmEfWG24IcMxbyIbMNZVj9/BKQ=;
 b=P8NclZAH+iIR8XVNF+xsN5unYhK5X6JNhB5IrrSabPxhpZzgOI7vvPmsDHhlqWAe+b
 g13NYt4ithP4tNslG+HtDxcb7iOcojAzkI6hqbC2JyOnTIWG4yic8K5s0+GExYUD34YP
 TcyJSjj97+H5Cc0ofFSI7Ex0Wus8BfBVcFDtUp4PB+hIhlUyzC9C6o2cX6ilUhlQTPL6
 LbckJCu4AM6JMBRxSPkzHZZtVMiH9jfYtfMBEGuxXpWmqxnxIbEfa8+p/v7qYv+wKLEG
 l/VgVkPAE8s+un9aLzfhfajjsQliNEZvXx5TJQc8ZXiRk6p2/U3IXvCJtlUBiyOSoMXE
 Fx8g==
X-Gm-Message-State: APjAAAV70JYmXb3REI6UVa+rhIhisB6cPxgqE6fKYDbhkn/ImdgJ0trr
 d8E0Ze+8eEEh5vnaOZ63HUjD58LkEEKEyuqn5sdSRA==
X-Google-Smtp-Source: APXvYqxqBaZ48HccCc5sICcI0U65KHSoI3B+0Ywyekxx11YaVBb03nxxrNJEQk9thhAS/288MMxOqKisdSKl5/WQMvg=
X-Received: by 2002:a2e:9ccb:: with SMTP id g11mr6533141ljj.62.1569420921560; 
 Wed, 25 Sep 2019 07:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <1569351740-6285-1-git-send-email-hongweiz@ami.com>
In-Reply-To: <1569351740-6285-1-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 25 Sep 2019 16:15:10 +0200
Message-ID: <CACRpkdbhRo62inQS96OfFO4iWkLn2+P+w1+6g+Y=HFvVyVnXAA@mail.gmail.com>
Subject: Re: [v1, 0/1] gpio: dts: aspeed: Add SGPIO driver
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_071525_695675_521E5C24 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 9:02 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> The related SGPIO driver has been accepted and merged into v5.4:
> _http://patchwork.ozlabs.org/patch/1150357/

Oh what a mess, it didn't add the necessary code into Kconfig
and Makefile, also names it sgpio-gpio.c when everything
else is named gpio-sgpio.c.

I guess I have to fix it up. My fault for missing.

Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
