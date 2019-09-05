Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0354EAA2DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rr5vxt9+mNDxtYBie80WicXopGLabTJIafI6B7/nwOA=; b=HT3l5vaQlLTBMd
	pePtlCYYIooz/6ShYlQyGG0yROmpFyrci5Y1FSgb4+4gudFnP6sGEFMiVvok3HwFxN4T9IT+V6IFS
	geDKgvr7+VEQ/LsjSHoHxlhG7Ri41OxBz3Aoh6TjGHlZRHPjH7pt7wFmrZkdNe9CTxnH8pIiohXsu
	YmxRnOA6+74jbIPvGjATfCZiecruJhStUgFSsF2PHsZ1uhf+1Bu+d4KYi4HRs8sx/+53KktHQHJKV
	h5Cl49NsfEC4yzX1OQiIn/tYmTKN1uU8zN2YEcl4/URR31QQiNbt8EO8yxqwgx7tyJpHJLl+YiELH
	wdBUBz4kE8Tsd/Bv+vKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qhc-0005lj-94; Thu, 05 Sep 2019 12:17:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qhN-0005ky-Uh
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 12:17:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id d10so1860821lfi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 05:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=StI3XcB3ZvY/m6NR8Jm9Qa6iMDjUpCo1O+h+kCm3Mhs=;
 b=DwucrMempHp2o8ChP6eO3ydIdJgDP45Fq1wxMW7+WbOnHWfClZX/d2iqVzfUKZb0yz
 gUR/JMZMhXjyRRnBGl3DP6uABKMwlbWHTaDd0C4AN0UIl5o+YdgRnUSEP0k0CSa1Tfmf
 /POGfhKtLR7h0LLcyMJFjitOMw87VAMu/b4g/WV2voAuGo/LjDbbKEd5cWwIAJYbXtwp
 SDplugUS4Hrt+3u3uDmUW2RgY0vSkim7PggeqbMbj1UJ0HKNpCwAg5Y3i+B0m4+iN03M
 dQyAvDtKxav3eHlejaSz4ymsizyw7Qhtit1Y7Iu7hE56wWb0GzIoIHY51cgtpPEx9EJu
 Xq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=StI3XcB3ZvY/m6NR8Jm9Qa6iMDjUpCo1O+h+kCm3Mhs=;
 b=LLrjs/gOcEtzTEs7239gXDK/4Sdf8B9Nprif8NuLDMkqF2IpOckY1Fvl/lF6Tbnj63
 AGvjaKX7xP71s4+h6IBApKUFZiL6/64wlBaYCSolfdbEs1jFlSI43z3hcS7viJZpsaH7
 i1YcoYzYYkjvrWjC2h4jIj6oUEZCZ+K6Bf6gUEF1/C+YDWeOpdHsGWNBq2vHHUI9ABXr
 X5xPPK9vAQOwPhaJNdrNao+lSoARBJwlzSM543iWx1CsS8OELZkO6ysfdfmFwzEBrerr
 JyFUR3ZGTXQZm8UnbNEeeq93xhf4xdyfkPvEgG5hJj4fYHXLAQqgNH6zHzpOmwTsgbVo
 uI7A==
X-Gm-Message-State: APjAAAUj16XuVvamlv6on5J0dFpWzcDSsQG7Bv8nfXGnzWQa16fDqP5p
 a5zV+WuwdKu7XEHWa+E9QlI7Qwwhu/rWHOzrxCJ3Mg==
X-Google-Smtp-Source: APXvYqz1HIEEslu0C/MDCa5oulKWClv1iCI63dh5dtfrqNlp7dL4eID2qjNiYEwjIHqFGZW3qcIjGeu6PQa0MaM/JQ0=
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr2195051lfp.61.1567685830776; 
 Thu, 05 Sep 2019 05:17:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190903091512.15780-1-linus.walleij@linaro.org>
 <20190903143745.GA2263@gerhold.net>
In-Reply-To: <20190903143745.GA2263@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Sep 2019 14:16:59 +0200
Message-ID: <CACRpkdZvy6aa15wGjBMDXccaXjxgPjYe89XbpkzSbOABgFhOQQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mcde: Some fixes to handling video mode
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_051713_991830_94215427 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <sean@poorly.run>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 4:38 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> On Tue, Sep 03, 2019 at 11:15:12AM +0200, Linus Walleij wrote:

> >       /*
> >        * This is the time to perform LP->HS on D-PHY
> >        * FIXME: nowhere to get this from: DT property on the DSI?
> > +      * values like 48 and 72 seen in the vendor code.
> >        */
> > -     val |= 0 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
> > +     val |= 48 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
> >       writel(val, d->regs + DSI_VID_DPHY_TIME);
>
> I just want to note that the Samsung S3 Mini (golden) seems to use 88
> here. I suppose we will need to see how important this property is,
> or if panels can also work with a slightly wrong value.

Yeah maybe we should just figure out what to do about this.

This is the wakeup time, in clock cycles, for a LP->HS
transition on the D-PHY.

The panel driver kind of knows knows this timing, so I
guess we should add a field to struct mipi_dsi_device
such as unsigned int lp_to_hs_wakep, but it needs to
come from the device tree since per the manual this
value is system dependent:

"reg_wakeup_time must be shorter than line duration and
depends on the D-PHY cell plus some pipelines delays inserted
by the DSI link. This value strongly depends on the PLL
programming and as it is a mix of analog and digital timing, it
is practically impossible to provide a general formula. By the
way, it has to be characterized at system level (validation
and/or simulation)."

> > -             writel(blkeol_pck, d->regs + DSI_VID_VCA_SETTING2);
> > +             writel((blkeol_pck & DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_MASK)
> > +                    << DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT,
> > +                    d->regs + DSI_VID_VCA_SETTING2);
>
> It does not make a difference in this case because SHIFT = 0,
> but shouldn't you normally shift before applying the mask?
> Otherwise, you would wipe out the lower bits before you shift them.

OK you're right, I fix it up and resend.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
