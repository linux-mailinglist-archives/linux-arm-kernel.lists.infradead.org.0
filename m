Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC3C185591
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 12:05:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpmQ4VKd4ldFzb8dtXweB8dt6j0faSQ3jmMXtXadnhQ=; b=FIoJWn0oJPTP11
	fzd3wJzpiLQHv4kK2dkr1oVHWFY0Gzkks9muVOaXcLxCogo3CMPvLKlsqdlR9SpDwPBRbLLoCDBJ4
	IxRkOGCNQCrTDaw7KIHKnu0mmt9fjOg+3GkweowOySfB3uOaVdRMJQPQqhYTDQirvJExsSZHSDqnE
	/wEV0T0LSIWL9a4/BhLaYcNa4mkLwKjZuC1zDEQJOK0hMlgxEfwCKhl8Ug37+D6wBz53EweviD1SU
	1Wzd1rYbsscaN0zbFHDiyw+xyQUf9eTDvqwBy+s3BqjFaWj6Wr1ewlbZ5vxqhLJJHw4Zu+VrEPuOZ
	XwVrwMlqe5F1ZVBVslnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD4bl-0003EF-BD; Sat, 14 Mar 2020 11:05:33 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD4bd-0003Dl-Lh
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 11:05:27 +0000
Received: from 185.80.35.16 (185.80.35.16) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.341)
 id 18c27b0219204e13; Sat, 14 Mar 2020 12:05:13 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 1/2] PM / Domains: Allow no domain-idle-states DT
 property in genpd when parsing
Date: Sat, 14 Mar 2020 12:05:13 +0100
Message-ID: <2266717.MI9MQu89M6@kreacher>
In-Reply-To: <20200310104023.4018-1-ulf.hansson@linaro.org>
References: <20200310104023.4018-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_040525_872675_F1D98C39 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 stable@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, March 10, 2020 11:40:23 AM CET Ulf Hansson wrote:
> Commit 2c361684803e ("PM / Domains: Don't treat zero found compatible idle
> states as an error"), moved of_genpd_parse_idle_states() towards allowing
> none compatible idle state to be found for the device node, rather than
> returning an error code.
> 
> However, it didn't consider that the "domain-idle-states" DT property may
> be missing as it's optional, which makes of_count_phandle_with_args() to
> return -ENOENT. Let's fix this to make the behaviour consistent.
> 
> Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> Fixes: 2c361684803e ("PM / Domains: Don't treat zero found compatible idle states as an error")
> Cc: <stable@vger.kernel.org>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
> 
> Changes in v3:
> 	- Resending with reviewed-tags added.
> 
> ---
>  drivers/base/power/domain.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
> index 959d6d5eb000..0a01df608849 100644
> --- a/drivers/base/power/domain.c
> +++ b/drivers/base/power/domain.c
> @@ -2653,7 +2653,7 @@ static int genpd_iterate_idle_states(struct device_node *dn,
>  
>  	ret = of_count_phandle_with_args(dn, "domain-idle-states", NULL);
>  	if (ret <= 0)
> -		return ret;
> +		return ret == -ENOENT ? 0 : ret;
>  
>  	/* Loop over the phandles until all the requested entry is found */
>  	of_for_each_phandle(&it, ret, dn, "domain-idle-states", NULL, 0) {
> 

Applied as 5.7 material along with the [2/2], thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
