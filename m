Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CFCD276F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 12:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvyUhGmdFoTO/VqC6K64M4ZHgIZYYrEeT7Fx7vKlKkw=; b=NRDkJBYGBf3G3x
	0Kt4tv9dshS1p5isFn4vOwNu6zUCPSBPCd3sLk+dLWNOKITLpDynNpEmi6Js2WCBoGGxSjJXpgTue
	a30CzhFlmn+qVLayTnAZacYHd0f5dVq8k9DV000TYFWUFFO6fn5C6Iff9eWEZE6Nqxcd8B//yN6Ul
	Vw6tGHARegZZPHOqWRa0hJ2eSJEb1+ElzqPwBLaz2Ao+Nl3o+HqAmxNGU5DJCHQkNrzasuyJONlJo
	UxsvsEhRYzgAeXc9eNFXM+HaK7uc4/FuClLu089BWcy3xlDmuYvCB83pirnZGPGGjLUDV0vsW8nBn
	5G7Z0XuTI02p2GHUs4hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIVwt-00079w-O5; Thu, 10 Oct 2019 10:45:35 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIVwm-00078y-LB
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 10:45:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id q7so3630300pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 03:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YeFYhKm4PJo5d1ZlY/G1oQFiqY2ifkLQAS5VyiJD2kA=;
 b=cG3q9551YC42aPOxOY7I1S4iCUNQ+FiNULJWSzr2B6bjMy036gzBA007+gLvAx5def
 X2UCn8VpNQkf5PrY1dSf/jLn9ogdqFQ05qumhkMbpH0aXYl/3zaFCkbBWWsx/m9EcTJN
 EGPWiespyxve8xlsh9sSSV0IC3TnlyP2SHIz++ugv6fir6w4NoPrYuJN5eiHRl9Pq0jU
 6q1jsNvySYH+umo3d7rqbZPwL4Z7qbGyQiZ2va1gssLuCcIlCVWy/qRkR1M7XkimuCKF
 H155NqnphhFljtBZEkZGQ2DM7KWh+8rYmfRFXVzFCmdy+vLllLmQEdfJc/kvo1u+9+0P
 ZVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YeFYhKm4PJo5d1ZlY/G1oQFiqY2ifkLQAS5VyiJD2kA=;
 b=bBRTh2ZgwLYKlss8CCnlmH456WwUWult1R/ZwydRPySTzoaIUFvdnrNgLBsqc5UoR8
 cH1garcM5w14ggwv3SXh2Yu2Tp2Siz6fkDFHdKBRe1mGsg3KaZ6Gx8xJ2s8AsDkwOXTL
 slVcqi5EuCg6Z2s6QX6kFWgQQu6+/3YV/NZz/Dgw5MyzfZOXSPMmGoDbEkpARQcEpBso
 UarInfHeE6UYopVvvnYxFiUCWQWdaA6y/ZpKCPXFjVuH1EB8RXFr+qV0dbXqqess6dWR
 88Sd9e39twV26kegi/MS0CBoG/MTUnhR6s0uq4EfUh6DjEcIV39hdSkWTitjcdE/xhZj
 aBgg==
X-Gm-Message-State: APjAAAU4k90gBQrOlm42EJJmIqIUsXc2Ae7fX8Q245c1Eo30tAj+27NH
 Z8EybBeyTgRlUKqcZem2vL9doA==
X-Google-Smtp-Source: APXvYqwYM9M/m3MClMu4Z8S007xBWdkHJrU/NyiZs+nhmdbjrvkkM8AQQUaF3lEebzVejNsXRxT5JA==
X-Received: by 2002:a17:90a:c383:: with SMTP id
 h3mr10552761pjt.122.1570704323312; 
 Thu, 10 Oct 2019 03:45:23 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id z13sm6824122pfq.121.2019.10.10.03.45.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 03:45:22 -0700 (PDT)
Date: Thu, 10 Oct 2019 16:15:20 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
Message-ID: <20191010104520.n77wxxyxvyeo2i4u@vireshk-i7>
References: <cover.1568224032.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1568224032.git.hns@goldelico.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_034528_694016_B83DA378 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Enric Balletbo i Serra <eballetbo@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?B?QW5kcsOp?= Roth <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-09-19, 19:47, H. Nikolaus Schaller wrote:
> CHANGES V3:
> * make omap36xx control the abb-ldo and properly switch mode
>   (suggested by Adam Ford <aford173@gmail.com>)
> * add a note about enabling the turbo-mode OPPs

Applied the series to cpufreq/arm tree.

Also shared a branch for you Tony: cpufreq/ti/oppv2.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
