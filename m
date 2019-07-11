Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3C9653C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 11:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+sy/+8foC22qlgk0TCTk8qYttoL2QmyWaTiOy078X0=; b=V6TkcA3J3IRdN3
	pNEVHkd9NyI+nhIBt57fpg6Ek9nuPE+9Wv4CWBoh4Lvcsw0QT3YOhXEQdObhoNyxffNUOVcOxw/P/
	cpNn0UG1OAzoY1eJ8QERrFn3vvgDQnTEzQAB7upjQjZPXoG+zqFutY4ovNtYlMY+ts/PdyFbRoedu
	wNwy/g5HeQCnPgcpdqjEVe+SjIEcnD4FV6pblsX7XECk53DqpACkkUUc9EunEJSs5RBGg/+63d+1u
	ZVJ0bfuESHMBQNoBqR5xDm3vJ5GyzC6s8BeFTf+4FPkkE6vLztEIqlilfwceTIWFgvPj4/DqtDNWV
	8pUW4IZ0EkVDNOR2wyiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVLT-0005RU-G1; Thu, 11 Jul 2019 09:26:31 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVLI-0005Qh-DJ
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 09:26:21 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2700be0000>; Thu, 11 Jul 2019 02:26:22 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 11 Jul 2019 02:26:17 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 11 Jul 2019 02:26:17 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 11 Jul
 2019 09:26:15 +0000
Subject: Re: [PATCH v2 1/6] ARM: tegra: Remove cpuidle drivers
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Daniel Lezcano
 <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-2-digetx@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <c087a5cb-2ffa-1cf6-f0bf-631234759a22@nvidia.com>
Date: Thu, 11 Jul 2019 10:26:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711031312.10038-2-digetx@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562837182; bh=hqIKbaLc9u3UzCLBN+TeJmaoAdvZZzW+MJhMM3sW0uY=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=bbF0YZqRGy0UYIMDV+2nHio1AliAu0r+Pj2lye6MoUfl1nPCx6h3eIgTiVsMLPlNQ
 Br5tEJk3HRK62aXro7HboHWQQHR/oVb4IRR7Ra5OaiIF/0srCD6aen9R59wAW5UDXB
 hSIQoBLPYecQPq0mqcY8waaODaZ04MkZo9CuSoEwEOxvGbFO34ohFnXfk/s3B8xTcq
 +3VPzdC/1IDOmHbIqRR4PDPhj+9iAeaqoRxjXgACWMvIqw1mxmTo8hfJh5CQu5ya7k
 s7l5xpDZ8klmr83hfskwnKIMMC4w/qT/KG71NB3wrycPi8/yeCb6ph8Ek640Guq9dG
 0WRkc6OdafrNw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_022620_464629_6FB97AE0 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/07/2019 04:13, Dmitry Osipenko wrote:
> Remove the old drivers to replace them cleanly with a new one later on.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  arch/arm/mach-tegra/Makefile           |  13 --
>  arch/arm/mach-tegra/cpuidle-tegra114.c |  89 -----------
>  arch/arm/mach-tegra/cpuidle-tegra20.c  | 212 -------------------------
>  arch/arm/mach-tegra/cpuidle-tegra30.c  | 132 ---------------
>  arch/arm/mach-tegra/cpuidle.c          |  50 ------
>  arch/arm/mach-tegra/cpuidle.h          |  21 ---
>  arch/arm/mach-tegra/irq.c              |  18 ---
>  arch/arm/mach-tegra/irq.h              |  11 --
>  arch/arm/mach-tegra/pm.c               |   7 -
>  arch/arm/mach-tegra/pm.h               |   1 -
>  arch/arm/mach-tegra/reset-handler.S    |  11 --
>  arch/arm/mach-tegra/reset.h            |   9 +-
>  arch/arm/mach-tegra/sleep-tegra20.S    | 190 +---------------------
>  arch/arm/mach-tegra/sleep.h            |  12 --
>  arch/arm/mach-tegra/tegra.c            |   3 -
>  drivers/soc/tegra/Kconfig              |   1 -
>  include/soc/tegra/cpuidle.h            |   4 -
>  17 files changed, 5 insertions(+), 779 deletions(-)
>  delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra114.c
>  delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra20.c
>  delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra30.c
>  delete mode 100644 arch/arm/mach-tegra/cpuidle.c
>  delete mode 100644 arch/arm/mach-tegra/cpuidle.h
>  delete mode 100644 arch/arm/mach-tegra/irq.h

By removing all the above, it is really hard to review the diff. Is
there any way you could first consolidate the cpuidle drivers into say
the existing arch/arm/mach-tegra/cpuidle-tegra20.c and then move to
drivers/cpuidle?

Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
