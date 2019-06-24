Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C062E501C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jp7zf3s94tKTNlQMlE9d7Mm+OCDqpHMapJgcC2v2L4s=; b=HVi8fdTcfwCbpv
	72j2aXy5JPBeunITe/OLtgW4zWK7WRsh2QHfPcrDpLxAUeLcokoP6thGbHBr3ynUtUuYJFUNLfbl5
	JQnJ4cFoVVE9CFUC+A00U0VsWTFSIYYK5CZ8xBacuLUy0et1Xb5A5UJUb08HxVQDyqWMdA6nVtjP3
	Q+x/66KlKtzBi9ngHQofeF5FBPazQ4kkMHtgRGhH0W0qCqMolj+DqUAcyhtRuG3dMBljSo1ZqrOF8
	FLytT14QdWRWUsr5M9gurR66TOL2PWLMtakZC/qQMuxvuzjeRzwsAAly9sjRZYHPE3I5WsbuwYfHq
	CdZjgudYwwacqquuSHYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfI53-0008KD-Hh; Mon, 24 Jun 2019 06:03:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfI4p-0008Jt-FX
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 06:03:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so6498254pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 23:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dNs4bFTn0f/H2512covQPvgW7xHEQrBSIemzlMYE1WU=;
 b=F6gYtTDouoTcZyvItCkzcdGIm2GiI5ij2KNmjl/uLGOHVF2Mgm3DYbvhBuN+5OjeHL
 gp6gGnmh2wXuboNfODnOsROpHwsUB9Ah54gRqCRbwzS+v36jwN8cRN7coJoZm1T8h5m9
 Lc/SvxQO+ojDltrR1frfHPAqHVEaQ4rZzvi2puGHraCUF6e74PXvr3xPErsg6EpQr4yj
 hLAjMEOKC+z12zOExSiI2StSVfgVkC8OuGmJS5f3b0R6Gbjp6VKG5Z39CCOrbIkpccjh
 mSAPWAu7IbIkiDA0ajpEjHQorirY8MFMy+N2aZyiyn/PgVaFliemA83jUL/+xt4Y6rB7
 zeew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dNs4bFTn0f/H2512covQPvgW7xHEQrBSIemzlMYE1WU=;
 b=HL5HJ0wD0inusw7F6F4a+KuYV4Upe2LtmvAHe6Kvxpi4uFPDB7GI1Uvz/zOII7hbaN
 il+F7aVQxgklnkxNfypWUegPI5WBuqOLmsTaYwsTLODFahBe4JcwGo+wi9e59djZbxTO
 uab02x4oH1G+XAN2xknteiEs8xqpkUK9nP/GHH30fJiPw9tuJqDzT/vkQlpnK5v1TJEy
 CCIxn0B4u6i2hguScVtdjr1T4mfDW3Vr5+2RK09vgcBUoINUnKc6POgSl3HqOLYsOLTc
 zcmkYD6AekKl0hEkkV9MYPaOkXUu1frv3J90pOWRibWrT/PoZmcKuydTkQhVT38rzA1Z
 TZJg==
X-Gm-Message-State: APjAAAUGduwnaRKaHmf+c9/dEn5NC/4rOQeww7U6xxXhIDQAxEOYKM3q
 MpWgaYUKeM3oGM6IancBvX4F4Q==
X-Google-Smtp-Source: APXvYqy9bO/usfvdFvRCWkxVVdZwwaK8oMRu4R8n9ullXNpcFe0FPzC2a9IPf+ONlr+KOyOJ5GZlLw==
X-Received: by 2002:a63:dd53:: with SMTP id g19mr30047290pgj.3.1561356218023; 
 Sun, 23 Jun 2019 23:03:38 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id bo20sm10925850pjb.23.2019.06.23.23.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 23:03:36 -0700 (PDT)
Date: Mon, 24 Jun 2019 11:33:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 2/6] thermal/drivers/cpu_cooling: Unregister with the
 policy
Message-ID: <20190624060334.kak2mjuou4napi4x@vireshk-i7>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
 <20190621132302.30414-2-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621132302.30414-2-daniel.lezcano@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_230339_522775_51BE859E 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 edubezval@gmail.com,
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

On 21-06-19, 15:22, Daniel Lezcano wrote:
> Currently the function cpufreq_cooling_register() returns a cooling
> device pointer which is used back as a pointer to call the function
> cpufreq_cooling_unregister(). Even if it is correct, it would make
> sense to not leak the structure inside a cpufreq driver and keep the
> code thermal code self-encapsulate. Moreover, that forces to add an
> extra variable in each driver using this function.
> 
> Instead of passing the cooling device to unregister, pass the policy.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  drivers/cpufreq/arm_big_little.c               |  2 +-
>  drivers/cpufreq/cpufreq.c                      |  2 +-
>  drivers/thermal/cpu_cooling.c                  | 18 ++++++++++--------
>  drivers/thermal/imx_thermal.c                  |  4 ++--
>  .../thermal/ti-soc-thermal/ti-thermal-common.c |  2 +-
>  include/linux/cpu_cooling.h                    |  6 +++---
>  6 files changed, 18 insertions(+), 16 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
