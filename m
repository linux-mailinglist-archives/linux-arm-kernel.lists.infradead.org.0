Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E14D1721BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M42qILUHdlhDhYS9aNz3j+XZ8vAD2HYxT7YrYixk7GM=; b=suwyffrtEd3RsZ
	v2FwWHUST/5qEM7cUhEJzRCYpLiSveU44EZlliTEmMKbgnb2BAZeaExylAZmm/obmHt1hMpTPNsHs
	YLTvaQlK1X/fjAJzvDvJh5cIMjUllNua/jtgZ4eZDufyL+KfwGYyLbZF1hRvFLLNnl5mVfqLfBul5
	7e3IAAHBIMKC3T6SVyTnxfFIJZ5l8iS43qBEviHi2yLuRh6RBh0k1GmVsIJkRqo6i3hPa72/XlcyC
	hq6FfI8/OLNsrwbdlJCyWMLLIgH0iTTvudW7IGxQKfuRocuU2UmCmY5k5UK93HlAAIOBeY2KRzAUM
	4xbcVhvQrktMuAGyE2rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ke6-0004Ti-GL; Thu, 27 Feb 2020 15:00:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Kdx-0003R9-B6
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:00:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so3746107ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hxeWwBcREguPRl0YSA1dgvNqgcNAs0sxdnLT2TcjVKw=;
 b=DKqDIIpoLHVG44IrAEf+PRHSTcuSWfXxD+2nA4ZhpMhTgNtxZdbDaqPGFFDw+AIADp
 DeglF7v8V6yRy4zI355DozwcmtVhYZR1Jv7+oiNimsV+QjPzdgsM7oWJUt1R/XVEoViO
 3d7Vpatif8yuhVEL2Ld1D5sSk8ecfgDl+KLKpxqM6VZh3GExDDdg4+rEhY1Bc038TJSw
 Cc1slFgYx641oA0ubt+0ogIgg5uLSKald1Kn3c7wCbA0I3LEISHpCPYLH0MN8CgGZtJU
 2fzyQvaHkQ/yVP7aZE6d2hIk0SpCqJw+wPuDgT9LO3ZU7VpdATq+8D5nBXGBVl/HO7Ye
 dP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hxeWwBcREguPRl0YSA1dgvNqgcNAs0sxdnLT2TcjVKw=;
 b=ehRMpcQ7A/l2dgol9nJzL0wWjame1NGCo3uxU978tRMnccQCygL7A+G0So7VDwwcYL
 5GvV32Z0FZhPWOEe+BA8B8CwKLdkIH7vH62tOZIdfofQPC9LDAv5OjLk30CMqDjNMero
 HjiwU9zYOip5ZqimjOewYC2du7sk1ZdJDpHriSPNg37ELdn9nULC+nu0rLRvvHnhjXrq
 PDBD1x9zVII/GBvRdEiM8I1kf5SRzEzYj9eCpDj1IneCtvp9rT1xuFm+AHs0i5ZXnRSj
 dG9nIjobZp+o8mlPECnhcKeT2DXhdEqoCyG+yM3shFTf3fUX4h2STGl0WOoRTRuYmjyX
 7daA==
X-Gm-Message-State: ANhLgQ3dkGOzJOqnYAsrrcnphWW2Jfd39yfKqa2hViUMfYeJlCfdDJ8h
 P7QCT+DKhKPpK4Qlq82AYKfoKhy10qiB80tyuBaVzw==
X-Google-Smtp-Source: ADFU+vtEkEqJMoxuvqwe9HyeeqaH1txbxfmCDLVTHZYAoZWVbLPzsQkGedE2YbfF1pCcxvkyjdjR7crgmlE2z2mN8mg=
X-Received: by 2002:a2e:5304:: with SMTP id h4mr3074729ljb.75.1582815602132;
 Thu, 27 Feb 2020 07:00:02 -0800 (PST)
MIME-Version: 1.0
References: <20200227124551.31860-1-ulf.hansson@linaro.org>
 <20200227124551.31860-5-ulf.hansson@linaro.org>
In-Reply-To: <20200227124551.31860-5-ulf.hansson@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 27 Feb 2020 15:59:25 +0100
Message-ID: <CAPDyKFqeHLeMrOEPg1p6WaLOApRzJbzNL343d2d43bEQxOAz5w@mail.gmail.com>
Subject: Re: [PATCH 4/4] cpuidle: psci: Allow WFI to be the only state for the
 hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, 
 Linux PM <linux-pm@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_070005_421867_B94B0FEC 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FILL_THIS_FORM_SHORT   Fill in a short form with personal
 information
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 13:46, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> It's possible that only the WFI state is supported for the CPU, while also
> a shared idle state exists for a group of CPUs.
>
> When the hierarchical topology is used, the shared idle state may not be
> compatible with arm,idle-state, rather with "domain-idle-state", which
> makes dt_init_idle_driver() to return zero. This leads to that the
> cpuidle-psci driver bails out during initialization, avoiding to register a
> cpuidle driver and instead relies on the default architectural
> back-end (called via cpu_do_idle()). In other words, the shared idle state
> becomes unused.
>
> Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
> and then continue with the initialization. If it turns out that the
> hierarchical topology is used and we have some additional states to manage,
> then continue with the cpuidle driver registration, otherwise bail out, as
> we did before.
>
> Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci.c | 47 ++++++++++++++++++++++------------
>  1 file changed, 30 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index 7b459f987c50..7699b2dab622 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -56,16 +56,19 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
>         u32 *states = data->psci_states;
>         struct device *pd_dev = data->dev;
>         u32 state;
> -       int ret;
> +       int ret = 0;
>
>         /* Do runtime PM to manage a hierarchical CPU toplogy. */
>         pm_runtime_put_sync_suspend(pd_dev);
>
>         state = psci_get_domain_state();
> -       if (!state)
> +       if (!state && states)
>                 state = states[idx];
>
> -       ret = psci_enter_state(idx, state);
> +       if (state)
> +               ret = psci_cpu_suspend_enter(state);

Looks like I should set ret to idx, if ret == 0 - as to instruct
cpuidle about what state we did enter. I will update that in the next
revision, but awaiting for some comments first.

> +       else
> +               cpu_do_idle();
>
>         pm_runtime_get_sync(pd_dev);
>

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
