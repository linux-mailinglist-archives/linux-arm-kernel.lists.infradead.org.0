Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF97B0A35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnKVg0//CkJ/73m/DMMMfeT7swQOOYPQVen1QMCjT6U=; b=bjreyR2LpDtK4V
	idjljKSO5EOrpws/OygniR9+ggOIdG4SGFuoYlPDsJNGEz9jS8JjHO8LVzOMKkgGacFufZCFJa6k5
	o18Wwwid/7lSHYGu8pjDQ/YBIR5gJgUkKDD8m87Keoev5trLmVfxT3pl/nICP6/8MP3c9dSpuaY59
	3WdnjvMEqKNEKqqoKfhisNXJUKQ1I0NygrZvWXkYyQbTtZojs1nsUP/aWCK/RdUBwPYy+Yd/56Rkp
	KTBH2ZO/QfkLHUaawf3Ydx2+aOTnsD5AJ7Jyk8FRtnmeKqse4Q3g7ifEFBeuNcR2YpTUbIOT0FKyb
	TkYP0HOwumYXB2bDzXDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KOw-0004YL-MD; Thu, 12 Sep 2019 08:24:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KOe-0004Xz-QY
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:24:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id q64so12200080ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 01:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w49o6bLlxe70T8dk8RcKOKQ6ege87Mzu24iLNFJSi6U=;
 b=r+RtCQ+QSzYgod49oCaqYCkPTh5kZ0t0Sd0c4Z0+s2eYFento9RBH+cJ6oV9udoLxV
 UAOH78eysBB4GLzpWHG+n3DdyMpTG7bjHG3OJeNy+YTbh7rBITWWJ8UHrdYbqbOvjhKU
 wBTdN/oCGKDqPSMGUinbCLXh34ir+lHen6smdbyfGfv6TgiY+CpSyJIftKzl59psWfws
 otcFJcFnELrgNmLbcSAaY3WNMrDE3O2jMbPXOMUIuJikgcaKm6OPJYCvJZrtz4War3NN
 ajFA0ei1LXIJFhOzIOd53cSYdpBzThBf/siT6WVcfCVmFGAVjjLSKvEWboTgzARw8sLQ
 cIEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w49o6bLlxe70T8dk8RcKOKQ6ege87Mzu24iLNFJSi6U=;
 b=Puhxr/IOtR1VB7nIwBtKMWPrboEiiyt5aCcKXwfdQZE7Ni2TqmzblN19S2BjW+vzD3
 GKeIPz76Xni4fyqN+nHvMPYud+7Eum7EbOQZIJ+7K15eySjM6Fvsa6agK3diu3Rd9j/z
 lBYah1UdJMKurmkh4g1/TVa1USSSHbsDlrG9TZ4UtK6WuTfbsszHNJmPVZswbX8jKBzn
 M2BIBO5Ozm7TLH9uqWTumMJkEPdAvXpKd82j6UOH8qsi59TDb4P/I8J0yRfon7oQ/Sm/
 A75BJ9WKzD+PD9uhIDVdbd82nFzbV3u0WYA/SU2nmKEHfjdH1ijVoPCy5L5tqVGOTbdt
 O9ew==
X-Gm-Message-State: APjAAAXplvfFsHIPmNzymLUA3N48PsL1OBtqHYv4Ttasx4ewWmY73jm3
 bxohhPMTREyHWpMMddCXHB2hmOE4lFMq2eTGluUTPg==
X-Google-Smtp-Source: APXvYqxJDL4FyhE3BXAv2E4B/4JEGQGPdbnrnZxx+n3oo9L0E7CyQ/g/GKuusfARHUSvwKnun6uC2HwM7AK4drFXwyc=
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr17993431ljo.180.1568276647071; 
 Thu, 12 Sep 2019 01:24:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190829071738.2523-1-andrew@aj.id.au>
In-Reply-To: <20190829071738.2523-1-andrew@aj.id.au>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 09:23:55 +0100
Message-ID: <CACRpkdYW_PX7npB+b1YJ4pfFQNLVOsMx2hpKtntBeHg=C1j-Cg@mail.gmail.com>
Subject: Re: [PATCH pinctrl/fixes] pinctrl: aspeed: Fix spurious mux failures
 on the AST2500
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_012408_870187_75D3BDA6 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 8:17 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> was determined to be a partial fix to the problem of acquiring the LPC
> Host Controller and GFX regmaps: The AST2500 pin controller may need to
> fetch syscon regmaps during expression evaluation as well as when
> setting mux state. For example, this case is hit by attempting to export
> pins exposing the LPC Host Controller as GPIOs.
>
> An optional eval() hook is added to the Aspeed pinmux operation struct
> and called from aspeed_sig_expr_eval() if the pointer is set by the
> SoC-specific driver. This enables the AST2500 to perform the custom
> action of acquiring its regmap dependencies as required.
>
> John Wang tested the fix on an Inspur FP5280G2 machine (AST2500-based)
> where the issue was found, and I've booted the fix on Witherspoon
> (AST2500) and Palmetto (AST2400) machines, and poked at relevant pins
> under QEMU by forcing mux configurations via devmem before exporting
> GPIOs to exercise the driver.
>
> Fixes: 7d29ed88acbb ("pinctrl: aspeed: Read and write bits in LPC and GFX controllers")
> Fixes: 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> Reported-by: John Wang <wangzqbj@inspur.com>
> Tested-by: John Wang <wangzqbj@inspur.com>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Applied for fixes already yesterday!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
