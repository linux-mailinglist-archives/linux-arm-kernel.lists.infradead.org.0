Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A3DE3781
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SACq3/eTHpA8xVuDggiX29RvFSFwmHeEuXA8H5TT87k=; b=pbGT2dOGt1xSvb
	/WBy8jOTdNjUNQHT09YIEHRu4WFd2eu3mb6fM5E0/H3MM1okL710DGYFfAYBG+Ln+HUOZbjzfFB9O
	jq9k4yaUy0VTlg+NIP0ExuCoNldjGc5FP1AYul8VxaSWO7tUwK68JIrifR5OF0SeUODEAQsVo1ML1
	sIxBhMS+4W67JhqpulJ3IMCjqchKoRScMfyPDBXOVlcp/WCbJ4UdzPg+mZCwEK1w6X1k9PuPcQKdI
	BDHvP5RIXNPitCD3nienXblkowCVjOIJI04S/IUMLHQNE+sa/m2KE2iWKPGcZPthMi5RAW/ueyKbp
	pXAY6h6f3NnasZXuOlAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfhS-0001rE-It; Thu, 24 Oct 2019 16:10:58 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfhH-0001pb-ES
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:10:48 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b1so16536474vsr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oPwRqVuZioNI5zzCe4McyYpyDcYBDdDoUcrFlLvw0Z4=;
 b=gG+a4r7xFkaTQbedGAdReWkvrW0hGRkyNIIaN6kzW4HynlY+NnLny7ki8JJEw1aoiJ
 OVq9R1i9BMm5i7hAvC/w6BfWOJ9sQHAW2fmeAWeh8pftG60gWobLI4obPybcYq+NY2jW
 ZIuQ1x3NoUB4Mahmxa+ycyMP/mxnG3mQfAbLE5RDhkWr9UNW6Hu63R2m4IsSMm+NTlI2
 HrZjdpFHJ33cHazd0sQmk8Phle5IWpAR9jL2sr3xVB6A96loIWiTyO6FLz93OpFDf4lG
 irZaMytK7YfNzTmwpUyjwLgoqkEia+W1kbr/YuQecKZqufm/C49e2+1nLflevoghJpn8
 tbDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oPwRqVuZioNI5zzCe4McyYpyDcYBDdDoUcrFlLvw0Z4=;
 b=Tbc9dL85pSDZW9n9PDe8WPN4MOOCWU6PvVZRFapHWRVv+R1WiCY6xahrKBWBxD3O+P
 xJdsbNfWR6bYoG6pf5HpP0+cLQbmA0iGv1GIWWcGtQvRUECwG/Gml/0mEqHHBdTb1gnA
 IHO/Q5SjqtwwOs4OT6lIVG+FS36ry2JAs3iggWLrSJJdnBGCIAiccDx/kQ85RaA7rdf3
 E82VIzsJlm8vxTQ1YNy8rMRq/rPI0eJ0nS3K1jPrBnqtequCjAJbhnDoHrUgm95loVu8
 h7B5FGAniCJ8rku5uyae8H1BVNInd46STFjH714jKsy04ruNJTxMcV+QgtSf3ViXTi0B
 ig7g==
X-Gm-Message-State: APjAAAWRrrGHa3jJxe4/p064pG5qzQ4sf1xFtwaOXdLXkrrB+AIo6W8k
 gArmI09IgXHK/Zdw0Ei5hjfXNUYSoEGwff+Gg82ThQ==
X-Google-Smtp-Source: APXvYqyFadXXYwQn6laGK9LBnkuyUL2KPLGVwe6A8SKL7OI6lBq84d6gdVTaE0vwr9XB80Mx6lz2fnshXN8DSlUDlwI=
X-Received: by 2002:a67:ead4:: with SMTP id s20mr7203435vso.165.1571933445627; 
 Thu, 24 Oct 2019 09:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-2-ulf.hansson@linaro.org>
 <20191024151834.17036-1-sudeep.holla@arm.com>
In-Reply-To: <20191024151834.17036-1-sudeep.holla@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 18:10:09 +0200
Message-ID: <CAPDyKFqOTpwZ_o0Z6hAFDXf9wJM82a_P8fcKkZY-ZfW-d9LFVQ@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Align psci_power_state count with idle
 state count
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_091047_491143_7DE75BB2 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 at 17:18, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Instead of allocating 'n-1' states in psci_power_state to manage 'n'
> idle states which include "ARM WFI" state, it would be simpler to have
> 1:1 mapping between psci_power_state and cpuidle driver states.
>
> ARM WFI state(i.e. idx == 0) is handled specially in the generic macro
> CPU_PM_CPU_IDLE_ENTER_PARAM and hence state[-1] is not possible. However
> for sake of code readability, it is better to have 1:1 mapping and not
> use [idx - 1] to access psci_power_state corresponding to driver cpuidle
> state for idx.
>
> psci_power_state[0] is default initialised to 0 and is never accessed
> while entering WFI state.
>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reported-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

> ---
>  drivers/cpuidle/cpuidle-psci.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> Hi Ulf, Lorenzo,
>
> Just to avoid confusion, I thought I will just write this patch as I was
> about to make reference to this in my review.

As discussed with Lorenzo, I said I was going to adopt his review
comments, which means I already have a patch for this locally.

Nevermind this time, but I would appreciate if this kind of
bikeshedding can been avoided future wise.

Kind regards
Uffe

>
> Regards,
> Sudeep
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index f3c1a2396f98..361985f52ddd 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -30,7 +30,7 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
>         u32 *state = __this_cpu_read(psci_power_state);
>
>         return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> -                                          idx, state[idx - 1]);
> +                                          idx, state[idx]);
>  }
>
>  static struct cpuidle_driver psci_idle_driver __initdata = {
> @@ -89,12 +89,14 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node, int cpu)
>         if (!count)
>                 return -ENODEV;
>
> +       count++; /* Add WFI state too */
>         psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
>         if (!psci_states)
>                 return -ENOMEM;
>
> -       for (i = 0; i < count; i++) {
> -               state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);
> +       for (i = 1; i < count; i++) {
> +               state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
> +                                             i - 1);
>                 ret = psci_dt_parse_state_node(state_node, &psci_states[i]);
>                 of_node_put(state_node);
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
