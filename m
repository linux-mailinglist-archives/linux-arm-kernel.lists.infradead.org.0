Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B891B6144
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 18:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEsalu0Egxqd72HGJHGeVi0mICpuJsB5jyPJJEMnTMY=; b=qWLgfgEQ8UGskm
	Kod4I396gzxV/l+pp/frUqezdCyY6b54yxvfmdp0KiqNASmGv8QYoUsdy64WTz7y+zgUBfaudlkyN
	gar0/q0rG3cnZXIhAMdfmhUJjKdmKibGFhfnMrjpjCqJIoJelUnePRA7agtr5EPaFeRCKk3fNNlAL
	jq4MmlWayfKx84Xyrbp5IUP0DUUg/ZvDAArqfYvuSgqj/nlvRBfkEFeIXw+ebMnn4TsL0nRZATvMe
	KC6DWChZFoJLFlxQUOSO7BfU9TGVE5K52f8j7tWsuqDOSKyvGpn0kJprW6xb8TCcBlsKze6HscYMb
	15LVC5ke326iWFhNMNhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRf1Q-0007DD-FP; Thu, 23 Apr 2020 16:48:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRf1D-0007Ay-2F
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 16:48:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id y24so7290787wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 09:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oeW7DpwK6OFjCBKNQLrqnMbfGJLDE0OYjEBqgEog0ow=;
 b=BZAU2ZE5Ne/lQJ9uzrq8Y6uSMWk2RcQiCd+b+CVY3yzxGoOUoDmU1pFRzaKcLc3JOA
 hb9PbGSk3EG61c2VuKMh6n9nVdeCeKdREDewxGx/cfMu7d/fdgQ5NJjOQfO8cyEYmuWy
 Ck60HvH+uctNWqEGuN32PGsDQZnbPrP5HSsiWC+kJeuFNkdgdMmQ3iqrZGNADnBi2Mo8
 MfqCco6iumadOLg9jIS/GhZufVO/mUhu+P3cgkrAhO/w96tB6Yvmf7fIEbLSelHxAs4q
 RM24gcZ/PnV/LQr9mWTKhfYKOuDyTFtT3m0wjORsqAndwMtN7yTnUaW/M18X37gEhghl
 oEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oeW7DpwK6OFjCBKNQLrqnMbfGJLDE0OYjEBqgEog0ow=;
 b=mL7tBM5x1Pbr2Kf+F+gQ/lk8CY+b35/QdCv9xj98UohtqXoegoRBCRxodGQBw4U9GL
 WxChz79vruDAqoVn5QpUx61a2RJEtw8i4KJ4xncG4KTDsERl8lH0Xi+H+FheQZXCDCSj
 s7N9OaVQg+NiCfspFit0FRkvXku5AZVjnyx4c5qTPinzzjRzNNpGzNOAySUT3PjsT6gL
 Vi0BmOBgYxHq3CL+zuv3T0ZolOs6SjoaS+shRVC0cHw5IgPwiH3hFtQDrukjmlrLekTP
 zrkW36mzBirfvCQHrSRpCRPvhrh4J0Ltr+cgdzqT3yzapGjm91qWCatoWh59xbqdfUyF
 +ykg==
X-Gm-Message-State: AGi0PuYzm+cvlTc0ZF6x5d9qMy6O+FIF006ROi5JyfgnfcUm72+OUMqV
 cLqcPvz1hn7CnyPP7XBVSUrLvQ==
X-Google-Smtp-Source: APiQypL1N3VJZzRRWP+PtS/fdnZb1T66+D/zjqtbVIUR8pO7XtbEvjwXmID9KnBgg0fgEaDYfwzw+Q==
X-Received: by 2002:a1c:ac44:: with SMTP id v65mr5176929wme.33.1587660485234; 
 Thu, 23 Apr 2020 09:48:05 -0700 (PDT)
Received: from linaro.org ([37.167.216.250])
 by smtp.gmail.com with ESMTPSA id a20sm4857880wra.26.2020.04.23.09.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 09:48:04 -0700 (PDT)
Date: Thu, 23 Apr 2020 18:47:59 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v6 08/10] OPP: refactor dev_pm_opp_of_register_em() and
 update related drivers
Message-ID: <20200423164759.GF65632@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-9-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410084210.24932-9-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_094807_138198_6B0156A1 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 09:42:08AM +0100, Lukasz Luba wrote:
> The Energy Model framework supports not only CPU devices. Drop the CPU
> specific interface with cpumask and add struct device. Add also a return
> value, user might use it. This new interface provides easy way to create
> a simple Energy Model, which then might be used by e.g. thermal subsystem.
>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
