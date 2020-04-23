Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A361B5EDE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3yOYybzy8M7Vs4KiWZFxn8C/PJKsuKfHc3nWlpkVmg=; b=rZMNNem86zstCa
	P5uEA5cnOX3D9V6NZzYGu4+eoMdOshuR727oviGozoxG7BYjnN8qOj3LffsjbqqwFzbPOa6BwDSoA
	R0QSY2JCF//+4FFsVXdQpF6EDIo/8KZOMLtMp9OTj2Ppx+El0K4CpOXrr3QgbSk00url14I4P4VB3
	AmQXYRebVL7tJRQDig6T1f3kZAnl6szDTn38h/09+FuKIQegtsvBK3kn4sVPXGW0D6i0VAdq/3xRC
	idPG27pbtJ5rnznqYjb7RiRnQwB+uXoKzy9SH4P/hI9ACJfJZwXZOFsrBBPXI/wWsKmyCYlWnJNSK
	ZCje36ZeGJHMkAIjXn6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdYy-0007y1-Uj; Thu, 23 Apr 2020 15:14:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdYG-0007XY-HU
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:14:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so6826292wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=v46Ikk3Jz0r+b0XX/bOEpsMp0yxP+bghxd3vH+HYhPc=;
 b=MIWxKE/qjLCX/xGHYA9pPPU0BNfKH43CNGFsg6DeK/Mru9tvWVDKwiaZOn1XHjMoVE
 i4PYlH8O7bplYaTQeMICT+fzY8fnWvVzPWCE5yQuez2xPFjAeqSQYiNf0Uh7R/Wo38Lg
 Z6hX1p59FRmd8cXRcaKNBTpSFrbXarSJk9IonBz+osP259UyeH0oOSynqm+2NZi2Ahkn
 mHD1tRQfsYU56pVs27oV5Y7kgyFt8LHsXNWTr7pGFlFyAJIxKMc0HJpPsylF6zrtlQY4
 5pwVLUZ8W5eDfGynjFnJROYgC6aT3odwPB41c02RsLfkH8QAoKuW6rYRcLWEg9G1cGkc
 OQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v46Ikk3Jz0r+b0XX/bOEpsMp0yxP+bghxd3vH+HYhPc=;
 b=qFpZnbKEnwdZ+IDsuPXx+8HjKsw8HRSEsg7AjAjenW6u4bZDozlzTqbWLjC/9sc2Po
 egCkK4E/kQg5LMQsD//7zGF2/MDOfgE0IulNQuEPAOaTLklgTt3fYUp+FJvqAZ7KIcBf
 Ha/4f/snyrKhOlQCHA7gJ7KMIe1SVsDUA95u1BkA+boNfSJOaPtZbQIroZdkvdjGzqHM
 dsm8QbPNp1kytUvwTBWhxP5hv9p4Y3sI6oHYrvzLIzavmM+6BH21mEtzWif580zsnffS
 m00BW057vqkibSfM8mAg7YNtMmy+0bVTAbG5kLovuyGUvo0sbhCiI0DkLSqq8ULxrNJ4
 cZ4w==
X-Gm-Message-State: AGi0PuaiQsvJms2/m+rmQ9OMV2ROweWpNurCnVIxwLTVAnSER/NlvD1u
 dfsqbK+sPi+Wh/vMD8hxvduLYA==
X-Google-Smtp-Source: APiQypKEu5s0OhD4gtUwKlNwoPw/ork7gNul9QoWfqC2s5n+wpnmvRh1OKW8lXO0WhhFY70e5NcqhA==
X-Received: by 2002:a1c:64c5:: with SMTP id y188mr4587343wmb.130.1587654846044; 
 Thu, 23 Apr 2020 08:14:06 -0700 (PDT)
Received: from linaro.org ([37.167.216.250])
 by smtp.gmail.com with ESMTPSA id x18sm4083518wrs.11.2020.04.23.08.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 08:14:05 -0700 (PDT)
Date: Thu, 23 Apr 2020 17:14:00 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v6 05/10] PM / EM: remove em_register_perf_domain
Message-ID: <20200423151400.GC65632@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-6-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410084210.24932-6-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_081408_589770_A9F2F6A6 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Fri, Apr 10, 2020 at 09:42:05AM +0100, Lukasz Luba wrote:
> Remove old function em_register_perf_domain which is no longer needed.
> There is em_dev_register_perf_domain that covers old use cases and new as
> well.
> 
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
