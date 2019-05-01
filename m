Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1683F106F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 12:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLfup7lTLu2HwgPSbsNepQWdfCEc3oOeQEhQFrYL9Hw=; b=jeCjNBWaKCNh2f
	BrP5hZhhrY0cnh0nOG13lMo8ARZ0f5U6wHtoxxigrlvn6jA1nmDN/kNRarn6uMHMbPHwmfyyA/UHx
	1gbElUETG/rFGp2B64Nvg9QQWZKo5a4Hy+rxXIV1AMjMKQNthILmWKdkyygeuh3izVy49cdqyL4vm
	M083RTC/To6BNKNhmrvvBvLpZWIJAS2XiWAeauww8wZcHHq+aAn5n3xRKeIdUwmNkPR6y0EOSTkGU
	GmQFgqd8RMCT4NivX/ESEMJvJQN85ui5bXIncfLlgLDobin+hO+VFlJC2H4+NCm+9ZkpNYsJSQqnG
	K+DVFffOgcvf4/EytzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLmR4-0001w0-6S; Wed, 01 May 2019 10:25:58 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLmQy-0001vF-46
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 10:25:53 +0000
Received: from 79.184.254.69.ipv4.supernova.orange.pl (79.184.254.69) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.213)
 id ec27d28de3b4c5a9; Wed, 1 May 2019 12:25:46 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 0/3] PM / Domains: Improve support for multi PM domains
Date: Wed, 01 May 2019 12:25:46 +0200
Message-ID: <2833844.V0R6nlsLIU@kreacher>
In-Reply-To: <20190418102757.1246-1-ulf.hansson@linaro.org>
References: <20190418102757.1246-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_032552_338319_EF71D91C 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rajendra Nayak <rnayak@codeaurora.org>, linux-pm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday, April 18, 2019 12:27:54 PM CEST Ulf Hansson wrote:
> It's been a while since the introduction for the support for multi PM domains
> per device in genpd. In this small series, a couple of different improvement
> are being made to this code in genpd.
> 
> Ulf Hansson (3):
>   PM / Domains: Don't kfree() the virtual device in the error path
>   PM / Domains: Allow OF lookup for multi PM domain case from
>     ->attach_dev()
>   PM / Domains: Enable genpd_dev_pm_attach_by_id|name() for single PM
>     domain
> 
>  drivers/base/power/domain.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)

All [1-3/3] applied, thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
