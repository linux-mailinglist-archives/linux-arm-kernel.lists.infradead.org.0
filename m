Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8101D2EE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 13:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXg6kkMPI422z+roF0wUsw91iFQJgRNr7E4NMu0n4po=; b=Ic+SQf8CR7JBkx
	Jf26PRHGG2/csZSsMIl2PqU4xZLTShH6+KmdLusnBhzoCM+c55PHFM7tuNijdvy9BUq0NZuozekft
	yCg2glVGDo+7r85O5p+8JEGd8PedGkUVHC86r+0nir5BWF1n1if3jFN2ZLwuMdoLKnue3NvgCj1Z1
	N1Y/DYgp0/irircAwpFDCGJls1SC3+oX/Syum89A+kTw0e/WWKG9scE/dLhMn/U/gwz2PUbvqdeyF
	KOTo4SfsuHtUyvUbkJqPzv/mY3gBnMuRbIMZvnnxdZdflzdCDMM+vnDzsIOB4nSMt/C0uIe8YDYno
	7cyR73vpm51C/UbN1sWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCQS-0007OI-SJ; Thu, 14 May 2020 11:53:20 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCQH-0007Ne-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 11:53:10 +0000
Received: by mail-ot1-f67.google.com with SMTP id c3so2053839otr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 04:53:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B9kxYSPBegJj9bNzOlg4WZIp7HqOgKO2k3B49I539KY=;
 b=gRAUl9SU/aw/WqvEcXFUsUf/FTMZF9qJIZEt1823Na/MX47m2DQPkYgetZlEuNXCot
 wRvxqc5g3HBwDcPVZs/bS6oQugHutO1UjrBAd+QcP96mc+3ljeN25LGSuI0kljp0TRlo
 19R4l/Y/q3ODq1yq5UOTzNM+AITMNW9xuOAb23PPEue6ei4jgtOlcr3YF7ayPBj6V+vY
 m+CEEHeyXOaDNAtMLxP7uJEc+jpxTju9TSR6FxGEweB9miCQyh9J2j8Lsb1DMf/KRmo2
 lfI3+rcxJHm4q/NOZidI+SlhLdZVCmELBkun5wfpbl/9CHH3+jmqXIA5YaDu3Mzen0/M
 zeNg==
X-Gm-Message-State: AOAM530nUSog8Snacoi/hHj6DGYL051WfOVCq+Is6ON93A6aEjzhdAkX
 6i+qI9j9mC1u1kBJvHfxlmnZVeKCZKig5S2WuMY=
X-Google-Smtp-Source: ABdhPJxq7/KiIseM0XS2zjxfuqtTApxDSftsbxbJ1OQVkRW1J+7ad2G+/MEUjGiWejpk18IuPQJpmXbE+D5zaE8Y0UI=
X-Received: by 2002:a05:6830:10ce:: with SMTP id
 z14mr3034537oto.118.1589457188524; 
 Thu, 14 May 2020 04:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200511133346.21706-1-ulf.hansson@linaro.org>
In-Reply-To: <20200511133346.21706-1-ulf.hansson@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 14 May 2020 13:52:57 +0200
Message-ID: <CAJZ5v0h0aMKyDfYJTw7TEueXoToEYqM0Qsfsy5nk0cfGUwFn=A@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Fixup execution order when entering a
 domain idle state
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_045309_694563_1CA19F47 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 3:33 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> Moving forward, platforms are going to need to execute specific "last-man"
> operations before a domain idle state can be entered. In one way or the
> other, these operations needs to be triggered while walking the
> hierarchical topology via runtime PM and genpd, as it's at that point the
> last-man becomes known.
>
> Moreover, executing last-man operations needs to be done after the CPU PM
> notifications are sent through cpu_pm_enter(), as otherwise it's likely
> that some notifications would fail. Therefore, let's re-order the sequence
> in psci_enter_domain_idle_state(), so cpu_pm_enter() gets called prior
> pm_runtime_put_sync().
>
> Fixes: ce85aef570df ("cpuidle: psci: Manage runtime PM in the idle path")
> Reported-by: Lina Iyer <ilina@codeaurora.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

I can pick this up provided an ACK from a maintainer of this driver.

> ---
>  drivers/cpuidle/cpuidle-psci.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index bae9140a65a5..d0fb585073c6 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -58,6 +58,10 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
>         u32 state;
>         int ret;
>
> +       ret = cpu_pm_enter();
> +       if (ret)
> +               return -1;
> +
>         /* Do runtime PM to manage a hierarchical CPU toplogy. */
>         pm_runtime_put_sync_suspend(pd_dev);
>
> @@ -65,10 +69,12 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
>         if (!state)
>                 state = states[idx];
>
> -       ret = psci_enter_state(idx, state);
> +       ret = psci_cpu_suspend_enter(state) ? -1 : idx;
>
>         pm_runtime_get_sync(pd_dev);
>
> +       cpu_pm_exit();
> +
>         /* Clear the domain state to start fresh when back from idle. */
>         psci_set_domain_state(0);
>         return ret;
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
