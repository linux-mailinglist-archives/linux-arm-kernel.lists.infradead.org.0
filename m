Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15AC122F90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rdd5OXw+Ja7DBaVTUKo7buLtX10lnA8cCpPVsnGiqvQ=; b=lGb8ROIlUtu+T6
	sHbyleBRZzZK7aDZMnWgiLbeOqI329bvA8ZM/DGKhaW/sW3xF+cw3sYJM0GJVQACDXh9/4I+Xn/ai
	Lt7ZuEXYCG2qAjf4xCFEJHRnNV/OQLr8mpHvT3eioh/HadIWwu190zlBC5B2AcXyOnJih4gljSY8C
	3dR7VmaEwzt9QpAfGfzqB4w4P3TWw8uhaQMvKEdx7+xA12FHJYoi23avVdqYaUPZcD4BmEKPQPNSe
	w9M9gdVWLdZNvkMQKwjMlixR5+J1AkjO07jPR7cZ1wEsCOcyxodEKi9c6p6fu0i3R8K3IhU2qBldS
	n1P+Wu2PYkR50eirrxuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihEMt-0004hf-RA; Tue, 17 Dec 2019 15:02:35 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEMk-0004hM-QN
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:02:28 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so7182429lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 07:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O0Rb66CNDickRJ7Bq/qbZCX6pe18JWnwUGYQoSabjlo=;
 b=nc1kFGIJ2X3MLSwFsYgwekE3eU2ELET6ZDdDVyEmz8SzrcdMWQWzkYwBWnGwSdgtZo
 kh2P7GoGLqi7c3CK7uU6RYf02CgECXUagaEj8fTdohW6lijFhA/hVlviikpqrx8uc9FO
 6CUosdIm6B5iLGdwJSyaKdosfBdk2I3gv3Sy0rwQzKlfieMyu1I87feqxZq0uKI8vfwe
 00SZau+pluocODLrt9/0YkwjJafAsJBuJK5EJnlypuotcXqOwOU1AOTxsGg3jdGXimwg
 maj97Cf5R15V1SPJomwo057ptoU4RgxgvkhJgpDIs1kxReOSUdD+PWs8plH4fI37lFVy
 e1Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O0Rb66CNDickRJ7Bq/qbZCX6pe18JWnwUGYQoSabjlo=;
 b=XUWOs6jGrrlx7tTLiR6IEe2B4CF0iRqwLN1FEH8+rUT3Mnv3bChv96KKHgXPk7oO1e
 N6WrRWlhlcqucZZQnDDC3FXYt5CNpUAiCe4hTXbp3iySzvLsHPsmL6b8/iWvcki+vx94
 EKB63AzE2u49eB8tdLkFkI+SoekJTk6pYUVrITFjOMNjnEAXnkS6ku4JH9sM6kA9MCKY
 iT1aaDpSawyH29lSiuXkabtk14NBYovMORCiQ0h4qH68UWmrkaRbMIYOFA4HS2PhWsr0
 Mqicv3gFDLNwhVFEDUE0D62I9AcJfPnqTamAxSowcZpakcdxf/qI10wVF6fcJzIsuSu0
 K3zg==
X-Gm-Message-State: APjAAAXROAdLjHti6OCJQZPoJU55gz+h2IetUTuDKDCiJ4K2JlpBIMNL
 wq1LnoS9F8L9/dGy5Jz11HTezIO6t0EKgKOm4eVvqw==
X-Google-Smtp-Source: APXvYqziHWni3JFUJ+TuCWQlnrnZGScQfZ10zwQWd1xsjMdSwrSbKbX+lnqf9d2eTrU3sACzVPGsxGpql0eJY5wMDhg=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr2920893lfi.93.1576594944680;
 Tue, 17 Dec 2019 07:02:24 -0800 (PST)
MIME-Version: 1.0
References: <20191216210647.21808-1-linus.walleij@linaro.org>
 <20191217102712.GA879@gerhold.net>
In-Reply-To: <20191217102712.GA879@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Dec 2019 16:02:13 +0100
Message-ID: <CACRpkdb6WPuCktr16uOJigNkHbO8EbY0_EonWp07MzEi9xzCSA@mail.gmail.com>
Subject: Re: [PATCH v5] drm/mcde: Some fixes to handling video mode
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_070226_868693_F377CD6E 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>, Maxime Ripard <mripard@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 11:27 AM Stephan Gerhold <stephan@gerhold.net> wrote:

> I feel kind of bad to keep requesting changes for this patch,

Don't feel like that. It is complex hardware and complex code,
so it leads to complex development.

Also I am making way too many stupid mistakes :/

> > +             val = readl(d->regs + DSI_VID_PCK_TIME);
> > +             val &= ~DSI_VID_PCK_TIME_BLKEOL_DURATION_MASK;
> > +             val |= blkeol_duration <<
> > +                     DSI_VID_PCK_TIME_BLKEOL_DURATION_SHIFT;
> > +             writel(val, d->regs + DSI_VID_PCK_TIME);
> > +
> > +             /* Max burst limit, this is given in bytes */
> > +             val = readl(d->regs + DSI_VID_VCA_SETTING1);
> > +             val &= ~DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT_MASK;
> > +             val |= blkeol_duration - 6;
>
> The vendor kernel writes blkeol_pck - 6 (instead of blkeol_duration) here:
>
> dsi_wfld(io, DSI_VID_VCA_SETTING1, MAX_BURST_LIMIT, vid_regs->blkeol_pck - 6);

You're right, and still I read the code over and over...
It's good we have 2 pairs of eyes.

> Also: It does not make a functional difference here but for clarity we
> should shift the value by DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT_SHIFT (= 0),
> i.e.
>
> val |= blkeol_pck - 6 << DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT_SHIFT;

OK I fix!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
