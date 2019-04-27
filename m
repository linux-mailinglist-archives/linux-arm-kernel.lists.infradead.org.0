Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715BEB486
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zp0pMMdT8t0FxHU8mhr5IwhRg0Pbt4gXte0Wj2xryz8=; b=gqDm0GGp4RvFlD
	jO/Gc/AePyVowRO0ZCtQ0heNLZkkfaXdIMVtn34Jm307zqlt0CajYejqaNtGGuwmQHQNbRTe+AKWg
	E9QsrUhXAMfP4tWcQ6lCCDk2E4rcP8nwunZGkpm8/y1Yhwkj5YRi0n7MMoJXXV2LqFjR+glis7h+O
	+UE3DAfurnbV1yqdlVJBOYl5Mj3U8Um7U0cSzXmSZoWVwiGWAUCJQM4ixFXEHrxt//x9cfQ7nKGlB
	Xldg7LWmTmqJS7Nnuxvf6XZ/etw/iXERbbBrqTdlogBZMSp8XoF6Vjhtuj+u1hCbtUSb+mEAFmll8
	2YMA8NRKQ8w20OyWDgrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTzS-0006X4-4U; Sat, 27 Apr 2019 20:32:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTzL-0006WL-1L
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 20:32:00 +0000
Received: by mail-lj1-x242.google.com with SMTP id r72so1568037ljb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Apr 2019 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=O8Yn7rSqSWzJGEK90Lsepo7xnz0psLgDKoYMEPt0f+I=;
 b=G6ptwH5cQK8gyQQBjLAO0A6t3tRHNZHtJBq+mPC2leXHWTWzfGvtomGLjo9OtR1gc5
 HPYHPaXTkXSvthv9H3mdSFhLI8CJV0iyu3nxYn89okYEcynAqAEDx1Qfyi0mgEIFS3cB
 dklbElANUeUmlyNoyU/yLxIkreWZnvPkwOC3/lw7YHdYgDhNihRmjxAHlYaUWuR975dj
 3IF5XMjXqAcshY+h+fGHisvx6GHk5xtzqyvmNXM3uJ9iTXk8KzNv2sdzECymZBxlC8hD
 mSERJt6kTdFr9KXkpn0IIZcTW8G7y489yZETvy6py90/C9wQXf/lxdYMbZU0WB6Z9KkG
 V/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=O8Yn7rSqSWzJGEK90Lsepo7xnz0psLgDKoYMEPt0f+I=;
 b=IzlusRPXTCVLDTDGtQpJZC+AqOS0BtCc8tOAFTNsra9tF4ZA9qKox7PXuETU8fmEzo
 PaWYFYgLoCG2LllYv5Q8uN9OyAowNVqMa/7+AyNghmLL3yJtyJCN8+bWlZbMt5wEEFN6
 Gbexy1M4Y4J/pv6YZfBztvwc5/Uwuk0aJAXvS1uO5tYQ0BlWeMivgKgqHTHNkIgotWk4
 8Sa2SXeaYF2RL/swAwqdr8XQcOXGI1EIeBsEu87Xh8HGaZt442I5dK3WHXB2ev30aySb
 DDsQBlM0xZXx9SScZaBZ8TbipwhWJLJbCSFyrHkdJCOI3jkjwnQKFF3yYGw49s416zb+
 D6VQ==
X-Gm-Message-State: APjAAAWgXv1xk2Yq3D4QwYFHfQun3DBLuw6BkTv4ooBzTsFUdHcC9Dj5
 E0X2kJiiEeD4xC+4vYgmZo5LXw==
X-Google-Smtp-Source: APXvYqzh1bdAD38MjP/J5rMLGVKNYbnVhRbsJX0POxHShzdSlQUCNYildYReq2IzntSwcVh964tq3w==
X-Received: by 2002:a2e:99d2:: with SMTP id l18mr14141923ljj.27.1556397117063; 
 Sat, 27 Apr 2019 13:31:57 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.81.185])
 by smtp.gmail.com with ESMTPSA id o3sm6498817lfn.41.2019.04.27.13.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 13:31:56 -0700 (PDT)
Subject: Re: [PATCH v4 5/5] mtd: hyperbus: Add driver for TI's HyperBus memory
 controller
To: Vignesh Raghavendra <vigneshr@ti.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Marek Vasut
 <marek.vasut@gmail.com>, Richard Weinberger <richard@nod.at>,
 Rob Herring <robh+dt@kernel.org>
References: <20190423104814.5762-1-vigneshr@ti.com>
 <20190423104814.5762-6-vigneshr@ti.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <281a479d-3cfb-b9e1-23ee-c8e3acc37abe@cogentembedded.com>
Date: Sat, 27 Apr 2019 23:31:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190423104814.5762-6-vigneshr@ti.com>
Content-Language: en-MW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_133159_261682_A5553933 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/23/2019 01:48 PM, Vignesh Raghavendra wrote:

> Add driver for HyperBus memory controller on TI's AM654 SoC. Programming
> IP is pretty simple and provides direct memory mapped access to
> connected Flash devices.
> 
> Add basic support for the IP without DMA. Second chipSelect is not
> supported for now.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
[...]
> diff --git a/drivers/mtd/hyperbus/hbmc-am654.c b/drivers/mtd/hyperbus/hbmc-am654.c
> new file mode 100644
> index 000000000000..f458d7226df9
> --- /dev/null
> +++ b/drivers/mtd/hyperbus/hbmc-am654.c
> @@ -0,0 +1,115 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
> +// Author: Vignesh Raghavendra <vigneshr@ti.com>
> +
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/mtd/hyperbus.h>
> +#include <linux/mtd/mtd.h>
> +#include <linux/mux/consumer.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/types.h>
> +
> +struct am654_hbmc_priv {
> +	struct hyperbus_ctlr ctlr;
> +	struct hyperbus_device hbdev;
> +	void __iomem	*regbase;

   You don't seem to use this field.

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
