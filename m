Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E6C184D79
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:21:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYoXHCneeQzVeep26EfKK/T1rCzN4P8sqYZrKX6GQfI=; b=iz401dxJCvj0I3
	O1CGYkyrqinqoW8EtSDFa4REn/q8Yin+Cm34rhoVJ44nEbSFToKVTzZ71uqHHmCWeiEmf/0rlUHa+
	JjKStQDIRyjc/oSZjOAbCgOJN50g80v9bKlnPKbfdHJ48w+3RhlLkTiPWv7tGtTS315I69yUSOwSE
	YrB2fuFCSqVIDZVhIlx0yCRm+s02goWG2RSHSztDRX6bSRMl2zrDP6/O29JqiNvelAic/e+QGr9MG
	/v6+HZ87vwkRlynU/qftwfTy9nWQ9LrVCST99wI4f6qHM/A0fwef4LDPFSvZqbmh3Izu20XmUihBw
	t7K+Z+p1uDHlGYgHAbtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCo0K-0003Br-UU; Fri, 13 Mar 2020 17:21:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnvQ-0001Gs-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 17:17:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id a141so11140792wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 10:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Eqg2D57NGypJeQM7MhiMjBD9eTQ+XWnQ6tOgh9VYzPg=;
 b=GfpGJJf8jdD5hvEZ9qPjhmJSoxo3e4jgo5CXvygHAM+2QJPUnQGxgH3uES2Kynkpd4
 T6ATW927TaBZFCRVrNO170pUUV2oW1VQbb+Pexs0ZoOzJkDFAd5UyC6AZMYRUVFm095y
 IkcVD4f+FvTY8CtYEgV2DY2o1mbRUANwOHxkBIP37vtgNzFrkkQDbvXS+mWOsrsn5DGP
 gEO8LlEKRjsHdzu32a8Zv2sKCjnNA9JMK1m96aENNsalwtpPCqB7Vq/otY1b4E8n+Q21
 glAgkPcq3G2Hd8vv/mEHOpfMtESQYAYkl9W6BYLtnfQ1hAid0M6CcWidFLKlq36v9zAc
 LL0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Eqg2D57NGypJeQM7MhiMjBD9eTQ+XWnQ6tOgh9VYzPg=;
 b=VSbME8ZH9/IKkBjI7Ruug/6HYLEUn+srZjLH/b9uV9+ae1G7zN3VnJrvnRbQPvomd8
 6eQZdQXSeuj1PSfqLwQYa/IoBhh5NvTxnM8RzwDhuCtUxB50+QpOEOjsj5EOUqJ9DaMm
 8JchZdlvPYwgzZQtKtZQdTxdlepjpn/FMq11PfMLrzqbNSwNr2c0yMQiVoPytvNWSn3z
 9UpQ5odiEUpLSGgCLiyXT5Ia8LA1jRBBtDOw8L5+CF3hRckv7Ef6OPCOjkFXC308ZUei
 4/+fNhavhpyGB0Q47/3RzMVMQ49ukvJqkpmbKMHx1MOXb0gD6ZPJ9VGjv9kEle7Ld5+w
 +zew==
X-Gm-Message-State: ANhLgQ2bUwyvhDChYf+VUVGDIUp0ZnF0CXdEzcsCP2fCTid0teNNonGh
 u8lgXClWmajfbwY5Lg0M+Y6ZHdluPAuEew==
X-Google-Smtp-Source: ADFU+vumzHSTSx0NnmOYLAmGcl4NJn5zSn0aH51pn2PnfTIecwwRlYBGAj9fxcb0ea7+lXVvBBbhJA==
X-Received: by 2002:a1c:7c08:: with SMTP id x8mr11581854wmc.84.1584119802734; 
 Fri, 13 Mar 2020 10:16:42 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id b187sm14223421wmb.42.2020.03.13.10.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 10:16:42 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:16:38 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 2/4] OPP: change parameter to device pointer in
 dev_pm_opp_of_register_em()
Message-ID: <20200313171638.GB236432@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-3-lukasz.luba@arm.com>
 <20200313101524.GA150397@google.com>
 <3ac8ebf8-9db0-d168-8b80-f7f5ba345f86@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ac8ebf8-9db0-d168-8b80-f7f5ba345f86@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_101656_800077_C9032BE7 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -14.0 (--------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-14.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday 13 Mar 2020 at 17:11:45 (+0000), Lukasz Luba wrote:
> --------------------------------->8----------------
> dev_pm_opp_of_register_em
> ...
> 	nr_opp = dev_pm_opp_get_opp_count(dev);
> 	if (nr_opp <= 0) {
> 		ret = -EINVAL;
> 		goto fail;
> 	}
> 
> ...
> 	ret = em_register_perf_domain()
> 	if (ret)
> 		goto fail;
> 
> 	return 0;
> 
> fail:
> 	dev_dbg(cpu_dev, "Couldn't register Energy Model %d\n", ret);
> 	return ret
> ------------------------8<-----------------

That works for me.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
