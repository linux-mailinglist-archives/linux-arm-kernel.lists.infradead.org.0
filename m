Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8740C20738
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 14:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTVLi/OIyiqgoxiSGDOI4akfSkaciMxZLKIANlwyckk=; b=cdH0Of/kQfmF9a
	4TeXpTiL5Ft9E4jC4t8YImjStenMLUX3K84WoaIoNIXVG7ecN6lElwaOnaLqhBlXLmEGQtO9JWXPE
	phmZf0CE+ln80sgvnUlXrtnQGP1rzobJjoNIWyTfYljwfEh+jnpncXPLPw+O1HhDU9+0TcvwZSIlN
	NlYnn3YMMNXQrvBCYe/Z8kgELi9ibWz/PUcQU76hoOfrRj7gUrfJR8aGnlVGP2NUbsjapXFRFBhgo
	6bVjXqyNWYEmZxB2SogK62RF+7sgb37nJtQHl9gRnkkjwRDJDWhoN3agc/ypTq0+mTr6rJleNp7G/
	nOtqAbgNoeKaJkndmw2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRFne-0001OC-5U; Thu, 16 May 2019 12:47:54 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRFnV-0001N0-Ku
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 12:47:47 +0000
Received: by mail-qk1-x743.google.com with SMTP id c15so2150578qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 05:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W184LUt3OLZpc35GbIgyfbdRWYWzS470rOoUrNJBmxU=;
 b=TRma6EWmVqtTh6oyWeOyXuXYl+5HLkiD+FLBf6YYv1n3LTrxOJcXtDjC9qMNgWV3IM
 9/L3ct4DLiJQOWk/6Vr+Zcmy4GqUrvJkXz80l5T6lMeDYVdK+B2rz9KW/QoYjrG5fcXu
 dYY57kMN4S4l7szDwWKXb9Qsvi5JOUOtVT/i4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W184LUt3OLZpc35GbIgyfbdRWYWzS470rOoUrNJBmxU=;
 b=UrB/G9eJKh9Si/IHeJ8Z4Al3W5vOHAkQFrXKvyZdRf0u/3fu3sYP78GjmS4ZcUuctt
 Fqsff6NZafHec9zkieh7DWrR46HDshhyxeG8NzHCirYFYuDUcDXmeZGZmLFC0rnAOOd8
 8giOIW1IrKNcbil54/GyCRlucq5xAvODPl1dvO5ic6ezLPwUFdoUkyUDgwEKb0SGs/xz
 ifSPG8oEOF+tHQ2qBRSqKklDsVkgZUVh5F4zoJTcRG7lLRMjYznI7anm1jjY9oz7c1Ww
 UX3s9/5x/sZDD2SPk+9rt3jLLl56xhhxdOmU3JEQSP2J4mdZemTzaCCTbkC3JgcwBhjN
 fJug==
X-Gm-Message-State: APjAAAXj4vJWbh7zYUYiuxBL+KMe5gOS0QY0Y4W0AjrRB95F4Y8v2Zv1
 jachqDwSfKrlDPANpcuAE+J8I+og7ugKcKUg6jL/Ig==
X-Google-Smtp-Source: APXvYqybed54iK4vV+PN2Aj3PjQ2Py6dcAunCb38T+fR74fZCjJqmxhGgna5I/pOr2f8Y6E05PAXezd/gE5bKfmgw6I=
X-Received: by 2002:ae9:f818:: with SMTP id x24mr37963214qkh.329.1558010863680; 
 Thu, 16 May 2019 05:47:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
 <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
In-Reply-To: <CACRpkdZb73vNyepcfjzEGAopc7BBxde_N1wxn7PSJ3aGC0=Gig@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 16 May 2019 20:47:32 +0800
Message-ID: <CANMq1KAOeuDCZEvV2A18nUts3WP2MbhUpY7gQ+vk0oTOz8TRQA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_054745_712068_56536847 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 7:55 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > This adds support for wake sources in pinctrl-mtk-common-v2, and
> > pinctrl-mt8183. Without this patch, all interrupts that are left
> > enabled on suspend act as wake sources (and wake sources without
> > interrupt enabled do not).
> >
> > Changes since v1:
> >  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
> >    recommended by Sean, to keep better separation between eint
> >    and pinctrl-common features.
> >
> > Nicolas Boichat (2):
> >   pinctrl: mediatek: Add pm_ops to pinctrl-paris
> >   pinctrl: mediatek: mt8183: Add mtk_pinctrl_paris_pm_ops
>
> All seems to look fair to me, but I need some official ACK from
> Sean on these.
>
> I see there is some discussion on a related patch set which
> also has two patches so I am a but confused how mature the
> two patch sets are? Are they at all related?

They are somewhat related, but I don't think this depends on the other series.

This series adds support for wake on mt8183, and makes it similar to,
say, mt8173.

The other patch series fixes issues that affect all mtk pinctrl
variants (i.e. I think mt8173 pinctrl on current mainline has similar
issues). It's not impossible that the answer to the other series is
that we need to refactor code, but in that case, if we merge this
first, we'd just have to clean up one more pinctrl variant.

Thanks,

> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
