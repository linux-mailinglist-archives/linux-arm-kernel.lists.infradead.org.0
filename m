Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA87948EFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:28:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZQYmGPmiTQbIEVSA0A4q5+LDRtV9YTSOYKeXhMlcdk=; b=IYnH17VzkyfJZ5
	hbpKlUyKVb2tmH2i7xZbtOfQ8bnEYwwHPB4lVmheK21/d1pJFh+daQjmZ5/AOIZ/8xkg6GCUqEQjp
	q6SMVu4zmFG1jWeiqZhISUwavLW+bAusX1fhIqBsq+V3SDGnnfuheFKZOtMNMC5h44E33Sn3CoJ9b
	Mnhh5Dx908hVmxSuc/XuvdDW54cjZKIURzk9EjWGZDbEPvVSqTTrtjZhCdGDoGS0ImNja/jmk2lXe
	1YFEtHhTIkJDR9PjEUB68k78vwrVzwqknmor6yHotO1iSIoJqe7KwGK/impk5OG1WKTlDv1LL+UyF
	ruauP/kakJ9GzWymxivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxJ3-0003gw-DH; Mon, 17 Jun 2019 19:28:41 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxIo-0003gJ-Jz
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:28:27 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so23940406iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 12:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z5rXgwG9yWcPN0fLE/vTF18T48XWO9yQmjH86/WUrac=;
 b=Qwvmzvga8buedBgHNunzYLLvybd7UB3ejxu5iIY+kC5E2T6WJQWUIFI3ehreI+zUJ1
 ZWnBU+RGqNxx/YmjBygCx0KYMmgQrCTTfhDN+9FVGARDFz72R1cYjOGGFHQvrXj2Emu7
 ny18uO/Z5K2+d88h1I4fczERW5BhF017uAFbNcAmuFHr8qOGAshskd85Fh5YhFKW2MNv
 Xw4yMMIdS4v8XfWxiJTJ3aBo45rqKCgX7ECFtHvwRlF895nDBCkTPtmKTdcXP99Em5TN
 58RKUOcmsJW9i+G1fJzXDw+EOEc21vevCn+IGTl0CnCs7/gQikWnclA5NBhyeasQmzAT
 3Qzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z5rXgwG9yWcPN0fLE/vTF18T48XWO9yQmjH86/WUrac=;
 b=imw8oWxnSxMXNwZqn/IuOYja0H31F2tCBBgVmJpuOhWJpWOAJKyTXbFnCTPt6170wN
 YiahYQ7Go9FcQ6Orp6HDJ7MmPmCxHRGLod8UshX7tTIQ6yiBaORjwML1JB+Q+wGW4Ls/
 J5KHJyGMCJxNfPrG3XTtymwOJaRZFZ6qpJVW26trVs6iznbhAc5tJ7mR/fPy/H/LFO4C
 ecvxZp0kzg/SSM0a28qbytP4CcquHTLPuPZmy4AREJG/cDw+ZZkbxjyklwXuTvjd1fJt
 eppZDk6h99QWovR1AEdBZrAwqtITzbfv/JM2bRCeKcypV4OLOOcvBmbhKJqJm/1/ls6Q
 alqQ==
X-Gm-Message-State: APjAAAUK7aopXOrwHhJJ6BkMGhuTfV8+HCZ8UZNtlhJ5ZRn5rMGsOXOx
 7EvWbu3XKJ7O6XOMp+/1ixNfdkjSZ0yk/a8rYzl2ekJO+l0=
X-Google-Smtp-Source: APXvYqwJpEoINVaSgYz/MH4+YMNa6KQ5jX4ZVfZx9HlfeGQjPFf0uh0xUNGxa+acoGWC1bnWp3OdhVv/14tgmc40PpM=
X-Received: by 2002:a5e:c241:: with SMTP id w1mr2348003iop.58.1560799706019;
 Mon, 17 Jun 2019 12:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <1560420386-4239-1-git-send-email-suzuki.poulose@arm.com>
In-Reply-To: <1560420386-4239-1-git-send-email-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 17 Jun 2019 13:28:15 -0600
Message-ID: <CANLsYky-=HhdxETcuL-E5AcW5dTb3+Dx8k3hTP+KcSdU6r__Hw@mail.gmail.com>
Subject: Re: [PATCH 1/2] coresight: etm3x: Smatch: Fix potential NULL pointer
 dereference
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_122826_661372_D7B79F86 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 at 04:06, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Based on the following report from  Smatch tool, make sure we have a
> valid drvdata before we dereference it to find the real dev.
>
> The patch 21d26b905c05: "coresight: etm: Clean up device specific
> data" from May 22, 2019, leads to the following Smatch complaint:
>
>     ./drivers/hwtracing/coresight/coresight-etm3x.c:460 etm_get_trace_id()
>     warn: variable dereferenced before check 'drvdata' (see line 458)
>
> ./drivers/hwtracing/coresight/coresight-etm3x.c
>    457          int trace_id = -1;
>    458          struct device *etm_dev = drvdata->csdev->dev.parent;
>                                          ^^^^^^^^^
> New dereference
>
>    459
>    460          if (!drvdata)
>                     ^^^^^^^^
> Checked too late.  Delete the check?
>
>    461                  goto out;
>    462
>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/hwtracing/coresight/coresight-etm3x.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
> index bed7291..225c298 100644
> --- a/drivers/hwtracing/coresight/coresight-etm3x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm3x.c
> @@ -455,11 +455,12 @@ int etm_get_trace_id(struct etm_drvdata *drvdata)
>  {
>         unsigned long flags;
>         int trace_id = -1;
> -       struct device *etm_dev = drvdata->csdev->dev.parent;
> +       struct device *etm_dev;
>
>         if (!drvdata)
>                 goto out;
>
> +       etm_dev = drvdata->csdev->dev.parent;
>         if (!local_read(&drvdata->mode))
>                 return drvdata->traceid;
>

I have applied both patches in this set.

Thanks,
Mathieu

> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
