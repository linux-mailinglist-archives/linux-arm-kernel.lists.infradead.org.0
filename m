Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79C171E32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytKhJFtR+EJcafJEkNXP7u3phZ5TEqTUSfOURfECi7E=; b=OhOELsfyvY5v4Q
	6zNIfefGRPHKktDm5h4OHcZbam8FHzZ8MfcECGNWp9tWKI2tn7HM6RSzTiz6hcaJAJQaj/62op8Da
	QZBaZfMXyEeYPo7Udxss/u9cMMatIgcq4JDPwgtQ7vDLfn5ezgLS47Y2mtjRSs1yMmNDdCSnsDwW8
	V1mTR1rsiCr5HFdcC+uC4+P1Fo63AQc5MP0j0A8A3NW5SBueGT8Tp1apBZg/xj+FmF0okdqlI7eil
	WH6Ng50+7oeDyyMbQfYopbZUth2xkVEMHzK9hxQSvnkhpXITn3SkPUlMRemPx4IOUU0AZpwzo3eN+
	eNHzH+wqnbk7wkRvkdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz4C-00056P-QY; Tue, 23 Jul 2019 17:59:12 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz3y-00055S-O8
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:58:59 +0000
Received: by mail-wm1-f68.google.com with SMTP id p74so39390533wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CFpgVgUuyNvxrMZCyKWuK3LuxqE0J5JekFNJ3K5eJds=;
 b=s3VuKjlNN8ooCqmc0hdLdI18qBm20rIOD+3iTG/kjXWdu4RBAM26RZfqXEwbo7pVnj
 8Ha8703cGKi6hMIDk1iYFKpq3HEMIgNuZP0ck0L+Q+Xs5PBsfMAC6k2nWfpzX4g8/ahO
 06W4m5c7qFGrr2OxlW2yd0emyeAraV7eH0yZi9CMBPZb9LyNn45ZmgJ48VZns498Ope/
 E8gPlaxvA54Eb8mPFWlKdgwEMfct6bGycm1WCIhD1P2CbtmIZlHLyQW0D4lJSWr4Jj/p
 NCQc//fqsIrxv+8MKyouiRWDnKYvY1Keg1U2pU3FcP00IkEubY7NfWZA7X4lKDQIqonA
 CYOA==
X-Gm-Message-State: APjAAAXL9400viwsnOaggW/3h5rEKxGRxUz9MLdDywmoOG08erIWWiPs
 r5BCTOtCcoy6G2dR8Y+CMGs=
X-Google-Smtp-Source: APXvYqxGy6ti+aro/+Ugouk2LFlHDkwecPIxNJNr4s2bexkT5TLGoN0A8azJ3yLVlYBc1LN2slYaiA==
X-Received: by 2002:a05:600c:291:: with SMTP id
 17mr68446436wmk.32.1563904736737; 
 Tue, 23 Jul 2019 10:58:56 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id o26sm84382672wro.53.2019.07.23.10.58.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 10:58:55 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v4 5/5] DT: arm: exynos4412: add event data type which is
 monitored
Message-ID: <20190723175853.GA29195@kozik-lap>
References: <20190605091236.24263-1-l.luba@partner.samsung.com>
 <CGME20190605091305eucas1p136332cc3d1a299d90617bddcb365bee0@eucas1p1.samsung.com>
 <20190605091236.24263-6-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605091236.24263-6-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105858_791712_3F47621E 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 kgene@kernel.org, b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, cw00.choi@samsung.com, kyungmin.park@samsung.com,
 robh+dt@kernel.org, myungjoo.ham@samsung.com, s.nawrocki@samsung.com,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 11:12:36AM +0200, Lukasz Luba wrote:
> The patch adds new field in the PPMU event which shows explicitly
> what kind of data the event is monitoring. It is possible to change it
> using defined values in exynos_ppmu.h file.
> 
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos4412-ppmu-common.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

I tried to apply this... but prerequisites were not merged into
v5.3-rc1. This one will have to wait then till next release.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
