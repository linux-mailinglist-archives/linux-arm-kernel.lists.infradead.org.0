Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C6D126EDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAjQZGN2QZJKrfR+hvk2iyTmazs69nPeEs+6LqtjTww=; b=drKgvbmNumpEbJ
	XOq/415f+b8yDN7Pv2q7rvspxFqH6Gsl1WD0SsmfeIWHiyl7py6bqvpCgRJjV5I8pqlboZc9Awaik
	P4feO/6omrQV+7P+gtydx7YliBxcZ52m8DNqgbXUgVSe+BpoMzB3wHK8zWFzinVWXoNQZyrzI3Cjy
	GkXwSqEBtmAsIlgPrLmL5dUcvDOwOhfCetOCjnzLVC3Do3R/E2vWeGDjw0wiObc3nejhAfYQ9BojQ
	cYZY5noPDGnGZLmXZqj0im8yThK54Zu855eH7Sz8e5zfzYf9LtmuT9THEuozXx4Q8YXip9ZCA96vH
	OM73NYWnZVxAYseSBwQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2MJ-0002Ug-Ie; Thu, 19 Dec 2019 20:25:19 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2JV-0008Rd-Km; Thu, 19 Dec 2019 20:22:27 +0000
Received: by mail-ed1-f67.google.com with SMTP id dc19so6136749edb.10;
 Thu, 19 Dec 2019 12:22:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+XwXmMLYM0uNSnbJNWZYduJB3McxlK0rmyyXpOOOY+E=;
 b=J33OsD2pFIwad5XLjg0ST3gfEMU9mKVuN5iEE+OX4RD3CHtmaBapsoWkvP/DTlHzTY
 +vbNBZyabIqjWB30J6IAE607GMxXJ8gx1/zHR1wQVew6Liolzr4T31sr7KVcfLeRmpQa
 rNxXmvN/M0B8083JMMrdaTTWSHz2s3SYawh4f4ZMP0midTPl9agVcxcoJByrheILDHJE
 cwGQlG6Bnh0bmbQrCy/wXiABEknJvC/6jnSvrtgUuqmuCJyXNOX1CS4GDKEqNhjXXg2k
 f6rJzNZ76uaBxoCOGQOIVmeRllCcPH77N95peMNF+9JE/WkG/6gf/cLzsI9knyKt+5AY
 baFw==
X-Gm-Message-State: APjAAAWOvoKMaBsdYgDbEDVDRt/DgsVyTfW3yhtpg3auJNtWD47azjnv
 AZsvMJWOo8LoJ8HdLPisxvI=
X-Google-Smtp-Source: APXvYqyvXs1b77JsdU/bIq/7bJEZPvD05zPHc+WyTqQxuAEMRrkLbVyqmxjhV8KF6k+gHok+ePJnvg==
X-Received: by 2002:a17:907:20a8:: with SMTP id
 pw8mr11469298ejb.248.1576786944265; 
 Thu, 19 Dec 2019 12:22:24 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id s15sm626909edc.22.2019.12.19.12.22.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 19 Dec 2019 12:22:23 -0800 (PST)
Date: Thu, 19 Dec 2019 21:22:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 9/9] arm64: dts: exynos: Replace deprecated property for
 Exynos bus
Message-ID: <20191219202220.GC21576@kozik-lap>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055107epcas1p44d46bdea7b326b86689f326742f5444a@epcas1p4.samsung.com>
 <20191217055738.28445-10-cw00.choi@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-10-cw00.choi@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122225_772725_CE78C356 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, myungjoo.ham@samsung.com,
 robh+dt@kernel.org, kgene@kernel.org, kyungmin.park@samsung.com,
 leonard.crestez@nxp.com, lukasz.luba@arm.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 02:57:38PM +0900, Chanwoo Choi wrote:
> Replace the property related to devfreq and devfreq-event device
> to remove the deprecated property name.
> - Replace 'devfreq' with 'exynos,parent-bus' property
>   for getting the parent devfreq device of exynos-bus.
> - Replace 'devfreq-events' with 'exynos,ppmu-device' property
>   for getting the devfreq-event device to monitor bus utilization.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../dts/exynos/exynos5433-tm2-common.dtsi     | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

I'll pick it up the next cycle after driver get merged.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
