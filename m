Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DA5178ED9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 11:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REOV5PimvmKEJ/gATXD8KFNaW+ngjPqLzU1Yonv1i+E=; b=YKhobzjUlRlKRy
	PCMq8kqvhaqgxdeRiLf+HukPeddL2gGzZ4D4j0YGPaLdjCK0BX767PYHzixXQUHEKEHIhBu6mVeqe
	1sWuMHPps8ERuJlPm1YhIIwjyAeCKtkNiPpTx2BfcQAmlsTCCsIJHt/yagGz+2JgRqXZTGwU2Guke
	ArnsJ9a1pH0/itO3rBKkmkcIe+b+NryWf04Bwc6tAG9YE0lfN+T/RTSibCKpel9J2ll1x4oohx027
	tK/KsidAiuQPyZgjwJ1oL8so5IccdOpAFtb8ByX3OwT6BH5ZDwARxrhmAvdaMvgVNJsRycVWDYXqR
	bEzgTcVbXH9btr91yp0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Rc8-00039O-6k; Wed, 04 Mar 2020 10:50:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Rbv-00037K-Lf
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 10:50:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0C0030E;
 Wed,  4 Mar 2020 02:50:42 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 553B13F534;
 Wed,  4 Mar 2020 02:50:41 -0800 (PST)
Date: Wed, 4 Mar 2020 10:50:39 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 2/4] cpuidle: psci: Fixup support for domain idle
 states being zero
Message-ID: <20200304105039.GC25004@bogus>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-3-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303203559.23995-3-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_025043_756069_2F90C785 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 09:35:57PM +0100, Ulf Hansson wrote:
> The current code intends to allow a PSCI PM domain to have none domain idle
> states defined in DT. However, a few minor things needs to be fixed to make
> this correctly supported, so let's do that.
>
> Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  drivers/cpuidle/cpuidle-psci-domain.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> index 423f03bbeb74..c34b12c4069a 100644
> --- a/drivers/cpuidle/cpuidle-psci-domain.c
> +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> @@ -49,6 +49,9 @@ static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
>  	int i, ret;
>  	u32 psci_state, *psci_state_buf;
>
> +	if (!states)
> +		return 0;
> +

Was any issue found ? Or just code inspection ? If states = NULL,
state_count = 0, and I don't see anything blowing up. It may save couple
of extra instruction execution.

>  	for (i = 0; i < state_count; i++) {
>  		ret = psci_dt_parse_state_node(to_of_node(states[i].fwnode),
>  					&psci_state);
> @@ -96,6 +99,9 @@ static void psci_pd_free_states(struct genpd_power_state *states,
>  {
>  	int i;
>
> +	if (!states)
> +		return;
> +

Same here and kfree(NULL) is also valid.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
