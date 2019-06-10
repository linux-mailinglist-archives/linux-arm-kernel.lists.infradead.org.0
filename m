Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CBB3B315
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+1vwSDokJq+kYCth6gh5JOOt++oouBYIkYUMNzBpQA=; b=TjA4QMLMGKNwf9
	ehNcWhKrFXWdHwZJHr2d9S1TgnNvXMU5DfsptETPGwwBBUXrDFzQUcE+4dzc051HirhLM33WQ4w95
	2/fMejmbIQ9lv7xVPguaxd4TSM+CYaZ47QyjcgG/IhXCxHezEJVESyjMKkZ4SoW9unVHw7TntK33T
	VGjJSNX0ts0K/uvPnj1f9hGGRWcIDg4Wm6HnqICtTjn6DW17PSh8iPcD5DFvvQWU41Gi0fhJ8JdDt
	Wz7Qd6gAwSpGNcFg0kHZFnCXwAh9HhjHWiQ0oYOo5Iq971buGrZbgrJg6dmwQjUj0neRSAjwdqmPX
	QaEcMRoKHN8U2xl2SbHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHR5-0003VR-U2; Mon, 10 Jun 2019 10:21:55 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHQx-0003Ul-Rd
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:21:49 +0000
Received: by mail-vk1-xa43.google.com with SMTP id s16so1529894vke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OJxNCKHBqEq8hxmgfzQAJLVDLncAAe7CM9ROe+/BeNA=;
 b=ed47JMDehrtw98oo73hPrYOSdiClydVSZax5u/whwsvttI4jMeBg5r4kAaxNqyhRB5
 BQFS+aUFK4fp9pg9m4ABxFL8f8WSLttgJ/crALrwhCsB3v1rjfIrckms9BqtJaYXtlqc
 bzwWVino1iCNJq+uESFaHxZLWBnG33vgs3Qmd1+/6T3+zMmoiN7Dl812exIOVO1cl1F7
 +J34mbVL1NKVBr2n6AaV5gn/vEQktUbl74lRvHydB7/VR5zEDH8WVmV5fmMUTqQq4oUo
 jgFxnXWvvAWYApcTfNa6leYI+JjgeKGVBFkeuu7YRcJuNtctRfWgPTUPlWa5tSEu7aqi
 JNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OJxNCKHBqEq8hxmgfzQAJLVDLncAAe7CM9ROe+/BeNA=;
 b=g0PP1hoYAoqoXAi198g17LDjAiEAd12WeusgWN9LjPtC2Z7dysypr58oKzMaPsn99t
 Rc0dtN3+gkcJdT1PJXpJwGMALc6Vvh/Nu/iH+0jF7YEuDtQ2JmgCTkllJQCwcXq8a9ai
 x3VIgy3fclLTwJGqkheubVN3fB+U22E8K7zwg0OVEJBBWPVLt991YE6Nt0ktqjD/XyUs
 L3Be6a+nFesMgksvAK9dZAamFIeYeRlAXL894nPy8UHxPG8kA82pp+liaTC+eMLBY4gi
 ZiqUu5m5uHDmBVA0zpe6wk7+ozLVNwFury+4XfPP6kHrzihTOuVBHUjx4a1YPbbv8LU6
 kOnw==
X-Gm-Message-State: APjAAAXacF487TxLF8RkjA3JIyLGBjZ543rWHW848niQwzmetvFJ/V7y
 PxZWLg+mKlMcF/tJvkB939Nd53tN9RowZYt0pdwVtQ==
X-Google-Smtp-Source: APXvYqw85yEyPCfVXgt5WHExarvGTTNSk7I/nOG6fWausDPOCC8pBQhB+ownP2Y9XmGBJmpJYjtZLrkebjzWM3KbGXc=
X-Received: by 2002:a1f:12d5:: with SMTP id 204mr12861074vks.4.1560162106571; 
 Mon, 10 Jun 2019 03:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-8-ulf.hansson@linaro.org>
 <20190607151716.GF15577@e107155-lin>
In-Reply-To: <20190607151716.GF15577@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Jun 2019 12:21:10 +0200
Message-ID: <CAPDyKFoKNLqLzVx8uj_-iuWAHGCvty28mVKnipFVgjKD8oDNkQ@mail.gmail.com>
Subject: Re: [PATCH 07/18] drivers: firmware: psci: Prepare to use OS
 initiated suspend mode
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_032147_904918_BBB362A7 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 at 17:17, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:22:49PM +0200, Ulf Hansson wrote:
> > The per CPU variable psci_power_state, contains an array of fixed values,
> > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > each of the available CPU idle states.
> >
> > This isn't sufficient when using the hierarchical CPU topology in DT in
> > combination with having PSCI OS initiated (OSI) mode enabled. More
> > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > state of the cluster.
> >
> > For this reason, let's introduce an additional per CPU variable called
> > domain_state and implement two helper functions to read/write its values.
> > Following patches, which implements PM domain support for PSCI, will use
> > the domain_state variable and set it to corresponding bits that represents
> > the selected idle state for the cluster.
> >
> > Finally, in psci_cpu_suspend_enter() and psci_suspend_finisher(), let's
> > take into account the values in the domain_state, as to get the complete
> > suspend parameter.
> >
>
> I understand it was split to ease review, but this patch also does
> nothing as domain_state = 0 always. I was trying hard to find where it's
> set, but I assume it will be done in later patches. Again may be this
> can be squashed into the first caller of psci_set_domain_state

You have a point, but I am worried that it would look like this series
is solely needed to support OSI mode. This is not the case. Let me
explain.

Having $subject patch separate shows the specific changes needed to
support OSI mode. The first caller of psci_set_domain_state() is added
in patch9, however, patch9 is useful no matter of OSI or PC mode.

Moreover, if I squash $subject patch with patch9, I would have to
squash also the subsequent patch (patch8), as it depends on $subject
patch.

So, to conclude, are you happy with this as is or do you want me to
squash the patches?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
