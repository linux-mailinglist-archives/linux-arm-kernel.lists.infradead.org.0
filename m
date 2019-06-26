Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF38E55F5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 05:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voJm2uxh9LIp+Lmjrv8VYn2bLUiJBbdvY7cBOlFweGM=; b=A4mZkyO/2g5zX0
	PdJffVlwiVtBe0KTBWYY/7Ei4BNC0LtZx+psafWHOsTJ8iZMEy0eMFuh2tuT7aiNQLZxWRY4VUFup
	iUk1O4FYpxEck4GqINlENO1JryImN3CcExwcM57EAlyNnCIN++laAaCmbR7/XtWCyWihbFMuSaWGq
	Gd7bGOlaFrYIoGBGYP9IKzdM/YghmzT86aCqIs1g17bxMXvJ6kI5TIDL3cESqbDK4hABx89F62SWJ
	CeEgt6IiO24dU3yde1sKJwDvQjndkiQXvpGHHXnlIyPwixEG9cojZlKt4x05iO/z20f98U1h4obi3
	gBKlGcG5PWmMdzvuNN9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfyAW-0006YM-1K; Wed, 26 Jun 2019 03:00:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfyAA-0006X3-U5
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 03:00:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id y72so434731pgd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 19:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XLW3VDfNQt+x4xgu019bZp6QUcWMy6VZjqr8H1WuSuI=;
 b=oun1IwP+E3E04t0XX3kzcUio+QFJqjeXWPRnlbMBHGvTgB/IiYGgyLa1gJxSEAIyH2
 3RZhntJLRouJl1hVn5LVnFFKeCAYoZKi7DoC8caZpm4tf5xIPMluWrd5Es1C8332il3C
 xjGmOL9DHdjYfMaG5+lMoF6qc9Zgyoia5lCw4YU5w3jja2oVSpp6q5CcUHmwrAmvl5my
 CiMbXvW4rX8qNyPGfy7thR4zMJk6BRQqVls7pZ0R3QBbXqD5CrZ7fwpkFiLdtTmiaZZC
 37b1s0g4xPRDz+wxrcdM6FoaT9PEI4lkRSqFN0x0JXGFwQuvoLrDYj2oLdb6d+EsTp/+
 Awvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XLW3VDfNQt+x4xgu019bZp6QUcWMy6VZjqr8H1WuSuI=;
 b=dT2BfujKIeffYBaYx8AMO9eolSbzBUtj9Neofu+clYBkuth/7BvdG4zAKSV4zeTfgx
 mwzMTuDH/fsNLmkIQ1YPLJ5QQvk+MEl2DMRNam8MKh4rwPtuiCal0PTsaBctJH6Z4Cr7
 OL8eaI5iivv4yuTkTnmBOZqziRnv2My6XX1WIpSpTY79jA9qxZWw/eUzNDizOVUjyMRl
 rFN/JLOwCKpR3Pxla/u8UpYaINwNOZT0zKC0joW775QNdiqeVG9ORgO3AlajvQo9AWJR
 Ep83xfXePzAwZLlTEvQ+yrjZc2a9y+HCyv57Tw1dTwp8EJYrjNXCUaYiP1qIg+3GZ6D7
 +hOg==
X-Gm-Message-State: APjAAAXBFjbfZjA5dsFrtenKKkeYSZ1/Ynt9UIHBXG1+zYl96ZlMLf90
 fnwESYFPiwIAxMQAc+JeVIrBuw==
X-Google-Smtp-Source: APXvYqz7sDl1G+SanSLvGSdHna89CYWVbXaQu4UOduO+ENOz+KC4InOP11D/tqw7ZNaiziCaIL7nPQ==
X-Received: by 2002:a17:90a:3787:: with SMTP id
 v7mr1504677pjb.33.1561517997949; 
 Tue, 25 Jun 2019 19:59:57 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id q13sm4019084pgq.90.2019.06.25.19.59.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 19:59:57 -0700 (PDT)
Date: Wed, 26 Jun 2019 08:29:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH V3 3/3] thermal/drivers/cpu_cooling:
 cpufreq_cooling_register returns an int
Message-ID: <20190626025953.aapgyiein5tggxei@vireshk-i7>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-3-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625113244.18146-3-daniel.lezcano@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_195958_980867_7C1A5D15 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 "open list:THERMAL/CPU_COOLING" <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Keerthy <j-keerthy@ti.com>,
 Zhang Rui <rui.zhang@intel.com>, Javi Merino <javi.merino@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25-06-19, 13:32, Daniel Lezcano wrote:
> It looks like after the changes in the patch the only reason for

which patch ? Instead of "patch" you should refer to the latest
changes in code, like "now that cpufreq_cooling_unregister() doesn't
accept cdev as an argument ....."

> returning (struct thermal_cooling_device *) from
> cpufreq_cooling_register() is error checking, but it would be much
> more straightforward to return int for this purpose.
> 
> Moreover, that would prevent the callers of it from doing incorrect
> things with the returned pointers (like using it to unregister the
> cooling device).
> 
> Replace the returned value an integer instead of a pointer to a

                             as ?

> thermal cooling device structure.
> 
> Suggested-by: Rafael J. Wysocki <rafael@kernel.org>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  drivers/thermal/cpu_cooling.c                 | 63 +++++++++----------
>  drivers/thermal/imx_thermal.c                 |  6 +-
>  .../ti-soc-thermal/ti-thermal-common.c        |  7 +--
>  include/linux/cpu_cooling.h                   | 16 ++---
>  4 files changed, 40 insertions(+), 52 deletions(-)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
