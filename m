Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8BD505EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8Ox816+bojl52L3oVBRqjr91rzDmvD20iB47hayD0E=; b=gCUsIX1sDaa1w8
	zM3NCTSKvozx/KeoI1CzClNRK5X9Vv7Xf6lvmSOoOQMhrEki3HtAT0VsqtDvUG8guTOlkcu1N+x6K
	Bo1PxaECCY4dXnlRug4iS6EdSekn11wdNQLcM8aky9PB71aDmEHkS4zA7e/pbw7pEWRKAfFXbwLLd
	w7WNq0jCwKNA5too2KcVPWHW+wI5Eu+cDYMRKLKLIyRn1F9H3pTJcGWcS6nD+EhAj9lGPrX45sfvi
	NOnejXmIUi5k57u+9MhjJQMFUeMkJfL1PVi9Z0liTBOrsg8GCK9b5tMHL2wuujJoZ60DebG8rxBls
	CYx9furKqlZyG9usFdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLS4-0005Si-TW; Mon, 24 Jun 2019 09:39:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLRs-0005SB-Vb
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:39:42 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so6546528plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 02:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0xq4Hf3p8ZFDHvrAu4X/XVuAS4nlGCqTsPVT41F3h+A=;
 b=VCyHBpwOAxYJLGT3NUX1EldqHeUq4P8q3nWC/ggkGk83WZP0Bdz4M70ji4gMknvKuG
 lSXTS4CenwFe2vme1ep79JzwnKdJxMFE9YMXFU1dsSEdjuokcf1MVi5syKRTLeYr5raR
 j95F+KOseTPvwsmEqD1WwduScRG6Zd/zZEYJvCuMxMdFIUACQoPdR9pTO8xyDTGhe2kI
 cLnIvMl/lhW3iVY+8+SL6wlvssIsO14aONeLkxL7WB9fzf3HyEH0qTmE6WNqEvbGy+d5
 aShUU5ZwdHp3f/7NXDZPw07J6OciSPGUsjNgrboTyZdeaMq40mHR41rQiyH/7fWHRG+U
 qGVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0xq4Hf3p8ZFDHvrAu4X/XVuAS4nlGCqTsPVT41F3h+A=;
 b=Ex1EBoMd6fxtRw/l8A7aAxEq6WyMudry0hVwML6HahJMJ2QhNztausOIdpLuRQflzU
 jI6GssyTRqe08qS05JEoVeBgSXJp/E7oI4NTrAmLlkWZqNNfrdbwK//rxJzEzh4gVwYa
 92NFTBtSeceBnwAsfUnqEX42FPDsb4PySqC2tlX9T+naRqbSPKTIaIveqa4hM3wPgYLG
 zSWjMsVFWBJuMKCvmGB6bkCANWp+kfxwCzgq5zH+UyblTIFp36wpm5u3v0vIObRpSrBz
 qHMfsZEx2Uu2SxrO+TSAVC3l4cA/ScUzlfGcXDlofKWrfw5mk6UbLODQugmkSR0nRUcQ
 J92A==
X-Gm-Message-State: APjAAAVFKm7clKGKaDRumz21/lPebh0bDOOr1+dOvrpWKO/KGyWdM4YX
 hfaOZCjtZRdMa0zD8WNay6Zg2A==
X-Google-Smtp-Source: APXvYqx0+2hKXME82DJG31VBC8K3kY/7y2gRKipDpmCiTehdcrm7FLF0wonH5OMqNa4QeSarJjGr7w==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr111526412pld.16.1561369179880; 
 Mon, 24 Jun 2019 02:39:39 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id 12sm10459621pfi.60.2019.06.24.02.39.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 02:39:39 -0700 (PDT)
Date: Mon, 24 Jun 2019 15:09:37 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 2/6] thermal/drivers/cpu_cooling: Unregister with the
 policy
Message-ID: <20190624093937.hmfzfm2s46hfhvhm@vireshk-i7>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
 <20190621132302.30414-2-daniel.lezcano@linaro.org>
 <20190624060334.kak2mjuou4napi4x@vireshk-i7>
 <3f324189-aa1e-ae78-1d69-61e00c5d033a@linaro.org>
 <20190624073747.hf7jd6ulkmebbxtm@vireshk-i7>
 <d31f65c8-53df-ae59-5f6f-211c0ddcff3f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d31f65c8-53df-ae59-5f6f-211c0ddcff3f@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_023941_083023_CFFEF630 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 edubezval@gmail.com,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-06-19, 09:45, Daniel Lezcano wrote:
> Actually I'm asking your opinion :)
> 
> The structure in drivers/thermal/imx_thermal.c
> 
> struct imx_thermal_data {
>         struct cpufreq_policy *policy; <<<< in the thermal data ?!
> 	[ ... ]
> };
> 
> And then:
> 
> #ifdef CONFIG_CPU_FREQ
> /*
>  * Create cooling device in case no #cooling-cells property is available in
>  * CPU node
>  */
> static int imx_thermal_register_legacy_cooling(struct imx_thermal_data
> *data)
> {
>         struct device_node *np;
>         int ret;
> 
>         data->policy = cpufreq_cpu_get(0);
>         if (!data->policy) {
>                 pr_debug("%s: CPUFreq policy not found\n", __func__);
>                 return -EPROBE_DEFER;
>         }
> 
>         np = of_get_cpu_node(data->policy->cpu, NULL);
> 
>         if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
>                 data->cdev = cpufreq_cooling_register(data->policy);
>                 if (IS_ERR(data->cdev)) {
>                         ret = PTR_ERR(data->cdev);
>                         cpufreq_cpu_put(data->policy);
>                         return ret;
>                 }
>         }
> 
>         return 0;
> }
> 
> [ ... ]
> 
> Shouldn't this be move in the drivers/cpufreq/<whatever driver> ?

Sure, we have platform specific drivers where this can be moved :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
