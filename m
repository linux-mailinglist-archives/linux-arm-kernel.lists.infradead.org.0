Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4931C3E25
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJbdHicf2ehm8DECL5+vR62/YaloMaxMp7gALAdmfZw=; b=DFB5bFQ9xxdqy0
	6sWEKDwzZ1wP7qy/gUwTbXyYABMct76SPeH0DQA9jEHZFKHC4HaOjGNStYSpDNflG77H8VfZdJxmm
	Ov8iWlO1a5cMw77hznhczTs4vtz6MDmsAaQZ7IeSuW4rwwv/kUfBZ2GN8QEc8wnEDAh25dY1LnTPR
	W2dgMkysZhCo5yzFsCeTLcHveiazr8Qgu2iemMeA5hInz8uOx4an6+dxXiZIlT5VRklkRvPvOz/vW
	HrB0hmCI6GvpLjulB6BcIKXIfrXIuZdl8U4k1sCtoDAOkx0tzEwL3TapCNETbwfDRKVDxqJA+1zNd
	5VR70oeiWrDRUKrd1ojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcic-0005K3-Ls; Mon, 04 May 2020 15:09:18 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVciW-0005Iu-Qq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:09:14 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 42AFE8030;
 Mon,  4 May 2020 15:09:57 +0000 (UTC)
Date: Mon, 4 May 2020 08:09:05 -0700
From: Tony Lindgren <tony@atomide.com>
To: Clay McClure <clay@daemons.net>
Subject: Re: [PATCH] net: ethernet: ti: Remove TI_CPTS_MOD workaround
Message-ID: <20200504150905.GJ37466@atomide.com>
References: <20200502233910.20851-1-clay@daemons.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502233910.20851-1-clay@daemons.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_080912_905917_94090115 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Andi Kleen <ak@linux.intel.com>, kbuild test robot <lkp@intel.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Wingman Kwok <w-kwok2@ti.com>, Richard Cochran <richardcochran@gmail.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Dinh Nguyen <dinguyen@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Clay McClure <clay@daemons.net> [200502 23:41]:
> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> index 3cc3ca5fa027..e00f0d871c53 100644
> --- a/arch/arm/configs/omap2plus_defconfig
> +++ b/arch/arm/configs/omap2plus_defconfig
> @@ -57,7 +57,6 @@ CONFIG_CPUFREQ_DT=m
>  CONFIG_ARM_TI_CPUFREQ=y
>  CONFIG_CPU_IDLE=y
>  CONFIG_ARM_CPUIDLE=y
> -CONFIG_DT_IDLE_STATES=y
>  CONFIG_KERNEL_MODE_NEON=y
>  CONFIG_PM_DEBUG=y
>  CONFIG_ARM_CRYPTO=y

Hmm the change above does not look related. Can you please check all the
defconfig related changes so you are only changing the related options?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
