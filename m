Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB00419DC8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 19:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlesVQs4fGktwxOnOyPc69iuJz0V/RDB5wxCkz7su8M=; b=MbmWhUAiJ0v3K0
	C4I8xtSDwyDtV/OLlSSupgKErXe4q/ekhNXPaLxESHR40phGxmrPHEqFeVXRnlPoc0Ucl0TYtMD/n
	o89X+vJigJqtJH1wcyk4lEflv9DG9JnFQksh5ZUE4QjDu96ru7fPKjmxl+x2+2t4Pe0TB7svmReNJ
	S3wu6zG2vXBH1fiJsyd51YDSYW7aQlJ5Tsg7cnAnB9DVjowplmOKRuYpqt6df20hQFjRnrDN0OHCx
	GzF0MXwjzI8nqKZkZ6AsaCXcOwRkoFUu6uxk6tmpcqSsk0VH66oncRO0g3E1gUKsZc+m88wiGJoAd
	ekYnUwtIG7OaG9R9noHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPxe-0002z1-4O; Fri, 03 Apr 2020 17:18:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPxW-0002xR-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 17:18:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id s23so2932891plq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 10:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rNydFgIXCSgJ49gDNlW+t8MZPAxnkdmyTdnJc8LVEbc=;
 b=OrR7ulO7CQcgKwh4Z0ptkVpD+g4IWz0YSQouVgIJkq8zylNmdM9VjUkYCI+zVEXHq1
 lrjk0v+SzzklSA+3mXp5BODy0jlzOmVXnhkQZrA5LosYzEJPjTc+DVjL3q19L6W2p/2Y
 GSb8p2z3ej4vxJWgTaITIQwIo7RZ5qCAjuCHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rNydFgIXCSgJ49gDNlW+t8MZPAxnkdmyTdnJc8LVEbc=;
 b=LPQpwLDWa+zjsfRX136OBzJxY4mt0dJfz8NndWrHWTcAKqjEWeyXYe1VswEAtqy1cI
 BohA3h4sy9ucVeJTpd0VdpukPPWc58jroGPRtBIWo195l8cDqBobfdhR4IDMWaPQ/pbv
 AltDTND+QQx2sB9GnbIqqdGvuTybyx+KhPAPMTREIWc6IuMXvMMCtUa2IFTUPd2iNmlh
 8gjBdiDO2/6+lzhH1iuX/oEpimnOQ6uxBXUSWg/Hf+/SZOMDXn9/hek7gGSbNWH0oxH3
 cy1V65Y08TNUZFsk3mBgxranADiEQ5V7fNPJrIudB8GGIrZ70gFhjATdBZdQrrsh8V6k
 Ep7w==
X-Gm-Message-State: AGi0PuY6vXLrLLRMr3mqQhDIl9/B8qsQbR2dGshfQLYBgZP+fS89sgTU
 Mn6+3Yq29gUMkoODlvvI27OSFg==
X-Google-Smtp-Source: APiQypKQpzA+XTDciIpGBBtkz7UQo2nLfVOgWlxENb8GSyeAvVRwH6+mhz6UsIGNuBo3cdO/izbarA==
X-Received: by 2002:a17:90a:20ad:: with SMTP id
 f42mr10684986pjg.135.1585934301262; 
 Fri, 03 Apr 2020 10:18:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id 13sm6219335pfn.131.2020.04.03.10.18.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 10:18:20 -0700 (PDT)
Date: Fri, 3 Apr 2020 10:18:18 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v5 3/5] thermal: devfreq_cooling: Use PM QoS to set
 frequency limits
Message-ID: <20200403171818.GO199755@google.com>
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-4-lukasz.luba@arm.com>
 <d73ce772-8d0a-e5f4-097a-d89e01ff7578@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d73ce772-8d0a-e5f4-097a-d89e01ff7578@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_101822_701815_D71F4A15 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On Fri, Apr 03, 2020 at 06:43:20PM +0200, Daniel Lezcano wrote:
> On 18/03/2020 12:45, Lukasz Luba wrote:
> > From: Matthias Kaehlcke <mka@chromium.org>
> > 
> > Now that devfreq supports limiting the frequency range of a device
> > through PM QoS make use of it instead of disabling OPPs that should
> > not be used.
> > 
> > The switch from disabling OPPs to PM QoS introduces a subtle behavioral
> > change in case of conflicting requests (min > max): PM QoS gives
> > precedence to the MIN_FREQUENCY request, while higher OPPs disabled
> > with dev_pm_opp_disable() would override MIN_FREQUENCY.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
> > Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> 
> This patch is standalone, right? If yes, I will apply it.

Yes, it is standalone, please apply

Thanks

Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
