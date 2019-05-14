Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414801C57F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 10:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHffsK6v+2Xk0PzOZnUo0kg5G636/ioD/JbCCS/dIC0=; b=MpwT7ZRxsutwji
	Meq+ACAzT9ooQUbP1Rwp3jO4zhKZd3WJNLP9r+SriA7ts32qtos3vy7SZGAucblC5Sr5crH2jYiAR
	Wt/XUuc77nSyGDAp9nO+jclw9yQjOrHqnV6wUOULYIS8WhdOrDZvMh6egPvygFDWVNW3LmkzAzOP5
	e2ToqbvTCy0jgcQsftmQy7aEJqieXLH3TuBBIOpE/Ugk+iLGh16dQHIlmx7fWaM9+vQgq9418Y/AP
	BvnqxcU5eLD+i8z6vCcqnvJVpkRwEC0MZgIh2mOlAxMmGOpClwearVHc/EUiGo8quCDGLE/tfpEaX
	XivqtG5ZregabPai0atw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTGr-0005pk-KB; Tue, 14 May 2019 08:58:49 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTGk-0005pE-BT
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 08:58:43 +0000
Received: by mail-vs1-xe43.google.com with SMTP id d128so9798165vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 01:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MLSCBYZPRnRjPoWF2biQlF2E7iPn0TGMhmM3d3DWvJk=;
 b=q8lxVzyzoXF98rEkWk5wquphTuXEip2RN7SWX+ji6R038d7laVaDsxolVn4Lifr3L4
 nDasZXSsGt9J3K/Dma2aHgNQXDd5PmwH0TmaWaaa1ielTpN5NpWI1KuO6GzoTid1P87V
 W+5QUyaNPx3uISiPfkM3GUlQFtkj6y4HL+j6jrliPgZKgTNgOWzvACEQGlWMm/hygShh
 Hk/tX4mdGKpaW3Nb3aJUV384CKlCitHayN9Zw9WXdnfRaWYon4saa+Za6XYQRGPeEULH
 F5R1ANYbch30daXqS7q1vJFNPngTOJVKDjhVvf3ixaqY34sSs44//FI0jLdvax1IQdpR
 9YTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MLSCBYZPRnRjPoWF2biQlF2E7iPn0TGMhmM3d3DWvJk=;
 b=a9tbgjTrHN6xMJjtSz5T8skSSw/fS5WsevU6EDyabovULkMbL4ppKzpcQopQrKrAOU
 Bf7Yl1ZLCpL8rZLvLpherEv9ecBQRFOXrh6RtGuc/ZcwwTwJOK4yaK70s0uv0HaOxXQ0
 Xz4XLHq4j1n9/q2i4G2pPleTCR5WrtJT1Pa24m4D2wj7xs7fRop999gF3d/BmKlQov9T
 mKpLEA11+jRukFhEc35thfM2IPNWWSdrNabFg1IqXEOiLAyZIhtbhONtKKXN6e9o+JvS
 BwBkpSBvZrVsyAEzxFMBFj3ATk6xPa3Y1LAaxvowN8sTEPs/M5R88PlzRW7MjbePXbn3
 FwMw==
X-Gm-Message-State: APjAAAVGPLx1CJPfvQGA6jGBN1/C4ZoRjUMFnPtmf1Yy0SsrrFJfMB+e
 JIjuKCYf/laYxdM1zvGT+9wMmWQeRvlK4TV7ACYvwg==
X-Google-Smtp-Source: APXvYqwycH28jEcSrDkjPUkWW/Zcz25ycb6BQFN7+w/8A+3I/hQsVj2ek7HBD2590jjCbU0ruGu2wcP3lpcGlb4hlPI=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr13449930vso.34.1557824320126; 
 Tue, 14 May 2019 01:58:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
In-Reply-To: <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 14 May 2019 10:58:04 +0200
Message-ID: <CAPDyKFpU3u248Gi+FnrVdY-EWXJQuu14uNV9d3Xs0W-K-EMEhg@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for
 PSCI
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_015842_435539_44CE97FD 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 May 2019 at 10:08, Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Mon, May 13, 2019 at 9:23 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > This series enables support for hierarchical CPU arrangement, managed by PSCI
> > for ARM/ARM64. It's based on using the generic PM domain (genpd), which
> > recently was extended to manage devices belonging to CPUs.
>
> ACK for the patches touching cpuidle in this series (from the
> framework perspective), but I'm assuming it to be taken care of by
> ARM/ARM64 maintainers.

Thanks for the ack! Yes, this is for PSCI/ARM maintainers.

BTW, apologize for sending this in the merge window, but wanted to
take the opportunity for people to have a look before OSPM Pisa next
week.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
