Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDFB38E4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5LK7E0ExRfTkavAFCNScCRLEVeULw3kI0oiA85EckM=; b=OcQEUVY7Q13LzP
	2b2na9QkOrm7jQySKgIYiilHlIgvNht+U6Qcczl3p6nKk5jindP9NqxsFHd4VJe9I8xLCtlVfeyKO
	+Bk7nIheHKqDcmwJAPbXHZKsslAPhyR91wrFVneH+URFc3CWRXolWkgoeXa/t+sSH3Rcu371Fqb9K
	zqxt3jxksWSUUzBxpCgVs/ksjv4jMyTDO32wdGLo9iVJB0ZFai6OJasC1nXhf7gYXPGktGqKuLLhg
	Vid6ueGGIejbb+vY7jqtnaA+G5F852cuUdz3bDVgmCqo3clEK2UjytP9KjJm+8s60pAbk6210dgv7
	ZK1S0mhbcAWD2lQ5ampQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGNT-00048S-OA; Fri, 07 Jun 2019 15:01:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGNJ-00047X-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:01:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5FFD346;
 Fri,  7 Jun 2019 08:01:48 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 316D33F71A;
 Fri,  7 Jun 2019 08:01:46 -0700 (PDT)
Date: Fri, 7 Jun 2019 16:01:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 05/18] drivers: firmware: psci: Simplify state node parsing
Message-ID: <20190607150144.GD15577@e107155-lin>
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-6-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513192300.653-6-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_080149_777156_920C9ED7 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm@vger.kernel.org, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:22:47PM +0200, Ulf Hansson wrote:
> Instead of iterating through all the state nodes in DT, to find out how
> many states that needs to be allocated, let's use the number already known
> by the cpuidle driver. In this way we can drop the iteration altogether.
> 
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
> 
> Changes:
> 	- None.
> 
> ---
>  drivers/firmware/psci/psci.c | 25 ++++++++++++-------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 88e90e0f06b9..9c2180bcee4c 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -306,26 +306,20 @@ static int psci_dt_parse_state_node(struct device_node *np, u32 *state)
>  static int psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
>  			struct device_node *cpu_node, int cpu)
>  {
> -	int i, ret = 0, count = 0;
> +	int i, ret = 0, num_state_nodes = drv->state_count - 1;
>  	u32 *psci_states;
>  	struct device_node *state_node;
>  
> -	/* Count idle states */
> -	while ((state_node = of_parse_phandle(cpu_node, "cpu-idle-states",
> -					      count))) {
> -		count++;
> -		of_node_put(state_node);
> -	}
> -
> -	if (!count)
> -		return -ENODEV;
> -
> -	psci_states = kcalloc(count, sizeof(*psci_states), GFP_KERNEL);
> +	psci_states = kcalloc(num_state_nodes, sizeof(*psci_states),
> +			GFP_KERNEL);
>  	if (!psci_states)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < count; i++) {
> +	for (i = 0; i < num_state_nodes; i++) {
>  		state_node = of_parse_phandle(cpu_node, "cpu-idle-states", i);

Why not start using of_get_cpu_state_node here which was introduced in
earlier patch as part of this simplification ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
