Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C76215549
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 23:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZ9D5qLIrWwArT0NKib0TvUTcU1mRUWzDFehl9jgTMc=; b=R53TMJGn9D111s
	/PUInZUP3wCA26wdlKjdFk0URlW0CS2SyiwmF+65LuNPV/iSkIIvYehF6XYLXaznI5DoqvHcaeaeG
	Kj0SkW0HmUOJF+cx6etiL5GKFpriagHlFjmeNo7UTdxMo8fjGn8OzJgEPhpBBcp1oUC5AWJo3nbvm
	QgPm8usaRbUAExQ3xoGqxttTsEgB8DUCfkaRNOhWMGTNZyhVaNoYj00fKR3cwNn/EN/29w+tqSKMz
	xMwRbIvGuaPqQTAIut7EyO7MStn264qxWLpFR0IMp5aHjRIYY6KezMCMgpm9doa2Z5++WhNH3fiOX
	2LPQlI/66j8RJ6yiDoyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNktc-0006rD-6U; Mon, 06 May 2019 21:11:36 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNktV-0006qM-Dy
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 21:11:30 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7E3B580DB;
 Mon,  6 May 2019 21:11:41 +0000 (UTC)
Date: Mon, 6 May 2019 14:11:20 -0700
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH] Remove MODULE_ALIAS() calls that take undefined macro
Message-ID: <20190506211120.GR8007@atomide.com>
References: <1557163697-17882-1-git-send-email-yamada.masahiro@socionext.com>
 <6d8e2880-0cc0-a7d8-1d42-4401e15e3ac9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d8e2880-0cc0-a7d8-1d42-4401e15e3ac9@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_141129_509775_0283A535 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-kbuild@vger.kernel.org,
 Alexey Gladkov <gladkov.alexey@gmail.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Daniel Lezcano <daniel.lezcano@linaro.org> [190506 17:40]:
> On 06/05/2019 19:28, Masahiro Yamada wrote:
> > These files do not define (USBHS_)DRIVER_NAME. Yet, they can be
> > successfully compiled because they are never built as a module by
> > anyone, i.e, the MODULE_ALIAS() calls are always no-op.
> > 
> > A problem showed up when a patch "moduleparam: Save information about
> > built-in modules in separate file" is applied. With this new feature,
> > MODULE_*() are populated even if the callers are built-in.
> > 
> > To avoid the build errors, the lines referencing to the undefined
> > macro must be removed.
> > 
> > The complete fix is to remove all MODULE_* and #include <linux/module.h>
> > like many "make ... explicitly non-modular" commits did.
> > 
> > For now, I am touching the offending lines.
> > 
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Thanks, please feel free to merge together with your series:

Acked-by: Tony Lindgren <tony@atomide.com>

Or if you want me to queue it separately, please let me know.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
