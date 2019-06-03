Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B055632B0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6Yms9OJAfzYuq5a/wGyE9JA1DMFOiwwUWmcElbBarI=; b=FHBDy2mOWaPLnL
	BHXfOarPV6//Ul3jnfkIuHl6V+WkH3xxZdvSa95TIg6GM61lWDdfi5nJeA7cfJ4/Uh8V0/AnRyX0/
	+AWC3Zq1pNZtqFjRvMj4p5un9lbjQPuho6aAeTKQPNojhPFUV9rP0UIEobceZ/uWB3NAt6rdD0L6P
	8EbTWEPZq2KITqW1VLmF6kkZ8tHc0wt77u/aZ6ll7lsYrr6PqdagkadQVZDBDHNbqMmp1lNfppELZ
	WXj1oHnWr4Jcr5MBRo/kOz5ObMliPEiDjXuBb2n5J43bQnmavXNHRSCzY86t5htytXnR0T16TP8sa
	3GyJleG5oxufTmHDtTcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXibW-000402-0W; Mon, 03 Jun 2019 08:46:06 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXibP-0003zW-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:46:00 +0000
Received: by mail-qk1-x743.google.com with SMTP id r6so893481qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 01:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ER75v23MLmKVoWMJHAd5KVg0lEP0L1Kcux03NwClDaI=;
 b=wVugm5woDXg7v/2EJl5GugNm++kardCetb8g+xW0gtUP9Yp9QxrG8G7yqJhhnyOgfn
 1I9Crhz9081YopKkhK9XzJ4Zz187/1+PfCyV7PaQI5LeT9aOGBktSHVLuctUZ7nbtKnt
 9HUySCZWAmwtyfRC1q5CNKS2sJPubKH1Gas5rON4oh4DPI23NKbDqfBRXO942j3hxHur
 f7Cle8UnY63d6HQKSLgWNqQt0yoaRMcKzUfdBcdxlbrykj1loRKOsXZwBxsFfToIb12d
 wID6avMUer6ef291iPwgCXPzX1XKmPK5Yc9RWuNZG+rABPfW9fD0HyY3JTgbkLf9i7xQ
 P74Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ER75v23MLmKVoWMJHAd5KVg0lEP0L1Kcux03NwClDaI=;
 b=GmJ9lfCIyfALKiHJ0iLSPVD/IUBXKDSZ/XO6X0tfWBfzFSNUN9TfVw0uP3GPOowics
 5hkTGCvw4Qm0N7jvPm75oFEJA5JiQjkbgBpgxPUi7ABN1mqaT4201a9yw40nhA7OeAXT
 dFQnQPN2uhN9QXqHq+tqbklzcn5J/giox4U6IIKrCe29/9PLutUZCgrUR0jV7r/lWWxd
 7hAHeiA8SnlQczJy7bPKSkwCOve1w3MoRYIrIo4PNBaEr+CEmUWzzwIYRwWuSACYF9yL
 3O+93I4s02BdX3bKfwB8aCHDOf44wnDuMh4M5lT+60xXMFgFOImr80UtcSWmJY3TDxWN
 6t5w==
X-Gm-Message-State: APjAAAVT45CjqGKL8kobLI5Bl5brnux0WlJFPQM+8GVYSkFZ+xW6ze4L
 whBiIiqr8d5LSUeNEPzPr+GaqQ==
X-Google-Smtp-Source: APXvYqzkBYJvS5452X4mv2jWOMV7wfWMwclsghRU9Z9WAvM97cCtsdKcSysdRdv5ehuiLjAVd/Q2ig==
X-Received: by 2002:a37:b5c5:: with SMTP id e188mr21260076qkf.55.1559551557665; 
 Mon, 03 Jun 2019 01:45:57 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1299-180.members.linode.com.
 [45.79.200.180])
 by smtp.gmail.com with ESMTPSA id n48sm5971028qtc.90.2019.06.03.01.45.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 01:45:56 -0700 (PDT)
Date: Mon, 3 Jun 2019 16:45:50 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 0/3] coresight: Expose device connections via sysfs
Message-ID: <20190603084550.GA29174@leoy-ThinkPad-X240s>
References: <1559234697-15743-1-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559234697-15743-1-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_014559_607937_18BBBAAE 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: coresight@lists.linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Thu, May 30, 2019 at 05:44:54PM +0100, Suzuki K Poulose wrote:
> Coresight device connections are a bit complicated and is not
> exposed currently to the user. One has to look at the platform
> descriptions (DT bindings or ACPI bindings) to make an understanding.
> Given the new naming scheme, it will be helpful to have this information
> to choose the appropriate devices for tracing. This patch exposes
> the device connections via links in the sysfs directories.
> 
> e.g, for a connection devA[OutputPort_X] -> devB[InputPort_Y]
> is represented as two symlinks:
> 
>   /sys/bus/coresight/.../devA/out:X -> /sys/bus/coresight/.../devB
>   /sys/bus/coresight/.../devB/in:Y  -> /sys/bus/coresight/.../devA
> 
> Applies on coresight/next tree.
> 
> This is split from the ACPI bindings series. No functional changes.

I tested this patch set and it works well as expected on my Juno board.

FWIW:

Tested-by: Leo Yan <leo.yan@linaro.org>


> Suzuki K Poulose (3):
>   coresight: Pass coresight_device for coresight_release_platform_data
>   coresight: add return value for fixup connections
>   coresight: Expose device connections via sysfs
> 
>  drivers/hwtracing/coresight/coresight-platform.c |   2 +-
>  drivers/hwtracing/coresight/coresight-priv.h     |   3 +-
>  drivers/hwtracing/coresight/coresight.c          | 148 +++++++++++++++++++----
>  include/linux/coresight.h                        |   4 +
>  4 files changed, 132 insertions(+), 25 deletions(-)
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
