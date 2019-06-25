Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F275F550C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Z12IuwGgz7m0qG8anxMbbXOVBtv3fiWi2sQMcJcifY=; b=AgnXUEHZ9YtCmt
	Ux02pi+o0i3WpQgs+ZH6mvL8p9D1LFlQsP/7S0hIsUuny6BlSBqYoapQJPfcgtK6oEmMvp6bLOQOV
	OayOXWO39Ix6uonwrzFF4RzNixI4t63JIetvvWQLwkGdneG52tsym7JJMCPFu46oSzmrm++Ncmgyb
	EaemdisZhcOYm5fw6rZ34JkARrkqYku7ELLC6a3upyx57CZ569Y//rp7rsGPsRKFg9U9LU4RYdh+Y
	whWPl/Z+dC8KXBMovErTGJvo12GT5AOi45BBVISgWTHDcHvJ0Ldtz4D/lNK1H/dTMYCjBLGUoKfCJ
	kSgKk3ZkUSkei9KgyP4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflsG-0002UK-ED; Tue, 25 Jun 2019 13:52:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfls0-0002Sa-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:52:25 +0000
Received: by mail-lf1-x142.google.com with SMTP id a25so12709655lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1iPCXBWydY7xCYkvB8WzAfUNgl288BVJPxiE7eymZwc=;
 b=g2V0fCvjO8+3g8khRYtLAnbQ17g4lqT6qVl4M0mCKmKWq+YJk1oLO9Zg92WOT9LoK3
 OJ0TbgMvhLM3u8/sWKSIZnczTTXm3pxHjZ4hcg2+xP0SHdqLuUhWnjCO/nyI7mCxfOZe
 pF55T17XglR3n4eL9/x16BxWXrtrXiwjNXvgCiX343miHdOa3JauxcHH2Pd3VPLIUbju
 dBu/T9IuBycyeZef+ZDn9NmJB//VdJvSTJAMDSW+w5UCFyoprRYxlkFYYs2xjZMCWpWd
 RF5Hj9cmTdbwLsAbZTQBlRpUofp+ZrJLl6R3kfCA1vvdesl9yKlln8Lfu898J7b2oa5c
 iQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1iPCXBWydY7xCYkvB8WzAfUNgl288BVJPxiE7eymZwc=;
 b=DIkVnV23eDoZ/kpExwiyBAOpFKEC5D27Ltp+c79i9vpeTkW7CyW5HbFlCwZGo9Jucn
 0LF7KTf50ekOiXGh5a/t98gJClNgOqh63XdK1NhcUbZuiDooPs9m3U/2qhdL3lgJ6/BY
 Wz3vFd3DvIGo5LBbt4cTom8hJAZ+WaIhC1UzQEhGqly3NUl6n3styY1KI6HIEW/ndmV1
 VhEu2fPPMGc5jdvG4m8bKE+4IXscI9AuR5f4UNsgb0ZIBA7T6+66plrte/4bggGs8Y84
 ZztMoiOE0cPhikI8fRv1esE9sAlB49mp4nZgINYxYcceI/O73gbYZVrpxFt/9LsZZnNS
 POJA==
X-Gm-Message-State: APjAAAX+P5cPl8XOUPfSTsG6/dg2Po+yVQ4nv16Ipt7nygKjKNu31uRk
 w79Xa3GmeDtUI4/U1X28j3ypBZkHEeOmTZ+ehBtyIg==
X-Google-Smtp-Source: APXvYqys2XmtNKJMpGTxiNNF5eq3ErgW9CVtNHeSeJ6lfHCqj5xUU5+RhbLY8XHHRGOBrv8+Gr2dB9NfGnaPQOSPrJ4=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr14173585lfu.141.1561470742590; 
 Tue, 25 Jun 2019 06:52:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190429035515.73611-1-drinkcat@chromium.org>
 <20190429035515.73611-3-drinkcat@chromium.org>
 <CAGp9LzqyRQ0knQ8+NanTAC0VVqBudAFPuCQJiyymmabaT1Hyfw@mail.gmail.com>
In-Reply-To: <CAGp9LzqyRQ0knQ8+NanTAC0VVqBudAFPuCQJiyymmabaT1Hyfw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 15:52:10 +0200
Message-ID: <CACRpkdZmNug21=6rz9U8-G5ONPywjCh6_y8-=msY+Y8WvZEm5g@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
To: Sean Wang <sean.wang@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_065224_107205_0AF846CC 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Chuanjia Liu <Chuanjia.Liu@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 6:20 AM Sean Wang <sean.wang@kernel.org> wrote:

> The change is worth rewording the commit message you added above as an instance
> and adding Fixes tag as a fixup to mean you're fixing the existing
> problem in the driver.
>
> And then Acked-by: Sean Wang <sean.wang@kernel.org>

I'm waiting for an updated version of this patch.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
