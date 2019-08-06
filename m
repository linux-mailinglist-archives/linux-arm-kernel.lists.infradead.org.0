Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B068309F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ep0eAaJgI8DswHPovYfAtZn5UljWFD+MYJoGSUGtcE=; b=XKWB2D6Cc6uQ1o
	JMVvl3iykSXMjOrs7j6WuX9BEE9eBBRULzOMPhvHZGCVtClU7WKEufEUSLuk9yWCmbUC2YXTFNdsO
	F3KpNTXWeCti7IYOMLmKe/2Qo8BtV58KEh3DE0c3rNDLzgl7hUzcQkmKeTKPWEv7Xayqq8VcgqugZ
	Z0oZjv6yHOZjMene1Wmiu50yvqVsXwVZAzkbS1hefgnlC8CNJWy2mFQqVo2dCsc4n7SKZ6SJptjKl
	FMQjN5t4RJbradiy05bEt03290IrAh3F5LctiWOK4nEBwAKItwp/ntmZ73RMD4nLO0Y40HDwXH7/r
	rV35mqeDKcYuTzS2KnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxcD-0004Wf-LZ; Tue, 06 Aug 2019 11:26:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxc2-0004WB-3N
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:26:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id s15so54744244wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 04:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=/bvE/+rT0hqQd9DEVs/wAQSXv8Qv9MrLv1HMgeH12XY=;
 b=OoejvXx4Lwte+KoWCzvOh8zT6a2jBCn5tmxATTCyE1IfLYdWwc2BQe9RRsmiZNHR8T
 K2V0XzrzTGtSil3Zxegj2HgN5p3U2XNUWLm76W6TcX7+XJVnlxGF8DdvDfHU/acDLQxe
 O+TyLzq2AZgNunii/1t23V7R/4DkooMnnNvLI9A54iGISwQfv2nNma0SxzYDaY1Wo0f0
 HTCsXWYRfnz49VqJppdcmvznJE81AuJF/Oz5HtU/AhtffSk9bT8hk8LmlLEXDoxGeKXo
 JLZ6fZA9RxerIfyVcG0dEqIC0Vttho8Al+rOsdZBCalZdfRW6ZF+zVzfO27XpTpVbkBy
 iSoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=/bvE/+rT0hqQd9DEVs/wAQSXv8Qv9MrLv1HMgeH12XY=;
 b=crQyJJ8m1n7xUTSUXttHzzH/eKruGUcRtWq/Jr+wNz35gpakWPrBDDiMORO5zMb2PT
 z0ngxXA49K5Vz61K0okelPbH2eGLnPXEV2VeBCOnuFxdehwl5pwXUWXcLGVQEejzYsA7
 ZyJpDrsnrqNRbPOnpriDK81NvmbNAxmisJTwEflEflgouWz0XMhpqTvb2+jPHFeVjLTn
 cGfPif2iDuXWA399BUSUAQZ51264dSnlGhngE9vao36rAZvYS2cjVI1MxlXKaJzSfDSH
 +YZSdJ8n983YKcNQh/aJ7mHZB4X0AN1CzbdjTQzLIHuCJT1+Fxwq1k+yzVgsq4PHqP4L
 lGow==
X-Gm-Message-State: APjAAAWmiDpvMKUd2aAvutnw8GmjrWzU5M7jRStGBSiUcIks0wjwhsTq
 I5T27L+aXh/wXhjMKrCicFM=
X-Google-Smtp-Source: APXvYqy+aGW32eLte4S/O5X+3t5EFW+6HZI3ZHqTmkeIaX9Usk34wMHzhohgAORdtpN129ijwTzGzQ==
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr4477382wmd.48.1565090798068; 
 Tue, 06 Aug 2019 04:26:38 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id 66sm2286039wrc.83.2019.08.06.04.26.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 04:26:37 -0700 (PDT)
Subject: Re: [PATCH] drm/amdgpu: fix compile error about readq/writeq on arm
 ARCH
To: Tao Zhou <tao.zhou1@amd.com>, amd-gfx@lists.freedesktop.org,
 alexander.deucher@amd.com, hawking.zhang@amd.com, dennis.li@amd.com,
 broonie@kernel.org
References: <20190806103156.3778-1-tao.zhou1@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <a19ac490-a803-84c0-5598-e78edbb3447b@gmail.com>
Date: Tue, 6 Aug 2019 13:26:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806103156.3778-1-tao.zhou1@amd.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_042642_172706_A7406A8B 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ckoenig.leichtzumerken[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: christian.koenig@amd.com
Cc: linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 06.08.19 um 12:31 schrieb Tao Zhou:
> readq/writeq can't be found on arm architecture, implement them
> with 32 bits operations

Mhm, wasn't the whole point about using readq/writeq that we needed 
64bit atomic operations?

Christian.

>
> Signed-off-by: Tao Zhou <tao.zhou1@amd.com>
> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index f62d4f30e810..aaf7f31cf8df 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -29,6 +29,7 @@
>   #include <linux/kthread.h>
>   #include <linux/console.h>
>   #include <linux/slab.h>
> +#include <linux/io-64-nonatomic-lo-hi.h>
>   #include <drm/drmP.h>
>   #include <drm/drm_atomic_helper.h>
>   #include <drm/drm_probe_helper.h>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
