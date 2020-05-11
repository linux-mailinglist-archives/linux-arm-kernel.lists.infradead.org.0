Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D711CD8ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17BCVNZLc9orGT4Q1++Qo4CBLzlovUuHjVtaAyl5qk8=; b=EAPz26fdp51u5Q
	L4hqACPcGBtJI2VliEWx1BbDc3GmGN9ki5I61Rqnpy7x+XHYPWbudxoZ+JqX7WPXZWG0fzIXxdZMJ
	/vuY26V8Oe9Da0053yKTyu54jGiGZQ67A7yxOZ3JuDwue0n8kNN5SlWO0FbzHwpOinNDe4I3Ckdbk
	Nqxz6y3uhB/n3SuZbiZ6SZlkcky/oW0usQeNc0RV01R/csBiZU8YvGD+nVjhVPJihdgYoc0dCL4Cc
	E+tFTBRkT+rVk5Bn1DKzRGqejmqqajRfWX1Jrg2ueBCYvtzLmJhCRaa73YlUDKBAv0ySxC9qVOc4V
	9UeqZ32p4j9oFw+VPnkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6yb-0000rZ-Cp; Mon, 11 May 2020 11:52:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6yR-0000or-0z
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:51:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id z72so9258224wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oiiy7yzaDZrfNFpAYBwGY7qa9RdD+rUsUN7jZCiG/Nk=;
 b=IZ1GX1h8kyIJjla0cM+4zc64f4XSRKtANiqnwZRYC6TXvTREkBTOmgF97cWJX4JMN/
 D/hplVMrCmD687Q5l5bjArc0/bJ6CNx5Rcq/W1h6i0myjroW0TzhSMtwawnkpMDfsTHq
 lqQ294S9l97u/OG5FE2Wiy23OxON2aIG+TE1iUsbgrx1gS1LXORQ2ETyZ5FHCdJBoH9+
 1oUqEX2YHtu+WMiP/UojhLfG28tPH0V7OaTzaqSC6sElvY86pIbB1PbMl0FJ4CzfJ0M4
 13iRj1wn0M7XLyqegXuuzYmIzCfr36AWq3H0s+vdE7dKO/T9b+qT2mX+yhE6fUk6dCLp
 DPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oiiy7yzaDZrfNFpAYBwGY7qa9RdD+rUsUN7jZCiG/Nk=;
 b=ndpXCE8aBird7Urxg7ICqE2rkZLxfINuN/+upqF6q21GvKf/iXt9lnpeQEE1OUEIWw
 eVXGvlvCORvJtH3hYC9Planc+99El8jpaaDmqE8Rjb5kw7jXSx2kSpkHy4huvJyHNem9
 W/5ufxWVnnYXCJxra3PdJO2XCgWkCmxMDvoRbRTjUaaFnVVuFmF8JqYSvfGaoBSsOcRJ
 Rdc6n8hTIV0dR9SuuKmOvfaqs7fRsakiahsx2Xl+/obAQjwBYdWKa+QOUwhKz0eb8BVK
 /4d4u1kXKyouVR1pvarHjh4St+t9VBGtuFaVuFs3SxRnJO86+/tZrUMUcyayX7+hDC+G
 2NuA==
X-Gm-Message-State: AGi0PubI4G9fF9mBGNT2wlujDgdD/L/Tomja8q7WxDMxSUkLN8ZIix49
 n2mLinEWto/f8xtW1lsITriZ+g==
X-Google-Smtp-Source: APiQypIvoIlZRhIOKzLOkS565PA6K4LY8QgOBxFSsIjfZbiD6pG33iH6F5Up0icIdMnR0Z6CC5DX/Q==
X-Received: by 2002:a1c:b604:: with SMTP id g4mr7883523wmf.103.1589197913440; 
 Mon, 11 May 2020 04:51:53 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id f26sm26316916wmj.11.2020.05.11.04.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:51:52 -0700 (PDT)
Date: Mon, 11 May 2020 12:51:49 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 02/15] PM / EM: introduce em_dev_register_perf_domain
 function
Message-ID: <20200511115149.GB11091@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-3-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-3-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045155_066497_350DB41B 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 11 May 2020 at 12:18:59 (+0100), Lukasz Luba wrote:
> Add now function in the Energy Model framework which is going to support
> new devices. This function will help in transition and make it smoother.
> For now it still checks if the cpumask is a valid pointer, which will be
> removed later when the new structures and infrastructure will be ready.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Quentin Perret <qperret@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
