Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEA4143984
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:32:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9gMkOLoZy27401AHpS7UDGfCIMxmJb1PzQwZeGveTk=; b=tglQISl/6XPyL1
	vBhGLGVR5cAWoGFOq6ZIB+Nwji4Cn1abKTOUQYTW49LMAB5vE0mhGdmxhzvkN67SbhDs2f86VZb1E
	0IPcMCvRvz2qs28/2iq6q8wrCVY0a+W6q4+0l2iSYVzZEFNVO5SGaxThQe0JPhwZ/EbNr6c7oxo03
	U4i4/FFb/Rr0jecTJXuOj9/DNs4eCe1Pwlez1e6GzALNVXgudmXe3JHuaPqAZaIu/GRcxn49ETSx5
	Y1wILc+o24+aknDj/mG7lJ0sAZHjwuMx8tXDzmSqENGufgCqI+/DPXr0vVSX0mboOBkoXsvBpq2b7
	EF+WYDEQ5nbdHt+ORm2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itptW-0007oZ-HW; Tue, 21 Jan 2020 09:32:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itptG-0007mc-18
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:32:11 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so2196603wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 01:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=imtrsyE4PqkfOuBH2bEU5/ycShpe5DgMQpGEtomyMa0=;
 b=rtcJ+LQlDZ/dhGfo9Iu5OJd4+HKMy2yzD9iSGdalzOoIEncUjzsz5/aNNTd5RjsSc8
 zO8R7IWeVumQmIJtNgo4RVZt7gUhd5yZRRBQqVDryoKs8BU04+PpGfSZJNvnjsH/62yj
 utNq7GGLPGyTxTb1yb3mltp6nzJAjgAWU6qQKOTamwB12SgQZpUurDCVdShHDY4zSwRt
 27hnYDJCXhMMgdvO1mW+7T9xCr4uphzvbjrusTEF0ylfATpdKENfYomQu6F+lwzn6RUS
 UpDbh4WVRvpRmqp5fb/B2A+GM9Tidwg6k1/Hgf4wLH/tybPmLM/Hd8ve+be8A6ZldBH9
 pQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=imtrsyE4PqkfOuBH2bEU5/ycShpe5DgMQpGEtomyMa0=;
 b=tGnOCaeF7uuWct7aKvTbmKonx+UBtxy/TED70m1O6Ifm+k8AhXY08KHcqS3LG3bqO4
 uGM7RlOwJcVLkEacSFMI2iINg4vRU0KIbAA5M03CMxa8bK2B2rHwyEsAbHCjI5FPq0Tn
 z0AwMBGDA7dvn0xW5quLS95wmVQFjPXNrbiUjbFKU0DGGWFQWiM39DQrXt/CPReLTbwG
 BsDNOr3V4j8vtunEGkPbaf98wTCrqrS9VKYRQjkpYfPRIon5y/gy5g+mpmC75g35rYzI
 qtiqvfa+vzoX5jhYieuhrWZgVM11rvYagbDSApu0srdMfh2LloMKIk2vEr+s9aax/tSI
 O0OA==
X-Gm-Message-State: APjAAAWbtVIUIPxtQPbXMhT/nno/FkxHeIWYzhGWrN2cBtVC33NqRfG9
 kfb78VST8FL1UlzkcjBecZXRHA==
X-Google-Smtp-Source: APXvYqxXLTNXCnqXFHWAqOhNn4BqFUdupPBlV6/fm+9Ho9HF0rYCv/gYw3ZqBCY91j9ikIx2kYRjiw==
X-Received: by 2002:a1c:a584:: with SMTP id o126mr3199652wme.163.1579599122625; 
 Tue, 21 Jan 2020 01:32:02 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id g7sm51210925wrq.21.2020.01.21.01.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 01:32:01 -0800 (PST)
Date: Tue, 21 Jan 2020 09:31:58 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
Message-ID: <20200121093158.GA154455@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <20200117105437.GA211774@google.com>
 <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
 <20200120150918.GA164543@google.com>
 <8332c4ac-2a7d-1e2d-76e9-7c979a666257@arm.com>
 <b02da0ed-9e0b-36db-9813-daa334cbf2ba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b02da0ed-9e0b-36db-9813-daa334cbf2ba@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_013206_068473_813DFB77 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, b.zolnierkie@samsung.com, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, kernel-team@android.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 20 Jan 2020 at 18:38:41 (+0000), Lukasz Luba wrote:
> I think we could avoid this additional argument 'cpumask'. I have
> checked the cpufreq_cpu_get function, which should do be good for this:
> 
> ---------->8-------------------------
> static int _get_sharing_cpus(struct device *cpu_dev, struct cpumask *span)
> {
>         struct cpufreq_policy *policy;
> 
>         policy = cpufreq_cpu_get(cpu_dev->id);
>         if (policy) {
>                 cpumask_copy(span, policy->cpus);

That should be with 'policy->related_cpus', but yes if the policy
cpumasks have been populated this approach is OK I think.

>                 cpufreq_cpu_put(policy);
>                 return 0;
>         } else {
>                 return -EINVAL;
>         }
> }
> --------------------------8<-------------------------------

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
