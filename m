Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936631E4A5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkeJIJqqR2pvHqrBMzHhquxK4ZipShooRtRfe4Oe/9U=; b=Todjl8whhB+hAX
	7RlaCS2nMsQ5UTtVXB2Z03SfVRf/jQTsNfr4q5QQ8gegHYAcLAIoX9L7gjDx8Y7mLbtcm21YA2+dT
	SYq1QN7Y47zssOvuk4xwVZnzWlGknKzZbreiz2E2AKLX4kjXPGbQf6VZzgqC7+Oz+GJp3bRPJddqL
	RVfJezlHkCTXW+xq344EfEv/YCxq5Kto5V2cTHjfAYeiDTSY3VCqaQZVVclG8WJE7YjNwG8MwGHD7
	Uz/tIRtio2/GOV7dbHtkctlXvn4t+fmSSkZ8mKoOL9v6cTWPySw72fg80QRoT6OdhkmSvdByNOwIS
	RGtQ9sA4V6HTWiQzlACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz2k-0006uh-Nd; Wed, 27 May 2020 16:36:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyRe-0000rE-1m
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:58:28 +0000
Received: by mail-io1-xd42.google.com with SMTP id k18so26597563ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 08:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2KPqlFHIaFhXtFQPvI4kGCnPDvEbmm2Nd6KaCmQEOqI=;
 b=Ue2h3jU4f/LBJYIl5gzQnW6cFNCOrZdqN7G+mrLx2xOGYGPx/CgSI78VNT8fRU9xq0
 lkqDwqHymn6uTiXkL2sB3Jv/jYk+VIahOCjFbKqx8Se6imQdjZZUsQFWoJWcIDQeqDk5
 /GnqOXT52GNJbnAJAVHjKsaA7r+TEhvfYyGLNjgh/ZMUanZ2wJ1iKUHTICzXVF7Kg0X3
 gq28gtfdxSplbXNONiMr/re5nk3r/bGumjn/tgmz48H8r/lbMOrYi+fNZKL7nbkrscRw
 ee3POVIFcVhS0M75LB0rtu5A2OAsHWylRbguOty3S23SpgXlSpQ6t0xRaprA1Kp3ZIS7
 GMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2KPqlFHIaFhXtFQPvI4kGCnPDvEbmm2Nd6KaCmQEOqI=;
 b=ubjzqfFTrXZFQVdJQTKnehD2eM4EtKGKwyQqEKC+FgYzHIfE2vRoYRqh5AC+xcBg5s
 3dIrxqQ+MMSjnxm08l/WqEaiT6wkZaFBz1AOcuQ3j08/UTHZ1heWcdtoWYjooSa3ekw2
 JbPa2QcHLXOivpAhd52fsdE+Dnv20CHpjYZRoNXtmuXblRSlgoF/NuG3NA1DM58hJzTM
 p3U0ApeZpBuMsmYFmvuldcF/vXr935P7J5DUj8+UD0J/k6vyoYzgsvtn0KkHueaMoUUF
 eBz+hvAzC1K4rvcDqYviwiD6YxRWR6C1ffik8XtMK5XG76+YFHgrXnMGJkJFXg4hQh7M
 tSaQ==
X-Gm-Message-State: AOAM533hTpkTlFKhxYS45Bl99DbNNCsZr4ZXIBS5JsO7jepY/WOLTs0s
 Veu9rKgrvUIV4KHakYRbLCxWpri6zI/n3G16ZcL3t8QN
X-Google-Smtp-Source: ABdhPJwEacnpf6hd8M9CKQVk2EmgBvTRIgmuQRIOr4WGHoTCA7OXr3+tw4e5T7AV1FeZN+6cRErbAP2GfUUpHfxEDg0=
X-Received: by 2002:a05:6602:2e96:: with SMTP id
 m22mr21995431iow.165.1590595095340; 
 Wed, 27 May 2020 08:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200526055241.2671-1-vulab@iscas.ac.cn>
In-Reply-To: <20200526055241.2671-1-vulab@iscas.ac.cn>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 27 May 2020 09:58:04 -0600
Message-ID: <CANLsYkxU-Srbu+-GT13cVfUqjE4GOGhtkxZgKfxGz+P=n1BB7A@mail.gmail.com>
Subject: Re: [PATCH] coresight: Use devm_kcalloc() in coresight_alloc_conns()
To: Xu Wang <vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085818_142655_4162F394 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Mike Leach <mike.leach@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 25 May 2020 at 23:53, Xu Wang <vulab@iscas.ac.cn> wrote:
>
> A multiplication for the size determination of a memory allocation
> indicated that an array data structure should be processed.
> Thus use the corresponding function "devm_kcalloc".
>
> Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 43418a2126ff..6720049409f3 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -27,9 +27,8 @@ static int coresight_alloc_conns(struct device *dev,
>                                  struct coresight_platform_data *pdata)
>  {
>         if (pdata->nr_outport) {
> -               pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
> -                                           sizeof(*pdata->conns),
> -                                           GFP_KERNEL);
> +               pdata->conns = devm_kcalloc(dev, pdata->nr_outport,
> +                                           sizeof(*pdata->conns), GFP_KERNEL);

I have applied your patch.

Thanks,
Mathieu

>                 if (!pdata->conns)
>                         return -ENOMEM;
>         }
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
