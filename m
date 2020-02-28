Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4852174187
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 22:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlApUvuA+uC0MTBjz8e6uJncyXViFTDBUNoRl2tyHeo=; b=bCzYk726vsi38d
	iahYRmKQUExnlNLgjw73ARgNWmQhynrXsMYmod9Ptl+0ceO5nJlONhK0Rt7dWOSmfNhQSnU1zTC0i
	Hnn179TOvyx+cmAl1FiwEU8EeGX/vlOOUBA/sZJd+V1yZIxhYZiBBo9bSLfc6bHtPPjyLMRVphIRB
	QP+4xEPWOa8pA8UxV15SO3ExdXst+4V+J5lLjTX3W+K7oCQR+IsRraKZYx1gEVOqaNIP8ubsFEL3g
	3+RWFG6S/BchyF3BgVvVDzG03Uc/MgYKVTXqCwUeV4XUML0c/M2F9NoVVRvMx7QQ9S/LOGcfBMVhb
	5ULMNNSLLLykppim8xig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nHF-0005rl-24; Fri, 28 Feb 2020 21:34:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nH4-0005r3-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 21:34:23 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 585DF246AE;
 Fri, 28 Feb 2020 21:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582925661;
 bh=0fGt9TIQ99kihjcKW40P8AdFXmkbl7zxxbTnxpcu3QM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Ft0YVDoOfc7pq08QW/PS3G+L7dSzQwPyG4RmjYPVZBNgO8ILCiu84gxulFTETk2fV
 UYhOn2Oj6xcPmGaTxGwlZfuXKrGGvIpAQimF12flRCVMKG4n9cNPvuAJHxu9qzK40y
 iNKpPoW0h0vhTLU0ImgGhf8slpqnuPLuF8+Ayv7k=
MIME-Version: 1.0
In-Reply-To: <20200227124551.31860-4-ulf.hansson@linaro.org>
References: <20200227124551.31860-1-ulf.hansson@linaro.org>
 <20200227124551.31860-4-ulf.hansson@linaro.org>
Subject: Re: [PATCH 3/4] cpuidle: psci: Split psci_dt_cpu_init_idle()
From: Stephen Boyd <sboyd@kernel.org>
To: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pm@vger.kernel.org
Date: Fri, 28 Feb 2020 13:34:20 -0800
Message-ID: <158292566053.112031.13592737054433352711@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_133422_550106_9AD2991F 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Ulf Hansson (2020-02-27 04:45:50)
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index edd7a54ef0d3..7b459f987c50 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -160,6 +160,32 @@ int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
>         return 0;
>  }
>  
> +static int __init psci_dt_cpu_init_topology(struct cpuidle_driver *drv,
> +                                           struct psci_cpuidle_data *data,
> +                                           unsigned int state_count, int cpu)
> +{
> +       /* Currently limit the hierarchical topology to be used in OSI mode. */
> +       if (!psci_has_osi_support())
> +               return 0;
> +
> +       data->dev = psci_dt_attach_cpu(cpu);
> +       if (IS_ERR(data->dev))

Can you use IS_ERR_OR_NULL() here?

> +               return PTR_ERR(data->dev);

And then return PTR_ERR_OR_ZERO(data->dev);?

> +
> +       /*
> +        * Using the deepest state for the CPU to trigger a potential selection
> +        * of a shared state for the domain, assumes the domain states are all
> +        * deeper states.
> +        */
> +       if (data->dev) {

And deindent this?

> +               drv->states[state_count - 1].enter =
> +                       psci_enter_domain_idle_state;

So this fits on one line?

> +               psci_cpuidle_use_cpuhp = true;
> +       }
> +
> +       return 0;
> +}
> +
>  static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
>                                         struct device_node *cpu_node,
>                                         unsigned int state_count, int cpu)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
