Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB00D13DF25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:48:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oSUdqb5CT3FU+1uUDvU2JxtGW/s4DKLUb/OZ2iBR9U=; b=rikpG25cZ6esMQ
	s2rfjEBX7idWsxE6VgFh1U9xM4hh1PWQT12weHapk+fPOHtfnZiO7+Cb+x0XzRisR6gk5bnm+z+qs
	te0owv+CcB32QSUc89G+Zouzy+rOJqIcQnAHGkcXLVmYEIPQzuj2hmmjusUGQ+8okR2YJkOSyWetQ
	nFlwOMxHT1Jtm9MKpNSigEKp37eu5iR0Yix1WlOrhdZh7EVCOoLAxQII8Xw/DNxCJoDDiTXx4DmdO
	A9vRe+pktW6/hFeqK9xNxeok6qNwLfcJOzHJRZTzHJdbKyYslufzdlREwohicHoWzMAzs9l2ucv86
	avuHxKkMc9OOIX8aLDrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7Nm-0005jG-HA; Thu, 16 Jan 2020 15:48:30 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7Nb-0005iI-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:48:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id d5so1694478pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 07:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=huTcCeKRdO6T2NesAaGqeynPCc8WvA8tugh/WJ8Dtbc=;
 b=G0x92qOpFp0qKI6nZ7kGQOhD71Zn/VDKWFJJCIrflldCLCzZXOHAORHnXkmDRhvFfy
 5zUGA5yj0/lLifVw4OCSmPfgq29wdN92rwS5addh6NEsEpUCmxii5jch9eJdJuEKH2oD
 CKSWUCQbU1UozBSDGofweLzCC/1HV5/Q1PI6gw4wBFCtwm5HQPV5Y56GaBXgnfcH5ZQj
 2414/2w2MxK10PI3mHJS3cybbwxRPMQVLKh/VjbaMK/B3E3x0RJZ7WrXE2piq3FvhuTr
 20ls3AX5kjhhCCOKeRzNx7oKXw9v3oSQtvs+QHjUrcYBdpFFvCTmmygweiAqCD1T5G8M
 pbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=huTcCeKRdO6T2NesAaGqeynPCc8WvA8tugh/WJ8Dtbc=;
 b=PpQ/+i/G9yfaMg3quOtjDAXFN60qGxGH2RyJ9TC6ribhrMYeCDspy6AOhQOqMHJubx
 HFpHMrwG3O8MCcYRjsj6Ti1WqFIX4vFd5KSqxf9vcwWOEnHbmI65w+HnMvaT3kKqKoYw
 7alNrhBUGcM3zTfUJwwtJI6See0Lq/BTQ2hSTAFTyNwb+mQGC8HSueZ81m1gHM21vpVD
 HbSaebqti2vDBnk+ded9kg/6AleZRUBJKiQzTJeGuNbgGZgXeXAE8CouHHB1ztVt/HDf
 /UEfEIOSlAMTvz1zJJbAd8EvteDjWlHlfYcR05+7uwyBykhfqyXRLfyCI5K+Dwrg3dU0
 3peQ==
X-Gm-Message-State: APjAAAVWO02Cmv3GbYvXmmPrdfxrDJThsydA3Ktk4AYDIcV+M3yMSRns
 39oXjqbPX7IcE6GPvUoC8Ms=
X-Google-Smtp-Source: APXvYqyf1XdfYZahE1H4voslQkQxT590gcKa4OeO8qRpdhQpm30jdS2BgPlQ4bM5jJxEU4tr8jUqLg==
X-Received: by 2002:a17:90a:246c:: with SMTP id
 h99mr7613283pje.134.1579189697928; 
 Thu, 16 Jan 2020 07:48:17 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id s13sm8048976pjp.1.2020.01.16.07.48.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 07:48:17 -0800 (PST)
Date: Thu, 16 Jan 2020 07:48:15 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
Subject: Re: [PATCH 1/9] watchdog: of_xilinx_wdt: Add comment to spinlock
Message-ID: <20200116154815.GA23637@roeck-us.net>
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
 <1579181217-31127-2-git-send-email-srinivas.neeli@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579181217-31127-2-git-send-email-srinivas.neeli@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_074819_945255_3A9BDFDC 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-watchdog@vger.kernel.org, sgoud@xilinx.com,
 shubhrajyoti.datta@xilinx.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, git@xilinx.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 06:56:49PM +0530, Srinivas Neeli wrote:
> From: Srinivas Goud <srinivas.goud@xilinx.com>
> 
> Based on checkpatch every spinlock should be documented.
> The patch is fixing this issue:
> ./scripts/checkpatch.pl --strict -f drivers/watchdog/of_xilinx_wdt.c
> CHECK: spinlock_t definition without comment
> +	spinlock_t spinlock;

One of the most useless feedback messages from checkpatch.

> 
> Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>  drivers/watchdog/of_xilinx_wdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/watchdog/of_xilinx_wdt.c b/drivers/watchdog/of_xilinx_wdt.c
> index 7fe4f7c3f7ce..00549164b3d7 100644
> --- a/drivers/watchdog/of_xilinx_wdt.c
> +++ b/drivers/watchdog/of_xilinx_wdt.c
> @@ -40,7 +40,7 @@
>  struct xwdt_device {
>  	void __iomem *base;
>  	u32 wdt_interval;
> -	spinlock_t spinlock;
> +	spinlock_t spinlock; /* spinlock for register handling */

I don't see the added value here. Besides, what does the lock actually do ?
Watchdog drivers are single-open, so it seems quite difficult for any
of the protected functions to be called multiple times. The spinlock doesn't
disable interrupts, so register accesses by other drivers are still possible.
What am I missing ?

Guenter

>  	struct watchdog_device xilinx_wdt_wdd;
>  	struct clk		*clk;
>  };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
