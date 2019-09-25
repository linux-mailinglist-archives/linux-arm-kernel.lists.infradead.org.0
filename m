Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0531BBE936
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 01:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGPakVZyJqIu46eytjt43182iie6lCQlDP9QTWWUoVI=; b=nfJbUxweTKaYJ7
	lktJT2+4VkVnZiAjO4vrQNXvw/7YkbWUTngHZetv/dD8zFB6DFnWg2D0TCDxUAxz3d5i0UUtnuBNG
	5YBZK0HhJ2DDsfJO0bQ6yMLuRp6DgrULZOVm2jKP9NDzcXgFrw/+8/Ar10yX4cm7cW08zlAf9sPcg
	LCDlD6/1CQbr+P8MS4bnXNotPYrwpiwbcUstf47BZyV1o3SS4g6EjP6K1bz+qR3OXbksrilR2Gy7U
	ObR2HZjBLE96OZVae4zwPqRK+PvsiSwjxsk/YUbZKeaC6D+Qe4k6wOdXKYUrbsVx9yOVqk0dYmAG1
	qfASKhkn9p66eBUjKcDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDH2a-0002fP-8D; Wed, 25 Sep 2019 23:49:48 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDH2M-0002el-81
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 23:49:35 +0000
Received: by mail-yb1-xb44.google.com with SMTP id t2so91598ybo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 16:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k9mLt3xvBGQYqXgvvuQtbv73TYKlfgFjBjUgVp0qnQw=;
 b=Mz6cTUt84IXGgN7GfbtlAUT3P8OZ4XIjQsUqjicxykyuBsc/2+eKucFV2n7wBOek5d
 hDv6yELVsr93aswKiKh6beCWKN8KxGzQBFSz5l96eLf366E8/U5yJgkF2onOLEzYuGpy
 MmqUd83SpWPMlbOiClqh7uF+xJLtaYqHE9kf9PLonOfFzjLkOqHPrhry9UaKNfh4FKdt
 UlI1a1E3Jks+g635OnXG/EIMyRUidmRSooforLC0eH4yh1FVK1vwNVh5/1runhUUkqRq
 d4coagceYif32HrnlJUericT2nGAVxG6WhJHXsT7p2UdxrYY2lxgSMdeBiNs0EUU/RGT
 ZVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k9mLt3xvBGQYqXgvvuQtbv73TYKlfgFjBjUgVp0qnQw=;
 b=qmCw/w+SAh/P+q7rQFwzu0ssQ548QkeWU6teH8+sM7hWhmUtdvsFWqcBollxafZInQ
 e1fnWrxNOXRniRMsMndtT+cwEEl0cRa4zjs/ZTZF5rU4lvhZhkZ8FNYmxfYvfdqM9wyS
 M6X/yyeQxDhXOflqDKcVqVzU+ZyjI+WrGBEh7NjWdPW1/ywP/Q2xur9Ve5CTwsel1qWe
 wdFI7AlsQ0q8DMy8JlMsRbHcNkIl7VibZsiivtyCqtw5bH2OD3tOIP5lU9hQmwRVwiUd
 l8uw7uTqwrLEfq8F4ycBIgZafjEf6ULlOcBfD7LOaRNUKSZapVLcEUCOpx0WyPPR2RgS
 aYPA==
X-Gm-Message-State: APjAAAX0Ra5BVY75hfvZDr4+dXdoBj5AnHvmeFFX9I46PYrgrM/XqvgK
 xF2SpPZFprXdlAO+W4VTTEM=
X-Google-Smtp-Source: APXvYqwR/caITcJ282u+zi2PrD7+FaXW9ELk/UeVSqScZoBfsW21TB7udKc9KZYQBZ1Bf/aHmdEpfw==
X-Received: by 2002:a25:e0d4:: with SMTP id x203mr157687ybg.131.1569455370860; 
 Wed, 25 Sep 2019 16:49:30 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id i14sm56666ywe.107.2019.09.25.16.49.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 16:49:29 -0700 (PDT)
Date: Wed, 25 Sep 2019 19:49:27 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>, jic23@jic23.retrosnub.co.uk
Subject: Re: [PATCH] counter: stm32-timer-cnt: fix a kernel-doc warning
Message-ID: <20190925234927.GB14133@icarus>
References: <1568809323-26079-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568809323-26079-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_164934_289979_6FB1EB34 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 02:22:03PM +0200, Fabrice Gasnier wrote:
> Fix the following warning when documentation is built:
> drivers/counter/stm32-timer-cnt.c:37: warning: cannot understand function
> prototype: 'enum stm32_count_function'
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/counter/stm32-timer-cnt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> index 644ba18..e425dd1 100644
> --- a/drivers/counter/stm32-timer-cnt.c
> +++ b/drivers/counter/stm32-timer-cnt.c
> @@ -28,7 +28,7 @@ struct stm32_timer_cnt {
>  };
>  
>  /**
> - * stm32_count_function - enumerates stm32 timer counter encoder modes
> + * enum stm32_count_function - enumerates stm32 timer counter encoder modes
>   * @STM32_COUNT_SLAVE_MODE_DISABLED: counts on internal clock when CEN=1
>   * @STM32_COUNT_ENCODER_MODE_1: counts TI1FP1 edges, depending on TI2FP2 level
>   * @STM32_COUNT_ENCODER_MODE_2: counts TI2FP2 edges, depending on TI1FP1 level
> -- 
> 2.7.4

Fixes: 597f55e3f36c ("counter: stm32-lptimer: add counter device")

Jonathan, please pick this fix up through IIO.

Thanks,

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
