Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD76142EC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2bjHHkA25MUY3s6pAkQCAa7oxIK33wRqXb9xjtNzSo=; b=GHzWhQGgxt8pEs
	V5GZ7fjkNYfaYvhRan3/BH65JP+d/8wj/VCES73+DzSq2eL9ODujzIDrIc/n7HC0tdK7rlTu7dopD
	egqprS3YLskQXME68Iu8643/D+7I6e8wMQQvXG5seTY2WfHgBZYCs8jddx+Z6qdElELv9ASeH+cST
	JnuKwk5ivoEJgkJp0hQ6TBDKtvvCJtHDCqXnTlTTbFHktFXJg+BggVrgpFZHr7DGO9ydk3K+Gl77I
	eIo4prUJlCzjj0YVYak6iZE/q5MYQ4R5N7pj+WJlfNrq94BocHuuBEJgtRxy+63UlHWM/ejYJo9uP
	bDkIn89VEEk3YdZRvgTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYyX-00056x-Qr; Mon, 20 Jan 2020 15:28:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYyH-00054F-UI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 15:28:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so22423wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 07:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w+9WBX8T8487sYdaCRBOXdftKEOOIGARUU12ptPCXoI=;
 b=WM3/QuTjf8YHugRgHr0CAc4EPmW7lL5TBdACtz7cIwWejTZRMsjvhvpYDk1vBCv8x/
 mwSEMBD6BloK3XpD4M9pIYUXdWrL2+620dZ1+sv7VzGqnDERmsL63ChlF8tg20oIUyHN
 52ASdnLuNO3Sz8qauPMfDhgnCWpxUMumc6RftxuofGduJ6V4Ri+m9/ezp6kMCpjP0Cag
 AtFqAedbPek8I2J21QlxubzVd67+p4k75DZEBCr6gQdRH2dUKnHDTWK3kJyHePYYwXMd
 8gKlHjdsZ26gCY4wieLh8B5FzXN/qNQg1wHFrQ0GWe3qX7B5O2cOpVF0DpGUbwhfDz+P
 oqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w+9WBX8T8487sYdaCRBOXdftKEOOIGARUU12ptPCXoI=;
 b=H7PQ121eQscPvI2N/YeJAIeQ6X8925cAjwvqStReIwpznmwY28yI/h3Pvvxsro28Jw
 BndsnxAkX37OIoIRAd1t7gMVVig2fsJ7loVnAiXf3edsr/8Uv4wrYD86pWF1osx22OqC
 atiHpVZmtqMm5W8KBC3saLm7ZmrMpAHdzJm5wPhrkX2dmAuu1wOkt/nDNWuxOooyWpoD
 5yg67PZBkR/Ecufx9DlfdP7+olyATTBBHWgdo2QxJJXjg5nZdZqm2cp0XaHaS+3kCrX0
 Bzcj1khC6AxHYiP+ABrJal0nb5AqZ+cW33bl/tHQ0VWEzwA6ZZwEy8Y6oE57k4iGt/cj
 WZUw==
X-Gm-Message-State: APjAAAUDsOApGt8QCP8T4FdRIW8zrxdUwCq4onH3sY90frVDDV8qIllY
 HQjzOa7rApyixSZwcX8J7lUeew==
X-Google-Smtp-Source: APXvYqxyY0xjDcRn7kSUge9Pe/ZJykQdMkCOLrQxdDGvp71dWPGzFxihXcV4Py+Y8+/t7qRz+k6uxg==
X-Received: by 2002:a1c:dcd5:: with SMTP id t204mr19453471wmg.34.1579534088409; 
 Mon, 20 Jan 2020 07:28:08 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id d14sm51225920wru.9.2020.01.20.07.28.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 07:28:07 -0800 (PST)
Date: Mon, 20 Jan 2020 15:28:04 +0000
From: Quentin Perret <qperret@google.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
Message-ID: <20200120152804.GB164543@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <17b77e0c-9455-0479-d37b-c57717c784c7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17b77e0c-9455-0479-d37b-c57717c784c7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_072810_018918_0242B940 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 rui.zhang@intel.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, ionela.voinescu@arm.com,
 lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 20 Jan 2020 at 15:53:35 (+0100), Dietmar Eggemann wrote:
> Would be really nice if this wouldn't be required. We should really aim
> for 1 framework == 1 set of interfaces.
> 
> What happens if someone calls em_get_pd() on a CPU EM?
> 
> E.g:
> 
>  static struct perf_domain *pd_init(int cpu)
>  {
> -       struct em_perf_domain *obj = em_cpu_get(cpu);
> +       struct device *dev = get_cpu_device(cpu);
> +       struct em_perf_domain *obj = em_pd_get(dev);
>         struct perf_domain *pd;
> 
> Two versions of one functionality will confuse API user from the
> beginning ...

Agreed, this looks a bit confusing. It should be trivial to make
em_dev_get() (or whatever we end up calling it) work for CPUs too,
though. And we could always have a em_cpu_get(int cpu) API that is a
basically a wrapper around em_dev_get() for convenience.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
