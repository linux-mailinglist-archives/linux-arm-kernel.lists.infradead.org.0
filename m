Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3261112298
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 06:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AU5okBqf5ePckWgu9LhXkCvd/SpPzjbRsGv7IvhT/U=; b=FEO489HROi03Ij
	/D7fcGLUUdnoEiKNAuioNSpgPQZK2E9ETvHtneCYnjQpDMekymZdU4MZVinlpTbBYDJjlNrJw8C9W
	MKx4+b2rvoI+iCoe4voXVSUFYmZToB79gc5MhGNgifJvlqRN6kLo2cLP64R4DcnXeGGjK/ZxU0EZF
	br6uCnqdn/Ejf6ylWH9VhcDrtwU1koA3NW1T7VE33YD2BiaG42kdSSl8zMrGGHgdCr8QT+If/yv4q
	8j2Y/k3nZK4Hi+UxHLFY6wmKhPvsyjtPC8wt6nOTIQAe54zhDd6m6ItK45m/+7RaGNhEmPK6+S7qR
	SqMljUy9ZWGfP01J5Vyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icNPD-0005rO-UV; Wed, 04 Dec 2019 05:40:55 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icNP5-0005qr-3U
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 05:40:48 +0000
Received: by mail-pl1-x632.google.com with SMTP id k20so2682555pls.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 21:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/nlaIN9YqTeVvOEvOaqRQ1YaBEeRTTUID5rlgxCfwdo=;
 b=N6+eEjjOXNURHW7+/eOmwTJmKlUtN5Qio3JCf2wYAxAHhpfA7j0ofmB0X/H9nUGjo5
 TjexCAQ6QRPCkhaW9R2l7OYDfhx+7HYGQJIJc4slotpuLNOGy601afmwwarinuAVupmy
 DI2SqMagEVpIV1q7JRUeYCDsdqPbuylq1dBKArtS6sSPCHPEvfFdvZX5cQ9ZnkwtdIEv
 13qX5PcwnTttpBuNmZ5S/fgjnH+8yDy/OHO+ewfkeBJXaJMsv0Tq8OWlMwVcg23S/yD0
 qB+Ac/XAdASZpLHOeQggAnRdt78Sz7FYLnS9ZBWrFTh0/XgB5iAO75B8rb5n0XNfgBDC
 rVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/nlaIN9YqTeVvOEvOaqRQ1YaBEeRTTUID5rlgxCfwdo=;
 b=C+6sYw0GTvI9MFNzNrldfilLBV9XpbqOeswLaw+T2+BjurL+keNRpBvE8O/bIZWEwG
 qTvLS2B8NT95+63KWVWITCNIc82trT/rlZI/t9zE1oH0epzyLaE4UgCqk4hrVHO1E97g
 wUAsH+0hlf84RU0xsXbfx4xSf4Z7qKuWetUObkRgzAhse+avcQa2FIn406au3z8PFs09
 6mbPdwWUKjS1ZYzPSIDKyFspklQ12/2FfbNIJ9wwisb0x7dsV5qx8V819NMZM7NnxtQH
 Qg4FxK75/dbhW0fEO3AGCMcSpvC++BDh19ffwRuCA3lPHRQQEpL5Ee6NUNlnTFNh1dUl
 zYww==
X-Gm-Message-State: APjAAAXWf5SEz7Djph251KwBA2tAIRpjqhWz8Db+qw+Ml0m7xWF4IblK
 gUYX1qF6PBZEEGvL7b/dTM5/Ag==
X-Google-Smtp-Source: APXvYqxZVKhH0TJuFE6+Z7bfpOYjA3Ow1d6WgjnXTPJIsZJlzXz8bQ9KYyuieRvJBl6AiMxxv823Kg==
X-Received: by 2002:a17:90b:8cf:: with SMTP id
 ds15mr1477376pjb.134.1575438045902; 
 Tue, 03 Dec 2019 21:40:45 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id x11sm5811790pfn.53.2019.12.03.21.40.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Dec 2019 21:40:45 -0800 (PST)
Date: Wed, 4 Dec 2019 11:10:43 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_214047_269019_5E481F37 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:632 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sumit,

On 03-12-19, 23:02, Sumit Gupta wrote:
> Add support for CPU frequency scaling on Tegra194. The frequency
> of each core can be adjusted by writing a clock divisor value to
> an MSR on the core. The range of valid divisors is queried from
> the BPMP.
> 
> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
> Signed-off-by: Sumit Gupta <sumitg@nvidia.com>
> ---
>  drivers/cpufreq/Kconfig.arm        |   6 +
>  drivers/cpufreq/Makefile           |   1 +
>  drivers/cpufreq/tegra194-cpufreq.c | 423 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 430 insertions(+)
>  create mode 100644 drivers/cpufreq/tegra194-cpufreq.c

Overall these are the things that you are doing here in the driver:

- open coded clk_{get|set}_rate(), why can't you implement a clock
  driver for the CPU and use the clk framework? You may not need the
  (hacky) work-queue usage then probably.

- populating cpufreq table, you can probably add OPPs instead using
  the same mechanism

- And then you can reuse the cpufreq-dt driver for your platform as
  well, as is the case for few other tegra platforms.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
