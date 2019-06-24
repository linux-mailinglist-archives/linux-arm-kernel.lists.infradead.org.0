Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25B251DF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 00:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eeR+zZZwMJHviCui8wpQwOYJrK6vhrfx5iDmqL7HsU=; b=qQlqg2MRqSUN+W
	woKZzdxhYLqnGjibadsoLpAA4sp8oW6ddSDCSPhj3SJIGBdPKiGLIfxKQX9kDRFaZo+Wm93hJIM+3
	4e+8lCJFvSmpwQ0l16qDKj1/4i6xkfc7hzY7e4Y9m2+nV/QscdKB8JNCHMqw1xaMfpLXmU//oS93e
	Hs4hFp6WLyQUEIPVShrYMzOW8tTVBwHfRBsbSwkJH+OlSQWFMdvWAluOG6isT6xxD8AYWZ4bYLu6Y
	eOIhSFREmKYoKYrSoUBZL9w87rtQvVwxV9SA2eOY0lkWMz5YvC3JZNf9n3Qv2iYyLLOipNNbnf7ZH
	EjDxsS2VWLdMOF0Zay3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfX8o-00050g-PG; Mon, 24 Jun 2019 22:08:46 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfX8e-0004zf-MD
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 22:08:37 +0000
Received: by mail-ot1-f65.google.com with SMTP id r6so15164487oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 15:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4iGRYLuRVzU9YzxqK6jPghJ0dUfb/GOU2YwLj9C9w2k=;
 b=Un2kd7IGZasNVgjQwSIOzbAnlQ5S7frD2VHSDq0p4aHJmsSM2qKD/3u5WlfCN9+KcL
 /9Q92UQaHTSueMAlKuvjtHXgtRGsS1TBgKRBGz1Zd43FRB7SE3zjKRFiXw+jsbjKuk0o
 A8M8rnCLm2fDuyatAZfjT12Nd6MsSPdbMRTtGeluK7g2VfuU03vATOJadKJ03NijC2Dc
 CdZRv1DwSci2fX2whF/aXCnL3kRAj9Z8K+sBEKP/dsCbB8pT09gnGYXBLkY98vvcnZDZ
 qTiOWFlTMgEKEWxH7ANZ9srikmGyyqUfrUKuoE1pmxmM9TB5Wij3//N8RpbIInINrQeD
 ME2g==
X-Gm-Message-State: APjAAAWSzqUbMU+VXBf7IuQ/54zIKQHuafDBumcKkCjYL6M1tHJp/sat
 wINtkmHpSMHWPQoUMA3rn8rmKf/yaAYfKFIhbPk=
X-Google-Smtp-Source: APXvYqwgzCf5b4E6QZBa9WMG2t/ihRyD3pwVSm4UHJaeDdPUJynzus7tlNl3NtRerTvrfgtAyOk/8J4fnig5t+KEUgI=
X-Received: by 2002:a9d:6a4b:: with SMTP id h11mr18253366otn.266.1561414115009; 
 Mon, 24 Jun 2019 15:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190624131715.1857-1-daniel.lezcano@linaro.org>
 <20190624131715.1857-2-daniel.lezcano@linaro.org>
In-Reply-To: <20190624131715.1857-2-daniel.lezcano@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 25 Jun 2019 00:08:24 +0200
Message-ID: <CAJZ5v0hMGMETyJyLxCKxiGOojAhmJ+Crioj7Gw_2wA+YUAS9QQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_150836_731397_FE0529D0 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Fabio Estevam <festevam@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
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

) On Mon, Jun 24, 2019 at 3:17 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> Currently the function cpufreq_cooling_register() returns a cooling
> device pointer which is used back as a pointer to call the function
> cpufreq_cooling_unregister(). Even if it is correct, it would make
> sense to not leak the structure inside a cpufreq driver and keep the
> code thermal code self-encapsulate. Moreover, that forces to add an
> extra variable in each driver using this function.

[cut]

> @@ -667,9 +667,9 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
>         np = of_get_cpu_node(data->policy->cpu, NULL);
>
>         if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
> -               data->cdev = cpufreq_cooling_register(data->policy);
> -               if (IS_ERR(data->cdev)) {
> -                       ret = PTR_ERR(data->cdev);
> +               cdev = cpufreq_cooling_register(data->policy);

It looks like after the changes in this patch the only reason for
returning (struct thermal_cooling_device *) from
cpufreq_cooling_register() is error checking, but it would be much
more straightforward to return int for this purpose.

Moreover, that would prevent the callers of it from doing incorrect
things with the returned pointers (like using it to unregister the
cooling device).

> +               if (IS_ERR(cdev)) {
> +                       ret = PTR_ERR(cdev);
>                         cpufreq_cpu_put(data->policy);
>                         return ret;
>                 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
