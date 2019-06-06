Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E2037A97
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toxC479xj8S/PlHYEnbH9sbtnUtgxDiqAPpuBxwnZ6g=; b=pBowggNCNARnG1
	n4leekG9N7uLmxbivOFg++KaIOyBvQtVkFUkUZ0oPS5wOIw98LUyfgc/OJNh1DpwWQUW6Fx3cm2rU
	u+1k6uk9UKMIfcvjlNtZoQWAEjSM7qyekhmYJXLRU2Lr5iCLEA8wFC0Ij+9HYt9GNshSnMTLVlEeG
	lPQtbivnq4uee/PkKAXUcCeqQlDk5QD91bl3DIEf/vNlu8Z2ccnnT/ch/G94Nxy4Vhzh983XsNMvh
	tRyQnAHGIriM3zqA+h6yfcxnuvPe3fQYkEzqde1Ez5Uh+Z82N/XuIclye35ZGmcBXqHkcFU7KeTXg
	b9W/22U64ErNR50oK8+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvtl-0003Gf-04; Thu, 06 Jun 2019 17:09:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvtd-0003FX-OE; Thu, 06 Jun 2019 17:09:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A46720652;
 Thu,  6 Jun 2019 17:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559840989;
 bh=VJ78nIAOqbxKhvQ9fWU/8oqK8Ly4Neair/9DFPw853o=;
 h=In-Reply-To:References:To:Subject:From:Cc:Date:From;
 b=vey45CAW9C6njeSvn2wtNwQSizkVfCIzbt/u6buG7aTNO2jr3w2AF7f3KI8o1O/Vv
 1MJmqEcfiW5KMdtPoUnvOL/IIuwZadTb4gQJek/tIaPZCdTnoHSWjLtjzdqGAnd5gV
 BjpBe2l91Mg6icC09KsC9BIyncbX9KXf9u3snZd0=
MIME-Version: 1.0
In-Reply-To: <20190606142255.29454-5-nsaenzjulienne@suse.de>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-5-nsaenzjulienne@suse.de>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Viresh Kumar <viresh.kumar@linaro.org>, stefan.wahren@i2se.com
Subject: Re: [PATCH v2 4/7] cpufreq: add driver for Raspbery Pi
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 10:09:48 -0700
Message-Id: <20190606170949.4A46720652@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_100949_797875_DA01C41B 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-06 07:22:56)
> diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c b/drivers/cpufreq/raspberrypi-cpufreq.c
> new file mode 100644
> index 000000000000..99b59d5a50aa
> --- /dev/null
> +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
[...]
> +
> +/*
> + * Since the driver depends on clk-raspberrypi, which may return EPROBE_DEFER,
> + * all the activity is performed in the probe, which may be defered as well.
> + */
> +static struct platform_driver raspberrypi_cpufreq_driver = {
> +       .driver = {
> +               .name = "raspberrypi-cpufreq",
> +       },
> +       .probe          = raspberrypi_cpufreq_probe,
> +       .remove         = raspberrypi_cpufreq_remove,
> +};
> +module_platform_driver(raspberrypi_cpufreq_driver);

How does this driver probe? Do you have a node in DT named
raspberrypi-cpufreq that matches and probes this? I would think this
would follow the drivers/cpufreq/cpufreq-dt-platdev.c design where it's
an initcall that probes the board compatible string.

Or, if it depends on clk-raspberrypi probing, maybe it could create the
platform device in that drivers probe function.

> +
> +MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de");
> +MODULE_DESCRIPTION("Raspberry Pi cpufreq driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:raspberrypi-cpufreq");

I don't think the module alias is needed anymore.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
