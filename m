Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800A13B8AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ix/xG8VGii+ikcgkEvMWMij6twhd991KyzVBSAXvtM=; b=e+PgQy1JMmGFjt
	CxAb9fDppQbu/XCuQG0PN3ZlJfOpGuBq1jrKGkVn1nFU9esqiZKiWwhbTilgDyyB4oqJwJ85z1Wli
	WUBZxMse/NmDfttwGNKVFwNChMGalxhI4DJAsz5eMjeoswG8OzfanGdMsr9Oo2M0mNUhaj059xFb4
	L2yV2LD1toktzdg310J2f+g/HgtKi5xZhYGLbwL0jKYd+ACECAp9B1E+m6aJPK/pendWN/As8gQ2c
	77kq7nmLoZyErQXzmSv/h9r2r6vlTjmkd5rCgOD/HSFGsUG3Ce2jWwNytvFWMmvA1fmnb3kQPZF6y
	0WtYExY9h5HdsYoeoNfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMdt-0004wk-Gz; Mon, 10 Jun 2019 15:55:29 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMdg-0004wC-QJ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:55:18 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 190so2073937vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 08:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eJ960EUK4M88NTDJHb1rKy4PnhRaQvW8Nj+C4ov1eV0=;
 b=vCBfA3KmfrlpdkfwvUkrPRXgpjj0KDLsG7IqaJiYABwd5Pcyt+37mq5KWs4wPSGqMb
 8ZgO+v9HFp5+yUBCsWM3EzZH87jxKU3TpzYbeFbOOK7m8bhdQ1VpJzZg2LQ3MfAea/mO
 eIND2griYlCH1pm58X4Ot68AJrGmrqHsHx/39nYjlnDkDZjrdt6+jVL/CSvvh9a4M0lm
 RTE6Tl9praUVHc0Tmaeiz3dcU4blbB0iDAGmXz+xY0nJeRKi3vN6nhssHg1abNM+4se2
 nc4Ba32motZk89uankg8NcXb2RU99K3kViAN47xvTlR682A9KwMEfT3SmCv+tcveqfdQ
 +O7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eJ960EUK4M88NTDJHb1rKy4PnhRaQvW8Nj+C4ov1eV0=;
 b=hWCVwFy7DVhkW6SYk6p3Z875JpSZSXdryUJPb8Goc7MNvAyEPQaOx1o9jiMAESilAq
 hghTgDElM+9A5doHfZDMrTwG3SdIuLlwU/X+q4GaVTLMT5A0hP9Ye5thsQAdF7hEjVy8
 hWZDNP3DjNLf9JUG2XTybm3Tb8dYcjeYZ8UNk+2CLTBmr+u9+WXbNu+G9xa++14tBYxT
 CldFXeT1aQGb2cHq0J85Jv1MRwJ+spJm48XUYJPzI/pDWNvJE6tyYzHxWu0cRcWoJiUy
 7NaEBrtV77kGhZy1pqR89BOvVkuLkgLtyefPFWZUTyCDCMfKGiMgDZUVfcaDeWvdPIRF
 Pf1g==
X-Gm-Message-State: APjAAAVF2slbz9h13FUYh4rNk5ZIDCXlPm3P3AKKXkFFvNIAL33szvb3
 qHWoWNV8IKkJgpwIV0O9lvtqfL8n4YsDLJvzGr6p3tvj
X-Google-Smtp-Source: APXvYqyKa1UWfLl1PSfzv6wP9x21u1pRGC0+qtdGCuyShRG80yR2Bgm8tFZ6P+m7SezHV6nB/wuI1N1s+r9iik+R06c=
X-Received: by 2002:a67:706:: with SMTP id 6mr20519578vsh.200.1560182115587;
 Mon, 10 Jun 2019 08:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
 <CAPDyKFpU3u248Gi+FnrVdY-EWXJQuu14uNV9d3Xs0W-K-EMEhg@mail.gmail.com>
 <20190607154210.GJ15577@e107155-lin> <20190607193407.GB24059@builder>
 <20190610103225.GA26602@e107155-lin>
In-Reply-To: <20190610103225.GA26602@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Jun 2019 17:54:39 +0200
Message-ID: <CAPDyKFr31SwmHHAREbR3dWMQ55LzzUyTc4M5FZvNsqWfX7SE8Q@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for
 PSCI
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_085516_866572_3F6A5ED7 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
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

On Mon, 10 Jun 2019 at 12:32, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Jun 07, 2019 at 12:34:07PM -0700, Bjorn Andersson wrote:
> > On Fri 07 Jun 08:42 PDT 2019, Sudeep Holla wrote:
> >
> > > On Tue, May 14, 2019 at 10:58:04AM +0200, Ulf Hansson wrote:
> > > > On Tue, 14 May 2019 at 10:08, Rafael J. Wysocki <rafael@kernel.org> wrote:
> > > > >
> > > > > On Mon, May 13, 2019 at 9:23 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > > > >
> > > > > > This series enables support for hierarchical CPU arrangement, managed by PSCI
> > > > > > for ARM/ARM64. It's based on using the generic PM domain (genpd), which
> > > > > > recently was extended to manage devices belonging to CPUs.
> > > > >
> > > > > ACK for the patches touching cpuidle in this series (from the
> > > > > framework perspective), but I'm assuming it to be taken care of by
> > > > > ARM/ARM64 maintainers.
> > > >
> > > > Thanks for the ack! Yes, this is for PSCI/ARM maintainers.
> > > >
> > > > BTW, apologize for sending this in the merge window, but wanted to
> > > > take the opportunity for people to have a look before OSPM Pisa next
> > > > week.
> > > >
> > >
> > > I will start looking at this series. But I would request PSCI/other
> > > maintainers to wait until we see some comparison data before we merge.
> >
> > What comparison are you asking for here? Do you want to see the
> > improvement this series gives or are you hoping to compare it with some
> > other mechanism?
> >
>
> OK, I have mentioned this many times already, let me repeat it again.
> This series adds an alternative to the existing PC mode of CPU idle
> management. And it's clear that the main reason for the same is the
> improvement OSI mode offers vs the PC mode. I am asking the comparison
> for the same. And yes we need to compare apples with apples and not
> oranges here.

In the cover letter you see the two main reasons behind this series.
Yeah, OSI support is a part of the series, but OSI or PC mode is
orthogonal to the overall changes this series implements.

When it comes to comparing OSI mode vs PC mode, let's try to avoid
that tiring discussion again, please. :-)

My summary from the earlier ones, is that because the PSCI spec
includes support for OSI, we should also support it in the kernel (and
ATF). In a discussion offlist, Lorenzo agreed that it's okay to add,
without an apple to apple comparison. Maybe Lorenzo can fill in and
state this publicly, to save us all some time?

My final point in regards to the OSI mode support, it's a minor part
of the series. I don't see how that should hurt from a maintenance
point of view, or perhaps I am wrong? In any case, I offer my help
with review/maintenance in any form as you may see need/fit.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
