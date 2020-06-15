Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945DF1F9F00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 20:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRfHZd3drO0k3I+dzJDc0npmCaiGFmA8fRjPqPbostM=; b=W7reC5qiKWrdC+
	QYIEOeaX6Wd3wIlLo+4YlVTgEYT4qgA4JF1d97NSqSoQ63f/rEeF+y0ldaskg9u7vv/mOIeYLIybd
	FYtJkhzzcaL5k4jvA3TLaD4oi/xSLnXonQd0JJ1oxh47nriIqeOvIejBJ3LEtcCk5adIffnzMeawQ
	bOpIY9GYrOv2a6IcyyFK5tbG1A45puYUojMTBY+zFy0c/hsc8GLb3H+7G3JkApymHysTu9lhGxCMn
	JGT1vpUBYY2okCkxUYdte8bHqat+VE77GgTGtgQ0VARlFpDwvQuxhLRIcNZakxNdG+sdr7mCVX3g0
	zQkEwugjsBpwRYrtKixg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktUs-0006Ko-CZ; Mon, 15 Jun 2020 18:06:14 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktUk-0006JW-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 18:06:07 +0000
Received: by mail-ot1-x341.google.com with SMTP id m2so13798281otr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 11:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=koqz947/4ofhNDsYETzq1HT03gn3YLhhwudgLxsVf/Q=;
 b=JoQjzNQJFe7PEiNGhyduxVSFmvWVquXangim5wrQDm1bgmdTLQHtm00vxmoNNsLArl
 nA/yVOHmVJPO0eSd7JddjU+57VukYASVYKvQ+Mx2GIdgVoY+NmYkUvhZ3XwM30LPif4v
 wCNYQsBDnYtZIFIMum2ib7Jdmd+wUgT82H19bbMpW1hP95nZ+K7BkpIW964i1QeoyNP9
 9DSj2Zod1fM/IxHVx6VtKfJ+gQ0lcCUEN16NOqmsqd7rht+dbVkPWO+ncyeC+nGNiEPS
 e2JpP1RZ13qWySGXWgsqWyk0/umXJDt74a3KG9dALEmS6h8WdaMektWoliBFmr8zPVWj
 eQhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=koqz947/4ofhNDsYETzq1HT03gn3YLhhwudgLxsVf/Q=;
 b=qXOXanD98FluKjlL//jmS7mKToKI2jBtKZ9lJ360iuPi7e7jxeTznwX+St2hg8s86y
 Qq2tbivVDX5GT6ygcqsaHlWkQAElu0nfFwxUtkMLmuDcDXTC48wtbDDrVBBgi9F7ZvMC
 r0OyW4/ynHzD7BEx4n2JLF6Ofg3BWq9bHRKi5bjyWSH3njAYsIJ2RuQ6qZ881wat49Xe
 z1KQOniOlUTFIwBnS3U9c2WD+6VM7N+N37yQ8d6loUL6Fmd8GzVMZnQYHz+If0yw/re+
 dXHNE2gM/bhOh8gxTacAbu9SbTTfzHq+RcJ84bN4leF8ounuLRZP7dGzf8aK5P7uDEuv
 qnsA==
X-Gm-Message-State: AOAM531f+Q8rqmbX/lG0gWyVOe26wlpOz2tK8cGTL/OSyn7TUNqJjyNT
 kT0qT5vLUXV5G7pDrkhRObigOnI57RJ47iYH+yv/+A==
X-Google-Smtp-Source: ABdhPJy5xHM0q4eYRqF4wvHSVzFhsd2AraqkemjfAdD7yYDByUDxsB+VwlY6hpM282WUuPOnt3nDIYkxJgaD3VmC7Mo=
X-Received: by 2002:a9d:2253:: with SMTP id o77mr22295636ota.236.1592244361920; 
 Mon, 15 Jun 2020 11:06:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200615152054.6819-1-ulf.hansson@linaro.org>
 <20200615152054.6819-6-ulf.hansson@linaro.org>
In-Reply-To: <20200615152054.6819-6-ulf.hansson@linaro.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 15 Jun 2020 11:05:26 -0700
Message-ID: <CAGETcx9bbhW6NoHmjcx3h2y-b8eS_NLwGSyh_scX=CnTpujDNA@mail.gmail.com>
Subject: Re: [PATCH 5/5] cpuidle: psci: Prevent domain idlestates until
 consumers are ready
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_110606_317219_A2B5F74A 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 8:21 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Depending on the SoC/platform, additional devices may be part of the PSCI
> PM domain topology. This is the case with 'qcom,rpmh-rsc' device, for
> example, even if this is not yet visible in the corresponding DTS-files.
>
> Without going into too much details, a device like the 'qcom,rpmh-rsc' may
> have HW constraints that needs to be obeyed to, before a domain idlestate
> can be picked.
>
> Therefore, let's implement the ->sync_state() callback to receive a
> notification when all consumers of the PSCI PM domain providers have been
> attached/probed to it. In this way, we can make sure all constraints from
> all relevant devices, are taken into account before allowing a domain
> idlestate to be picked.
>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci-domain.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> index bf527d2bb4b6..b6e9649ab0da 100644
> --- a/drivers/cpuidle/cpuidle-psci-domain.c
> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> @@ -27,6 +27,7 @@ struct psci_pd_provider {
>  };
>
>  static LIST_HEAD(psci_pd_providers);
> +static bool psci_pd_allow_domain_state;

Is there ever only 1 device that's probed by this driver? If yes, this
is okay. Otherwise, you'll need to handle this on a per device basis.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
