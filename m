Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9945626C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 08:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yuJik8sbFkqZcf994iASAAstLhhx1X5Em1gSyVGRjA=; b=dA7OtMq5UuuCee
	rZo9X+UqJdx+4vU4OVl6fRRfo8CR4AFmPx0+ypzw/Elnu6x0sQpDLBuH50TNuKvl5cfZfNn7zPHfA
	1qjG4NAlxsMPfiHCFXo/8Kvooe6NBK56tJo5n0J5d+O0TT6vjCgB9/pItd7PjwbP3X+qFzdLZKegj
	aaZuIYfJ/oH4bqzIOXiw/jNUnNghCqcmNBXwwOG4FFsqkQYnFHHUKiQhPB2/Ms/OO5Zwfr6sMvgEY
	Q4tsgxIhNwYzIqWbbY7KfvLcOrqTbWnBFcZH0TMOQoakXvV2Y3qSiUNpJNL1BBsjpP40UCB8B4jYl
	Bq0Axfu7h7FiSlW2V1MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg1Yw-0007LK-Q4; Wed, 26 Jun 2019 06:37:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg1YW-0007KN-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 06:37:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so792880pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 23:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ulju9cyok8EhZLzJkm6HOPS5fcX/Htl+DZbhZzeBbcU=;
 b=a6+5sIZiD0nVb1R7BQJaxqjmWS0X7+NIktIS03BwIaF/s/fDV9gypnLfcx8wAwLRwD
 pWOFYQFmV+9zlv7IXWCNsD3db6hnvyca2vxexElpbGek3puYnEdTOqguDs6z2/Xt5woO
 0KF4FkqztPAfqq8FqkN/b3FjR4u3zvHKGJbVsEHIHqAws5jWLYCJJXLrQVvwDDptdPUF
 Q+/YUy2HmDIIach3VxRudAqY80ynW4/O3cHyQKvihNuPbtJIhyoBL4N8F9hRTSCIz/jV
 u8IPd6qxqEZPml0Neor4IYja9bdmEdB9zJMkk0npnxfYlEW9Qvq0h3Q6Tls1we3/Zir2
 St6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ulju9cyok8EhZLzJkm6HOPS5fcX/Htl+DZbhZzeBbcU=;
 b=D/ZA+f2vHvNylb0ILTAXsYwWLOeBS0VBxwbNmX/3Xo6UmrfWDtN65pjZXWqmQ59NJg
 Ijkvkc9m3fbEdnVnACarDbKCOfbVs3gLTHICvh8plu4lOHxU1UTgBcTOTaaz8eV9dPZN
 ahwc+uvVAZoTc+pOSQ4DUjYIrtBzCgew5UzNPnbIQWUSnLuhGQQsQSUwVC+GE/1grssE
 1Bfvb/kBuEouxg37eiXav+w0rnoIsBRcBSCoh0PWzNYg6c5pICSFyls6KNFVSE7AmOOf
 B/DoJf2kbiJCeLxLgMPKQZr8fW6tWerLxSMNUUZ3FAsy8VfvlIN/kh7Dq+wWoU1LPujj
 Ujxw==
X-Gm-Message-State: APjAAAXeDBZEwq/tWIL/E0c/xLaJz9Su5yDWyrhtz8Dw2EKz/53J26SL
 /TrmKZpl50qXqofcmzo7OpKmBA==
X-Google-Smtp-Source: APXvYqx7TTUQo7RU0eIOLKo3zgmmKH3tUXAM08KcSIuTB/xlfkZkplQmU+BRYnzQc+wOuFKRXmJnSw==
X-Received: by 2002:a65:510c:: with SMTP id f12mr1298010pgq.92.1561531039015; 
 Tue, 25 Jun 2019 23:37:19 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id a21sm10252143pgd.45.2019.06.25.23.37.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 23:37:18 -0700 (PDT)
Date: Wed, 26 Jun 2019 12:07:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH V3 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
Message-ID: <20190626063716.cechnzsb75q5lclr@vireshk-i7>
References: <20190625113244.18146-1-daniel.lezcano@linaro.org>
 <20190625113244.18146-2-daniel.lezcano@linaro.org>
 <20190626025831.jmyzyypxr6ezpbtu@vireshk-i7>
 <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da1d2603-e30a-d877-54c3-1fad218f9d57@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_233720_424165_005DBA76 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On 26-06-19, 08:02, Daniel Lezcano wrote:
> On 26/06/2019 04:58, Viresh Kumar wrote:
> > On 25-06-19, 13:32, Daniel Lezcano wrote:
> >> diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
> >> index aee024e42618..f07454249fbc 100644
> >> --- a/drivers/cpufreq/cpufreq.c
> >> +++ b/drivers/cpufreq/cpufreq.c
> >> @@ -1379,8 +1379,8 @@ static int cpufreq_online(unsigned int cpu)
> >>  		cpufreq_driver->ready(policy);
> >>  
> >>  	if (cpufreq_thermal_control_enabled(cpufreq_driver))
> >> -		policy->cdev = of_cpufreq_cooling_register(policy);
> >> -
> >> +		of_cpufreq_cooling_register(policy);
> >> +	
> > 
> > We don't need any error checking here anymore ?
> 
> There was no error checking initially. This comment and the others below
> are for an additional patch IMO, not a change in this one.

right, but ...

> >> -void cpufreq_cooling_unregister(struct thermal_cooling_device *cdev)
> >> +void cpufreq_cooling_unregister(struct cpufreq_policy *policy)
> >>  {
> >>  	struct cpufreq_cooling_device *cpufreq_cdev;
> >>  	bool last;
> >>  
> >> -	if (!cdev)
> >> -		return;

we used to return without any errors from here. Now we will have
problems if regsitering fails for some reason.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
