Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C48388DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76Tl0soDIGUqZd0GdCcWQvjv5fXukR1uDo0G9o779Bg=; b=HGMPRyDqX7u9sC
	tJ0Zog+KC9PCGg5FhoSXTjFqtmUPbj1XCmYLd/nyl9Ggj04/kHHhGx81WZDMhoaIjvqLIGSzPt3ZP
	hRmqhjq5VTBUKYfZsqKV+B2CKVG9zUuua1I+R5Cv5gx+ri9/keRqkZGDEViQEnK9Pv4dAoH734hus
	sd0m6m1sr2/qrCVYGZzV7L5KNddezcqnnS5W03iGJnn+ayjy6WuxkCkT5YZXnkXJSKWaTDMoK6bJN
	e9zh1iBBM91R6NSYJ7AYoHKdIRp5Aqy0R4WhwYx8FQOB+WCCARS1CflK3vyvdtahC28HxA55apMSG
	GG697Iy5536njsGNKOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCv8-0005cq-0E; Fri, 07 Jun 2019 11:20:30 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCuf-0004GN-Cg
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:20:03 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u124so923493vsu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 04:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w4NS4GIrxZAsG8uWe3npx+I+Z55xA/6nCg36DRSR5Ko=;
 b=Zz2BQtszgGrubssBAWgUiM60O2iIdVTkeUPwM80SswhzRCB4r5dCNVh1317J2iTn2E
 nMz8pzbEa/5p0kRJ+WAwNZrBzc02/qm0JDO92qY9J5mFPdb4fJsQ95xElOU6fOfXo0It
 3QLI61/lXGJRWVYH3opjylpwSlgcPfevGBilKS5VMrmI8vXvd62UMLKKdXRhmVKFaBfN
 g6m7CvsQB9SWjxsluHYVbHPaffDmzjUOATrcRORvD7Oe1Vok8NBqXpDxppsSjWsX/NLB
 9nwuy516H/U94g13hV3hg2cAffFDX7oKDf8OJaIiBkwmUdMzRR/4N9/Sc9fQpQp8869g
 tdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w4NS4GIrxZAsG8uWe3npx+I+Z55xA/6nCg36DRSR5Ko=;
 b=cX7zTR+fOQxxLHgXw6zN5A4PlTvlBCJFf5cWIXdIeKWL+wGaXk14zUyFNPmIVL82dQ
 xEUbUbgOxmJFUDA1s6RGbCnOrvuf6T3Ya5FmrE5HPWJBI+IlaTps1+K/pdB3cw6a3Z99
 0PXjwVN1hYbazI9NJWH8pHk1z90d9O9yVNA/ZygpvtCOXC8QRIT3GQPZE2p6/LBre1g5
 qbHnezf5Qyi4zSFmCGE/uvkO/vaJb/ZUrkJ+iatpblEPkjNjF1jq2iwtWLNreGuWNfsr
 Zc6t2GZU58vkTP5x26qBro7A7G7hCB+stHVrNtCzy4T6YIw9g0b8TXqG+BhNSJHMn7aQ
 JMlA==
X-Gm-Message-State: APjAAAXty0GF5P87irgXabXlJ2emOi4Y8yb8qEkWZT2icCEGXqb0isx4
 xkwAdcEEPRh+chejfiP+tqU1MH3wBCkzzj5pCojw3w==
X-Google-Smtp-Source: APXvYqxJ5Ur/WKk3GslZ+PDxWcG90kOHvxGy+wa7gr6wMTrbViJkGVWxDEzEvNOs4w39xZTxA1LeReQvz0A4eafkN+o=
X-Received: by 2002:a67:706:: with SMTP id 6mr11498566vsh.200.1559906398328;
 Fri, 07 Jun 2019 04:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
In-Reply-To: <20190513192300.653-1-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Jun 2019 13:19:22 +0200
Message-ID: <CAPDyKFo6Hkw=6iAq8fCEKARXeOiFp9C8FrJ4D_r0PoDFASSDRg@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for
 PSCI
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, 
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_042001_431130_90B456E3 
X-CRM114-Status: GOOD (  13.91  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sudeep, Lorenzo, Mark,

On Mon, 13 May 2019 at 21:23, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> This series enables support for hierarchical CPU arrangement, managed by PSCI
> for ARM/ARM64. It's based on using the generic PM domain (genpd), which
> recently was extended to manage devices belonging to CPUs.
>
> The last two DTS patches enables the hierarchical topology to be used for the
> Qcom 410c Dragonboard and the Hisilicon Hikey board. The former uses PSCI OS-
> initiated mode, while the latter uses the PSCI Platform-Coordinated mode. In
> other words, the hierarchical description of the topology in DT, is orthogonal
> to the supported PSCI CPU suspend mode.
>
> Do note, these patches have been posted earlier, but then being part of bigger
> series, which at that point also included the needed infrastructure changes to
> genpd and cpuidle. Rather than continue to carry the old version history,
> which may be a bit confusing, I decided to start over. Although, for clarity,
> the changelog below explains what changes that have been made since the last
> submission was made.

Is there anything I can do to help the review to get going here?

FYI, I hosted a talk about "cluster idle" at OSPM in Pisa a few weeks
ago. There is a couple of slides [1] with flowcharts of how it works,
that may be of interest for you.

Kind regards
Uffe

[...]

[1]
http://retis.sssup.it/ospm-summit/Downloads/01_02-ClusterIdle_UlfHansson.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
