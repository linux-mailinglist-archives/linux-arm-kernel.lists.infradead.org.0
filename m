Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE63376064
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CfD8/tdr6KtyjwVARGILsR8aLIUPhUjSPaYkrWvInc=; b=KlnoQIX2P2JaWV
	ch5gfbEjxU82wS6q3Y1vsqqP9Xdqq7lfKsPayfrc/eK3yW9seSKmaBGgx2wAikWDfoonwQWmGvm8I
	f6xVeoxrw++q4idvfYvR6xLMLql/nsNJHSOVFmdVBR37QhyrXAhURYNHj/Fq01LDCEFDhEenG88F2
	HzUpkMtg8t0EXjlKgoHHZRpj4AKkmgBGgxdM8ZG6YuMwEaDJarprpbdjG63GF8VrwJC+y8hocSql5
	iJQQhj/7z4nE2Bm+5D2vtgPVZW+5lVR1GdOtcL4pHrAQPWUSrGtqlUhhneqExOPQiP0RhAnTi+TIa
	2GaHsbBMEck27MuVSUWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvHR-0007q9-DB; Fri, 26 Jul 2019 08:08:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvH8-0007oV-FB
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:08:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so24382220pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 01:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6GhmKWt6x6g4JeMnsdkEsHpQSie6HYXc08TEONF6ep4=;
 b=n6WXmFb6NJb1VDNPQg4jO1cjrEDb4DE4V1d3nSxW/tUAj9eTVtMjjNTCSj6+ASZCdl
 G/scPEuJI+Abaxi6NlVvFlnoIYsmxxtE89knUPK5NJbQIf+dRZRBG0igszN4qomenA/H
 2SrVjLOALgmb08gzV4+vi9TF4xsXqPcLyqS0cNFoz3OJETJLwCJj9ypLQPnYp4yzJS/u
 4gWQQU79QYRQbhul4Tz8t4v+krSOvI85dXy5PURGtflyjER6T7mTlZ0U84JwYDJC2fa9
 LVZhryGsJjM577AfdBHTm7wX8gjvGJYZ8n3736xs92Z4hHhha/man1T9uPe3xG8IurgI
 AmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6GhmKWt6x6g4JeMnsdkEsHpQSie6HYXc08TEONF6ep4=;
 b=t0uxuKHuPiKMvln5g/hj0z63FnGBytzm+wbkz3rPWEjSt1i1u20t5TF+wXRuZEWW/I
 6ma2MLB1ZVsCOAw63U3gZSoN61Jzke8mG8OARlUbQttw/CyixG39xK1cGH0ObQVoctc5
 eSSJKxGpRhvh5TsMsL9kd2tKx76aeGc6ydkHpurWqf5iIMYeDkLrZh6BHYXIjd+Aje9G
 k8BcjiKTCuhINXum+/lG+zP0ZWITzQ2L2GCQJuAO7iRCqw48eSZSfMCeqYv9fA+uU9Oy
 eZ0PUrx3MOMyL2qtqdjtIugB1GjNP/H5pmuC0xHBUuhL8FgwKnblMWMv8EO2IEij8Fvp
 ygAg==
X-Gm-Message-State: APjAAAW7s3CDOGz13ycGqF30TyXSL2x0XFR6nm0mjXD1/flWsyABfSa5
 O8yGz+ERvdiVVC3o+M3ZRP9b/H5HWEo=
X-Google-Smtp-Source: APXvYqyT9ZKXFFPNPq9JhH0XdJl1BiqKPW6iP2gtCefxpHHM+yjax7AxEbe1z2UP56YTq6iXpWC95A==
X-Received: by 2002:a62:3895:: with SMTP id
 f143mr20705053pfa.116.1564128505484; 
 Fri, 26 Jul 2019 01:08:25 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id a1sm5500514pgh.61.2019.07.26.01.08.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 01:08:24 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:38:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Niklas Cassel <niklas.cassel@linaro.org>
Subject: Re: [PATCH v2 00/14] Add support for QCOM Core Power Reduction
Message-ID: <20190726080823.xwhxagv5iuhudmic@vireshk-i7>
References: <20190725104144.22924-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725104144.22924-1-niklas.cassel@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_010826_512166_56C12ECF 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-pm@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, vireshk@kernel.org,
 jorge.ramirez-ortiz@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25-07-19, 12:41, Niklas Cassel wrote:
> This series adds support for Core Power Reduction (CPR), a form of
> Adaptive Voltage Scaling (AVS), found on certain Qualcomm SoCs.
> 
> This series is based on top of the qcs404 cpufreq patch series that
> hasn't landed yet:
> https://patchwork.kernel.org/project/linux-arm-msm/list/?series=137809
> 
> CPR is a technology that reduces core power on a CPU or on other device.
> It reads voltage settings from efuses (that have been written in
> production), it uses these voltage settings as initial values, for each
> OPP.
> 
> After moving to a certain OPP, CPR monitors dynamic factors such as
> temperature, etc. and adjusts the voltage for that frequency accordingly
> to save power and meet silicon characteristic requirements.
> 
> This driver has been developed together with Jorge Ramirez-Ortiz, and
> is based on an RFC by Stephen Boyd[1], which in turn is based on work
> by others on codeaurora.org[2].
> 
> [1] https://lkml.org/lkml/2015/9/18/833
> [2] https://www.codeaurora.org/cgit/quic/la/kernel/msm-3.10/tree/drivers/regulator/cpr-regulator.c?h=msm-3.10
> 
> Changes since V1:
> Added a new patch implementing dev_pm_opp_find_level_exact() in order to
> make the CPR OPP table in device tree cleaner.
> For more detailed changes, check the "Changes since V1" as comments in
> the individual patches, where applicable.

Applied patches [1-9/14] to cpufreq and OPP trees and done some
reordering as well to keep all binding patches together.

Rob's Ack is missing on two of the binding patches and I will add them
later once he provides it.

Everything should be available here for you to base rest of the stuff.

git://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git cpufreq/arm/linux-next

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
