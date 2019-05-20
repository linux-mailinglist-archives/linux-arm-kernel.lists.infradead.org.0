Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9689D231C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xe/tr/HoBD0qYne3JzvhrIX1vkZX28kdSsmeh5QmKm4=; b=l2x0oFbFjmBucK
	UtjvHkyxfQe/HTQCOJjZ/UIAaQISboD2HQF9biSFhjX4PtB3aDlBLjOcvev1bLUkpoW4Cjm0JtPUE
	BphipJV/v0kyUzK65H4WOBTBCkkdCVFtfaZySsXkQ0mtBffkAYo3HY/5xohR7IT11uRM7mdOLM55P
	v/IL9HsDA9hZj5ZGcBTPJlNHvf/E9UvtqW56JCkiRZBC4lQ1iRcif0BpaoVvcRX5chIECg5n8P5V4
	MmEC597ZtIQyF0NNj1hTeYfmLD8+BexjJkLYn3tRfrdforH/EzMN3hEfBgS28e6SPc/oyM3Jpu1sk
	AUNPH8w8q7g3ga9clKZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfss-0003PG-MK; Mon, 20 May 2019 10:51:10 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfsm-0003OZ-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:51:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id d21so6561390plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YW9HGM19uXsoCoTdRY5JIfYDHKn9S6uoZXsNTuG/dJI=;
 b=nwKyM/IEfq5ctjmYY2jYx0QaToWYb1YEuO/QgxBA8FfWHLb8CsKObYDEvzR49aMFbv
 +oCYec9BmqEYalYo6wUQNHs7NdIb1s+BWbibEgPSe9CFiJGZ4EnF9Ze+cz3e34PXLu0Z
 Go6tkBaHkP6bJEkNUalms35nw8zGwJ2+hihxeooKztv5hmF4OIS+gPeX2oceCcAy+Q4u
 G6iAB3C7xRw07Jb/+F1MEC0tjWHjS29c2NSQhCOIEQcvF9TjNmzN/J2P5WzstB/HuOJz
 D6hwHrVl3td8rIgJIFKzxV/iAjMFTAiJo3fBbK2T9R78xEwU0jkt1bBYhv+P95sZ/cQ5
 ueaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YW9HGM19uXsoCoTdRY5JIfYDHKn9S6uoZXsNTuG/dJI=;
 b=o3ZxhJ7h6Of40KeONO06s7w5l3D+ISAFvFRROopDi+feoBlaV0DHBNyW2YbRnYE1TJ
 7s8MpDpx/Mli1sJORbL2ZXIfxGybPfN1bHzE+x0uaBEDLE/Ds2J+wPRJVOznfWSHHRUF
 9E4nrvdeshwnOCqAaOpWtCXnaQX0nWiM5zWY2/1g+JSCzNd3PswxecAHZ4jJhLrSJixB
 0S9qDfOjRZXAXlfrQMUiuNOnD7fCGKXippCcaOoJcrrWFlSxhHWu1ygnYzDembHTOGCw
 h9cQEYEd6AITgWgD6IzERP9CRPGrQ49q3VgRi8cu5r1vSGCKJJzI4EWY5wD+0NpHHTon
 zsCQ==
X-Gm-Message-State: APjAAAXhLIwtgmSE0bOTaNfIkPzlYsF7fY47kqSf/obCbO0EluFedzmJ
 PzzseKYPrZXvc9VBBJdMXzQKR0sum0s=
X-Google-Smtp-Source: APXvYqwLPnoz4Sab1bFclPQh5T547o374DXWd3I8Z4Z2RFohtUgkOKBd841X9Qsjl4Wl44THZDVQjQ==
X-Received: by 2002:a17:902:b20f:: with SMTP id
 t15mr54482368plr.220.1558349463660; 
 Mon, 20 May 2019 03:51:03 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id 63sm24202008pfu.95.2019.05.20.03.51.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 03:51:02 -0700 (PDT)
Date: Mon, 20 May 2019 16:21:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC v2 5/5] cpufreq: add driver for Raspbery Pi
Message-ID: <20190520105100.hol6cmvnsf3exzes@vireshk-i7>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-6-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520104708.11980-6-nsaenzjulienne@suse.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_035104_690764_81C0BEFB 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com,
 linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-19, 12:47, Nicolas Saenz Julienne wrote:
> Raspberry Pi's firmware offers and interface though which update it's
> performance requirements. It allows us to request for specific runtime
> frequencies, which the firmware might or might not respect, depending on
> the firmware configuration and thermals.
> 
> As the maximum and minimum frequencies are configurable in the firmware
> there is no way to know in advance their values. So the Raspberry Pi
> cpufreq driver queries them, builds an opp frequency table to then
> launch cpufreq-dt.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/cpufreq/Kconfig.arm           |  8 +++
>  drivers/cpufreq/Makefile              |  1 +
>  drivers/cpufreq/raspberrypi-cpufreq.c | 83 +++++++++++++++++++++++++++
>  3 files changed, 92 insertions(+)
>  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
> 
> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> index 179a1d302f48..f6eba7ae50d0 100644
> --- a/drivers/cpufreq/Kconfig.arm
> +++ b/drivers/cpufreq/Kconfig.arm
> @@ -308,3 +308,11 @@ config ARM_PXA2xx_CPUFREQ
>  	  This add the CPUFreq driver support for Intel PXA2xx SOCs.
>  
>  	  If in doubt, say N.
> +
> +config ARM_RASPBERRYPI_CPUFREQ
> +	tristate "Raspberry Pi cpufreq support"
> +	depends on RASPBERRYPI_FIRMWARE || COMPILE_TEST
> +	help
> +	  This adds the CPUFreq driver for Raspberry Pi
> +
> +	  If in doubt, say N.
> diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> index 689b26c6f949..02678e9b2ff5 100644
> --- a/drivers/cpufreq/Makefile
> +++ b/drivers/cpufreq/Makefile
> @@ -84,6 +84,7 @@ obj-$(CONFIG_ARM_TEGRA124_CPUFREQ)	+= tegra124-cpufreq.o
>  obj-$(CONFIG_ARM_TEGRA186_CPUFREQ)	+= tegra186-cpufreq.o
>  obj-$(CONFIG_ARM_TI_CPUFREQ)		+= ti-cpufreq.o
>  obj-$(CONFIG_ARM_VEXPRESS_SPC_CPUFREQ)	+= vexpress-spc-cpufreq.o
> +obj-$(CONFIG_ARM_RASPBERRYPI_CPUFREQ) 	+= raspberrypi-cpufreq.o

My bad sorry, I noticed this earlier and forgot to comment. The above
two files are maintained in alphabetical order, please add the entries
at relevant places.
  
>  ##################################################################################
> diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c b/drivers/cpufreq/raspberrypi-cpufreq.c
> new file mode 100644
> index 000000000000..a85988867d56
> --- /dev/null
> +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> @@ -0,0 +1,83 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Raspberry Pi cpufreq driver
> + *
> + * Copyright (C) 2019, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> + */
> +
> +#include <linux/of.h>
> +#include <linux/clk.h>
> +#include <linux/cpu.h>
> +#include <linux/module.h>
> +#include <linux/pm_opp.h>
> +#include <linux/cpufreq.h>
> +#include <linux/platform_device.h>

Would be better to keep above in alphabetical order as well.

Please don't send another version now and wait for comments on the
other patches.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
