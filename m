Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2549F3782
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 19:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+eZVtlA/QI94BS6duqCHQDpkQRn+2ced/yMaZXCd2A=; b=Bv6J3d0daLOOzp
	c0pWKm2CoIW0NWJTSqTL6ddWIPELf9feldgFv/E+YHPe2cRIMZCAcnBKwDRuZPwW98zlK7vPbTAFU
	ZaJN99gSQxpNV/tjsu5OBA4iKsPaNBp0Y8yGB5LLpTs46QAO1woG7hBXQP1/DnSqpdhmsBQJRIzJw
	RBZLX3do1xfIKK62Wq2vW1JnKTwD8I4++GPg7s3XQdw7N2SOweBkOz3Y+ybSDBav4emzWDWoqqtYi
	k5+PWMrzWD9OJeIYDokrd6AYOiK0gDhprnrt9qQk1+CTuGC/7SQT0VvZRS5iWQT0wni+/W8JoRW1p
	sH4JyHPeM7UZnnKK8FwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSmoc-00043T-NJ; Thu, 07 Nov 2019 18:47:30 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSmoV-00042S-LK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 18:47:25 +0000
Received: by mail-il1-x141.google.com with SMTP id m5so2786523ilq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 10:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LlH/emK43X7VQlux0XjazW6nVpP1+OhxUnqAKnN/vBs=;
 b=JEB1F12iTYfjJYno9PiUHEyIvfvFi+cWQhuSPBKHPuy1ugZuXn4+uxYA3Ey4McDqlF
 PvDtJzEOxJSnnwrAitdgUXRRfeq3SlbXPFIE6k67sa3xWjywqkMIXl2xZ9MziBmUPsAl
 QX+sIqfsd0HwsZoDRs/WK9nqC6eBfcG0Vm9gLGk8eQg56BI/CqY5tritxhJkvt3pb2a5
 uCR5rJtp8GXjIT4bMlrgdU4gghxt2xZNnrZRtp0lqc0S4lQ5JDbicq98gKRi039be6sD
 LumACIvxVvtdh2nbwrwLoZJm2SfXnunI5xJzIHARQGFZ8A8Qw0M/nwMrX0Oah7XPbLBt
 FE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LlH/emK43X7VQlux0XjazW6nVpP1+OhxUnqAKnN/vBs=;
 b=YOEP/kCIVQjK9iNG/Uril+V8B96LPD1B40w0Hdr5qaeZO1y8mubpvTEMi7F8WhJSwv
 VqatrJcVFXvGLbTnWV0/jc/x/rDtsZrIGQK6zprxFEeWnkTZkWmKbSd2cWSJth1s/BWW
 N3jGjyijaOr67sqPln0QgegL2n+DDKfbhfqAL+OqSyFmFOyQNuDC3GZzPSQd2AiNLwXY
 yUonste2tpbliExpwe71rhqA/EV7Jnhv2GuGHtXtAh6xlTYV0WErsR69J5GwFAxoIp5x
 pxnIAg7oqeKw0u69n/hnAa5UMo+FrIOgsJvAErS2NpyajFD/p1hRmoEKQdOkkcypD/AP
 ECAA==
X-Gm-Message-State: APjAAAUVwYbmyVxDuupL2PRliOGEB6lSqSrTRUhmsZpRbJQEFVBf3xaH
 cnDz+FubdIIVK8tgab1zBWrbiNSzr4IYSjPcwRrAuA==
X-Google-Smtp-Source: APXvYqzAVWigadbsfFuHoFmMfkvGVyLArpcA4tXnCqWDWZyByyzokkk8+aogfdz1WchCA9laZjOZIHtQihQ5pjFV66o=
X-Received: by 2002:a92:350a:: with SMTP id c10mr6317836ila.140.1573152441970; 
 Thu, 07 Nov 2019 10:47:21 -0800 (PST)
MIME-Version: 1.0
References: <20191106115651.113943-1-weiyongjun1@huawei.com>
In-Reply-To: <20191106115651.113943-1-weiyongjun1@huawei.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 7 Nov 2019 11:47:11 -0700
Message-ID: <CANLsYkxKAC9FLYkFjuehj_oFHTVyd=8_R8bAKjPxTXQyAGkwYw@mail.gmail.com>
Subject: Re: [PATCH -next] coresight: replicator: Fix missing spin_lock_init()
To: Wei Yongjun <weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_104723_757636_A80D1EEA 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Yabin Cui <yabinc@google.com>, kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 04:57, Wei Yongjun <weiyongjun1@huawei.com> wrote:
>
> The driver allocates the spinlock but not initialize it.
> Use spin_lock_init() on it to initialize it correctly.
>
> This is detected by Coccinelle semantic patch.
>
> Fixes: 0093875ad129 ("coresight: Serialize enabling/disabling a link device.")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/hwtracing/coresight/coresight-replicator.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index 43304196a1a6..e7dc1c31d20d 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -248,6 +248,7 @@ static int replicator_probe(struct device *dev, struct resource *res)
>         }
>         dev->platform_data = pdata;
>
> +       spin_lock_init(&drvdata->spinlock);

I have applied both patches but removed the "Fixes" line since the
commit is only visible in my local coresight next tree.

Thanks,
Mathieu

>         desc.type = CORESIGHT_DEV_TYPE_LINK;
>         desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
>         desc.ops = &replicator_cs_ops;
>
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
