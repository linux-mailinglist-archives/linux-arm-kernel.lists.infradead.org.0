Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B6655F57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 04:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vax3WgmsN9SnioNP2SczrgsZHvc88iCNWsvPp6N9P9E=; b=elUxLxnfk+qaUb
	qGG2yyX91sp3bBe+dVuQV5mz+a1oIHcUvqEXaBnAPrNbS0J7gEPrntaePyBrsyAIypBCUxv7HQR2l
	ZaXA3TaxMekF6ycNMqYM9itWgmuCy19RRJkZT+ZD6pwH95PQzittFv4ejWMtrURIkhlKCla0Vj4q9
	R2DeJtGbo7Pcin1fIXsJmPkq+GFDvQWD8IXUOZFQe0Yfjnl48E2a9/5f+M5HlA0xC7F2T7cDvQ+Yp
	u2BUh2afRqO6KrRrc7+EAQyytkLnCP5WgW9BweAfyxlfUEHaLbRgpnuAGQfoGoR+TDZLKLTyXWxpI
	vXThJQG0R3ZfxFDy0P3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfy96-0006E2-Tw; Wed, 26 Jun 2019 02:58:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfy8r-0006Dg-Ro
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 02:58:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so468512pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 19:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iE5E8LuKhxvkEDw3P1iJQOCpfQy9qpPvGHyY1TwKNYY=;
 b=nNuuMJEmG8kqx0DkmPSnnmOLaPWKOLFPLCuf2f/uw4KfeLKX9wuhGqRx3F1Ndp41R+
 CbIHCoAQN60J5GUFl5sGUOwsdy8Y72zMjIe5Ny4Se9mv+6F64j+vd8ljLArcd83HOh4+
 M4lR+3p7LXz4xj+gtndziZnewMsmVoeuGKoOLDJvVvivbMekB0GBOcF3efc4cXS2kf57
 eEKimW71scnBP78A1RUIiDktAqcy4BNCvfBNtUemBUBHUf4LAx7Yzp5RjucHd/QjkBCP
 cH1aoWqlY+Y4RgBK39kRrYV0tI34NwTwtV949J6OpbBZNHapYv/tgCSNhM53nUl1SCR6
 JnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iE5E8LuKhxvkEDw3P1iJQOCpfQy9qpPvGHyY1TwKNYY=;
 b=Gg9BGhEUlCQw2g5FJ/+fFuNO+EsY80zovESC4evi93mvdoHkcmBWB+qh5SXyZyAQQW
 gitHTrU79TAT3LHZAM/k89DeKMLMWEdduZ3RwpeQk8vNCVaW8YjYef2+Kzujn5qoPewN
 zCr5SL8Og2BjHwRxKU013qre1oQOBe/xAjZFqC39pCFZY4BB+oQrtsE8E6NFTyMyyZTs
 aLV15kc/NndsjKYvyCuulG3FbxoUjlLC5iBNyxQub4zUSwUeKTbqWSAQAWexWxrUnLRK
 OccylL6LHJFkTDW8fhExL/wxroOKVSYKOH05JXmAM5TW9abQR4EOsMi/zfFciCiDEMWu
 W09w==
X-Gm-Message-State: APjAAAUDLRBR8AhxhVylSigroAESJPbdtLXVMBmQ5RgxD/vmqr38jzeD
 n6ifLDCZcp2SGjUdMIvWkqcd1A==
X-Google-Smtp-Source: APXvYqwWoHr/bHFfBnxLciHjZ534PCBqC5KE1O2QfaL/LNcnUP/XKsvF2YfkTu0Q4FAYHqngh5Q2YA==
X-Received: by 2002:a17:90a:5d0a:: with SMTP id
 s10mr1507799pji.94.1561517916775; 
 Tue, 25 Jun 2019 19:58:36 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id c98sm377953pje.1.2019.06.25.19.58.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 19:58:35 -0700 (PDT)
Date: Wed, 26 Jun 2019 08:28:31 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
Message-ID: <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625113244.18146-2-daniel.lezcano@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_195837_908753_7AA6F803 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Amit Daniel Kachhap <amit.kachhap@gmail.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
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

On 25-06-19, 13:32, Daniel Lezcano wrote:
> diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
> index aee024e42618..f07454249fbc 100644
> --- a/drivers/cpufreq/cpufreq.c
> +++ b/drivers/cpufreq/cpufreq.c
> @@ -1379,8 +1379,8 @@ static int cpufreq_online(unsigned int cpu)
>  		cpufreq_driver->ready(policy);
>  
>  	if (cpufreq_thermal_control_enabled(cpufreq_driver))
> -		policy->cdev = of_cpufreq_cooling_register(policy);
> -
> +		of_cpufreq_cooling_register(policy);
> +	

We don't need any error checking here anymore ?

>  	pr_debug("initialization complete\n");
>  
>  	return 0;
> @@ -1468,10 +1468,8 @@ static int cpufreq_offline(unsigned int cpu)
>  		goto unlock;
>  	}
>  
> -	if (cpufreq_thermal_control_enabled(cpufreq_driver)) {
> -		cpufreq_cooling_unregister(policy->cdev);
> -		policy->cdev = NULL;
> -	}
> +	if (cpufreq_thermal_control_enabled(cpufreq_driver))
> +		cpufreq_cooling_unregister(policy);

And we unregister unconditionally, even if we failed ? What if this
routine prints error messages for such an case ?

>  
>  	if (cpufreq_driver->stop_cpu)
>  		cpufreq_driver->stop_cpu(policy);
> diff --git a/drivers/thermal/cpu_cooling.c b/drivers/thermal/cpu_cooling.c
> index 83486775e593..007c7c6bf845 100644
> --- a/drivers/thermal/cpu_cooling.c
> +++ b/drivers/thermal/cpu_cooling.c
> @@ -78,6 +78,7 @@ struct cpufreq_cooling_device {
>  	struct cpufreq_policy *policy;
>  	struct list_head node;
>  	struct time_in_idle *idle_time;
> +	struct thermal_cooling_device *cdev;
>  };
>  
>  static DEFINE_IDA(cpufreq_ida);
> @@ -606,6 +607,7 @@ __cpufreq_cooling_register(struct device_node *np,
>  		goto remove_ida;
>  
>  	cpufreq_cdev->clipped_freq = get_state_freq(cpufreq_cdev, 0);
> +	cpufreq_cdev->cdev = cdev;
>  
>  	mutex_lock(&cooling_list_lock);
>  	/* Register the notifier for first cpufreq cooling device */
> @@ -699,18 +701,18 @@ EXPORT_SYMBOL_GPL(of_cpufreq_cooling_register);
>   *
>   * This interface function unregisters the "thermal-cpufreq-%x" cooling device.
>   */
> -void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
> +void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
>  {
>  	struct cpufreq_cooling_device *cpufreq_cdev;
>  	bool last;
>  
> -	if (!cdev)
> -		return;
> -
> -	cpufreq_cdev = cdev->devdata;
> -
>  	mutex_lock(&cooling_list_lock);
> -	list_del(&cpufreq_cdev->node);
> +	list_for_each_entry(cpufreq_cdev, &cpufreq_cdev_list, node) {
> +		if (cpufreq_cdev->policy == policy) {
> +			list_del(&cpufreq_cdev->node);
> +			break;
> +		}
> +	}

What if we reach here without a match for the policy ? We shouldn't
continue and error out, right ? Print an error message as well ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
