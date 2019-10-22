Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF43FE0AC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVhDivndZyiYNTp2WvB1oMZ040KKNz8BdzEUFBCzpPU=; b=KUng932t+fdmPI
	3mmO8+NhgZTY1NcEInbkSK3UCCz0m3FHxGYJ8z49StjYxhy3NKq5aj0LQtUBKp7bRQlFbKzZD3l16
	gudqBp0CvXFH4WiJC/MS+9hZzgLjuf0spC2tmFfAT9TlyY0tTnWP2abn48PTNPw0QzfRgmN0R9xyj
	t/uYxjh/3h8UeJyGKKUFpsVUiiv2GRSCkYS9MgWwE4jOHYotb0QENGGh2yV3Qd166k2j0R5+E36Mx
	BhB/Saskyr7y5undtVpmCQClStlFlNMJgyU/FYp7dDAFYlr3CyCPI0FCaJEOXalxo6TJ2MXxoxtHi
	+894k7aE/8bBbW0JoEDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMy4M-00079Q-Ll; Tue, 22 Oct 2019 17:35:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMy4B-000789-EC
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:35:34 +0000
Received: from localhost (mobile-166-172-186-56.mycingular.net
 [166.172.186.56])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B094320700;
 Tue, 22 Oct 2019 17:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571765730;
 bh=Jld/hYcxZXmjGFVuWBdEY4QI+QyPIanxZKbLtqBLGBc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KjIZP5hfgFgUn1+Ljz18nxHSEXDVd7I1a8ueHM1nX8sqKYwTPALZAdaZeymD9A5Xk
 AhqKSe2drZC6ffhxX2VDu2wyGx51R4WPVjG0f6K8p+Z2h7rwP81FZEar+clOopjyBk
 JWILQvQH0HfCGebHAWRAKurHRkWaeIRbs5Klfa/c=
Date: Tue, 22 Oct 2019 13:35:27 -0400
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
Message-ID: <20191022173527.GD230934@kroah.com>
References: <20191021143742.14487-1-geert+renesas@glider.be>
 <20191021143742.14487-2-geert+renesas@glider.be>
 <0f91839d858fcb03435ebc85e61ee4e75371ff37.camel@perches.com>
 <CAMuHMdU4OhsK6Jvy406ZCM+OeGcfVB0b7ccsne9KdMZFLf=JqQ@mail.gmail.com>
 <a32b6a6b5f48ff0c4685bd417a8fb66229d95033.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a32b6a6b5f48ff0c4685bd417a8fb66229d95033.camel@perches.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_103531_515353_540DB339 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, netdev <netdev@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 02:07:34AM -0700, Joe Perches wrote:
> On Tue, 2019-10-22 at 10:03 +0200, Geert Uytterhoeven wrote:
> > Hi Joe,
> 
> Hey again Geert.
> 
> > On Mon, Oct 21, 2019 at 5:37 PM Joe Perches <joe@perches.com> wrote:
> > > On Mon, 2019-10-21 at 16:37 +0200, Geert Uytterhoeven wrote:
> > > > The existing debugfs_create_ulong() function supports objects of
> > > > type "unsigned long", which are 32-bit or 64-bit depending on the
> > > > platform, in decimal form.  To format objects in hexadecimal, various
> > > > debugfs_create_x*() functions exist, but all of them take fixed-size
> > > > types.
> > > > 
> > > > Add a debugfs helper for "unsigned long" objects in hexadecimal format.
> > > > This avoids the need for users to open-code the same, or introduce
> > > > bugs when casting the value pointer to "u32 *" or "u64 *" to call
> > > > debugfs_create_x{32,64}().
> > > []
> > > > diff --git a/include/linux/debugfs.h b/include/linux/debugfs.h
> > > []
> > > > @@ -356,4 +356,14 @@ static inline ssize_t debugfs_write_file_bool(struct file *file,
> > > > 
> > > >  #endif
> > > > 
> > > > +static inline void debugfs_create_xul(const char *name, umode_t mode,
> > > > +                                   struct dentry *parent,
> > > > +                                   unsigned long *value)
> > > > +{
> > > > +     if (sizeof(*value) == sizeof(u32))
> > > > +             debugfs_create_x32(name, mode, parent, (u32 *)value);
> > > > +     else
> > > > +             debugfs_create_x64(name, mode, parent, (u64 *)value);
> > > 
> > > trivia: the casts are unnecessary.
> > 
> > They are necessary, in both calls (so using #ifdef as suggested below
> > won't help):
> 
> Silly thinko, (I somehow thought the compiler would
> eliminate the code after the branch not taken, but
> of course it has to compile it first...  oops)
> though the #ifdef should work.
> 
> > > This might be more sensible using #ifdef
> > > 
> > > static inline void debugfs_create_xul(const char *name, umode_t mode,
> > >                                       struct dentry *parent,
> > >                                       unsigned long *value)
> > > {
> > > #if BITS_PER_LONG == 64
> > >         debugfs_create_x64(name, mode, parent, value);
> > > #else
> > >         debugfs_create_x32(name, mode, parent, value);
> > > #endif
> > > }
> > 
> > ... at the expense of the compiler checking only one branch.
> > 
> > Just like "if (IS_ENABLED(CONFIG_<foo>)" (when possible) is preferred
> > over "#ifdef CONFIG_<foo>" because of compile-coverage, I think using
> > "if" here is better than using "#if".
> 
> True if all compilers will always eliminate the unused branch.

Good ones will, we don't care about bad ones :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
