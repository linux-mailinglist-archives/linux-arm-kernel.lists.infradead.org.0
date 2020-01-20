Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4BD142E6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNhkAmfLHTYe6TqX6ufjcmUZ0AjUnDcKCxLueViyqyU=; b=XONONYf43KxGXV
	YipLSnQLebiiCKwt2KAl0pKjiQFVpPgjiAzROBvp/J9BmwEbjQIY+f+vWmQDQX0xE3cBKQ/Qy4SM4
	H6zC88xWA62276ATw9Jiv9PSBzjSkegChrDhGueOigY/tMoTZfqmx5lUZUPau9LNIVc+Rv+aDDCUS
	6U9oPt75u3mo0k270iID4rhjqH31Dm2U67Xbuh5Z+/cZE4OxhuOGJXEZFuHFTjL+aFVWusxKqQEH9
	EWbWpINOGb1E0jfTPBSVw3Su+WM12Ksr35UMrm2ic25el8A7IkyTb/Ygid6y8uAvbb9csFiP2q/T3
	/jUk/lwtf4kzf+zOMhGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYgT-0005jV-4B; Mon, 20 Jan 2020 15:09:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYgA-0005hP-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 15:09:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id 20so15066080wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 07:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ByBSacKRJKuzSIYiOQyT8J9CJv5HzmRfCVnRBxTEqEo=;
 b=qg1ZLvviVZfjbWUxveYlY31YKSPtpCoqGvUCxFFFmuSNhzrZG+8/JTUBew4MqF1QwT
 ZkjTqLHsvs275UZGLdOmP854e8vkiW0i8IheAE92enwVx5dgNXUWibw7xuJsq5IzFhhk
 pKzY/RUwbanMSqGLmJ0vUxWmHzbBOZqzoxp9yT0uRtho17C6I5oH1xMf+pTIjzSN3MZY
 H8HxiblWXheI6D/R+4rBvbQG0cc5g6adqj0TwfF4L2cC1eWieAELuSXvre7Nin13453w
 MgPO0mLx6I2rhlnxlc70+w5Qw7/m8lq2IEay5qYyHSQ30y8iTLRUAkWggiNl+AA9LLR9
 CgVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ByBSacKRJKuzSIYiOQyT8J9CJv5HzmRfCVnRBxTEqEo=;
 b=V223p0QfSWWMqxFcgMUXbPY257ehK6LrvSoGvHf4kW53qjMP/HDACG/usSoABQK4lV
 Wylh6yrYLLPvsRwfOZCKCmNpKFu3+XDYQp5pEu9D6RnELy8AS1f7WKOfw6etM2GGfvIq
 zBwoDzGa/40kNqvS3cCsJhljyJiYJkHLZEPeVHwx+RSHN7Scy/G1xjreZE2UVLtpQjPs
 9/AiVF0yaXrIt6Pv75IIyy2v2UdbY49MVnNURJ0XMcrY7CMqMxpAqBo/yGIzOfnJFW/L
 PiL539C75ZCI600jdzLDObqMk4/a9uOY6zd0Y5FSR2xDldkziJewEbeaURqVfY4Amjz4
 dfyQ==
X-Gm-Message-State: APjAAAUX4nYuGpHX2RAiLXPH1OoQyckFN3tgmmCVMugK0OYj81G1Zgge
 wQOm65oyiK/xloWuKtHL38cjug==
X-Google-Smtp-Source: APXvYqyH6QMzJgz4YZQ39CG1D478e9/BsTiziBKmrfafEV/iedUuTR3YTBW7pk8iuudU9KBXYjMY8g==
X-Received: by 2002:a05:600c:21da:: with SMTP id
 x26mr19321181wmj.4.1579532962450; 
 Mon, 20 Jan 2020 07:09:22 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id a5sm23285242wmb.37.2020.01.20.07.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 07:09:21 -0800 (PST)
Date: Mon, 20 Jan 2020 15:09:18 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
Message-ID: <20200120150918.GA164543@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <20200117105437.GA211774@google.com>
 <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_070926_844227_8789DDDF 
X-CRM114-Status: GOOD (  12.85  )
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
 rui.zhang@intel.com, kernel-team@android.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, ionela.voinescu@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Lukasz,

On Monday 20 Jan 2020 at 14:52:07 (+0000), Lukasz Luba wrote:
> On 1/17/20 10:54 AM, Quentin Perret wrote:
> > Suggested alternative: have two registration functions like so:
> > 
> > 	int em_register_dev_pd(struct device *dev, unsigned int nr_states,
> > 			       struct em_data_callback *cb);
> > 	int em_register_cpu_pd(cpumask_t *span, unsigned int nr_states,
> > 			       struct em_data_callback *cb);
> 
> Interesting, in the internal review Dietmar asked me to remove these two
> functions. I had the same idea, which would simplify a bit the
> registration and it does not need to check the dev->bus if it is CPU.
> 
> Unfortunately, we would need also two function in drivers/opp/of.c:
> dev_pm_opp_of_register_cpu_em(policy->cpus);
> and
> dev_pm_opp_of_register_dev_em(dev);
> 
> Thus, I have created only one registration function, which you can see
> in this patch set.

Right, I can see how having a unified API would be appealing, but the
OPP dependency is a nono, so we'll need to work around one way or
another.

FWIW, I don't think having separate APIs for CPUs and other devices is
that bad given that we already have entirely different frameworks to
drive their respective frequencies. And the _cpu variants are basically
just wrappers around the _dev ones, so not too bad either IMO :).

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
