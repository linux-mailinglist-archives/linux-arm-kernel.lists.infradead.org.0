Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D893DC7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKsFwBEGT1bed/3Yea85V3wfqXk2ckK8NCzKjY0kHKg=; b=ZhLlkyJeKZYvvb
	jnF7j1SwFtV+Y3cTRyRJ5POVyO+mf9wZeepL30Y353Tu7nWBDFs4j8jh4SOVtjyl83taa/Zf1n10t
	L6pcRvzW8dRF2RVz4yGewJi2linTb/hihRO+GT57y8Tgd2ZSo0nPXNuYS8sNLt5UBxz4xXhs6S5k4
	NvbI0xeHJNd/DrSByvdKjS99dxuglcWpxDcISEn4N73QPHE82ICm86f9YvzxdwLiqTRyWM9N4X8bH
	mgmwsiu91quEDt+J3UXI93PyUOu2wtCiUynkcK4UFH+uL+2RBDUsyqe3ETznUKL9skdQGqMZu8Ni3
	5b8aMWLhrrA2Qet3UU3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Ix-0003Mm-QM; Mon, 29 Apr 2019 07:02:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cw-0005l4-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:25 +0000
Received: by mail-lj1-x242.google.com with SMTP id b12so7114744lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+ZB1sFFo27zRZDgBBI31WcFFAlY9JKLINEYBzNw1uGk=;
 b=G3LmHlRhF3x6CMXyz+dXd4Po9lusBT4MIJ6vebJY++patQLWCP2Xg5F4wpDtoT9gqU
 QPxNWFF3IyhX1flXad5oKTkDdApIS1H53083TVSa4NwHa8w0iM+lQpnoiV9yXYmKO5sS
 /uVkX4ihs/BY5ozXUhAiKv7nQCNGjhoceQiNr61QYy7OYv3LfzpM9yd7sJSglfVCr/rN
 rnFvPP1/tt78KD0awCjxc7x4/2c6Ta8j2EFN7OQkddI5W8QW90IiBc4DQFe2F1OA8PIu
 IDigKJjU9zbPlTZi/8JHDxc0BDuuGEQn3hmjQun19ZJeNeBz2qjlpy/8jNjxbadbNnt9
 JEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+ZB1sFFo27zRZDgBBI31WcFFAlY9JKLINEYBzNw1uGk=;
 b=GC73NQFmH5szxpOdNRv3ix04Csmm4Yd3UEmpV+DSWDtnq3zJQyO4KrghbJe44sVY18
 VfudzSFRyx4xd3060xWRaPb2MBkvhQz37eYN03ZHbdBxtskGvqLO6iHYmjLOoHKfRife
 eFPZM4+E9jqpIyoIdl5i87iDFLCdIyHS1BHfIyU9jmWJrFzKtzATPYsNOCFA/FiLSdQk
 FfC33P0K1kwBp19igLObGF5DuEIDMydpQE1wRtBWUXcbTeyxnFCCymGbbKYRqam+NtMX
 npmuj6FAd0jH+oZg0aoEfEVsOBh9JsN7UbXjkzazz7jdBpBSV4lUC1uGseU+D+lX36km
 YJNA==
X-Gm-Message-State: APjAAAVEHNaq4dxAFn2wcTipRtV+pC7mhcEGPR/9c49k2swqfCX5tnDo
 1sJDWgkSt+Z8OppvuxSM7o7eCg==
X-Google-Smtp-Source: APXvYqzDCbmGxyphq6w/Zhz5tZSINI/L/+UQ/XkwPirfMMhNpOPCUDg9JBXun2jegTX1PBU22N3j0g==
X-Received: by 2002:a2e:9753:: with SMTP id f19mr33820909ljj.54.1556520968555; 
 Sun, 28 Apr 2019 23:56:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z17sm6669536lja.26.2019.04.28.23.56.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:07 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:36:38 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 7/9] ARM: tegra: Default configuration updates for
 v5.2-rc1
Message-ID: <20190429063638.ar46f6wvqr5opyff@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
 <20190418150721.8828-7-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-7-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235610_723400_859D6C24 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:18PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm-defconfig
> 
> for you to fetch changes up to a6f3d883a6ef19feee1d80bfd90701627b01b98a:
> 
>   ARM: Enable Trusted Foundations for multiplatform ARM v7 (2019-04-17 16:36:34 +0200)
> 
> Note that this pulls in a stable tag from Tony that brings the multi_v7
> default configuratio up to date.
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> ARM: tegra: Default configuration updates for v5.2-rc1
> 
> Enable Trusted Foundations support in the default configurations for
> Tegra and multi-v7. This is necessary because the symbol is no longer
> selected by default.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
