Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56830339DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 23:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NS1kKgmdQPex8UeQIYQWSSzutYZEzrcN+FTJ8i3P7xY=; b=uDn12x2Yiz1l+f
	mPoG3bBKypwH0NVo5ajSgS2uc+3F7KP6fdtHe5PWGPHDgZniAjGcNvugwb8657iOPkwTo0k6Wml6+
	ekUUsNxlocXPw8EsYsSH/O75F77iuzFHCFi35n33AxtWfSnQudaweAnnrm8i1E60d/xpjpNlADKKG
	QRUevMwm7yClOjiIAMYDACsuZAIVaqyDAXsqETsHtt3rCDO3m+lKGDxQMJLhMFjh2RNoIoUAcksi5
	V/YsyaN8hlh3/+vXbq7N8ETd2J6ul+j3uIpaN04EHVwonvTP2LbkZnh3ADfkuMOD70o4TlWby/MJo
	77FdoAVOKf38LGY/pkvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuL5-0003v7-6C; Mon, 03 Jun 2019 21:17:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuKz-0003uk-7F
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 21:17:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so11323323pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 14:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VW42IbBxqCmygzQCFpcjeZ/PAiP/LWUNMoAtneJfK2o=;
 b=UADAZlD/U4M9EA2LgPMh0NCp9/idKYyxD+RCHyD+rCimp189pdksYDd1PMRUAMCjlU
 ihQMXalred1RCZECuXHReDSJ2ZwVZh81D5d+ybstt6rXcZKYgz0h1qo4AipPnt0JHPoV
 4BgiYGdZrKXeOmDCu2PDhkMkPdJEH6STm5foll0ExNTJ9+puHLNi5icPYiXvJF4SqE8+
 trc/g0e6Nv3/AGNi9NV4ZkDhKI3i/tq3khW7V8iBwom65HmpSGFrpz9kQ6N24W41aPqz
 O4drF3OIPLcEL1b3MNoIV/cKBAQZN49cCOmiXtti2OYlcQBJ6AbnEz2Khs5odxgqU18m
 RSbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VW42IbBxqCmygzQCFpcjeZ/PAiP/LWUNMoAtneJfK2o=;
 b=GHpe5W4+6cAHdsEYRQgfmU82+bhs6PyLGCs3rv+kirwN/VOCUjvA5W6G4BXXFn5YXI
 JXbkwpAvbDDfETGb8saDG9nRoc1fqWR8NZRcZFXO8KlSQXv/mFY/160v7Lcp9dngeD2U
 js4+LlMqdmdvh4M7esT+9pMWRc9C8gk/vbPCKlDcOZq4ZYmA9rdAoCLQ0RMixWlZ5hGd
 bfjBNPEvTaouAwdcy5FLrAcpamZbS0pblYwAxvsG/cKi2OfA0hGgz5hRzDvZVcz6Gaap
 IuCRudevsgP03WgdO6aeQ28hGONtgCcprhm1qXn8Twb4b8uoWiqtnuhwcDPVWQqc3DGx
 L6sA==
X-Gm-Message-State: APjAAAVyGxFIU7RDa6yL1XyBqK0QNQ4WhkK5uEm7DwktJoaD+J0fpZGX
 koZUSLEbLq2OC6NKLp50eyk=
X-Google-Smtp-Source: APXvYqyWT1CJYwKeIjOmJnZ9a08Bvsxu6peLGr1qXHSuhy5ICDJNIjDxSz5L6+ZduK/bzCREbYvnig==
X-Received: by 2002:a62:5801:: with SMTP id m1mr34555449pfb.32.1559596667303; 
 Mon, 03 Jun 2019 14:17:47 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id 132sm3227541pfz.83.2019.06.03.14.17.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 14:17:46 -0700 (PDT)
Date: Mon, 3 Jun 2019 14:17:46 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: treding@nvidia.com
Subject: Re: [PATCH] arm64: defconfig: Add HWMON INA3221 support
Message-ID: <20190603211745.GA21855@Asurada-Nvidia.nvidia.com>
References: <20190424181010.28950-1-nicoleotsuka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424181010.28950-1-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_141749_286615_B4D37C1F 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
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
Cc: linux-tegra@vger.kernel.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 11:10:10AM -0700, Nicolin Chen wrote:
> Tegra186 board under arm64 is using this device, according to
> its dts file. So this patch enables its driver with a "=m" as
> the other HWMON drivers.
> 
> Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>

Sorry to ping this patch. But I am wondering if I sent it wrong
-- had been missing some other reviewers or maillists. May some
one kindly remind me?

Thank you
Nicolin

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 04cc2a2adc39..00043e706399 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -424,6 +424,7 @@ CONFIG_SENSORS_LM90=m
>  CONFIG_SENSORS_PWM_FAN=m
>  CONFIG_SENSORS_RASPBERRYPI_HWMON=m
>  CONFIG_SENSORS_INA2XX=m
> +CONFIG_SENSORS_INA3221=m
>  CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
>  CONFIG_CPU_THERMAL=y
>  CONFIG_THERMAL_EMULATION=y
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
