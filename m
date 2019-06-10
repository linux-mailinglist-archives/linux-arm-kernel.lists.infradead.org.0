Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4F13B311
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTJyljRVe8j0wzNrRlpxarUhEBvQe9eCdJ+EPV/M/Ow=; b=rNmNEmN+nuyb15
	olxu+3UpyXpaJiuL+5PY9YR/bZWU678F3gEzemb7UU6X7IBRSvR5OHnJO5zXEa49MFwzBCnT80UIV
	di4+X0xFBSQnYZB8BT6yYsB98XU6hnFmrZQxRe1NVAherL0PSzhXPu96CeuC8BAxFj7KaSIYLbgSg
	DoEwQPxycH8j2n1c3dHtkaz1VeSU902HURvgMhrCx3RC6dEeCFILKJHWwBvZkaU/i2vZmt/LNPMDT
	Bj3Hg7HXQZakLt503753+jMvwFqaZwbRM7bEmU2jZSSVAecLCsES8rhuy1v6+T7y+V+EEhB9sOWgB
	qwooSP3m4TYOetfEwH9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHQW-00031d-AM; Mon, 10 Jun 2019 10:21:21 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHQF-0002yx-4K
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:21:04 +0000
Received: by mail-vs1-xe44.google.com with SMTP id a186so3063899vsd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SP4C91hkmfb8nf4pEfeOT8GgXw6uPbDXmSTuJCq/gGc=;
 b=NnLT/vHjyOBGZwlrcg6VlzgOH161C3LeV8WVy/Vu8rFpi3c/FRWMWJAgX1juq3HdBx
 L8SvJdLZ3DJYOGXVVqnaHEP5aYAPVqmD06tmeB37f8Zd2tJkwL3EEk9U+CyW/i2cGMDn
 /qbzJ3ipIzTlfQIz/Ku+Z+csNl5SVYR0z0h06poDeKOV3bCxAQ4+UPlvkgzYF3sHr6PW
 fNIwoN7cDHj1MRQI75Wh16WPHdavqxIdQxDViUCNbS748aaCS+CSALai5WJM95xeE+Le
 5WlgNvBWmNkP0+IZOmesajCOvIc6FGL6UJrFm0O3ov8s+u1/KMEO8G01o2byn1gEeC98
 E3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SP4C91hkmfb8nf4pEfeOT8GgXw6uPbDXmSTuJCq/gGc=;
 b=CwpKdq2CUsz+O56+CLOHmS/JPQNWkTi9/W5BZnnz6XfoMlarrKDZUjbSobvouktgjw
 AMYMgjcc8qkX8jMn2FKAdVG0qmt9Q8uYSHT8Ynvpgcb4Mjpp0Iz090Vm6XDlWsAx1c+2
 BhcyKSAGPaNcdlD6I/uB+IuwtoNk72RGEZ9rdrs+osEwYvBDroUQljEQ05BbaiVGsXUY
 7orzl/8IpljR9jDqGp3ozdvxf6GsOCQlGWtNVg2WnLHs2ufe17JZOLjBA7xSrFeUvI6N
 RsGpLOAp/mRBYPRjMWb/jZWKbTugyztdTJolSbC3eOvt0vtYSH4g9Ez8kpJE+zrkeAif
 9eXg==
X-Gm-Message-State: APjAAAXE3ClZc6wx05J17+rvkXIT4Lw6iZEjiX9J8WC7iH5ZXPH0hBbb
 F5T2IEG6FLbjF9IiToJVH0cJRugXtHz4u0wAhI/y9g==
X-Google-Smtp-Source: APXvYqyEELW5eYybi8NTzXTq1BaVxGi1afLoOiDPwggiWfgN/Ej4B4ujdWWHnp+5MIZ0eyrZ5ciJlutJA2qYMY6qJQA=
X-Received: by 2002:a67:706:: with SMTP id 6mr19148665vsh.200.1560162061544;
 Mon, 10 Jun 2019 03:21:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-5-ulf.hansson@linaro.org>
 <20190607150052.GC15577@e107155-lin>
In-Reply-To: <20190607150052.GC15577@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Jun 2019 12:20:25 +0200
Message-ID: <CAPDyKFqYZwQq_rDpfuV0K2-6_4N0frcFZ5iDab1OS8og+=zqPQ@mail.gmail.com>
Subject: Re: [PATCH 04/18] ARM/ARM64: cpuidle: Let back-end init ops take the
 driver as input
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_032103_170367_3E9ACA36 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Lina Iyer <ilina@codeaurora.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Andy Gross <andy.gross@linaro.org>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 17:01, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:22:46PM +0200, Ulf Hansson wrote:
> > To allow arch back-end init ops to operate on the cpuidle driver for the
> > corresponding CPU, let's pass along a pointer to the struct cpuidle_driver*
> > and forward it the relevant layers of callbacks for ARM/ARM64.
> >
>
> I may be wrong, but I see drv is just used to get state_count mostly.
> It's also used in flattening part, but that should not be here either.

Let me copy the note I added below the changelog for $subject patch,
as hopefully that should clarify the reason to why this is needed.

"- This patch is needed by the subsequent patch, but more importantly,
also by "[PATCH 10/18] drivers: firmware: psci: Add hierarchical
domain idle states converter"."

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
