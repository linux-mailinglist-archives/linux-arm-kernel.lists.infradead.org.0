Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A125A8836F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 21:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYVJKl58FgMNg3GTR8Ys/Y05g9HCHyeirs3mASbsLLE=; b=a+CgpJy3rGO59Z
	t30HDYDyrhWGMz/L9J7T8vkH/lqj9/M0+hKm6yWpIArxIqFjqVewHxTBtoqH58pSyiTOaDep3OHBH
	dlsvP9UGb3srPKWn3TQrGvinfFJAW9DSkR8PQyy3ffchPeXzKkMt2ExYLeZjfby5coMcrW1PEviq4
	BC/VvmGnxVtwIs2NwhpPqk9VMNybayO2aWlOxChSmNMmdUeqnAqrvNTf8PAAF4tIfnB/hSgeLHMrM
	eZU8ABeQOzfzQiMHAuiUmOC0tLNq9VXNaDbolRb3j3xRCUgpAV1dPY5zc1iXdaFu76AMfnhG7RrSj
	HwBtP+Wj+fgqHvHNq3yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwAoC-0003eT-W8; Fri, 09 Aug 2019 19:44:17 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwAo5-0003e3-Cp
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 19:44:11 +0000
Received: by mail-ot1-x343.google.com with SMTP id f17so1580042otq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 12:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AwTeQv0nkF8ZzkbuQwNoI5oM1jAqjP+SUKLHmshqgU4=;
 b=rVihWVM562FWHeevrHmURj44PEleWt0ASN0AHKY6Hov5uYsCDz6oAGJ08b5H+EjqCD
 hrjmBpOMNbBTXqmeCjkz46TBjIJrLkXjEjT+pVCiYGb3t70pJZ2s6SOhfMQAgipiQcfh
 voXpiKFXiOl4fpATrz2qU7P+Vg3vo2ah//XnRDQOufMi7c8/E93rAoGgLk+1pT8eIesw
 585O3KBYW/5zl+F/ep6RKtKY1WSoGGTwUAiTU/eKHm+FE0rZel3W99kgCKtIDv2+gsT6
 wOOIjgW/HCzR2ZqBx4Wu4gcauVBAzX3ll5QJUQsdIRWzbWiBDlsl1aGpBEBpZSKJ+Urg
 5L/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AwTeQv0nkF8ZzkbuQwNoI5oM1jAqjP+SUKLHmshqgU4=;
 b=MM5Vgdi0bHmKloi5pDqrbfFyiTl1gEQhhwqQ35tiliSe/a/QrZIRP3UYpkcf7yD0Hn
 OTzSgtL3rTcvwcvVQUxQAqd1V5q21CgTQ06u6GwAUVyKJSbxucMA3OKEGEUmFXRRJAe0
 kguQfwmYF/4+88zP4aC9aLgRJOLg/F3MHJz0+tvoMYVQqa2tLtzPrt/cuJ81WVXBGFEc
 0YziVOBa3MmdfP4b+amF4wWJwupaodRl3nXal8yaP42kte4h51/4BvA51l2HdLonWrZv
 1dlnyyxdaQiEOkPp1hX7EwCM1HusZgHCmA/4bH/Y+6UCNGopUBnzOtCAtFCjSrWZeMpS
 GTWA==
X-Gm-Message-State: APjAAAWljelGXt3/94GemAKdMkHi4KDhA+pdP7cSvDorVvMVLu85PJh3
 aqHzcT9qbiVgg+Fft4aOndBwvYZzYWByRxmjcFYQfw==
X-Google-Smtp-Source: APXvYqwmGWxKnhH0pu0CdmdtkY9MWiQA2sqa6Y0AXYzLsTz11/rPRS6N91uTv6hH5s8O/RR8/YTXeJBAlToJ8WjZMUg=
X-Received: by 2002:aca:d80a:: with SMTP id p10mr7522848oig.105.1565379847824; 
 Fri, 09 Aug 2019 12:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
 <20190809183658.GA13294@shell.armlinux.org.uk>
In-Reply-To: <20190809183658.GA13294@shell.armlinux.org.uk>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 9 Aug 2019 12:43:56 -0700
Message-ID: <CAPcyv4juKU5TLU+3=xAw0Hq=6EeLSxKA4C9kR1YqEV8XuH7e2Q@mail.gmail.com>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_124409_507392_42B6E779 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Martin Michlmayr <tbm@cyrius.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 11:37 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Aug 09, 2019 at 11:34:12AM -0700, Dan Williams wrote:
> > [ add Martin (if cyrius.com address is still valid) ]
> >
> > On Fri, Aug 9, 2019 at 9:35 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > There are three families of IOP machines we support in Linux: iop32x
> > > (which includes EP80219), iop33x and iop13xx (aka IOP34x aka WP8134x).
> > >
> > > All products we support in the kernel are based on the first of these,
> > > iop32x, the other families only ever supported the Intel reference
> > > boards but no actual machine anyone could ever buy.
> > >
> > > While one could clearly make them all three work in a single kernel
> > > with some work, this takes the easy way out, removing the later two
> > > platforms entirely, under the assumption that there are no remaining
> > > users.
> > >
> > > Earlier versions of OpenWRT and Debian both had support for iop32x
> > > but not the others, and they both dropped iop32x as well in their 2015
> > > releases.
> > >
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > > I'm just guessing that iop32x is still needed, and the other two are
> > > not. If anyone disagrees with that assessment, let me know so we
> > > can come up with an alternative approach.
> >
> > I'm not sure who would scream if iop32x support went away as well, but
> > I have not followed this space in years hence copying Martin.
> >
> > In any event:
> >
> > Acked-by: Dan Williams <dan.j.williams@intel.com>
>
> Those of us who have and still run Thecus N2100's, for example?

Nice! Good to hear.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
